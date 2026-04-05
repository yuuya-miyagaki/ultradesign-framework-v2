---
name: core/design-workflow
description: "デザインスキルの自動ルーティング指針。ユーザーのリクエストを分析し、最適なスキルに誘導する。"
---

# Design Workflow — 自動ルーティング

> ユーザーのリクエストを分析し、最適なデザインスキルに自動ルーティングする。

## 使い方

必要になったときだけ読み込む。ルーティングの正本は `WORKFLOW.md` → Automatic Skill Routing を参照。

## 複合リクエストの分解

```text
例: 「動画ヒーローのある SaaS 向け LP を作りたい。AI チャットも付けて。」

分解:
  1. design-brainstorm → discovery 決定
  2. design-brief → requirements 作成
  3. design-handover → TO-DEV 作成
  4. design-system → デザインシステム構築
  5. craft-landing → LP 設計・実装
  6. hero-video / ai-chat-widget → 追加演出
  7. design-review → 品質監査
  8. craft-frontend → コンポーネント実装
  9. seo-optimization → SEO / OGP
  10. qa → 最終品質確認
  11. deploy-management → デプロイ
```

## 推奨フロー

フロー図の正本は `WORKFLOW.md` を参照。特に `handover` と `qa` のゲート条件はそちらに合わせる。

## 判断に迷った場合

- 「design-brainstorm から始めましょう」が最も安全
