# Ultradesign Framework v2

> UI/UX デザインと実装に特化した AI エージェント運用フレームワーク

Ultra Framework v7 の運用規律を土台に、ホームページ系案件の上流整理と開発 handover を強化したデザインフレームワーク。

## Positioning

Phase 1 の対象は次の 3 種に限定する。

- LP
- コーポレートサイト
- サービスサイト

ダッシュボードや業務 UI は Phase 2 の拡張対象とする。最初から広げず、`誰に何をどう伝えるか` を整理しやすいホームページ系で型を固める。

## Quick Start

### 1. フレームワークをプロジェクトにコピー

```bash
cp -R ultradesign-framework-v2/.agents your-project/.agents
cp -R ultradesign-framework-v2/data your-project/data
cp -R ultradesign-framework-v2/templates your-project/templates
```

### 2. プロジェクト初期化

```bash
mkdir -p docs/{requirements,handover,plans,qa-reports}
cp templates/STATUS.template.md docs/STATUS.md
cp templates/LEARNINGS.template.md docs/LEARNINGS.md
cp templates/DESIGN-BRIEF.template.md docs/requirements/DESIGN-BRIEF.md
cp templates/BRAND-DIRECTION.template.md docs/requirements/BRAND-DIRECTION.md
cp templates/CONTENT-STRUCTURE.template.md docs/requirements/CONTENT-STRUCTURE.md
cp templates/EXPERIENCE-RULES.template.md docs/requirements/EXPERIENCE-RULES.md
cp templates/ACCEPTANCE.template.md docs/requirements/ACCEPTANCE.md
cp templates/TO-DEV.template.md docs/handover/TO-DEV.md
```

### 3. 制作開始

AI エージェントに話しかけるだけ:

- 「LP を作りたい」 → `design-brainstorm`
- 「このサイトをリデザインしたい」 → `design-onboard`
- 「要件を整理して開発へ渡したい」 → discovery から requirements/handover へ進行

## Architecture

`.agents/` は実運用ルールを持ち、`templates/` は正本ドキュメントを初期化する。

```text
AGENTS.md
  → CONSTITUTION.md
  → WORKFLOW.md
  → DESIGN.md
  → REFERENCE.md
```

運用上は次の 2 層に分ける。

- `Client / Design Discovery`: 要件とデザイン判断の正本を固める
- `Handover to Dev / Design Production`: 正本を参照しながら `TO-DEV` を作り、制作と実装へつなぐ

## Canonical Docs

Phase 1 の正本は次の 5 枚とする。

- `docs/requirements/DESIGN-BRIEF.md`
- `docs/requirements/BRAND-DIRECTION.md`
- `docs/requirements/CONTENT-STRUCTURE.md`
- `docs/requirements/EXPERIENCE-RULES.md`
- `docs/requirements/ACCEPTANCE.md`

開発引き渡しは別紙で管理する。

- `docs/handover/TO-DEV.md`

### Document Roles

- `DESIGN-BRIEF`: 目的、対象、課題、成功指標、制約を固定する
- `BRAND-DIRECTION`: ブランド印象、トーン、参考方向性、避ける表現、判断根拠を固定する
- `CONTENT-STRUCTURE`: ページ構成、導線、CTA、コンテンツ優先順位を固定する
- `EXPERIENCE-RULES`: UI 原則、レスポンシブ、アクセシビリティ、パフォーマンス、SEO、実装制約を固定する
- `ACCEPTANCE`: デザイン受入条件、実装受入条件、非機能受入条件、必要証拠を固定する
- `TO-DEV`: 実装対象、デザイン意図、体験ルール、未確定事項を Dev 向けに翻訳する

## Operating Flow

1. `discovery`
クライアントの課題、対象、提供価値、制約を整理する。

2. `requirements`
5 つの正本ドキュメントを作成し、合意内容を固定する。

3. `handover`
`TO-DEV` を作成し、実装対象とデザイン意図を開発へ渡す。

4. `design_review`
制作物が正本と一致しているかを確認する。

5. `qa`
実装品質、アクセシビリティ、パフォーマンス、受入条件を確認する。

6. `retro`
リリース、マイルストーン、または大きな学びが出た区切りで `docs/LEARNINGS.md` を更新する。

## Design Rationale And Taste

判断根拠は正本に明示的に残す。

- `BRAND-DIRECTION`: なぜこのトーンなのか
- `TO-DEV`: なぜこの UI / レイアウト判断なのか

