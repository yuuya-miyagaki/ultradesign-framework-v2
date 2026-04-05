---
name: implement/craft-frontend
description: "Next.js/React等へのコンポーネント・ロジック実装。「コンポーネント化」「React実装」で起動。"
---

# Craft Frontend — フロントエンド実装

> デザインモックアップを React/Next.js/Vue のプロダクションコードに変換する。

## 起動条件

- design-review PASS 後
- 「コンポーネント化」「React実装」「Next.jsに変換」

## Steps

1. **アーキテクチャ決定**: Next.js / Vite + React / Vue / HTML
2. **コンポーネント分割**: デザインシステムに基づく分割
3. **実装**: TypeScript + CSS Modules / styled-components
4. **テスト**: ビジュアル確認 + 必要に応じてユニットテスト
5. **ビルド確認**: エラーなし

## MCP活用

- `context7`: React/Next.js/Vue の最新API確認（**インフラコード記述前に必須**）

## Do Not

- デザイントークンを無視してハードコード
- TypeScript の型を any で逃げる
