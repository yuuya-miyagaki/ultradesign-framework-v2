---
name: design/hero-video
description: "動画ヒーロー演出。パフォーマンス最適化込み。「動画ヒーロー」「ビデオ背景」で起動。"
---

# Hero Video — 動画ヒーロー演出

> 没入型ビデオ背景のヒーローセクションを実装する。パフォーマンスを犠牲にしない。

## 起動条件

- 「動画ヒーロー」「ビデオ背景にしたい」

## Steps

1. **動画ソース確認**: MP4 / WebM、ファイルサイズ、解像度
2. **実装**: `<video>` タグ + ダークオーバーレイ + テキスト配置
3. **パフォーマンス最適化**: preload, lazy, poster画像
4. **モバイル対応**: 静止画フォールバック + `prefers-reduced-motion`
5. **レスポンシブ**: object-fit: cover

## Implementation Pattern

```html
<section class="hero-video">
  <video autoplay muted loop playsinline poster="poster.webp"
         preload="metadata">
    <source src="hero.webm" type="video/webm">
    <source src="hero.mp4" type="video/mp4">
  </video>
  <div class="hero-video__overlay"></div>
  <div class="hero-video__content">
    <h1>...</h1>
    <a href="#" class="cta-button">...</a>
  </div>
</section>
```

```css
.hero-video { position: relative; min-height: 100vh; overflow: hidden; }
.hero-video video {
  position: absolute; inset: 0;
  width: 100%; height: 100%;
  object-fit: cover;
}
.hero-video__overlay {
  position: absolute; inset: 0;
  background: oklch(15% 0.05 250 / 0.6);
}
@media (prefers-reduced-motion: reduce) {
  .hero-video video { display: none; }
}
```

## Do Not

- autoplay + sound（muted 必須）
- 巨大ファイルサイズ（目安: 10MB以下）
