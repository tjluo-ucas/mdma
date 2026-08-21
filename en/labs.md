---
title: "Modeling Studio"
description: "Tool-neutral MDMA experiments, Python and spreadsheet routes, verification, real-world variants, and decision briefs."
lang: en
translation_url: /labs/
permalink: /en/labs/
page_key: labs
---

<section class="page-hero"><div class="page-hero-inner"><p class="eyebrow">Modeling studio</p><h1>The experiment concerns decision logic—<br>not one application</h1><p>Excel, Python, and professional solvers are implementation routes.<br>Completion means another person can understand, rerun, challenge, and identify when not to follow the recommendation.</p></div></section>
<div class="content-shell" markdown="1">

## Common pattern:<br>Frame → Represent → Solve<br>Challenge → Decide

1. **Frame:** state owner, decision, alternatives, values, horizon, and success criteria;
2. **Represent:** draw a timeline, influence diagram, network, or variable–constraint sketch before syntax;
3. **Solve:** choose the simplest sufficiently reliable method; record versions, parameters, status, and run evidence;
4. **Challenge:** attack it with a hand case, second implementation, boundaries, stress, counterexample, or backtest;
5. **Decide:** explain action, thresholds, risk, implementation ownership, and evidence still worth collecting.

If changing software makes the model impossible to explain, the learner has acquired a button sequence rather than modeling judgment.

## Tool choice is not a prestige ladder

| Route | Good fit | Typical tools | Evidence that must accompany it |
|---|---|---|---|
| Analytical/hand | Small scale, closed form, intuition building | Algebra, timeline, enumeration, small cases | Assumptions, derivation, bounds, numerical cross-check |
| Spreadsheet | Small model, management communication, interactive inputs | Excel / LibreOffice + Solver | Formula tracing, input separation, checks, Solver setup/status |
| Python analysis | Batch scenarios, Monte Carlo, automation, cleaning, plots | Jupyter, NumPy, pandas, SciPy | Locked environment, seed, execution order, assertions, logs, outputs |
| Python modeling layer | Growth or solver interchangeability | Pyomo, CVXPY, PuLP, OR-Tools | Solver/version, termination, tolerance, gap, licensing note |
| Professional platform | Large MIP, complex networks, multi-period/stochastic work | Gurobi, CPLEX, SCIP, commercial simulation | Alternative reproduction path, licensing boundary, export and audit log |
| Hybrid route | Communication plus prediction, optimization, deployment | Excel front end + Python/service | Data contract, version synchronization, fallback, cross-tool consistency test |

Complexity is not quality. Do not introduce a black box when a transparent small model answers the question; do not force Excel when scale, repetition, or uncertainty has outgrown it.

## Reproducible analysis package

| Component | Spreadsheet | Python/code | Shared acceptance condition |
|---|---|---|---|
| README | Front sheet | `README.md` | Entry point and run method found in five minutes |
| Inputs | Separate region/sheet | `data/` + schema/config | Source, units, time, transformation traceable |
| Model | Formulas and Solver model | `src/` or notebook functions | Variables, objective, constraints, random process agree |
| Checks | Checks sheet | assertions/tests | Failure is visible and blocks advice |
| Scenarios | Scenario table | parameterized experiment config | Baseline preserved; batch and replay supported |
| Output | KPIs and charts | `results/` + report | Directly supports brief and displays status |
| Environment | App/plugin versions | `requirements.txt` or equivalent lock | A third party can rebuild the environment |

## Six experiment families—not six button runs

1. **Cash-flow experiment:** total versus present value; vary rate, residual, tax, utilization, and exit time to find reversal thresholds;
2. **Pricing experiment:** visualize price–demand–profit, then compare continuous, integer, local-search, and demand-error policies;
3. **Resource-bottleneck experiment:** identify binding constraints and prices, then add batches, disruption, or a second objective;
4. **Network experiment:** enforce node balance; compare network flow, generic LP, and shortest-path allocation; add capacity, closure, or time;
5. **Discrete-investment experiment:** test binary logic, domains, gap, and near-optimal plans; compare one-shot, multiperiod, and no-expansion baselines;
6. **Uncertainty experiment:** replay fixed seeds and report distribution, interval, and downside; compare analytical expectation, Monte Carlo, bootstrap, or stochastic optimization.

## Every experiment needs a method comparison

Choose at least one:

- **small-instance truth:** enumerate or hand-solve a reduced model;
- **independent implementation:** Excel versus Python, two Python libraries, or two solvers;
- **naive baseline:** current policy, greedy rule, mean-value plan, or management intuition;
- **structural alternative:** deterministic versus stochastic, continuous versus integer, single versus multiple objectives;
- **real backtest:** evaluate on a historical period or evidence not used to build the model.

Different results do not automatically mean one tool is wrong. Compare data, units, timing, domains, objective sign, constraint direction, tolerance, seed, and stopping condition first.

## Minimum experiment record

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

## AI/ML in the experiment

AI/ML may estimate demand, cost, risk, and scenarios or propose formulas, code, tests, and counterexamples. An optimizer searches within an objective and constraints. Neither owns problem definition or accountability. AI-generated code records prompt/model version, receives line-by-line data/formula review, and is checked by tests or an independent implementation. Without an actual run log, no one may claim execution or verification.

<div class="notice"><strong>Acceptance principle</strong>Excel is not mandatory and Python earns no automatic bonus. The assessed object is the way of thinking: correct problem, defensible model, reproducible evidence, compared alternatives, and advice that knows its boundary.</div>
</div>
