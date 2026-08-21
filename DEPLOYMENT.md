# Deployment

Production is deployed at <https://tjluo-ucas.github.io/mdma/> from the public repository <https://github.com/tjluo-ucas/mdma>.

- source branch: `main`;
- Pages build type: GitHub Actions;
- workflow: `.github/workflows/pages.yml`;
- HTTPS enforcement: enabled;
- project base URL: `/mdma`.

Every push to `main` runs the Jekyll build and Pages deployment. Before pushing, run `ruby scripts/check_site.rb` and `ruby scripts/preview_build.rb`. After deployment, verify `/mdma/`, `/mdma/en/`, `/mdma/assignments/`, and `/mdma/labs/` rather than relying only on a green workflow status.
