# Ultradesign Framework v2 Phase 1 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** `Ultradesign Framework v2` を、ホームページ系案件向けのデザイン上流フレームワークとして再編し、5つの正本と `TO-DEV` を持つ構成へ移行する。

**Architecture:** 既存の `README` と `templates/` を Phase 1 の新しい情報設計に合わせて更新する。旧 `DESIGN-DNA` と `HANDOVER` は、新しい `BRAND-DIRECTION` と `TO-DEV` に役割を分離し、README では v7 準拠の上流から handover への流れを明文化する。

**Tech Stack:** Markdown, framework templates, repository docs

---

## File Map

- Create: `ultradesign-framework-v2/templates/BRAND-DIRECTION.template.md`
- Create: `ultradesign-framework-v2/templates/CONTENT-STRUCTURE.template.md`
- Create: `ultradesign-framework-v2/templates/EXPERIENCE-RULES.template.md`
- Create: `ultradesign-framework-v2/templates/ACCEPTANCE.template.md`
- Create: `ultradesign-framework-v2/templates/TO-DEV.template.md`
- Modify: `ultradesign-framework-v2/templates/DESIGN-BRIEF.template.md`
- Modify: `ultradesign-framework-v2/templates/STATUS.template.md`
- Modify: `ultradesign-framework-v2/README.md`
- Modify: `ultradesign-framework-v2/CHANGELOG.md`
- Review for replacement or removal intent: `ultradesign-framework-v2/templates/DESIGN-DNA.template.md`
- Review for replacement or removal intent: `ultradesign-framework-v2/templates/HANDOVER.template.md`

### Task 1: Redesign The Canonical Template Set

**Files:**
- Create: `ultradesign-framework-v2/templates/BRAND-DIRECTION.template.md`
- Create: `ultradesign-framework-v2/templates/CONTENT-STRUCTURE.template.md`
- Create: `ultradesign-framework-v2/templates/EXPERIENCE-RULES.template.md`
- Create: `ultradesign-framework-v2/templates/ACCEPTANCE.template.md`
- Create: `ultradesign-framework-v2/templates/TO-DEV.template.md`
- Modify: `ultradesign-framework-v2/templates/DESIGN-BRIEF.template.md`

- [ ] **Step 1: Rewrite `DESIGN-BRIEF` around discovery requirements**

Replace the current style-picking heavy format with sections for:

```md
# デザインブリーフ

## プロジェクト概要
- プロジェクト名:
- 案件種別:
- 担当者:
- 状態:

## 背景と課題
- 背景:
- 解決したい課題:
- なぜ今やるか:

## 対象ユーザー
- 主対象:
- 副対象:
- 想定利用状況:

## ゴール
- ビジネスゴール:
- ユーザーゴール:
- 成功指標:

## 制約条件
- 納期:
- 予算:
- 使用可能素材:
- 技術上の制約:

## 未解決事項
- なし / あれば記入
```

- [ ] **Step 2: Create `BRAND-DIRECTION.template.md`**

Add a template with sections for tone, desired impression, references, anti-patterns, and rationale:

```md
# ブランドディレクション

## 目指す印象
- 第一印象:
- 信頼感の出し方:
- 差別化したい印象:

## トーン&マナー
- キーワード:
- 避ける表現:
- 文章トーン:
- ビジュアルトーン:

## 参考方向性
- 参考サイト:
- 参考要素:
- 採用しない要素:

## キービジュアル方針
- ヒーローの方向性:
- 写真 / イラスト / 3D / タイポグラフィ:
- 色・余白・密度の方針:

## 判断根拠
- なぜこの方向性か:
- 競合との差:
```

- [ ] **Step 3: Create `CONTENT-STRUCTURE.template.md`**

Define page structure and CTA logic:

