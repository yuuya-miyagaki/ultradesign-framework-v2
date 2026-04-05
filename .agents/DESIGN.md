# Ultradesign Framework v2.0 Design

## Flow & Gates

See `WORKFLOW.md` for the canonical flow, hard gates, lightweight entry rules, and approval protocol.

Quick reference:

```
onboard → brainstorm → [GATE] → design-brief → [GATE] → design-system → craft-* → enhance → review → [GATE] → frontend → seo → infra? → deploy → [GATE]
```

> `infra` is optional — skip when the project has no backend requirements.

## Visual Verification Rule

For all design and implementation work, verify via browser preview, not tests.

Exceptions requiring automated testing:
- API integration logic,
- data processing functions,
- authentication flows.

## Canonical Outputs

- `onboard`: codebase map or site analysis in `docs/specs/`.
- `brainstorm`: design direction note in `docs/specs/`.
- `design-brief`: finalized brief in `docs/briefs/DESIGN-BRIEF.md`.
- `design-system`: design tokens and system spec in `docs/specs/`.
- `craft-*`: HTML/CSS/JS implementation with browser preview evidence.
- `review`: findings and fixes in `docs/qa-reports/`.
- `frontend`: component implementation in source code.
- `deploy`: deployment notes and handover summary.

## When to Load Skills

- Read `skills/discovery/<skill>/SKILL.md` for onboard, brainstorm, or brief.
- Read `skills/design/<skill>/SKILL.md` for the active craft or enhancement phase.
- Read `skills/implement/<skill>/SKILL.md` for frontend, seo, infra, or deploy.
- Read `skills/core/second-opinion/SKILL.md` after repeated failures or when an independent challenge is needed.
- Read `skills/core/retro/SKILL.md` after release, milestone, or project completion.

## Design Data Reference

Use design data files to inform decisions:

| ファイル | 内容 | 使い方 |
| ------- | ---- | ------ |
| `data/styles.csv` | 58 デザインスタイル | `grep -i "キーワード" data/styles.csv` |
| `data/colors.csv` | 96 カラーパレット | `grep -i "プロダクトタイプ" data/colors.csv` |
| `data/typography.csv` | 57 フォントペアリング | `grep -i "ムード" data/typography.csv` |
| `data/landing.csv` | 30 LPパターン | `grep -i "用途" data/landing.csv` |

## Color System

外部データ参照: `data/colors.csv`

**60-30-10 ルール:**
- 60% — ベースカラー（背景、余白）
- 30% — セカンダリカラー（カード、セクション区分）
- 10% — アクセントカラー（CTA、インタラクティブ要素）

**カラー選択手順:**
1. プロダクトタイプを特定 → `data/colors.csv` から候補取得
2. ブランドカラーがあればそれを優先
3. **OKLCH / OKLAB 色空間**を優先的に使用
4. コントラスト比チェック（通常テキスト: 4.5:1 以上、CTA: 7:1 以上）
5. ダークモード対応カラーを同時設計

```css
:root {
  --color-primary: oklch(60% 0.15 250);
  --color-secondary: oklch(70% 0.10 250);
  --color-accent: oklch(65% 0.20 30);
  --color-bg: oklch(20% 0.05 250);
  --color-text: oklch(98% 0.01 250);
  --color-surface: oklch(25% 0.08 250);
}
```

## Typography System

外部データ参照: `data/typography.csv`

**Variable Fonts 優先。** `font-variation-settings` を活用し、フォントが実際に持つ軸のみを記述すること。

**タイプスケール（Modular Scale 1.25）:**

```css
:root {
  --fs-xs: 0.75rem;
  --fs-sm: 0.875rem;
  --fs-base: 1rem;
  --fs-lg: 1.25rem;
  --fs-xl: 1.5rem;
  --fs-2xl: 2rem;
  --fs-3xl: 2.5rem;
  --fs-4xl: 3rem;
  --fs-hero: clamp(2.5rem, 5vw + 1rem, 4.5rem);
}
```

## Animation Guidelines

**パフォーマンス優先:**
- ✅ `transform`, `opacity` — GPU処理、60fps維持
- ❌ `width`, `height`, `top`, `left`, `margin`, `padding` — CPUリペイント

**デュレーション基準:**

| 用途 | 時間 | イージング |
| ---- | ---- | --------- |
| ホバー応答 | 150-250ms | ease-out |
| モーダル/ドロワー | 300-400ms | cubic-bezier(0.16, 1, 0.3, 1) |
| ページ遷移 | 400-600ms | cubic-bezier(0.25, 0.46, 0.45, 0.94) |
| スクロール連動 | CSS変数 + IntersectionObserver | — |

**必須:**

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
```

## Done Criteria

Work is ready to deliver when **all** of the following are true:

1. The design brief in `docs/briefs/DESIGN-BRIEF.md` reflects the final scope.
2. Browser preview screenshots exist for 3 breakpoints (mobile, tablet, desktop).
3. `design-review` skill has returned PASS.
4. `scripts/check_slop.sh` and `scripts/check_accessibility.sh` both exit 0.
5. `docs/STATUS.md` is updated with current phase and next action.
6. Handover document initialized from `templates/HANDOVER.template.md` if delivering to client.
