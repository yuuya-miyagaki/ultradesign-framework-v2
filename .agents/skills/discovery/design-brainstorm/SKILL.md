---
name: discovery/design-brainstorm
description: "デザイン方向性のアイデア出し。「アイデア」「方向性」「作りたい」「どんなデザイン？」で起動。"
---

# Design Brainstorm — デザイン方向性決定

> プロダクトの文脈を理解し、デザインスタイル、カラー、フォント、構成方向の候補を決定する。

## 起動条件

- 新規サイト制作の初期段階
- 「アイデアを出して」「デザインの方向性」「作りたい」

## Steps

1. **コンテキスト理解**: 目的、ターゲット、競合、ブランドを整理
2. **スタイル候補 (3案)**: `data/styles.csv` から文脈に合うスタイルを 3 つ提案
3. **カラー候補**: `data/colors.csv` からプロダクトタイプに合うパレットを提案
4. **フォント候補**: `data/typography.csv` からムードに合うペアリングを提案
5. **LP パターン候補**（LP/HP 制作時のみ）: `data/landing.csv` から用途に合うパターンを提案
6. **方向性ノート作成**: `BRAND-DIRECTION` と `CONTENT-STRUCTURE` の素案になるメモを整理
7. **ユーザー承認**: discovery の完了確認

## 参照データ

| データ | 用途 |
|-------|------|
| `data/styles.csv` | 必須 — スタイル候補選定 |
| `data/colors.csv` | 必須 — パレット候補選定 |
| `data/typography.csv` | 必須 — ペアリング候補選定 |
| `data/landing.csv` | LP 制作時 — レイアウト候補選定 |

## Output

- デザイン方向性ノート in `docs/specs/`
- `BRAND-DIRECTION` と `CONTENT-STRUCTURE` に転記するための候補整理

## Gate

- 承認後に `phase_approvals.discovery = "approved"` を設定

## Do Not

- データ参照なしにスタイルやカラーを提案
- 1 案だけ提示（最低 3 案を比較）
- AI スロップに陥る定番選択（Inter + 青→紫グラデ等）
