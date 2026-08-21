---
title: "案例作业"
description: "MDMA六个正式案例的决策问题、模型产物、验证证据和数据质量Gate。"
lang: zh-CN
translation_url: /en/assignments/
permalink: /assignments/
page_key: assignments
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Case challenges</p><h1>六个案例，六种模型失败方式</h1><p>公开页面提供问题类型与证据要求；正式参数、图片表格、教师工作簿和参考答案只在受控课程环境发布。</p></div></section>
<div class="content-shell" markdown="1">

## 案例地图

| ID | 管理决策 | 模型产物 | 最低验证 | 难度 |
|---|---|---|---|---|
| MDMA-C1 | 是否收购卡车租赁企业 | 5年DCF、NPV、利用率/市场情景、期末转售 | 时间轴、税后现金流、折现和阈值复算 | D1–D2 |
| MDMA-C2 | 两类车辆如何定价以最大化利润 | 线性需求下非线性定价、资源与融资约束 | 需求非负、资源残差、Solver状态、基准情景 | D2–D3 |
| MDMA-C3 | 三类咖啡如何组合以最大化周利润 | 固定配方LP、供应/产能/最低产量、影子价格 | 配方守恒、约束残差、利润复算、敏感性 | D2–D3 |
| MDMA-C4 | 两港口向五城市如何最低成本配送 | Minimum-cost Network Flow | Flow conservation、弧成本、需求与余量处理 | D2–D3 |
| MDMA-C5 | 是否扩建设施及采购两类飞机 | MIP、预算、容量、扩建二元和采购逻辑 | 整数域、0或≥10逻辑、双预算、Gap和情景 | D3–D4 |
| MDMA-C6 | 航班两类舱位行数如何配置 | Monte Carlo、航段需求、容量、期望/风险收益 | Seed replay、分布/相关性、CI和策略回放 | D3–D4 |

## 通用交付物

1. 一页 Decision Brief：决策者、问题、范围、建议、阈值和风险；
2. Assumption/Data Dictionary：来源、单位、范围、缺失和批准补充；
3. 可运行工作簿：Input、Model、Checks、Scenarios、Output；
4. 数学模型：变量、目标、约束、索引、单位和 Solver 设置；
5. 手工小例、约束残差、基准、边界、异常和不可行测试；
6. 敏感性/情景、关键驱动、反例、实施条件和适用边界；
7. 小组报告/展示及个人贡献记录。

## 发布前数据质量 Gate

- **DQ-01**：正式源与早期草案的优先级必须经教师批准；
- **DQ-02/03**：C1利用率/税务边界、C2非线性与融资口径冻结；
- **DQ-04/05**：C3图片表格、C4网络弧/成本须双人转录，供需余量语义明确；
- **DQ-06**：C5“0或至少10架”、双预算和扩建成本逻辑明确；
- **DQ-07**：C6目标、分布、相关性、行数域、迭代、Seed与CI批准。

Gate 未关闭时，学生任务可以是“发现缺口并提出最小澄清”，不能被发布为具有唯一可求解答案的正式题。

<div class="notice"><strong>计分选择</strong>C1只练习；每组从C2–C6自主选择3个计分案例，每个25分。多交、缺交、迟交、重交和成员变化按批准政策处理，AI不得替学生选择。</div>
</div>
