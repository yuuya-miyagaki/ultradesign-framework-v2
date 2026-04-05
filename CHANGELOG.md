# Changelog

## [Unreleased]

### Added
- Phase 1 の正本として `DESIGN-BRIEF` `BRAND-DIRECTION` `CONTENT-STRUCTURE` `EXPERIENCE-RULES` `ACCEPTANCE` を追加
- 開発引き渡し専用の `TO-DEV` テンプレートを追加
- フレームワーク設計書を `docs/framework/` に追加
- 実装計画を `docs/superpowers/plans/` に追加

### Changed
- Phase 1 の対象を `LP` `コーポレートサイト` `サービスサイト` に明確化
- `README.md` を client-to-dev 運用に合わせて再構成
- `STATUS.template.md` のゲートを `discovery` `requirements` `handover` `design_review` `qa` に更新
- デザイン判断の根拠を `BRAND-DIRECTION` と `TO-DEV` に分離
- 感性強化用の資産を正本から切り離し、`references/` `moodboards/` `observations/` で扱う方針に更新

### Deprecated
- `DESIGN-DNA.template.md` は `BRAND-DIRECTION.template.md` へ移行
- `HANDOVER.template.md` は `TO-DEV.template.md` へ移行

## [2.0.0] - 2025-04-04

### Added
- Ultra Framework v7 のプロセス規律を統合
- ゲート管理と `STATUS.md` によるステータス追跡を導入
- スキルシステム刷新
- 自動ルーティング
- チェックリストと自動検証スクリプト
- `STATUS` `DESIGN-BRIEF` `DESIGN-DNA` `HANDOVER` `LEARNINGS` のテンプレートシステム
- 圧縮アーキテクチャ

### Changed
- Discovery 分岐を廃止し、Design 分岐に統合
- v1 のスキルをキーワード起動式に統一
- コアドキュメントを v7 の圧縮アーキテクチャに移行

### Migration from v1
- `data/` ディレクトリはそのまま互換
- スキル構造が変更
- `AGENTS.md` を新しいエントリポイントとして使用