```md
# コンテンツ構成

## ページ一覧
- ページ名:
- 目的:

## 主要ページ構成
### ページ名
- セクション順:
- 各セクションの役割:
- 必須コンテンツ:
- CTA:

## 導線設計
- 主導線:
- 補助導線:
- 離脱防止の工夫:

## コンテンツ優先順位
- Must:
- Should:
- Could:
```

- [ ] **Step 4: Create `EXPERIENCE-RULES.template.md`**

Translate design quality into implementation-facing rules:

```md
# 体験ルール

## UI原則
- 原則:
- 適用箇所:

## レスポンシブ方針
- ブレークポイント方針:
- 優先デバイス:

## アクセシビリティ
- 要件:
- 確認方法:

## パフォーマンス
- 要件:
- 測定方法:

## SEO
- 要件:
- 必須メタ情報:

## 実装制約
- 使用技術:
- 禁止事項:
- 将来拡張の前提:
```

- [ ] **Step 5: Create `ACCEPTANCE.template.md`**

Make acceptance testable:

```md
# 受入条件

## デザイン受入条件
- AC-DESIGN-001:

## 実装受入条件
- AC-DEV-001:

## 非機能受入条件
- AC-NFR-001:

## 必要な証拠
- スクリーンショット:
- Lighthouse:
- レビュー記録:

## 承認
- 承認者:
- 日付:
```

- [ ] **Step 6: Create `TO-DEV.template.md`**

Build a handover that references the canonical docs and includes design intent:

```md
# Design から Dev への引き渡し

## プロジェクト概要
- プロジェクト名:
- 対象範囲:
- 現在フェーズ:

## 正本ドキュメント
- docs/requirements/DESIGN-BRIEF.md
- docs/requirements/BRAND-DIRECTION.md
- docs/requirements/CONTENT-STRUCTURE.md
- docs/requirements/EXPERIENCE-RULES.md
- docs/requirements/ACCEPTANCE.md

## 実装対象
- 対象ページ:
- 対象セクション:
- 必須CTA:
- 優先順位:

## デザイン意図
- 重要な印象:
- 守るべき見せ方:
- 避ける表現:

## 体験ルール
- レスポンシブ:
- アクセシビリティ:
- パフォーマンス:
- SEO:

## 実装上の注意
- CMS化の有無:
- 素材の扱い:
- 計測タグ:

## 未確定事項
- なし / あれば記入

## 完了条件
- 必要証拠:
- 完了判定者:
```

- [ ] **Step 7: Review wording consistency across all templates**

Check that the terms `正本`, `受入条件`, `デザイン意図`, and `実装対象` are used consistently and that filenames match the README exactly.

- [ ] **Step 8: Commit**

```bash
git add ultradesign-framework-v2/templates
git commit -m "feat: redesign ultradesign framework phase 1 templates"
```

### Task 2: Reframe README Around Client-To-Dev Flow

**Files:**
- Modify: `ultradesign-framework-v2/README.md`

- [ ] **Step 1: Replace the current architecture section**

Rewrite the architecture so it mirrors the v7 pattern:

```md
## アーキテクチャ

AGENTS.md
  → CONSTITUTION.md
  → WORKFLOW.md
  → CLIENT-DESIGN.md
  → DEV-DESIGN.md
  → REFERENCE.md
```

If those exact files do not exist yet, document them as target architecture rather than current fact.

- [ ] **Step 2: Add a canonical docs section**

Insert a section describing the five requirement docs and `TO-DEV`:

```md
## 正本ドキュメント

- docs/requirements/DESIGN-BRIEF.md
- docs/requirements/BRAND-DIRECTION.md
- docs/requirements/CONTENT-STRUCTURE.md
- docs/requirements/EXPERIENCE-RULES.md
- docs/requirements/ACCEPTANCE.md
- docs/handover/TO-DEV.md
```

- [ ] **Step 3: Narrow Phase 1 scope explicitly**

Add text stating that Phase 1 targets `LP`, `コーポレートサイト`, and `サービスサイト`, and that dashboards are Phase 2.

