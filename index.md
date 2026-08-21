---
title: "课程简介"
description: "MDMA：从真实管理问题、可检验模型到可审计、可行动的决策建议。"
lang: zh-CN
translation_url: /en/
permalink: /
page_key: home
---

<section class="hero">
  <div class="hero-grid">
    <div>
      <p class="eyebrow">Management Decision Modeling &amp; Analysis</p>
      <h1>企业决策<span>不只是<br class="mobile-break">求最优解</span></h1>
      <p class="lead">MDMA 把有冲突的管理叙述转化为可审查模型，<br class="mobile-break">比较行动、约束、风险与价值，<br class="mobile-break">再用证据形成可实施、可复盘的建议。<br class="mobile-break">Codex 能加速建模代码、情景实验和检查，<br class="mobile-break">但不能替决策者定义真正目标、接受风险，<br class="mobile-break">或为现实后果承担责任。</p>
      <div class="hero-actions"><a class="button button-primary" href="{{ '/syllabus/' | relative_url }}">查看教学大纲</a><a class="button button-secondary" href="{{ '/labs/' | relative_url }}">进入建模工坊</a></div>
    </div>
    <div class="orbit" aria-label="管理决策建模闭环"><div class="orbit-core">Evidence<br>to<br>Action</div><span class="orbit-node">Problem</span><span class="orbit-node">Frame</span><span class="orbit-node">Model</span><span class="orbit-node">Solve</span><span class="orbit-node">Challenge</span><span class="orbit-node">Decide</span></div>
  </div>
</section>

<div class="stat-strip"><div class="stats"><div class="stat"><strong>6</strong><span>决策质量环节</span></div><div class="stat"><strong>Any tool</strong><span>语义与证据一致</span></div><div class="stat"><strong>D0–D5</strong><span>能力递进</span></div><div class="stat"><strong>Evidence</strong><span>先于行动</span></div></div></div>

<section class="section">
  <div class="section-head"><p class="kicker">Authoritative definition</p><h2>学科中的 MDMA 是什么？</h2><p>MDMA 是本课程对 <strong>Management Decision Modeling &amp; Analysis</strong> 的简称，并非国际统一的独立学科名称。其学科基础来自 Operations Research、Management Science、Analytics 与 Decision Analysis：<a href="https://www.informs.org/Explore/Operations-Research-Analytics">INFORMS</a>强调以科学和数学方法把复杂问题与数据转化为更好的决策；<a href="https://connect.informs.org/das/about-us/about">INFORMS Decision Analysis Society</a>进一步覆盖不确定性、多目标、风险、行为与群体决策。</p></div>
  <div class="layer-grid">
    <article class="layer-card"><span class="number">01</span><h3>Frame</h3><p>明确决策者、行动、目标、时间范围、利益相关者与成功标准。</p></article>
    <article class="layer-card"><span class="number">02</span><h3>Represent</h3><p>把现实抽象成数据、变量、目标、约束、关系、不确定性与假设。</p></article>
    <article class="layer-card"><span class="number">03</span><h3>Solve</h3><p>用 DCF、优化、仿真或决策分析产生可比较的行动方案。</p></article>
    <article class="layer-card"><span class="number">04</span><h3>Challenge</h3><p>检查残差、可行性、Gap、敏感性、反例、偏差和模型—现实差距。</p></article>
    <article class="layer-card"><span class="number">05</span><h3>Act</h3><p>解释权衡、阈值、风险、实施条件、覆盖机制、责任人与复盘指标。</p></article>
  </div>
  <div class="notice"><strong>边界</strong>模型不是现实，Solver 也不是决策者。“Optimal”只表示给定模型、数据、目标、约束和容差下的数学状态，不自动等于现实中的最佳行动。</div>
</section>

