---
name: discovery/design-handover
description: "requirements 承認後に TO-DEV を作成する。実装対象とデザイン意図を開発へ渡す。"
---

# Design Handover — TO-DEV 作成

> requirements の正本を参照しながら、実装チームが着手できる `TO-DEV` を作成する。

## 起動条件

- `phase_approvals.requirements = "approved"` 完了後
- `docs/requirements/` の 5 文書が揃っている

## Steps

1. **テンプレート初期化**: `templates/TO-DEV.template.md` → `docs/handover/TO-DEV.md`
2. **実装対象整理**: 対象ページ、セクション、必須 CTA、優先順位を抽出
3. **デザイン意図記述**: 守るべき印象、見せ方、避ける表現を整理
4. **体験ルール転記**: レスポンシブ、アクセシビリティ、パフォーマンス、SEO を抜き出す
5. **未確定事項明記**: 確定していない素材や判断待ち事項を残す
6. **整合確認**: `python3 .agents/scripts/check_to_dev.py --root .` を実行
7. **ユーザー承認**: handover の最終確認

## Output

- `docs/handover/TO-DEV.md`

## Gate

- 承認後に `phase_approvals.handover = "approved"` を設定

## Do Not

- requirements の正本を読まずに handover を書く
- デザイン意図を省略する
- 未確定事項を隠す
