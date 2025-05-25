#!/bin/sh
set -eux

shopt -s globstar nullglob

echo "::group::Files to check"
printf '%s\n' **/*.md
echo "::endgroup::"

echo "::group::write-good suggestions"
if write-good **/*.md; then
  echo "✅ No suggestions"
else
  echo "❌ Suggestions above"
  exit 1
fi
echo "::endgroup::"