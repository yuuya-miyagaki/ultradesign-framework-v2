# Changelog

## [2.0.0] — 2025-04-04

### 🆕 Ultradesign Framework v1 → v2 メジャーアップグレード

#### Added
- **Ultra Framework v7 のプロセス規律を統合**
  - ゲート管理（brainstorm → brief → review → qa）
  - STATUS.md によるステータス追跡
  - 明示的な承認プロトコル
- **スキルシステム刷新（22種）**
  - Discovery: design-onboard, design-brainstorm, design-brief
  - Design: craft-landing, craft-portfolio, craft-product-site, craft-dashboard (NEW), craft-ecommerce (NEW), design-system, design-tokens, design-review, hero-video, craft-3d-hero, ai-chat-widget, animation-craft
  - Implement: craft-frontend, seo-optimization, infrastructure-setup, deploy-management
  - Core: second-opinion, retro, design-workflow
- **自動ルーティング**: ユーザーリクエストを自動でスキルに振り分け
- **3種のチェックリスト**: design-quality, code-quality, gate-compliance
- **3種の自動検証スクリプト**: check_status.py, check_slop.sh, check_accessibility.sh
- **テンプレートシステム**: STATUS, DESIGN-BRIEF, DESIGN-DNA, HANDOVER, LEARNINGS
- **圧縮アーキテクチャ**: 5ファイル構成（AGENTS → CONSTITUTION → WORKFLOW → DESIGN → REFERENCE）

#### Changed
- Discovery分岐を廃止、Design分岐に統合
- v1 のスキルをキーワード起動式に統一
- コアドキュメントを v7 の圧縮アーキテクチャに移行

#### Migration from v1
- `data/` ディレクトリはそのまま互換
- スキル構造が変更（`skills/` → `.agents/skills/{discovery,design,implement,core}/`）
- `AGENTS.md` を新しいエントリポイントとして使用