- [ ] **Step 4: Explain rationale and taste layers**

Document that design rationale lives in `BRAND-DIRECTION` and `TO-DEV`, while inspiration assets live separately in `references/` and `moodboards/`.

- [ ] **Step 5: Update quick start**

Revise initialization commands so the generated docs folders include:

```bash
mkdir -p docs/{requirements,handover,plans,qa-reports}
```

And note which templates initialize the new canonical docs.

- [ ] **Step 6: Commit**

```bash
git add ultradesign-framework-v2/README.md
git commit -m "docs: reframe ultradesign framework readme for phase 1"
```

### Task 3: Align Status Tracking And Migration Notes

**Files:**
- Modify: `ultradesign-framework-v2/templates/STATUS.template.md`
- Modify: `ultradesign-framework-v2/CHANGELOG.md`
- Review: `ultradesign-framework-v2/templates/DESIGN-DNA.template.md`
- Review: `ultradesign-framework-v2/templates/HANDOVER.template.md`

- [ ] **Step 1: Update status gates**

Change status tracking so the approval states reflect the new flow:

```md
- discovery:
- requirements:
- handover:
- design_review:
- qa:
```

- [ ] **Step 2: Clarify legacy template treatment**

Decide whether `DESIGN-DNA` becomes deprecated in favor of `BRAND-DIRECTION`, and whether `HANDOVER` becomes deprecated in favor of `TO-DEV`. Reflect that choice in the changelog.

- [ ] **Step 3: Add changelog entry**

Record the Phase 1 redesign with bullets covering:

- new canonical docs
- split between requirements and handover
- homepage-first scope
- rationale and taste separation

- [ ] **Step 4: Sanity-check terminology**

Verify README, status template, and changelog all use the same names for Phase 1 artifacts and gates.

- [ ] **Step 5: Commit**

```bash
git add ultradesign-framework-v2/templates/STATUS.template.md ultradesign-framework-v2/CHANGELOG.md
git commit -m "docs: align phase 1 status and migration notes"
```

### Task 4: Verify The Documentation Surface

**Files:**
- Review: `ultradesign-framework-v2/README.md`
- Review: `ultradesign-framework-v2/templates/*.md`

- [ ] **Step 1: List the final template set**

Run:

```bash
rg --files ultradesign-framework-v2/templates
```

Expected: the directory includes the five canonical templates, `TO-DEV`, `STATUS`, and `LEARNINGS`.

- [ ] **Step 2: Review the README references**

Run:

```bash
rg -n "DESIGN-BRIEF|BRAND-DIRECTION|CONTENT-STRUCTURE|EXPERIENCE-RULES|ACCEPTANCE|TO-DEV" ultradesign-framework-v2/README.md
```

Expected: all canonical docs are referenced with exact filenames.

- [ ] **Step 3: Manual quality review**

Check:

- README does not describe dashboards as in-scope for Phase 1
- `TO-DEV` includes `デザイン意図`
- `BRAND-DIRECTION` holds rationale rather than implementation details
- `EXPERIENCE-RULES` uses measurable language where possible

- [ ] **Step 4: Commit**

```bash
git add ultradesign-framework-v2
git commit -m "docs: verify ultradesign framework phase 1 documentation"
```

## Self-Review

### Spec coverage

- Phase 1 homepage-first scope: covered in Task 2
- Five canonical docs: covered in Task 1
- `TO-DEV` split: covered in Task 1 and Task 2
- Design intent in handover: covered in Task 1 and Task 4
- Rationale and taste separation: covered in Task 2 and Task 3

### Placeholder scan

No `TODO`, `TBD`, or cross-task shorthand remains. Template skeletons and command checks are explicit.

### Type consistency

Artifact names are consistent: `DESIGN-BRIEF`, `BRAND-DIRECTION`, `CONTENT-STRUCTURE`, `EXPERIENCE-RULES`, `ACCEPTANCE`, `TO-DEV`.
