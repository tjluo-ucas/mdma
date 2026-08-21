---
title: "Cases"
description: "Six MDMA case decisions, model artifacts, verification evidence, and data-quality gates."
lang: en
translation_url: /assignments/
permalink: /en/assignments/
page_key: assignments
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Case challenges</p><h1>Six cases, six ways a model can fail</h1><p>The public site gives decision types and evidence requirements. Frozen parameters, image tables, instructor workbooks, and solutions remain in the controlled course environment.</p></div></section>
<div class="content-shell" markdown="1">

## Case map

| ID | Management decision | Model artifact | Minimum verification | Difficulty |
|---|---|---|---|---|
| MDMA-C1 | Acquire a truck-rental business? | Five-year DCF, NPV, utilization/market scenarios, terminal resale | Timeline, after-tax cash flow, discounting, threshold recomputation | D1–D2 |
| MDMA-C2 | How should two vehicle types be priced? | Nonlinear pricing under linear demand, resources, financing | Nonnegative demand, residuals, solver status, baseline | D2–D3 |
| MDMA-C3 | What coffee product mix maximizes weekly profit? | Fixed-recipe LP, supply/capacity/minimums, shadow prices | Recipe conservation, residuals, profit recomputation, sensitivity | D2–D3 |
| MDMA-C4 | How should two ports serve five cities at minimum cost? | Minimum-cost network flow | Flow conservation, arc cost, demand, surplus handling | D2–D3 |
| MDMA-C5 | Expand maintenance and acquire two aircraft types? | MIP with budgets, capacity, expansion binary, purchase logic | Domains, zero-or-at-least-10, dual budgets, gap, scenarios | D3–D4 |
| MDMA-C6 | How many first/economy rows should a flight use? | Monte Carlo demand/capacity/revenue model | Seed replay, distributions/dependence, CI, policy replay | D3–D4 |

## Common delivery

1. one-page decision brief with owner, problem, scope, recommendation, threshold, and risk;
2. assumption/data dictionary with source, unit, range, missingness, and approved additions;
3. executable workbook separated into Input, Model, Checks, Scenarios, and Output;
4. mathematical formulation with variables, objective, constraints, indices, units, and solver settings;
5. hand case, residuals, baseline, boundary, exception, and infeasibility tests;
6. sensitivity/scenarios, drivers, counterexamples, implementation conditions, and validity boundary;
7. group report/presentation and individual contribution record.

## Pre-release data-quality gates

- **DQ-01:** instructor approval of active-source priority over earlier drafts;
- **DQ-02/03:** freeze C1 utilization/tax boundaries and C2 nonlinear/financing conventions;
- **DQ-04/05:** double-entry transcription of C3 image tables and C4 arcs/costs; define supply surplus;
- **DQ-06:** define C5 zero-or-at-least-10 logic, separate budgets, and expansion-cost treatment;
- **DQ-07:** approve C6 objective, distributions, dependence, row domain, iterations, seed, and interval.

Until a gate closes, “identify the gap and request the minimum clarification” may be a task; the case may not be released as though it has one complete solvable answer.

<div class="notice"><strong>Graded selection</strong>C1 is practice only. Each group chooses three graded cases from C2–C6, worth 25 points each. Approved rules govern extra, missing, late, resubmitted, and membership-changing work. AI cannot choose for the student.</div>
</div>
