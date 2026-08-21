---
title: "Modeling Studio"
description: "MDMA spreadsheet modeling, verification, sensitivity, simulation, decision-brief, and AI-collaboration practice."
lang: en
translation_url: /labs/
permalink: /en/labs/
page_key: labs
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Modeling studio</p><h1>Every model claim leaves an inspection path</h1><p>“Solver found a solution” is not completion. Another group should be able to understand, recompute, break, and rebuild the model.</p></div></section>
<div class="content-shell" markdown="1">

## Standard workbook architecture

| Sheet/region | Content | Quality condition |
|---|---|---|
| README | Problem, authors, version, run method, tool version | A new reader finds the entry point in five minutes |
| Inputs | Source, units, range, timing convention, approved values | No formulas or decisions mixed into inputs |
| Model | Variables, formulas, objective, constraints, random process | Short formulas, clear names, no magic numbers |
| Checks | Units, conservation, residuals, boundaries, error status | Failures are visible and block recommendation |
| Scenarios | Baseline, stress, thresholds, counterexamples, seeds | Frozen inputs are not overwritten; results replay |
| Output | KPIs, recommendation, risk, interval, status | Traces to every statement in the decision brief |

## Six verification studios

1. **Cash-flow recomputation:** independently rebuild NPV/IRR and test taxes, growth, terminal value, and negative cash flow;
2. **Constraint audit:** output LHS, RHS, slack, unit, and violation flag for every constraint;
3. **Feasibility adversary:** construct infeasible, unbounded, noninteger, and solver-failure cases;
4. **Network conservation:** check inflow, outflow, supply, demand, and surplus by node;
5. **Simulation replay:** fix seeds and check distributions, dependence, iterations, intervals, risk, and strategy difference;
6. **Model review:** reproduce another group's workbook from its README and submit an error taxonomy plus minimum repair.

## Sensitivity and scenario design

- ask which change could reverse the action before choosing a parameter and range;
- distinguish one-factor, joint stress, structural change, and data error;
- report thresholds, crossovers, valid shadow-price ranges, and nonlinear breaks;
- do not call an unapproved subjective range a statistical confidence interval;
- compare near-optimal solutions on implementation complexity, robustness, and explainability.

## One-page decision brief

```text
Decision owner / decision date / horizon
Problem and alternatives
Recommendation and expected value
Key assumptions and evidence
Thresholds, risks, and counterexamples
Implementation owner, trigger, override, and review date
```

## AI-agent studio rules

An agent asks first about objectives, units, sources, and domains. It may propose check formulas, counterexamples, and alternative structures. It may not fill missing data, silently relax constraints, falsely claim Solver/simulation execution, access another group's work, or generate a complete graded model before deadline. Every adopted suggestion records suggestion → verification → conclusion.

<div class="notice"><strong>Tool neutrality</strong>Excel is the main teaching workbench. When licensing, platform, or accessibility prevents its use, an instructor-approved solver/simulation alternative may be used while preserving model semantics, version evidence, and acceptance criteria.</div>
</div>
