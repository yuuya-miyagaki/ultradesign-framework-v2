---
name: discovery/design-brief
description: "要件パッケージ作成。brainstorm 完了後に起動。5つの正本を作成し、開発 handover の土台を固める。"
---

# Design Brief — 要件パッケージ作成

> brainstorm の結果をもとに、ホームページ系案件の要件を 5 つの正本ドキュメントへ整理する。

## 起動条件

- `phase_approvals.discovery = "approved"` 完了後
- デザイン方向性が決定済み

## Steps

1. **テンプレート初期化**:
   - `templates/DESIGN-BRIEF.template.md` → `docs/requirements/DESIGN-BRIEF.md`
   - `templates/BRAND-DIRECTION.template.md` → `docs/requirements/BRAND-DIRECTION.md`
   - `templates/CONTENT-STRUCTURE.template.md` → `docs/requirements/CONTENT-STRUCTURE.md`
   - `templates/EXPERIENCE-RULES.template.md` → `docs/requirements/EXPERIENCE-RULES.md`
   - `templates/ACCEPTANCE.template.md` → `docs/requirements/ACCEPTANCE.md`
2. **要件記入**: 目的、対象、ブランド、構成、体験品質、受入条件を反映
3. **整合確認**: 5 文書の用語、優先順位、対象範囲を揃える
4. **未解決事項の明記**: 迷いを隠さず残す
5. **ユーザー承認**: requirements の最終確認

## Output

- `docs/requirements/DESIGN-BRIEF.md`
- `docs/requirements/BRAND-DIRECTION.md`
- `docs/requirements/CONTENT-STRUCTURE.md`
- `docs/requirements/EXPERIENCE-RULES.md`
- `docs/requirements/ACCEPTANCE.md`

## Gate

- 承認後に `phase_approvals.requirements = "approved"` を設定
- requirements が承認されるまで handover フェーズに進まない

## Do Not

- brainstorm をスキップして要件を書く（Lightweight Entry の場合を除く）
- 5 文書の役割を混ぜる
- 受入条件を曖昧にする
