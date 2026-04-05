# Ultradesign Framework v2.0 Design

## Flow & Gates

See `WORKFLOW.md` for the canonical flow, hard gates, lightweight entry rules, and approval protocol.

Quick reference:

```text
onboard → brainstorm → [GATE discovery] → design-brief → [GATE requirements] → handover → [GATE handover] → design-system → craft-* → review → [GATE design_review] → frontend → seo → infra? → qa → [GATE qa] → deploy
```

> `infra` is optional — skip when the project has no backend requirements.

## Visual Verification Rule

For all design and implementation work, verify via browser preview, not tests.

Exceptions requiring automated testing:

- API integration logic
- data processing functions
- authentication flows

## Design Principles

### 1. 意図のないピクセルは置かない

すべてのデザイン要素に「なぜそこに置いたか」を説明できること。装飾のための装飾は禁止。

- この要素を削除したら体験は劣化するか
- この余白は視覚的リズムに貢献しているか
- このアニメーションは理解を助けるか

アクセシビリティ原則:

- WCAG AA 準拠を最低基準とする
- `prefers-reduced-motion` を全アニメーションに対応
- セマンティック HTML を徹底
- スクリーンリーダー対応の `alt` と `aria-label` を入れる

### 2. AI スロップを排除する

「AI が作りました」と一目でわかる無難なデザインを避ける。

- 汎用的な青紫グラデーションを惰性で使わない
- 巨大シャドウや過剰な角丸を乱用しない
- テンプレ的なカード構成をそのまま使わない
- 意味のないアニメーションや飾りを増やさない

### 3. モダン CSS を活用する

JS への依存を最小限にし、最新 CSS 仕様を優先する。

- `@container`
- `:has()`
- `@property`
- `subgrid`

### 4. 全推奨に「なぜ」を付ける

推奨は必ず根拠とセットで示す。

### 5. ビジュアル検証駆動

進行中の判断はプレビューとスクリーンショットを証拠にする。

### 6. トップレベルの美学

- 光学補正
- 意図的非対称
- エディトリアルモーメント
- マテリアリティ

### 7. Design-to-Deployment

モックで止めず、実装と公開まで責任を持つ。

## Canonical Outputs

- `onboard`: site analysis or codebase map in `docs/specs/`
- `brainstorm`: direction note that seeds `BRAND-DIRECTION` and `CONTENT-STRUCTURE`
- `design-brief`: finalized requirements package in `docs/requirements/`
- `design-handover`: Dev handover in `docs/handover/TO-DEV.md`
- `design-system`: design tokens and system spec in `docs/specs/`
- `craft-*`: HTML/CSS/JS implementation with browser preview evidence
- `review`: findings and fixes in `docs/qa-reports/`
- `frontend`: component implementation in source code
- `qa`: final acceptance evidence in `docs/qa-reports/`
- `deploy`: deployment notes and delivery summary

## When to Load Skills

- Read `skills/discovery/<skill>/SKILL.md` for onboard, brainstorm, requirements drafting, or handover drafting.
- Read `skills/design/<skill>/SKILL.md` for the active craft or enhancement phase.
- Read `skills/implement/<skill>/SKILL.md` for frontend, seo, qa, infra, or deploy.
- Read `skills/core/second-opinion/SKILL.md` after repeated failures or when an independent challenge is needed.
- Read `skills/core/retro/SKILL.md` after release, milestone, or project completion.

## Design Data Reference

Use design data files to inform decisions:

| ファイル | 内容 | 使い方 |
| ------- | ---- | ------ |
| `data/styles.csv` | 58 デザインスタイル | `grep -i "キーワード" data/styles.csv` |
| `data/colors.csv` | 96 カラーパレット | `grep -i "プロダクトタイプ" data/colors.csv` |
| `data/typography.csv` | 57 フォントペアリング | `grep -i "ムード" data/typography.csv` |
| `data/landing.csv` | 30 LP パターン | `grep -i "用途" data/landing.csv` |

## Done Criteria

Work is ready to deliver when **all** of the following are true:

1. The requirement docs in `docs/requirements/` reflect the final approved scope.
2. `docs/handover/TO-DEV.md` is initialized when work is being handed to implementation.
3. Browser preview screenshots exist for 3 breakpoints (mobile, tablet, desktop).
4. `design-review` has returned PASS and `phase_approvals.design_review = "approved"`.
5. `scripts/check_slop.sh` and `scripts/check_accessibility.sh` both exit 0 when applicable.
6. `docs/STATUS.md` is updated with current phase and next action.
