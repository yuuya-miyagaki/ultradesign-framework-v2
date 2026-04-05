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

## Canonical Outputs

- `onboard`: site analysis or codebase map in `docs/specs/`
- `brainstorm`: direction note that seeds `BRAND-DIRECTION` and `CONTENT-STRUCTURE`
- `design-brief`: finalized requirements package in `docs/requirements/`
- `handover`: Dev handover in `docs/handover/TO-DEV.md`
- `design-system`: design tokens and system spec in `docs/specs/`
- `craft-*`: HTML/CSS/JS implementation with browser preview evidence
- `review`: findings and fixes in `docs/qa-reports/`
- `frontend`: component implementation in source code
- `deploy`: deployment notes and delivery summary

## When to Load Skills

- Read `skills/discovery/<skill>/SKILL.md` for onboard, brainstorm, or requirements drafting.
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
| `data/landing.csv` | 30 LP パターン | `grep -i "用途" data/landing.csv` |

## Done Criteria

Work is ready to deliver when **all** of the following are true:

1. The requirement docs in `docs/requirements/` reflect the final approved scope.
2. `docs/handover/TO-DEV.md` is initialized when work is being handed to implementation.
3. Browser preview screenshots exist for 3 breakpoints (mobile, tablet, desktop).
4. `design-review` has returned PASS and `phase_approvals.design_review = "approved"`.
5. `scripts/check_slop.sh` and `scripts/check_accessibility.sh` both exit 0 when applicable.
6. `docs/STATUS.md` is updated with current phase and next action.
