---
title: "建模工坊"
description: "MDMA电子表格建模、验证、敏感性、仿真、决策简报和AI协同实践规范。"
lang: zh-CN
translation_url: /en/labs/
permalink: /labs/
page_key: labs
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Modeling studio</p><h1>每一个模型主张都要留下检查路径</h1><p>工坊不以“Solver找到解”为完成，而以另一个小组能够理解、复算、破坏并重建模型为标准。</p></div></section>
<div class="content-shell" markdown="1">

## 标准工作簿结构

| Sheet/区域 | 内容 | 质量要求 |
|---|---|---|
| README | 问题、作者、版本、运行方法、工具版本 | 新读者5分钟能定位入口 |
| Inputs | 来源、单位、范围、时间口径、批准值 | 不混入公式与决策变量 |
| Model | 变量、公式、目标、约束、随机过程 | 公式短、命名清楚、无魔法数字 |
| Checks | 单位、守恒、残差、边界、错误状态 | 失败醒目且能阻断建议 |
| Scenarios | 基准、压力、阈值、反例、种子 | 不覆盖冻结输入，结果可回放 |
| Output | KPI、建议、风险、置信区间、状态 | 与Decision Brief逐项追踪 |

## 六个验证工坊

1. **现金流复算**：用独立时间轴重算 NPV/IRR，测试税、增长、残值和负现金流；
2. **约束审计**：为每条约束输出 LHS、RHS、Slack、单位和违反标志；
3. **可行性对抗**：构造不可行、无界、非整数和 Solver 失败样例，禁止伪装成最优；
4. **网络守恒**：逐节点检查流入、流出、供给、需求与余量；
5. **仿真回放**：固定 Seed，检查分布、相关性、迭代、CI、风险指标和策略差异；
6. **模型评审**：另一组只依据README和工作簿复现，提交错误分类与最小修复。

## 敏感性与情景设计

- 先问“什么变化会改变行动”，再选参数和范围；
- 区分单因素、组合压力、结构变化和数据错误；
- 报告阈值、交叉点、影子价格适用范围和非线性断点；
- 不把未经批准的主观范围包装成统计置信区间；
- 对近优解比较实施复杂度、稳健性和可解释性。

## 一页 Decision Brief

```text
Decision owner / decision date / horizon
Problem and alternatives
Recommendation and expected value
Key assumptions and evidence
Thresholds, risks, and counterexamples
Implementation owner, trigger, override, and review date
```

## AI Agent 工坊规则

Agent首先询问目标、单位、来源和变量域；可以提出检查公式、反例和候选结构。它不得写入缺失数据、静默放松约束、假称执行Solver/@RISK、访问其他小组材料或在截止前生成完整模型。每次采纳必须留下“建议—验证—结论”记录。

<div class="notice"><strong>工具中立</strong>Excel是主要教学工作台；若许可证、平台或可访问性受限，可使用教师批准的替代 Solver/仿真工具，但必须保持模型语义、版本记录和验收标准一致。</div>
</div>
