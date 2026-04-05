---
name: core/design-workflow
description: "デザインスキルの自動ルーティング。ユーザーのリクエストを分析し、最適なスキルに誘導する。常時起動。"
---

# Design Workflow — 自動ルーティング

> ユーザーのリクエストを分析し、最適なデザインスキルに自動ルーティングする。

## 常時起動

このスキルは常に暗黙的に動作。ルーティングテーブルは `WORKFLOW.md` → Automatic Skill Routing を参照。

## 複合リクエストの分解

```text
例: 「動画ヒーローのある SaaS 向け LP を作りたい。AI チャットも付けて。」

分解:
  1. design-brainstorm → discovery 決定
  2. design-brief → requirements 作成
  3. handover → TO-DEV 作成
  4. design-system → デザインシステム構築
  5. craft-landing → LP 設計・実装
  6. hero-video / ai-chat-widget → 追加演出
  7. design-review → 品質監査
  8. craft-frontend → コンポーネント実装
  9. seo-optimization → SEO / OGP
  10. deploy-management → デプロイ
```

## 推奨フロー

```mermaid
graph TD
    START[ユーザーリクエスト] --> ANALYZE{分析}
    ANALYZE -->|新規| BRAINSTORM[design-brainstorm]
    ANALYZE -->|既存分析| ONBOARD[design-onboard]
    ANALYZE -->|直接制作| CRAFT{タイプ?}

    BRAINSTORM --> REQUIREMENTS[design-brief]
    ONBOARD --> REQUIREMENTS
    REQUIREMENTS --> HANDOVER[TO-DEV]
    HANDOVER --> SYSTEM[design-system]
    SYSTEM --> CRAFT

    CRAFT -->|LP/HP| LANDING[craft-landing]
    CRAFT -->|ポートフォリオ| PORTFOLIO[craft-portfolio]
    CRAFT -->|プロダクト| PRODUCT[craft-product-site]
    CRAFT -->|ダッシュボード| DASHBOARD[craft-dashboard]
    CRAFT -->|EC| ECOMMERCE[craft-ecommerce]

    LANDING --> ENHANCE{演出?}
    PORTFOLIO --> ENHANCE
    PRODUCT --> ENHANCE
    DASHBOARD --> ENHANCE
    ECOMMERCE --> ENHANCE

    ENHANCE -->|3D| HERO3D[craft-3d-hero]
    ENHANCE -->|動画| VIDEO[hero-video]
    ENHANCE -->|チャット| CHAT[ai-chat-widget]
    ENHANCE -->|アニメ| ANIM[animation-craft]
    ENHANCE -->|なし| REVIEW[design-review]

    HERO3D --> REVIEW
    VIDEO --> REVIEW
    CHAT --> REVIEW
    ANIM --> REVIEW

    REVIEW -->|Pass| FRONTEND[craft-frontend]
    FRONTEND --> SEO[seo-optimization]
    SEO --> NEED_INFRA{バックエンド?}
    NEED_INFRA -->|あり| INFRA[infrastructure-setup]
    NEED_INFRA -->|なし| QA[qa evidence]
    INFRA --> QA
    QA --> DEPLOY[deploy-management]
    DEPLOY --> DONE((完了))

    REVIEW -->|Fail x3| BLOCKED[BLOCKED]
```

## 判断に迷った場合

- 「design-brainstorm から始めましょう」が最も安全
