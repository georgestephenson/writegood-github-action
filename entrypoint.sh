#!/bin/sh
set -eux

echo "::group::Files to check"
ls -1 ./*.md || true
echo "::endgroup::"

echo "::group::write-good suggestions"
if write-good ./*.md; then
  echo "✅ No suggestions"
else
  echo "❌ Suggestions above"
  exit 1
fi
echo "::endgroup::"