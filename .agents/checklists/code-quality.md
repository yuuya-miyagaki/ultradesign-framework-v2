# コード品質チェックリスト

## HTML

- [ ] DOCTYPE 正しい
- [ ] lang 属性設定済み
- [ ] meta viewport 設定済み
- [ ] meta description 設定済み
- [ ] title タグ（50-60文字）設定済み
- [ ] セマンティックHTML使用

## CSS

- [ ] CSS カスタムプロパティ（変数）使用
- [ ] モバイルファースト
- [ ] Container Queries 使用（適切な場合）
- [ ] :has() セレクタ活用（適切な場合）
- [ ] prefers-reduced-motion 対応
- [ ] prefers-color-scheme 対応（ダークモード時）

## JavaScript

- [ ] 不要なJSは排除（CSSで代替可能か確認）
- [ ] IntersectionObserver 使用（スクロール連動）
- [ ] エラーハンドリング実装

## ビルド・デプロイ

- [ ] lint 通過
- [ ] typecheck 通過（TypeScript時）
- [ ] ビルドエラーなし
- [ ] 不要ファイル（.DS_Store等）除外（.gitignore）
