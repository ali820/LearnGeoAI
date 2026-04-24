# GeoAI Algorithm Series Design

## Purpose

Build a serialized WeChat Official Account column on classic GeoAI algorithms, paired with a GitHub knowledge base that preserves reusable notes, code, figures, and references. The series will progress from statistical methods to machine learning, deep learning, foundation models, and large-model methods, while each episode is anchored in a concrete geoscience task.

## Audience

The primary audience is graduate students and early-career researchers in geography, remote sensing, GIS, environmental science, ecology, urban studies, hazards, and related fields. They are assumed to understand geoscience problems but may have uneven training in statistics, machine learning, and deep learning.

## Editorial Positioning

The series should be readable as a WeChat article and reusable as a GitHub learning resource. Each article should explain why the algorithm matters for geoscience, build intuition before formulas, and then show a minimal but meaningful Python implementation. Claims about algorithm history, benchmark performance, datasets, or state-of-the-art status must be cited or marked as `[NEEDS SOURCE]`.

## Organization

Use a hybrid structure:

- The overall series follows algorithmic development: statistics, machine learning, deep learning, foundation models, and large models.
- Each episode uses one geoscience task to make the algorithm concrete.
- GitHub maintains both episode order and cross-cutting indexes by algorithm family and task type.

This structure keeps the learning path systematic while making each WeChat article problem-driven and readable.

## Episode Template

Each episode should follow a stable structure:

1. Geoscience problem: introduce the practical task, data type, and why the method is useful.
2. Algorithm intuition: explain the method with plain language and diagrams.
3. Core formulation: include only the formulas needed to understand the method.
4. Workflow figure: show inputs, model logic, outputs, and interpretation.
5. Python example: provide a small reproducible example in the GitHub repository.
6. Geoscience interpretation: connect model output to domain meaning.
7. Applicability and limits: explain assumptions, failure modes, and uncertainty.
8. Further reading: include references and source links; unsupported claims are marked `[NEEDS SOURCE]`.

## First Season Scope

The first season covers statistical methods and traditional machine learning. Proposed episodes:

1. Linear regression: temperature-elevation relationships.
2. Logistic regression: landslide susceptibility or binary hazard mapping.
3. Principal component analysis: dimensionality reduction for multi-source environmental variables.
4. Kriging: spatial interpolation and spatial autocorrelation.
5. Time-series decomposition or ARIMA: climate trend and seasonality analysis.
6. Bayesian methods: uncertainty expression in geoscience inference.
7. K-nearest neighbors: similar-region retrieval or simple spatial classification.
8. K-means clustering: unsupervised grouping of land-surface or environmental regimes.
9. Decision trees: interpretable rule-based classification.
10. Random forests: land-cover classification or environmental variable importance.
11. Support vector machines: small-sample remote-sensing classification.
12. GBDT/XGBoost: ecological, environmental, or hazard risk modeling.

The exact geoscience case for each episode can be adjusted when drafting, depending on available open data and figure/code feasibility.

## GitHub Repository Model

The repository should support both reading and reuse. Recommended structure:

```text
LearnGeoAI/
  README.md
  episodes/
    01-linear-regression/
      index.md
      wechat.md
      notebook.ipynb
      figures/
      data/README.md
      references.md
  algorithms/
    regression.md
    classification.md
    spatial-statistics.md
  tasks/
    landslide-susceptibility.md
    land-cover-classification.md
    spatial-interpolation.md
  glossary.md
  references.bib
```

Episode folders are the main unit of work. `index.md` is the GitHub long-form version, `wechat.md` is the WeChat-ready version, `notebook.ipynb` contains runnable code, `figures/` stores article figures, and `references.md` records sources used by that episode.

## Visual Style

The series should be visually rich but not decorative. Preferred visuals:

- Concept diagrams showing algorithm intuition.
- Workflow diagrams mapping geoscience data to model outputs.
- Simple plots generated from the example code.
- Comparison tables for assumptions, strengths, and limitations.

Figures should be simple enough for WeChat reading and traceable enough for GitHub reuse. If a figure is based on external data or a published result, the source must be cited.

## Evidence Discipline

Do not invent citations, datasets, thresholds, results, or performance comparisons. When a claim needs support and the source is not yet available, mark it as `[NEEDS SOURCE]`. Distinguish:

- Observation: what the data or literature directly shows.
- Interpretation: what the result likely means.
- Mechanism: why a pattern may occur.
- Implication: how the result may inform geoscience analysis.

Avoid strong causal language unless the method and evidence support it.

## Production Workflow

For each episode:

1. Choose the geoscience task and algorithm.
2. Draft a concise outline for WeChat and GitHub.
3. Identify needed references and open data, or mark gaps as `[NEEDS SOURCE]`.
4. Create the GitHub episode folder.
5. Write the GitHub `index.md` first as the source version.
6. Derive `wechat.md` from `index.md` with a more readable narrative and shorter code excerpts.
7. Add notebook code and generated figures.
8. Run the notebook or code checks before publication.
9. Publish to WeChat and link back to the GitHub episode.

## Success Criteria

The design is successful if each episode can be read independently on WeChat, reproduced or extended from GitHub, and later indexed into a larger GeoAI learning map. The first milestone is a complete first episode with article text, figures, references, and runnable code.

## Next Decisions

- Confirm whether the first episode should remain linear regression or use a stronger opening topic.
- Select open datasets per episode based on openness, simplicity, and relevance.
- Define a lightweight reusable visual template before drafting the first article.
