---
name: discovery/design-brainstorm
description: "デザイン方向性のアイデア出し。「アイデア」「方向性」「作りたい」「どんなデザイン？」で起動。"
---

# Design Brainstorm — デザイン方向性決定

> プロダクトの文脈を理解し、最適なデザインスタイル・カラー・フォント・レイアウトの方向性を決定する。

## 起動条件

- 新規サイト制作の初期段階
- 「アイデアを出して」「デザインの方向性」「作りたい」

## Steps

1. **コンテキスト理解**: 目的、ターゲット、競合、ブランド
2. **スタイル候補 (3案)**: `data/styles.csv` から文脈に合うスタイルを3つ提案
3. **カラー候補**: `data/colors.csv` からプロダクトタイプに合うパレットを提案
4. **フォント候補**: `data/typography.csv` からムードに合うペアリングを提案
5. **LPパターン候補**（LP/HP制作時のみ）: `data/landing.csv` から用途に合うパターンを提案
6. **Design DNA 作成**: `templates/DESIGN-DNA.template.md` → `docs/specs/design-dna.md` に方向性を記録

## 参照データ

| データ | 用途 |
|-------|------|
| `data/styles.csv` | 🔴 **必須** — 58スタイルから候補選定 |
| `data/colors.csv` | 🔴 **必須** — 96パレットから候補選定 |
| `data/typography.csv` | 🔴 **必須** — 57ペアリングから候補選定 |
| `data/landing.csv` | LP制作時 — 30パターンから候補選定 |

## Output

- デザイン方向性ノート in `docs/specs/`
- Design DNA in `docs/specs/design-dna.md`（`templates/DESIGN-DNA.template.md` から初期化）

## Do Not

- データ参照なしにスタイルやカラーを提案
- 1案だけ提示（最低3案を比較）
- AIスロップに陥る定番選択（Inter + 青→紫グラデ等）
