---
name: design/design-review
description: "デザイン品質監査・AIスロップ検出・アクセシビリティ確認。「デザインレビュー」「品質チェック」で起動。"
---

# Design Review — デザイン品質監査

> 完成したデザインを多角的に検証し、プロダクション品質を保証する。

## 起動条件

- craft-* 完了後
- 「デザインレビューして」「品質チェック」

## Steps

1. **ビジュアルプレビュー**: ブラウザで3ブレークポイント確認
2. **AIスロップチェック**: `scripts/check_slop.sh` 実行
3. **アクセシビリティ**: `scripts/check_accessibility.sh` 実行
4. **コントラスト比**: 通常テキスト 4.5:1 / CTA 7:1 確認
5. **パフォーマンス**: Lighthouse 実行
6. **レビューレポート** in `docs/qa-reports/`

## チェック項目

`checklists/design-quality.md` を使用。

## 自動修正ループ制御

- 問題発見 → 修正 → 再レビュー
- **最大3回まで**
- 3回リトライ後も FAIL なら `BLOCKED` としてユーザー判断を仰ぐ

## Output

- レビューレポート in `docs/qa-reports/`
- ステータス: PASS / FAIL / BLOCKED

## Gate

- PASS 後に `phase_approvals.review = "approved"` を設定

## Do Not

- ブラウザプレビューなしにPASSを宣言
- 4回以上の自動修正ループ
