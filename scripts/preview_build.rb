#!/usr/bin/env ruby

require "fileutils"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).parent.expand_path.freeze
OUT = (ROOT / "_site").freeze

%w[liquid kramdown].each do |gem_name|
  local = Dir[ROOT.join("vendor/bundle/ruby/*/gems/#{gem_name}-[0-9]*/lib").to_s]
  shared = Dir[ROOT.parent.join("ds/vendor/bundle/ruby/*/gems/#{gem_name}-[0-9]*/lib").to_s]
  lib = (local + shared).sort.last
  abort "Missing #{gem_name}; run bundle install or use the GitHub Pages workflow" unless lib
  $LOAD_PATH.unshift(lib)
end

require "kramdown"
require "liquid"

CONFIG = YAML.safe_load((ROOT / "_config.yml").read, aliases: true).freeze

module SiteFilters
  def relative_url(input)
    path = input.to_s
    base = @context.registers.fetch(:site).fetch("baseurl", "")
    return "#{base}/" if path == "/"
    "#{base}/#{path.sub(%r{^/}, '')}".gsub(%r{/+}, "/")
  end

  def absolute_url(input)
    site = @context.registers.fetch(:site)
    "#{site.fetch('url')}#{relative_url(input)}"
  end
end

def parse_page(path)
  source = path.read
  return [{}, source] unless source.start_with?("---\n")
  _, yaml, body = source.split("---\n", 3)
  [YAML.safe_load(yaml, aliases: true) || {}, body]
end

def render_liquid(source, page, content = nil)
  assigns = { "site" => CONFIG, "page" => page, "content" => content }
  Liquid::Template.parse(source).render!(assigns, filters: [SiteFilters], registers: { site: CONFIG })
end

def expand_includes(source)
  source.gsub(/{%\s*include\s+([^\s%]+)\s*%}/) do
    include_path = ROOT / "_includes" / Regexp.last_match(1)
    abort "Missing include #{include_path}" unless include_path.file?
    include_path.read
  end
end

def output_path(permalink)
  clean = permalink.sub(%r{^/}, "")
  return OUT / "index.html" if clean.empty?
  return OUT / clean if File.extname(clean) == ".html"
  OUT / clean / "index.html"
end

abort "Refusing unexpected output path" unless OUT == ROOT / "_site"
FileUtils.rm_rf(OUT)
FileUtils.mkdir_p(OUT)

layout = expand_includes((ROOT / "_layouts/default.html").read)
page_paths = Dir[ROOT.join("*.md").to_s, ROOT.join("en/*.md").to_s, ROOT.join("404.html").to_s]
  .map { |p| Pathname.new(p) }
  .reject { |p| p.basename.to_s == "README.md" }

page_paths.each do |path|
  page, body = parse_page(path)
  next unless page["permalink"]
  page["url"] = page["permalink"]
  rendered_body = render_liquid(body, page)
  content = path.extname == ".md" ? Kramdown::Document.new(rendered_body).to_html : rendered_body
  html = render_liquid(layout, page, content)
  destination = output_path(page.fetch("permalink"))
  FileUtils.mkdir_p(destination.dirname)
  destination.write(html)
end

FileUtils.cp_r(ROOT / "assets", OUT / "assets")

errors = []
html_files = Dir[OUT.join("**/*.html").to_s].map { |p| Pathname.new(p) }
html_files.each do |path|
  text = path.read
  errors << "#{path}: unresolved Liquid" if text.include?("{{") || text.include?("{%")
  text.scan(/(?:href|src)="([^"]+)"/).flatten.each do |href|
    next if href.start_with?("http://", "https://", "mailto:", "#")
    next unless href.start_with?(CONFIG.fetch("baseurl"))
    route = href.delete_prefix(CONFIG.fetch("baseurl")).split("#", 2).first
    target = if !File.extname(route).empty?
      OUT / route.sub(%r{^/}, "")
    else
      OUT / route.sub(%r{^/}, "") / "index.html"
    end
    target = OUT / "index.html" if route == "/"
    errors << "#{path}: broken generated link #{href}" unless target.exist?
  end
end

abort errors.join("\n") unless errors.empty?
puts "preview build: PASS"
puts "generated HTML pages: #{html_files.length}"
puts "output: #{OUT}"
