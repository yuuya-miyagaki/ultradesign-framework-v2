#!/bin/bash
# WCAG AA アクセシビリティ基本チェック
# Usage: bash check_accessibility.sh [project-root]

ROOT="${1:-.}"
ERRORS=0

echo "♿ Accessibility Check..."
echo "========================"

# 1. img alt attribute check
echo ""
echo "🖼️  Image alt attribute check..."
MISSING_ALT=$(grep -rn '<img ' \
  --include="*.html" --include="*.jsx" --include="*.tsx" --include="*.vue" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git | grep -v 'alt=')
if [ -n "$MISSING_ALT" ]; then
  echo "  ❌ Images without alt attribute:"
  echo "$MISSING_ALT" | head -5
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ All images have alt attributes"
fi

# 2. Semantic HTML check
echo ""
echo "🏗️  Semantic HTML check..."
HAS_MAIN=$(grep -rl '<main' \
  --include="*.html" --include="*.jsx" --include="*.tsx" --include="*.vue" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git | head -1)
if [ -z "$HAS_MAIN" ]; then
  echo "  ⚠️  No <main> element found"
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ <main> element found"
fi

# 3. prefers-reduced-motion check
echo ""
echo "🎬 prefers-reduced-motion check..."
HAS_MOTION=$(grep -rl 'prefers-reduced-motion' \
  --include="*.css" --include="*.scss" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git | head -1)
HAS_ANIM=$(grep -rl 'animation\|transition\|@keyframes' \
  --include="*.css" --include="*.scss" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git | head -1)
if [ -n "$HAS_ANIM" ] && [ -z "$HAS_MOTION" ]; then
  echo "  ❌ Animations found but no prefers-reduced-motion"
  ERRORS=$((ERRORS + 1))
elif [ -n "$HAS_MOTION" ]; then
  echo "  ✅ prefers-reduced-motion supported"
else
  echo "  ✅ No animations (not needed)"
fi

# 4. lang attribute check
echo ""
echo "🌐 lang attribute check..."
MISSING_LANG=$(grep -rl '<html' \
  --include="*.html" \
  "$ROOT" 2>/dev/null | grep -v node_modules | grep -v .git | \
  xargs grep -L 'lang=' 2>/dev/null)
if [ -n "$MISSING_LANG" ]; then
  echo "  ❌ HTML files without lang attribute:"
  echo "$MISSING_LANG"
  ERRORS=$((ERRORS + 1))
else
  echo "  ✅ lang attribute present"
fi

echo ""
echo "========================"
if [ $ERRORS -eq 0 ]; then
  echo "✅ Accessibility check PASSED"
  exit 0
else
  echo "❌ Accessibility check FAILED ($ERRORS issues)"
  exit 1
fi
