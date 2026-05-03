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
  "episodes/02-logistic-regression/index.md"
  "episodes/02-logistic-regression/wechat.md"
  "episodes/02-logistic-regression/references.md"
  "episodes/02-logistic-regression/data/README.md"
  "episodes/02-logistic-regression/notebook.ipynb"
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
python3 -m json.tool episodes/02-logistic-regression/notebook.ipynb >/dev/null

MPLBACKEND=Agg python3 - <<'PY'
import json
import contextlib
import io
from pathlib import Path

for notebook_path in [
    Path("episodes/01-linear-regression/notebook.ipynb"),
    Path("episodes/02-logistic-regression/notebook.ipynb"),
]:
    notebook = json.loads(notebook_path.read_text())
    namespace = {"__name__": "__main__"}
    for cell_index, cell in enumerate(notebook["cells"]):
        if cell.get("cell_type") != "code":
            continue
        try:
            with contextlib.redirect_stdout(io.StringIO()):
                exec("".join(cell.get("source", [])), namespace)
        except Exception as exc:
            raise RuntimeError(f"{notebook_path}: code cell {cell_index} failed") from exc
PY

echo "Repository structure check passed."

if rg -n "\[NEEDS SOURCE\]" episodes algorithms tasks glossary.md >/tmp/learngeoai-needs-source.txt; then
  echo "Source markers found. Review before publication:"
  cat /tmp/learngeoai-needs-source.txt
fi
