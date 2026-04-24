#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "README.md"
  "templates/episode-index-template.md"
  "templates/wechat-template.md"
  "templates/references-template.md"
  "episodes/01-linear-regression/index.md"
  "episodes/01-linear-regression/wechat.md"
  "episodes/01-linear-regression/references.md"
  "episodes/01-linear-regression/data/README.md"
  "episodes/01-linear-regression/notebook.ipynb"
  "algorithms/regression.md"
  "algorithms/classification.md"
  "algorithms/spatial-statistics.md"
  "tasks/landslide-susceptibility.md"
  "tasks/land-cover-classification.md"
  "tasks/spatial-interpolation.md"
  "glossary.md"
  "references.bib"
)

for path in "${required_files[@]}"; do
  if [[ ! -f "$path" ]]; then
    echo "Missing required file: $path" >&2
    exit 1
  fi
done

python3 -m json.tool episodes/01-linear-regression/notebook.ipynb >/dev/null

echo "Repository structure check passed."

if rg -n "\[NEEDS SOURCE\]" episodes algorithms tasks glossary.md >/tmp/learngeoai-needs-source.txt; then
  echo "Source markers found. Review before publication:"
  cat /tmp/learngeoai-needs-source.txt
fi
