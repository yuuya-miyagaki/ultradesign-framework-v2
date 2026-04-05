# Ultradesign Framework v2.0 Reference

## Skill Index

| Category | Skill | Path |
|----------|-------|------|
| Discovery | `design-onboard` | `skills/discovery/design-onboard/SKILL.md` |
| Discovery | `design-brainstorm` | `skills/discovery/design-brainstorm/SKILL.md` |
| Discovery | `design-brief` | `skills/discovery/design-brief/SKILL.md` |
| Handover | `design-handover` | `skills/discovery/design-handover/SKILL.md` |
| Design | `craft-landing` | `skills/design/craft-landing/SKILL.md` |
| Design | `craft-portfolio` | `skills/design/craft-portfolio/SKILL.md` |
| Design | `craft-product-site` | `skills/design/craft-product-site/SKILL.md` |
| Design | `craft-dashboard` | `skills/design/craft-dashboard/SKILL.md` |
| Design | `craft-ecommerce` | `skills/design/craft-ecommerce/SKILL.md` |
| Design | `design-system` | `skills/design/design-system/SKILL.md` |
| Design | `design-tokens` | `skills/design/design-tokens/SKILL.md` |
| Design | `design-review` | `skills/design/design-review/SKILL.md` |
| Design | `hero-video` | `skills/design/hero-video/SKILL.md` |
| Design | `craft-3d-hero` | `skills/design/craft-3d-hero/SKILL.md` |
| Design | `ai-chat-widget` | `skills/design/ai-chat-widget/SKILL.md` |
| Design | `animation-craft` | `skills/design/animation-craft/SKILL.md` |
| Implement | `craft-frontend` | `skills/implement/craft-frontend/SKILL.md` |
| Implement | `seo-optimization` | `skills/implement/seo-optimization/SKILL.md` |
| Implement | `infrastructure-setup` | `skills/implement/infrastructure-setup/SKILL.md` |
| Implement | `qa` | `skills/implement/qa/SKILL.md` |
| Implement | `deploy-management` | `skills/implement/deploy-management/SKILL.md` |
| Core | `second-opinion` | `skills/core/second-opinion/SKILL.md` |
| Core | `retro` | `skills/core/retro/SKILL.md` |
| Core | `design-workflow` | `skills/core/design-workflow/SKILL.md` |

## Checklists

- `checklists/design-quality.md`
- `checklists/code-quality.md`
- `checklists/gate-compliance.md`

## Validation Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| `scripts/check_status.py` | `STATUS.md` の構造検証 | `python3 .agents/scripts/check_status.py --root .` |
| `scripts/check_to_dev.py` | `TO-DEV.md` の必須セクション検証 | `python3 .agents/scripts/check_to_dev.py --root .` |
| `scripts/check_slop.sh` | AI スロップ自動検出 | `bash .agents/scripts/check_slop.sh .` |
| `scripts/check_accessibility.sh` | WCAG AA 基本チェック | `bash .agents/scripts/check_accessibility.sh .` |

## Canonical Docs

- `docs/STATUS.md`
- `docs/requirements/DESIGN-BRIEF.md`
- `docs/requirements/BRAND-DIRECTION.md`
- `docs/requirements/CONTENT-STRUCTURE.md`
- `docs/requirements/EXPERIENCE-RULES.md`
- `docs/requirements/ACCEPTANCE.md`
- `docs/handover/TO-DEV.md`

## Deprecated Templates

- `templates/DESIGN-DNA.template.md` → `templates/BRAND-DIRECTION.template.md`
- `templates/HANDOVER.template.md` → `templates/TO-DEV.template.md`

## Approval States

- `pending`: work exists but gate is not approved yet
- `approved`: the gate was explicitly approved and may be crossed
- `blocked`: a blocker exists and prevents progression
- `n/a`: the gate does not apply to the current task

## Completion Pattern

1. Finish the phase artifact.
2. Run the relevant checklist.
3. Run any validation script needed for evidence.
4. Update `docs/STATUS.md`.
5. Handover or move to the next phase.

## Completion Status Codes

| ステータス | 意味 | 使用条件 |
| --------- | ---- | ------- |
| **DONE** | 全ステップ完了、証拠提示済み | 全チェック PASS |
| **DONE_WITH_CONCERNS** | 完了したが注意事項あり | 軽微な問題が残存 |
| **BLOCKED** | 続行不可能 | 外部要因で停止 |
| **NEEDS_CONTEXT** | 情報不足で判断不能 | ユーザー入力が必要 |

> **design-review の無限ループ回避:**
> 自動修正ループは最大 3 回まで。3 回リトライ後も FAIL なら `BLOCKED` とし、ユーザーの判断を仰ぐ。

## MCP Profile

### Base (always recommended)

| MCP | Purpose | Primary skills |
|-----|---------|---------------|
| **filesystem** | File operations | All skills |
| **github** | Repository, PR, Issue | deploy, review |
| **playwright** | Browser automation, visual verification | design-review, craft-* |
| **context7** | Library/framework docs | craft-frontend, infrastructure-setup, animation-craft |
| **memory** | Knowledge graph, learning persistence | retro, design-onboard |
| **drawio** | Architecture diagrams | design-brainstorm, design-system |

### Extended (add per project)

| MCP | When to add |
|-----|------------|
| **firebase** | Firebase projects |
| **figma** | Design-intensive projects |
| **firecrawl** | Web research, competitor analysis |

### MCP not connected

```text
⚠️ MCP not connected: [name]
  This skill benefits from [name] for [reason].
  → Connect: enable [name] in agent MCP settings
  → Continue: will use [alternative] instead
```

## Safety

- Do not store client names or specific amounts in knowledge graphs.
- Anonymize and abstract lessons before persisting.
- Do not include confidential information in web search queries.
- Confirm with the user before saving named entities to `mcp_memory`.
