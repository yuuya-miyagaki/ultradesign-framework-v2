# Ultradesign Framework v2

> UI/UXデザインと実装に特化した AI エージェント運用フレームワーク

Ultra Framework v7 のプロセス規律と Ultradesign Framework v1 のデザイン知識を統合した、デザイン・トゥ・デプロイ一貫型フレームワーク。

## 🚀 クイックスタート

### 1. フレームワークをプロジェクトにコピー

```bash
cp -R ultradesign-framework-v2/.agents your-project/.agents
cp -R ultradesign-framework-v2/data your-project/data
cp -R ultradesign-framework-v2/templates your-project/templates
```

### 2. プロジェクト初期化

```bash
# docs 構造を作成
mkdir -p docs/{specs,briefs,qa-reports,plans,handover}

# STATUS.md を初期化
cp templates/STATUS.template.md docs/STATUS.md
```

### 3. 制作開始

AIエージェントに話しかけるだけ:

- 「LP作りたいんだけど」→ 自動で design-brainstorm から開始
- 「このサイトをリデザインして」→ design-onboard 起動
- 「ダッシュボード作って」→ craft-dashboard 起動

## 📐 アーキテクチャ

```
AGENTS.md (エントリポイント)
  → CONSTITUTION.md (デザイン7鉄則 + 運用ルール)
  → WORKFLOW.md (ルーティング + ゲート管理)
  → DESIGN.md (デザインフロー)
  → REFERENCE.md (スキル一覧 + MCP設定 + バリデーション)
```

## 🎨 デザインデータベース

| ファイル | コンテンツ | 件数 |
|---------|-----------|------|
| `data/styles.csv` | デザインスタイル辞典 | 58 |
| `data/colors.csv` | カラーパレット集 | 96 |
| `data/typography.csv` | フォントペアリング集 | 57 |
| `data/landing.csv` | LPレイアウトパターン集 | 30 |

## 🔧 スキル一覧（22種）

### Discovery（発見）

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| design-onboard | 「分析」「リデザイン」 | 既存サイト分析 |
| design-brainstorm | 「アイデア」「作りたい」 | デザイン方向性決定 |
| design-brief | brainstorm完了後 | ブリーフ作成 |

### Design（設計・制作）

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| craft-landing | 「LP」「ホームページ」 | LP/HP制作 |
| craft-portfolio | 「ポートフォリオ」 | 作品集サイト |
| craft-product-site | 「SaaS」「プロダクト」 | プロダクトサイト |
| craft-dashboard | 「ダッシュボード」 | 管理画面UI |
| craft-ecommerce | 「ECサイト」「ショップ」 | ECサイトUI |
| design-system | 「デザインシステム」 | テーマ構築 |
| design-tokens | 「CSS変数」「トークン」 | 変数管理 |
| design-review | 「レビュー」「品質チェック」 | デザイン品質監査 |
| hero-video | 「動画ヒーロー」 | 動画演出 |
| craft-3d-hero | 「3D」「WebGL」 | 3D演出 |
| ai-chat-widget | 「AIチャット」 | チャットウィジェット |
| animation-craft | 「アニメーション」 | マイクロインタラクション |

### Implement（実装）

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| craft-frontend | 「React実装」「コンポーネント化」 | FE実装 |
| seo-optimization | 「SEO」「OGP」 | SEO最適化 |
| infrastructure-setup | 「Firebase」「DB」 | インフラ構築 |
| deploy-management | 「デプロイ」「公開」 | デプロイ管理 |

### Core（共通）

| スキル | 起動キーワード | 用途 |
|-------|--------------|------|
| second-opinion | 「別の意見」 | セカンドオピニオン |
| retro | 「振り返り」 | レトロスペクティブ |
| design-workflow | 常時 | 自動ルーティング |

## 🛡️ デザイン7鉄則

1. **意図のないピクセルを置くな**: 全要素に明確な理由
2. **AIスロップ絶対排除**: テンプレ的・汎用的デザイン禁止
3. **モダンCSS活用**: Container Queries, :has(), OKLCH, Baseline 2024+
4. **全推奨に「なぜ」を付ける**: デザイン決定に根拠を明示
5. **ビジュアル検証駆動**: ブラウザプレビュー + スクリーンショットが証拠
6. **トップレベルの美学**: 光学補正、意図的非対称、エディトリアルモーメント
7. **Design-to-Deployment**: デザインモックアップで終わらない、実コードまで

## 🔒 ゲート管理

| ゲート | タイミング | 条件 |
|-------|-----------|------|
| brainstorm | デザイン方向性決定後 | ユーザー承認 |
| brief | ブリーフ作成後 | ユーザー承認 |
| review | デザインレビュー後 | PASS + ユーザー承認 |
| qa | QA完了後 | 全チェック + ユーザー承認 |

## 📁 プロジェクト構造

```
your-project/
├── .agents/
│   ├── AGENTS.md          ← エントリポイント
│   ├── CONSTITUTION.md    ← ルール・鉄則
│   ├── WORKFLOW.md        ← フロー・ルーティング
│   ├── DESIGN.md          ← デザインブランチ
│   ├── REFERENCE.md       ← スキル・MCP・バリデーション
│   ├── checklists/        ← 品質チェックリスト
│   ├── scripts/           ← 自動検証スクリプト
│   └── skills/            ← 22種のスキル定義
├── data/                  ← デザインデータベース (CSV)
├── templates/             ← ドキュメントテンプレート
└── docs/                  ← プロジェクトドキュメント
    ├── STATUS.md
    ├── specs/
    ├── briefs/
    ├── plans/
    ├── qa-reports/
    └── handover/
```

## 🌐 前提環境

Antigravity (Gemini) 上での動作を想定。以下のMCPサーバーを活用:

- **filesystem** — ファイル操作
- **playwright** — ブラウザプレビュー・スクリーンショット
- **context7** — ライブラリドキュメント参照
- **firebase** — Firebase操作
- **github** — リポジトリ操作
- **memory** — 知識永続化

## 📜 ライセンス

MIT
