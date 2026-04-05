# Ultradesign Framework v2 Phase 1 Design

## Goal

`Ultradesign Framework v2` を `Ultra Framework v7` に近い運用構造へ寄せつつ、対象を `LP + コーポレート/サービスサイト` に絞ったデザイン上流フレームワークへ再設計する。

主目的は次の2点とする。

- クライアント要件を正しく集めること
- 開発へ迷いなく渡せる形にすること

補助目的として、以下も扱う。

- デザイン判断の根拠を文書化すること
- 感性を鍛えるための補助資産を運用に組み込むこと

## Scope

### In Scope

- LP
- コーポレートサイト
- サービスサイト
- 上記に対するクライアント要件整理
- 上記に対するデザイン要件の正本化
- 上記に対する Dev handover 設計

### Out of Scope

- ダッシュボード
- 業務UI
- 複雑な状態遷移を持つアプリUI
- 実装タスクそのもの

## Operating Model

`Ultra Framework v7` の考え方を踏襲し、`requirements の正本` と `TO-DEV` を分離する。

### Phase 1 Flow

1. Client / Design Discovery
2. Requirements Approval
3. Handover to Dev
4. Design Production
5. Design Review
6. QA

### Gate Policy

- `discovery`
- `requirements`
- `handover`
- `design_review`
- `qa`

各ゲートはユーザー承認を前提に進める。

## Canonical Documents

Phase 1 の正本は以下の5枚とする。

### 1. `DESIGN-BRIEF`

役割:
プロジェクトの目的と要件の骨格を固定する。

主な内容:

- 目的
- 背景
- 対象ユーザー
- 提供価値
- 成功指標
- 制約条件

### 2. `BRAND-DIRECTION`

役割:
見せ方と印象設計の基準を固定する。

主な内容:

- ブランド印象
- トーン&マナー
- 参考方向性
- 避ける表現
- 競合との差別化観点
- キービジュアル方針

独立させる理由:
要件の話と好みの話を分離し、クライアント確認と制作判断の衝突を減らすため。

### 3. `CONTENT-STRUCTURE`

役割:
何をどの順番で伝えるかを固定する。

主な内容:

- ページ一覧
- 各ページの目的
- セクション構成
- コンテンツ優先順位
- CTA
- 導線設計

### 4. `EXPERIENCE-RULES`

役割:
実装品質に影響する体験上のルールを固定する。

主な内容:

- UI原則
- レスポンシブ方針
- アクセシビリティ
- パフォーマンス
- SEO
- 実装制約

### 5. `ACCEPTANCE`

役割:
何をもって完了とするかを固定する。

主な内容:

- デザイン受入条件
- 実装受入条件
- 確認方法
- 必要証拠
- 承認者

## Handover Model

`TO-DEV` は別紙とし、正本を参照しながら開発着手に必要な内容を翻訳して渡す。

### `TO-DEV` に含めるもの

- プロジェクト概要
- 実装対象
- デザイン意図
- 体験ルール
- 実装上の注意
- 未確定事項
- 完了条件

### Design Intent Policy

`TO-DEV` には必ず `デザイン意図` を含める。

理由:
実装段階で視覚的な判断が崩れやすいため、ブランドトーンや見せ方の狙いを Dev へ明示的に渡す必要がある。

## Rationale Layer

デザイン判断の根拠は以下に保持する。

- `BRAND-DIRECTION`: なぜそのトーンなのか
- `TO-DEV`: なぜその UI / レイアウト判断なのか

これにより、クライアント説明と実装判断の両方に説明責任を持たせる。

## Taste Development Layer

感性強化は正本ではなく補助資産として運用する。

### Proposed Support Assets

- `references/`
- `moodboards/`
- `observations/`

### Policy

- 正本には必要最低限の判断根拠のみ記載する
- 参考収集や審美眼の蓄積は補助資産へ分離する
- `正本は厳密に、感性資産は広く` を原則とする

## Recommended Information Architecture

Phase 1 での推奨構成は以下。

```text
ultradesign-framework-v2/
├── templates/
│   ├── DESIGN-BRIEF.template.md
│   ├── BRAND-DIRECTION.template.md
│   ├── CONTENT-STRUCTURE.template.md
│   ├── EXPERIENCE-RULES.template.md
│   ├── ACCEPTANCE.template.md
│   ├── TO-DEV.template.md
│   ├── STATUS.template.md
│   └── LEARNINGS.template.md
├── data/
├── references/
├── moodboards/
└── README.md
```

## Design Decision Summary

- `Ultra Framework v7` の構造は参考にする
- 成果物名と中身はデザイン向けに再設計する
- 正本は5枚構成とする
- `BRAND-DIRECTION` は独立させる
- `TO-DEV` は別文書とする
- Phase 1 の対象は `LP + コーポレート/サービスサイト` に限定する

## Risks

- ダッシュボード向けの要件を同時に入れると文書が抽象化しすぎる
- ブランド要件を独立させないと、要件整理と好みの議論が混線する
- `TO-DEV` にデザイン意図を入れないと、実装段階で美意識が失われやすい

## Next Step

次はこの設計を基に、既存テンプレートと README を Phase 1 構成へ差し替える実装計画を作成する。
