---
name: implement/qa
description: "受入条件確認・パフォーマンス・アクセシビリティの最終QA。「QA」「受入確認」で起動。"
---

# QA — 最終品質確認

> 実装が受入条件を満たしているかを確認し、`qa` ゲートを閉じるための証拠をまとめる。

## 起動条件

- frontend / seo / infra の主要作業が完了後
- 「QA」「受入確認」「最終チェック」

## Steps

1. **受入条件確認**: `docs/requirements/ACCEPTANCE.md` を 1 件ずつ確認
2. **handover 整合確認**: `python3 .agents/scripts/check_to_dev.py --root .` を実行
3. **アクセシビリティ確認**: `bash .agents/scripts/check_accessibility.sh .` を実行
4. **パフォーマンス確認**: Lighthouse スコアを確認
5. **証拠整理**: スクリーンショットや確認結果を `docs/qa-reports/` に保存
6. **ユーザー承認**: QA 証拠を提示して最終確認

## Output

- QA レポート in `docs/qa-reports/`
- スクリーンショット証拠
- `phase_approvals.qa = "approved"` の根拠

## Gate

- 全条件 PASS 後に `phase_approvals.qa = "approved"` を設定

## Do Not

- 受入条件を確認せずに PASS
- 証拠なしで `qa` を承認扱いにする
