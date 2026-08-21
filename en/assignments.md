---
title: "Cases and Exercises"
description: "MDMA cases, group exercises, real-world variants, tool choice, and reproducibility evidence."
lang: en
translation_url: /assignments/
permalink: /en/assignments/
page_key: assignments
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Cases &amp; exercises</p><h1>Assignments train decision thinking—not answer imitation</h1><p>The same problem may be solved with a spreadsheet, Python, a professional solver, analytical reasoning, or a hybrid. Grading concerns framing, assumptions, evidence, and advice—not a prescribed interface.</p></div></section>
<div class="content-shell" markdown="1">

## Three-layer assignment pattern

| Layer | Role | Learning emphasis | Graded? |
|---|---|---|---:|
| Group exercises GE1–GE5 | 30–90 minute modeling sprints | Recognize cash flow, decisions, objectives, constraints, uncertainty | No |
| Formal cases MDMA-C1–C6 | Open narrative to decision brief | Complete model, verification, sensitivity, explanation, reproduction | C1 practice; choose 3 of C2–C6 |
| Reality Lab variants | Change structure, evidence, or management objective | Discover model boundaries, compare methods, plan new evidence | Part of formal-case rubric |

Every task answers five questions: **What is the real decision? Why is this model appropriate? What drives the result? What else could solve it? What change would invalidate the advice?**

## Six formal cases

| ID | Decision | Base model | Acceptable alternatives/extensions | Minimum verification |
|---|---|---|---|---|
| MDMA-C1 | Acquire a truck-rental business? | Five-year DCF / NPV | Python cash-flow function, scenario tree, Monte Carlo, real options | Timeline, after-tax cash flow, discounting, thresholds |
| MDMA-C2 | Price and allocate two vehicle types | Demand-driven nonlinear optimization | SciPy, Pyomo, local search, integrality, robust demand, field experiment | Nonnegative demand, residuals, baseline, termination status |
| MDMA-C3 | Choose a coffee product mix | Fixed-recipe LP | SciPy/HiGHS, PuLP/Pyomo, batch MIP, multiobjective and supply-risk models | Recipe conservation, residuals, profit recomputation, bottleneck meaning |
| MDMA-C4 | Serve cities from two ports | Minimum-cost network flow | NetworkX, OR-Tools, LP, shortest-path allocation, capacity/time extensions | Node conservation, arc costs, demand, surplus treatment |
| MDMA-C5 | Expand maintenance and acquire aircraft | Mixed-integer program | SciPy MILP, Pyomo, OR-Tools, scenario/multiperiod/risk-adjusted planning | Domains and logic, dual budgets, gap, near-optimal plans |
| MDMA-C6 | Configure two cabin classes | Monte Carlo simulation | NumPy simulation, analytical expectation, stochastic programming, simulation optimization, dynamic RM | Seed replay, distributions/dependence, intervals, policy comparison |

Software is a medium for expressing a model. Any route is acceptable if it is reproducible, verifiable, and explainable. When two routes disagree, investigate the difference rather than selecting the prettier answer.

## Five group exercises

| ID | Decision | Minimum model | Variants to explore |
|---|---|---|---|
| MDMA-GE1 | Lease, buy with cash, or finance a car | Present value of differently timed cash flows | Residual value, liquidity, maintenance, insurance, tax, total ownership cost |
| MDMA-GE2 | Which shares should fund a cash target? | Integer liquidation after fees/tax while preserving future value | Greedy baseline, mean–variance, tax lots, transaction costs, risk limits |
| MDMA-GE3 | How should three fuels be jointly ordered? | Common-cycle EOQ under an inventory-value cap | Separate EOQs, discounts, random demand, dynamic inventory, service level |
| MDMA-GE4 | How can multiperiod investments fund an interim liability? | Cash-flow matching LP | Dynamic programming, reinvestment, rate scenarios, liquidity/default stress |
| MDMA-GE5 | Can annual saving reach a retirement target? | Compound-path Monte Carlo | Analytical expectation, bootstrap, quantile target, inflation, lifecycle allocation |

The finish line is not the reference number. Teams explain why totals cannot be directly compared, why a variable must be integer, why a constraint binds, or why an expected target is not a high-probability target.

## Reality Lab: complete at least one variant per case

Choose one and explain its management significance:

1. **Parameter variation:** costs, elasticity, rates, supply, residual value, or dependence;
2. **Structural variation:** batches, capacity, fixed cost, network disruption, multiperiod or sequential decisions;
3. **Objective variation:** profit versus risk, service, liquidity, resilience, or Pareto trade-offs;
4. **Data variation:** historical estimation, prediction interval, missingness, bias, drift, or shock;
5. **Implementation variation:** integrality, contracts, authority, override, and fallback after model failure.

## Tool-neutral common delivery

1. one-page decision brief: owner, scope, alternatives, advice, thresholds, risks, next step;
2. framing canvas: facts, assumptions, unknowns, values, variables, objective, constraints, boundaries;
3. data dictionary and provenance: units, timing, missingness, approvals, transformations;
4. **executable analysis package:** `.xlsx`, notebook, Python project, or another approved form;
5. mathematical/logical model plus tool mapping, independent of one software syntax;
6. hand case, baseline, residuals, boundaries, exceptions, infeasibility, and a counterexample;
7. Reality Lab, alternative-method comparison, validity boundary, and reproduction guide;
8. group report/presentation and individual contribution record.

## Reference-answer boundary

The instructor reference validates case meaning, typical structures, orders of magnitude, and alternative methods; it is not a unique implementation for students to imitate. Solutions remain controlled before submission. After release, students perform a **difference analysis** across scope, assumptions, formulation, algorithm, result, and recommendation, classifying differences as errors, equivalent expressions, or defensible real-world variants.

## Pre-release data-quality gates

- **DQ-01:** instructor approval of active-source priority over drafts;
- **DQ-02/03:** freeze C1 utilization/tax boundaries and C2 nonlinear/financing conventions;
- **DQ-04/05:** double-entry C3 tables and C4 arcs/costs; define supply surplus;
- **DQ-06:** define C5 zero-or-at-least-10 logic, budgets, and expansion-cost treatment;
- **DQ-07:** approve C6 objective, distributions, dependence, domain, iterations, seed, and interval.

An open gate calls for gap discovery, minimum clarification, or competing interpretations—not a false claim of a unique answer.

<div class="notice"><strong>Graded selection</strong>C1 is practice. Each group selects three cases from C2–C6, worth 25 points each. Tools carry no prestige premium; unexplained output, irreproducible runs, and treating solver output as a conclusion lose credit.</div>
</div>
