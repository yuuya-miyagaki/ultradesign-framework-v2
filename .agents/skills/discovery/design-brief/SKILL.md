---
name: discovery/design-brief
description: "デザインブリーフ作成。brainstorm完了後に起動。ターゲット、ゴール、ブランド方向、技術制約、スコープをまとめる。"
---

# Design Brief — デザインブリーフ作成

> brainstorm の結果をもとに、制作の全体像を定義するデザインブリーフを作成する。

## 起動条件

- `phase_approvals.brainstorm = "approved"` 完了後
- デザイン方向性が決定済み

## Steps

1. **テンプレート初期化**: `templates/DESIGN-BRIEF.template.md` → `docs/briefs/DESIGN-BRIEF.md`
2. **要件記入**: brainstorm の結果を反映
3. **技術要件確定**: フレームワーク、デプロイ先、特殊機能
4. **スコープ定義**: In-Scope / Out-of-Scope
5. **成功基準設定**: Lighthouse スコア、AIスロップチェック等
6. **ユーザー承認**: ブリーフの最終確認

## Output

- `docs/briefs/DESIGN-BRIEF.md`（記入済み）

## Gate

- 承認後に `phase_approvals.brief = "approved"` を設定
- briefが承認されるまで craft-* フェーズに進まない

## Do Not

- brainstorm をスキップしてブリーフを書く（Lightweight Entry の場合を除く）
- 成功基準を曖昧にする
