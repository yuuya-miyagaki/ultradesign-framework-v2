---
name: design/animation-craft
description: "GSAP/CSS プレミアムアニメーション実装。「アニメーション」「GSAP」「スクロール演出」で起動。"
---

# Animation Craft — プレミアムアニメーション

> 意味のあるマイクロインタラクションとスクロール連動アニメーションを実装する。

## 起動条件

- 「アニメーション追加」「GSAP」「スクロール演出」

## Steps

1. **アニメーション計画**: どこに、なぜ、どのようなアニメーションか
2. **技術選定**: CSS-only / GSAP ScrollTrigger / Web Animations API
3. **実装**: GPU accelerated プロパティのみ（transform, opacity）
4. **reduced-motion 対応**: 全アニメーションに必須
5. **パフォーマンス確認**: 60fps維持

## Animation Recipes

### スクロール連動フェードイン（CSS-only）

```css
.reveal {
  opacity: 0;
  transform: translateY(30px);
  transition: opacity 600ms var(--ease-out), transform 600ms var(--ease-out);
}
.reveal.is-visible {
  opacity: 1;
  transform: translateY(0);
}
```

```javascript
const observer = new IntersectionObserver((entries) => {
  entries.forEach(e => {
    if (e.isIntersecting) e.target.classList.add('is-visible');
  });
}, { threshold: 0.1 });
document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
```

### スタガードアニメーション

```css
.stagger > * {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 500ms var(--ease-out), transform 500ms var(--ease-out);
}
.stagger.is-visible > *:nth-child(1) { transition-delay: 0ms; }
.stagger.is-visible > *:nth-child(2) { transition-delay: 100ms; }
.stagger.is-visible > *:nth-child(3) { transition-delay: 200ms; }
.stagger.is-visible > * { opacity: 1; transform: translateY(0); }
```

## MCP活用

- `context7`: GSAP / Framer Motion の最新API確認

## Do Not

- width/height/top/left でアニメーション（GPU非対応）
- prefers-reduced-motion 未対応
