---
title: "建模工坊"
description: "MDMA工具中立的实验模式、Python与电子表格路线、验证、现实变体和决策简报。"
lang: zh-CN
translation_url: /en/labs/
permalink: /labs/
page_key: labs
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Modeling studio</p><h1>实验的对象是决策逻辑，<br>不是某个软件</h1><p>Excel、Python和专业求解器都只是实现路径。<br>完成标准是：别人能够理解问题、重跑模型、挑战假设，并解释何时不该采用建议。</p></div></section>
<div class="content-shell" markdown="1">

## 统一实验模式：<br>Frame → Represent → Solve<br>Challenge → Decide

1. **Frame**：写清决策者、决定、备选方案、目标、时间范围和成功标准；
2. **Represent**：画时间轴、影响图、网络或变量—约束草图，再写公式；
3. **Solve**：选择最简单且足够可靠的方法，记录版本、参数、状态和运行证据；
4. **Challenge**：用手算小例、另一实现、边界、压力、反例或历史回测攻击模型；
5. **Decide**：解释行动、阈值、风险、实施责任和需要继续收集的信息。

如果换一种软件就无法说明模型，说明学到的是按钮路径，而不是建模。

## 工具选择不是等级排序

| 路线 | 适用情形 | 典型工具 | 必须补足的证据 |
|---|---|---|---|
| 解析/手工 | 小规模、闭式关系、需要形成直觉 | 代数、时间轴、枚举、小样例 | 假设、推导、边界和与数值实现的核对 |
| 电子表格 | 规模小、管理沟通强、输入需要交互 | Excel / LibreOffice + Solver | 公式追踪、输入分离、Checks、Solver设置与状态 |
| Python分析 | 批量场景、Monte Carlo、自动化、数据清洗和图表 | Jupyter、NumPy、pandas、SciPy | 环境锁定、Seed、可执行顺序、断言、日志和输出文件 |
| Python建模层 | 模型会扩展或需要替换求解器 | Pyomo、CVXPY、PuLP、OR-Tools | 求解器名称/版本、终止状态、容差、Gap和许可证说明 |
| 专业平台 | 大规模MIP、复杂网络、多期/随机优化 | Gurobi、CPLEX、SCIP、商业仿真器 | 可替代复现路径、许可证边界、模型导出与审计日志 |
| 混合路线 | 需要兼顾沟通、预测、优化和实施 | Excel前端 + Python/服务端求解 | 数据契约、版本同步、失败回退和跨工具一致性测试 |

“复杂”不等于“更好”。能用清楚的小模型回答问题时，不因追求技术感引入黑箱；当规模、重复性或不确定性超过电子表格能力时，也不应强行坚持 Excel。

## 可复现分析包

| 组件 | 电子表格实现 | Python/代码实现 | 共同验收条件 |
|---|---|---|---|
| README | 首页说明 | `README.md` | 5分钟定位入口和运行方法 |
| Inputs | 独立输入区/Sheet | `data/` + schema/config | 来源、单位、时间和转换可追踪 |
| Model | 公式与Solver模型 | `src/` 或 Notebook函数 | 变量、目标、约束与随机过程一致 |
| Checks | Checks Sheet | assertions/tests | 失败醒目并阻断建议 |
| Scenarios | 情景表 | 参数化实验配置 | 不覆盖基准，支持批量和回放 |
| Output | KPI与图表 | `results/` + report | 直接支撑Decision Brief且标注状态 |
| Environment | 软件/插件版本 | `requirements.txt`或等价锁定 | 第三方能重建运行环境 |

## 六类实验，而非六次按按钮

1. **现金流实验**：比较总额与现值；改变利率、残值、税、利用率和退出时点，寻找建议翻转阈值；
2. **定价实验**：先画价格—需求—利润关系，再比较连续、整数、局部搜索和需求误差下的方案；
3. **资源瓶颈实验**：用LP识别绑定约束和影子价格，再加入批次、供应中断或第二目标检验解释是否仍成立；
4. **网络实验**：逐节点守恒，比较网络流、通用LP和最短路分配；加入弧容量、关闭或时效目标；
5. **离散投资实验**：检查0/1逻辑、整数域、Gap和近优解；比较一次采购、多期采购和不扩建基线；
6. **不确定性实验**：固定Seed回放，报告分布、区间与下行风险；比较解析期望、Monte Carlo、bootstrap或随机优化。

## 每次实验必须有“方法对照”

至少选择一种对照：

- **小规模真值**：枚举或手算一个缩小实例；
- **独立实现**：Excel 与 Python、两个Python库或不同求解器交叉核验；
- **朴素基线**：当前政策、贪心方案、平均值方案或管理者直觉；
- **结构替代**：确定性与随机、连续与整数、单目标与多目标；
- **现实回测**：用未参与建模的数据或历史时期检查建议。

结果不同并不自动说明某一工具错误。先比较数据、单位、时间、变量域、目标符号、约束方向、容差、随机Seed和停止条件。

## 最低实验记录

```text
Decision / owner / horizon
Question and competing hypotheses
Facts, assumptions, unknowns, and data provenance
Model and alternative method
Tool, version, solver, parameters, seed, and environment
Baseline, tests, residuals, termination status, and runtime
Sensitivity, scenario, counterexample, and validity boundary
Recommendation, threshold, risk, override, and next evidence
```

## AI/ML在实验中的角色

AI/ML可以估计需求、成本、风险与情景，生成候选公式、代码、测试和反例；优化器在给定目标与约束下寻找方案。二者都不能替代问题定义和责任判断。使用AI生成代码必须保留提示/版本，逐项审查数据与公式，并用测试或独立实现验证。没有真实运行日志时，不得声称“已运行”或“已验证”。

<div class="notice"><strong>实验验收原则</strong>不要求所有学生使用Excel，也不因使用Python加分。真正被评价的是 way of thinking：问题是否定义正确、模型是否合理、证据是否可重现、替代方案是否被比较、建议是否知道自己的边界。</div>
</div>
