# デザイン品質チェックリスト

## ビジュアル品質

- [ ] 60-30-10 カラールールに準拠している
- [ ] OKLCH/OKLAB 色空間を使用している（または HSL で十分な根拠がある）
- [ ] コントラスト比: 通常テキスト 4.5:1 以上
- [ ] コントラスト比: CTA ボタン 7:1 以上
- [ ] ダークモード対応（必要な場合）
- [ ] フォントペアリングが data/typography.csv に基づいている
- [ ] タイプスケールが一貫している（Modular Scale 1.25）
- [ ] 光学補正が適用されている（巨大見出しのカーニング等）

## AIスロップチェック

- [ ] 汎用グラデーション（青→紫）なし
- [ ] 全角丸ボタン + 巨大ドロップシャドウなし
- [ ] テンプレート的な3カラムカードなし
- [ ] Lorem ipsum の残存なし
- [ ] 全要素へのアニメーション付与なし
- [ ] Floating gradient orbs なし
- [ ] SVG Blob shapes の多用なし
- [ ] Border-radius: 50px/999px の過剰使用なし
- [ ] 定番 Basic/Pro/Enterprise 料金表テンプレなし

## レスポンシブ

- [ ] モバイル（デフォルト）で正常表示
- [ ] タブレット（768px）で正常表示
- [ ] デスクトップ（1024px）で正常表示
- [ ] ワイドスクリーン（1440px）で最大幅制限

## アクセシビリティ

- [ ] セマンティック HTML（`<nav>`, `<main>`, `<section>`, `<article>`）
- [ ] alt 属性・aria-label が適切
- [ ] `prefers-reduced-motion` 対応
- [ ] キーボードナビゲーション可能
- [ ] Lighthouse Accessibility > 95

## パフォーマンス

- [ ] Lighthouse Performance > 90（標準LP）/ > 80（動画含む）
- [ ] フォントは preconnect で読み込み
- [ ] 画像は適切なフォーマット・サイズ
- [ ] アニメーションは transform/opacity のみ使用
