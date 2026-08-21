---
title: "Methods"
description: "MDMA map of classical management science, decision analysis, optimization, simulation, robustness, and data-driven decisions."
lang: en
translation_url: /lectures/
permalink: /en/lectures/
page_key: lectures
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Methods map</p><h1>Not a method list—a toolbox for decision problems</h1><p>Every method must answer: what problem does it address, what assumptions does it require, how is it tested, and when should it not be used?</p></div></section>
<div class="content-shell" markdown="1">

## 0. Disciplinary core: improve decisions, not model theater

Under the INFORMS operations research, management science, analytics, and decision-analysis frame, MDMA turns complex management problems into comparable actions and improves decision quality under objectives, constraints, uncertainty, stakeholder values, and risk. Modeling does not end when a story becomes equations; it is an accountable Frame → Represent → Solve → Challenge → Decide → Review loop.

## The way of thinking across methods

The course does not teach menus first and matching exercises second. For every case ask: who must decide what, and when? Which elements are actions, evidence, and uncertainty? Who defines success? What mistaken intuition can a minimum model eliminate? What evidence is worth acquiring before action? Solving is an intermediate step; conflict between model and reality is new information to investigate.

## 1. Decision framing and modeling craft

Identify the decision owner, values, alternatives, information, constraints, and horizon before modeling. A reliable analysis package—workbook or Python project—separates inputs, model, checks, scenarios, and outputs; uses consistent units, clear names, traceable timelines, and independent recomputation.

**Counterexamples:** solving the wrong objective; treating a controllable action as an input; omitting a stakeholder; overwriting formulas with hard-coded values; hiding a faulty model behind an attractive dashboard.

## 2. Capital budgeting and deterministic choice

DCF, NPV, IRR, cash-flow timing, after-tax treatment, terminal value, and discounting conventions. Sensitivity analysis is not arbitrary number changing; it seeks thresholds, crossovers, and drivers that change action.

## 3. Optimization: continuous to discrete

- **Nonlinear pricing:** price affects demand; test nonnegative demand, domains, and local/global solution status;
- **Linear programming:** resources, product mix, shadow prices, reduced costs, and ranges of validity;
- **Network flow:** node balance, arc direction, cost, unequal supply/demand, and dummy nodes;
- **Integer programming:** fixed cost, zero-or-at-least-(k), logical constraints, MIP gap, and near-optimal alternatives.

## 4. Simulation and risk

Distinguish aleatory from epistemic uncertainty; approve distributions and dependence; replay fixed seeds; compare strategies with replications, confidence intervals, quantiles, and downside risk. Simulation describes outcome distributions—it does not decide which risk management should accept.

## 5. Decision analysis and value of information

Influence diagrams, decision trees, expected utility, multiattribute value, and value of information clarify whether to act or learn first. Normative models and descriptive behavioral departures must remain distinct. The model supports a quality conversation rather than concealing values.

## 6. Robust, stochastic, and data-driven decisions

- **Stochastic programming:** scenarios, recourse, sample-average approximation, and risk measures;
- **Robust optimization:** use uncertainty sets without a full distribution, trading nominal performance for protected feasibility and reporting the price of robustness;
- **Predict-then-optimize:** lower prediction error need not yield lower decision loss; evaluate the downstream objective and constraints;
- **Decision-focused learning:** include decision quality in training while still testing extrapolation, bias, constraints, and governance.

## 7. Implementation, governance, and AI

An operational model needs versioning, input lineage, approvers, override/rollback, drift monitoring, and review measures. AI may propose structures and counterexamples but may not invent case data, silently relax constraints, or relabel infeasibility as optimality. People retain ownership of objectives, values, permissions, and final action.

### Codex collaboration boundary

Codex may inspect repository and data structure, draft candidate models and code, add tests, run small cases, and compare results. An agent output remains a **model hypothesis awaiting verification**. Every material variable, constraint, parameter, solver status, gap, sensitivity result, and business recommendation must connect to a source or actual execution. Fluent explanation is not evidence of feasibility, optimality, or real-world fitness.

## Method-selection principles

- hand-solve or enumerate a small problem first to create a truth case for software tests;
- use a spreadsheet when managers need to inspect and interact with a compact model;
- use Python for batch calculation, data work, simulation, automated tests, and repetition;
- use Pyomo, OR-Tools, or a professional solver as scale, logic, gap, or infeasibility analysis grows;
- hybrid practice is common: data/ML estimates parameters, optimization forms alternatives, managers interpret and approve, and outcomes feed monitoring.

</div>
