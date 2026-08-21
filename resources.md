---
title: "教材文献"
description: "MDMA经典教材、优化与决策分析基础、前沿处方分析、模型治理和问题导向教学文献。"
lang: zh-CN
translation_url: /en/resources/
permalink: /resources/
page_key: resources
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Books &amp; research</p><h1>用经典建立主干，用前沿检验边界</h1><p>以下书目按课程用途组织，不要求全部购买。版本、章节、电子资源和许可由教师在每次开课时确认。</p></div></section>
<div class="content-shell" markdown="1">

## 权威学科入口

- [INFORMS Operations Research & Analytics](https://www.informs.org/Explore/Operations-Research-Analytics)：运筹、分析学、描述/预测/处方分析及其改善决策的共同目标；
- [INFORMS Decision Analysis Society](https://connect.informs.org/das/about-us/about)：不确定性、多目标、风险、行为、群体与决策支持范围；
- [INFORMS Analytics Body of Knowledge](https://pubsonline.informs.org/series/abok)：问题、团队、数据、方法、建模、机器学习与部署生命周期框架；
- [OpenAI Developers / Codex](https://developers.openai.com/)：Codex的代码理解、构建、测试、修复和审查能力说明。

<div class="notice"><strong>阅读顺序</strong>先用 INFORMS 建立“为什么决策、谁来决策、需要何种证据”的学科框架，再学习 DCF、优化、仿真和决策分析方法，最后以案例执行检验模型是否可信、可实施。Codex 文档说明 Agent 能做什么，不证明目标、约束或建议正确。</div>

## 核心建模与管理科学教材

1. **Winston & Albright, _Practical Management Science_, 6e.** 与课程的Excel、优化、仿真和管理案例主线高度匹配。[Cengage官方页](https://www.cengage.com/c/practical-management-science-6e-winston-albright/9781337406659/)
2. **Ragsdale, _Spreadsheet Modeling and Decision Analysis_, 9e.** 系统覆盖建模、优化、决策分析、仿真与Business Analytics。[Cengage官方页](https://faculty.cengage.com/titles/9780357132098)
3. **Powell & Baker, _Business Analytics: The Art of Modeling with Spreadsheets_, 5e.** 强调Spreadsheet Engineering、Management Science与Modeling Craft。[Wiley官方页](https://www.wiley.com/en-us/Business+Analytics%3A+The+Art+of+Modeling+With+Spreadsheets%2C+5th+Edition-p-9781119298335)
4. **Baker, _Optimization Modeling with Spreadsheets_, 3e.** 侧重LP、NLP、IP、网络与模型构造原则。[Wiley官方页](https://www.wiley.com/en-us/Optimization+Modeling+with+Spreadsheets%2C+3rd+Edition-p-9781118937730)

建议以其中一本作为主教材，其他作为案例和建模工艺参考，避免按书目顺序堆叠方法。

教材中的电子表格路线用于建立可视、可沟通的模型工艺，不构成软件限制。同一个数学模型可以迁移到Python或其他建模语言，迁移时必须保持变量、目标、约束、单位和验收测试一致。

## 决策分析、运筹优化与仿真基础

- **Clemen & Reilly, _Making Hard Decisions with DecisionTools_, 3e.** 决策树、概率、效用、敏感性与信息价值。[Cengage](https://www.cengage.com/c/making-hard-decisions-with-decisiontools-3e-clemen-reilly/9780538797573/)
- **Howard & Abbas, _Foundations of Decision Analysis_.** 规范性决策分析、偏好、信息与决策质量；可结合 Howard 的经典综述 [Decision Analysis: Practice and Promise](https://pubsonline.informs.org/doi/10.1287/mnsc.34.6.679)。
- **Hillier & Lieberman, _Introduction to Operations Research_.** 从问题定义、建模、验证到实施的完整OR框架。[McGraw Hill](https://www.mheducation.com/highered/product/Introduction-to-Operations-Research-Hillier.html)
- **Boyd & Vandenberghe, _Convex Optimization_.** 用于理解凸性、对偶、最优性和非线性模型边界；作者站提供合法在线版本与课程材料。[Stanford](https://web.stanford.edu/~boyd/cvxbook/)
- **Law, _Simulation Modeling and Analysis_, 6e.** 输入建模、验证、输出统计、实验设计和Simulation Optimization。[McGraw Hill](https://www.mheducation.com/highered/mhp/product/simulation-modeling-analysis-sixth-edition.html)

## 不确定性与稳健决策

- Shapiro, Dentcheva & Ruszczyński, _Lectures on Stochastic Programming_, 3e：情景、Recourse、风险度量、SAA与多阶段决策。[SIAM DOI](https://doi.org/10.1137/1.9781611976595)
- Ben-Tal, El Ghaoui & Nemirovski, _Robust Optimization_：不完整分布信息下的可解稳健模型。[Princeton University Press](https://press.princeton.edu/books/hardcover/9780691143682/robust-optimization)
- Bertsimas & Sim, [The Price of Robustness](https://pubsonline.informs.org/doi/10.1287/opre.1030.0065)：在名义性能与约束保护之间显式调节保守程度。

## 数据驱动处方决策与AI前沿

- Bertsimas & Kallus, [From Predictive to Prescriptive Analytics](https://pubsonline.informs.org/doi/10.1287/mnsc.2018.3253)：把数据和机器学习连接到处方决策。
- Elmachtoub & Grigas, [Smart “Predict, then Optimize”](https://pubsonline.informs.org/doi/10.1287/mnsc.2020.3922)：以决策误差而非纯预测误差评价学习模型。
- Qi & Shen, [Integrating Prediction/Estimation and Optimization](https://pubsonline.informs.org/doi/10.1287/educ.2022.0249)：面向运营管理的综合教程。
- Mandi et al., [Decision-Focused Learning: Foundations, Benchmark and Opportunities](https://arxiv.org/abs/2307.13565)：决策聚焦学习的方法、基准与局限综述。

这些文献作为 D4/D5 延伸，不意味着密集课程要求学生实现端到端可微优化。

## Python与开放求解工具入口

- [SciPy Optimize](https://docs.scipy.org/doc/scipy/tutorial/optimize.html)：非线性优化、LP与MILP，适合小中型案例和可复现数值实验；
- [Pyomo](https://pyomo.readthedocs.io/en/stable/)：用Python表达结构化优化模型，并连接开源或商业求解器；
- [Google OR-Tools](https://developers.google.com/optimization)：覆盖LP/MIP、网络流、路由、排程与约束规划；
- [CVXPY](https://www.cvxpy.org/tutorial/index.html)：以Disciplined Convex Programming检查凸模型结构；
- NumPy/pandas/Jupyter可用于现金流、数据准备、Monte Carlo、可视化与实验记录。

工具选型须同时考虑问题结构、规模、审计性、许可证、团队能力和部署环境。库的返回状态不是业务结论；仍需残差、容差、Gap、边界和独立复算。

## 模型可靠性与治理

- Panko, [Spreadsheet Errors: What We Know. What We Think We Can Do](https://arxiv.org/abs/0802.3457)：电子表格错误常见且难以发现，支持代码式检查和独立复算。
- Panko, [What We Don't Know About Spreadsheet Errors Today](https://arxiv.org/abs/1602.02601)：警惕对表格正确性的过度自信。
- Saltelli et al., [Five ways to ensure that models serve society](https://www.nature.com/articles/d41586-020-01812-9)：要求透明、谦逊、揭示假设与利益，避免模型变成隐藏价值判断的工具。

## 问题导向教学依据

- Barrows, [A taxonomy of problem-based learning methods](https://doi.org/10.1111/j.1365-2923.1986.tb01386.x)：PBL不是单一方法，必须根据目标选择问题结构和教师支持。
- Hmelo-Silver, [Problem-Based Learning: What and How Do Students Learn?](https://doi.org/10.1023/B:EDPR.0000034022.16470.F3)：复杂问题、协作、自主学习、反思与教师促进形成学习循环。
- Powell, [Teaching Modeling in Management Science](https://pubsonline.informs.org/doi/10.1287/ited.1.2.62)：管理者既是决策者也是学习者，建模能力不能被复杂算法压倒。

<div class="notice"><strong>研究边界</strong>书籍与论文支持课程结构和延伸阅读，不自动成为正式题目的数据来源或“标准答案”。公开站只链接合法页面，不镜像受版权保护的全文、案例附件和教师资源。</div>
<div class="notice"><strong>核验日期</strong>INFORMS 学科入口与 Codex 官方入口于2026-08-21核验。软件、求解器、许可和在线资源可能变化，实验时必须重新检查。</div>
</div>