<section class="section">
  <div class="section-head"><p class="kicker">Agent-era difficulty</p><h2>有了 Codex，为什么仍然难？</h2><p><a href="https://developers.openai.com/">OpenAI 官方文档</a>说明 Codex 能理解代码库、构建与测试功能、修复缺陷和审查变更。在 MDMA 中，它可以快速生成候选模型、Python/求解器代码、情景和测试；真正困难则转移到问题结构、价值判断和证据责任。</p></div>
  <div class="card-grid">
    <article class="info-card"><span class="tag">Values</span><h3>目标函数不是事实</h3><p>利润、服务、公平、安全与长期能力常相互冲突；谁的价值进入模型必须由人说明。</p></article>
    <article class="info-card"><span class="tag">Reality</span><h3>约束和数据可能是错的</h3><p>遗漏资源、错误单位、乐观需求或不可执行政策，会让精确求解得到精确的错误答案。</p></article>
    <article class="info-card"><span class="tag">Uncertainty</span><h3>未来不是一个参数表</h3><p>相关性、尾部风险、制度变化和竞争反应需要情景、仿真、稳健性及人类判断。</p></article>
    <article class="info-card"><span class="tag">Accountability</span><h3>建议必须能被质疑</h3><p>管理者需要理解阈值、例外、近优方案、受损群体和停止条件，而不只是复制 Agent 报告。</p></article>
  </div>
</section>

<section class="section">
  <div class="section-head"><p class="kicker">Our pedagogy</p><h2>教学法：从争议问题出发，用反例逼近决策质量</h2><p>课程评价的是 Way of Thinking，而不是 Excel 菜单、Python 代码量或 Solver 名称。</p></div>
  <div class="track-grid">
    <article class="track-card"><span class="tag">Problem loop</span><h3>先界定，再形式化</h3><ul><li>先区分事实、假设、未知、行动与利益相关者</li><li>先画时间轴、影响图或网络，再写变量和公式</li><li>至少比较两个模型结构或行动方案</li></ul></article>
    <article class="track-card"><span class="tag">Evidence loop</span><h3>先证伪，再建议</h3><ul><li>用小规模真值、第二实现和朴素政策交叉检查</li><li>主动测试不可行、极端情景、敏感性与建议翻转点</li><li>以 Decision Brief 说明行动、风险、覆盖与下一份证据</li></ul></article>
  </div>
</section>

<section class="section">
  <div class="section-head"><p class="kicker">AI_Tutoring</p><h2>从零基础到专家：脚手架渐隐，决策责任渐强</h2><p>AI_Tutoring 根据学生的独立尝试、模型验证、业务解释、反例与迁移证据推进，而不是根据答案是否像标准解或 Agent 的置信度。</p></div>
  <div class="card-grid">
    <article class="info-card"><span class="tag">D0 · Diagnose</span><h3>识别决策语言</h3><p>区分输入、决策、目标、约束、风险和单位，诊断数学、概率与业务先修。</p></article>
    <article class="info-card"><span class="tag">D1 · Reproduce</span><h3>引导复现</h3><p>重跑小型 DCF、LP 或仿真，解释每个公式、状态和业务含义。</p></article>
    <article class="info-card"><span class="tag">D2 · Apply</span><h3>引导变式</h3><p>改变一个参数、约束或目标；Tutor 只给接口、里程碑和检查表。</p></article>
    <article class="info-card"><span class="tag">D3 · Analyze</span><h3>独立建模</h3><p>从案例叙述选择结构和工具，比较方案并提交可复现分析包。</p></article>
    <article class="info-card"><span class="tag">D4 · Evaluate</span><h3>评价权衡</h3><p>处理多目标、不确定性、不可行、稳健性、近优解与实施风险。</p></article>
    <article class="info-card"><span class="tag">D5 · Transfer</span><h3>创造与迁移</h3><p>在陌生业务中重建问题—模型—证据—行动闭环，并接受质询和复盘。</p></article>
  </div>
  <div class="notice"><strong>Tutor 不是自动驾驶</strong>学生必须 Attempt first。Hint Budget 从苏格拉底追问、指出证据缺口到方法建议，不直接释放计分案例答案；提示耗尽、模型冲突或高风险建议进入教师/TA审核。最终成绩和 Solution Embargo 仍由人类负责。</div>
</section>

<section class="section"><div class="callout"><div><h2>从一个有争议的管理问题开始</h2><p>列出事实、假设、未知、利益相关者和失败条件，再建立最小可检验模型。</p></div><a class="button button-primary" href="{{ '/schedule/' | relative_url }}">查看9天学习路径</a></div></section>
