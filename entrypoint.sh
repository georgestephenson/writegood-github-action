#!/usr/bin/env bash
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
fi
echo "::endgroup::"