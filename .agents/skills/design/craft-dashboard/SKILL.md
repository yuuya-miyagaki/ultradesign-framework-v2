---
name: design/craft-dashboard
description: "管理画面・ダッシュボードUI制作。「ダッシュボード」「管理画面」「アドミン」で起動。"
---

# Craft Dashboard — ダッシュボードUI制作

> データを効果的に可視化し、操作性に優れた管理画面を制作する。

## 起動条件

- 「ダッシュボード作って」「管理画面」「アドミンパネル」

## Steps

1. **データ構造理解**: 表示するデータの種類と優先度
2. **レイアウト決定**: サイドバー型 / トップナビ型 / コンパクト型
3. **コンポーネント設計**: KPIカード / チャート / テーブル / フォーム
4. **インタラクション**: フィルタ / ソート / ドリルダウン / リアルタイム更新
5. **実装**: レスポンシブ対応（タブレット以上想定）

## Design Principles

- **情報密度を最適化**: 詰め込みすぎず、スカスカにもしない
- **スキャナビリティ**: 一目でKPIが把握できる
- **一貫したコンポーネント**: カード・テーブル・ボタンの統一
- **ダークモード優先**: 長時間使用を考慮

## Component Patterns

```css
/* KPIカード */
.kpi-card {
  container-type: inline-size;
  display: grid;
  gap: var(--space-3);
  padding: var(--space-4);
  background: var(--color-surface);
  border-radius: var(--radius-md);
}

/* データテーブル */
.data-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
}
.data-table th {
  position: sticky;
  top: 0;
  background: var(--color-surface);
}
```

## Do Not

- モバイルファーストにこだわりすぎる（ダッシュボードはデスクトップ優先でOK）
- データビジュアライゼーションを過度に装飾する