一方で、感性強化のための参考資産は正本とは分けて扱う。

- `references/`
- `moodboards/`
- `observations/`

原則は `正本は厳密に、感性資産は広く`。

## Design Database

| ファイル | コンテンツ | 件数 |
|---------|-----------|------|
| `data/styles.csv` | デザインスタイル辞典 | 58 |
| `data/colors.csv` | カラーパレット集 | 96 |
| `data/typography.csv` | フォントペアリング集 | 57 |
| `data/landing.csv` | LP レイアウトパターン集 | 30 |

## Skills

### Discovery

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| design-onboard | 「分析」「リデザイン」 | 既存サイト分析 |
| design-brainstorm | 「アイデア」「作りたい」 | デザイン方向性と上流要件の整理 |
| design-brief | brainstorm 完了後 | ブリーフと要件文書の整理 |

### Design

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| craft-landing | 「LP」「ホームページ」 | LP / HP 制作 |
| craft-portfolio | 「ポートフォリオ」 | 作品集サイト |
| craft-product-site | 「SaaS」「プロダクト」 | サービスサイト |
| craft-dashboard | 「ダッシュボード」 | 管理画面 UI。Phase 2 対象 |
| craft-ecommerce | 「EC サイト」「ショップ」 | EC サイト UI |
| design-system | 「デザインシステム」 | テーマ構築 |
| design-tokens | 「CSS 変数」「トークン」 | 変数管理 |
| design-review | 「レビュー」「品質チェック」 | デザイン品質監査 |
| hero-video | 「動画ヒーロー」 | 動画演出 |
| craft-3d-hero | 「3D」「WebGL」 | 3D 演出 |
| ai-chat-widget | 「AI チャット」 | チャットウィジェット |
| animation-craft | 「アニメーション」 | マイクロインタラクション |

### Implement

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| craft-frontend | 「React 実装」「コンポーネント化」 | FE 実装 |
| seo-optimization | 「SEO」「OGP」 | SEO 最適化 |
| infrastructure-setup | 「Firebase」「DB」 | インフラ構築 |
| deploy-management | 「デプロイ」「公開」 | デプロイ管理 |

### Core

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| second-opinion | 「別の意見」 | セカンドオピニオン |
| retro | 「振り返り」 | レトロスペクティブ |
| design-workflow | 常時 | 自動ルーティング |

## Design Principles

1. **意図のないピクセルを置くな**: 全要素に明確な理由を持たせる
2. **AI スロップ絶対排除**: テンプレ的で無難な画面を避ける
3. **モダン CSS 活用**: Container Queries, `:has()`, OKLCH, Baseline 2024+ を積極活用する
4. **全推奨に「なぜ」を付ける**: デザイン判断の根拠を明示する
5. **ビジュアル検証駆動**: プレビューとスクリーンショットを証拠として扱う
6. **トップレベルの美学**: 光学補正、意図的非対称、エディトリアルモーメントを設計する
7. **Design-to-Deployment**: モックで止めず、実装と公開まで見据える

## Gates

| ゲート | タイミング | 条件 |
|-------|-----------|------|
| `discovery` | クライアント整理後 | ユーザー承認 |
| `requirements` | 5 正本作成後 | ユーザー承認 |
| `handover` | `TO-DEV` 作成後 | ユーザー承認 |
| `design_review` | デザインレビュー後 | PASS + ユーザー承認 |
| `qa` | QA 完了後 | 全チェック + ユーザー承認 |

## Project Structure

```text
your-project/
├── .agents/
│   ├── AGENTS.md
│   ├── CONSTITUTION.md
│   ├── WORKFLOW.md
│   ├── DESIGN.md
│   ├── REFERENCE.md
│   ├── checklists/
│   ├── scripts/
│   └── skills/
├── data/
├── templates/
└── docs/
    ├── STATUS.md
    ├── requirements/
    │   ├── DESIGN-BRIEF.md
    │   ├── BRAND-DIRECTION.md
    │   ├── CONTENT-STRUCTURE.md
    │   ├── EXPERIENCE-RULES.md
    │   └── ACCEPTANCE.md
    ├── handover/
    │   └── TO-DEV.md
    ├── plans/
    ├── qa-reports/
    └── LEARNINGS.md
```

## Assumptions

Antigravity (Gemini) 上での運用を前提にしつつ、MCP によるブラウザ確認とファイル操作を活用する。

- `filesystem`
- `playwright`
- `context7`
- `firebase`
- `github`
- `memory`

## License

MIT
