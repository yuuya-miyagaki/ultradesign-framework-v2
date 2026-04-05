#!/bin/bash
# AI Slop 自動検出スクリプト
# Usage: bash check_slop.sh [project-root]

ROOT="${1:-.}"
ERRORS=0

echo "🔍 AI Slop Detection..."
echo "========================"

# 1. Lorem ipsum check
echo ""
echo "📝 Lorem ipsum check..."
LOREM=$(grep -rn "lorem ipsum\|Lorem Ipsum\|dolor sit amet" \
  --include="*.html" --include="*.jsx" --include="*.tsx" --include="*.vue" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git)
if [ -n "$LOREM" ]; then
  echo "  ❌ Lorem ipsum found:"
  echo "$LOREM" | head -5
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ No Lorem ipsum"
fi

# 2. Generic gradient check (blue→purple)
echo ""
echo "🎨 Generic gradient check..."
GRADIENTS=$(grep -rn "linear-gradient.*blue.*purple\|linear-gradient.*#667.*#764\|linear-gradient.*#6366f1.*#8b5cf6" \
  --include="*.css" --include="*.scss" --include="*.html" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git)
if [ -n "$GRADIENTS" ]; then
  echo "  ⚠️  Possible AI-generic gradients found:"
  echo "$GRADIENTS" | head -5
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ No generic gradients"
fi

# 3. Oversized border-radius check
echo ""
echo "📐 Oversized border-radius check..."
RADIUS=$(grep -rn "border-radius:\s*\(50px\|999px\|9999px\|50%\)" \
  --include="*.css" --include="*.scss" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git)
if [ -n "$RADIUS" ]; then
  echo "  ⚠️  Oversized border-radius found:"
  echo "$RADIUS" | head -5
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ No oversized border-radius"
fi

# 4. Generic font check
echo ""
echo "🔤 Generic AI font check..."
FONTS=$(grep -rn "font-family.*\(Inter\|Roboto\|Arial\|system-ui\)" \
  --include="*.css" --include="*.scss" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git)
if [ -n "$FONTS" ]; then
  echo "  ⚠️  Generic/AI-common fonts detected (review intent):"
  echo "$FONTS" | head -5
  # Not counted as error — may be intentional
else
  echo "  ✅ No generic AI fonts"
fi

echo ""
echo "========================"
if [ $ERRORS -eq 0 ]; then
  echo "✅ AI Slop check PASSED"
  exit 0
else
  echo "❌ AI Slop check FAILED ($ERRORS issues)"
  exit 1
fi
