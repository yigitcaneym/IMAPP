#!/usr/bin/env bash
set -euo pipefail

if command -v latexmk >/dev/null 2>&1; then
  compiler="latexmk -pdf -interaction=nonstopmode"
elif command -v tectonic >/dev/null 2>&1; then
  compiler="tectonic"
else
  echo "latexmk or tectonic is required to build the notes." >&2
  exit 1
fi

while IFS= read -r -d '' texfile; do
  echo "Building ${texfile}"
  (cd "$(dirname "${texfile}")" && ${compiler} "$(basename "${texfile}")")
done < <(find semesters -name 'lecture.tex' -print0)
