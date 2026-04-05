---
name: design/design-tokens
description: "CSS変数・テーマ管理・ダークモード切替。「CSS変数」「トークン」「ダークモード」で起動。"
---

# Design Tokens — トークン管理

> デザイン意図をコードで体現するCSS変数とテーマ管理。

## 起動条件

- 「CSS変数作って」「デザイントークン」「ダークモード対応」

## Steps

1. **既存トークン確認**: プロジェクト内のCSS変数を走査
2. **トークン体系設計**: color / typography / spacing / radius / shadow / motion
3. **ダークモード設計**: `prefers-color-scheme` + 手動切替
4. **生成**: CSS変数ファイル

## Token Categories

```css
:root {
  /* Color */
  --color-primary: oklch(60% 0.15 250);
  --color-bg: oklch(20% 0.05 250);
  --color-text: oklch(98% 0.01 250);
  --color-surface: oklch(25% 0.08 250);
  --color-accent: oklch(65% 0.20 30);

  /* Typography */
  --font-heading: 'Font Name', sans-serif;
  --font-body: 'Font Name', sans-serif;

  /* Spacing (4px base) */
  --space-1: 0.25rem;  --space-2: 0.5rem;
  --space-3: 0.75rem;  --space-4: 1rem;
  --space-6: 1.5rem;   --space-8: 2rem;
  --space-12: 3rem;    --space-16: 4rem;

  /* Radius */
  --radius-sm: 4px;  --radius-md: 8px;
  --radius-lg: 12px; --radius-xl: 16px;

  /* Shadow */
  --shadow-sm: 0 1px 2px oklch(0% 0 0 / 0.05);
  --shadow-md: 0 4px 6px oklch(0% 0 0 / 0.1);
  --shadow-lg: 0 10px 15px oklch(0% 0 0 / 0.1);

  /* Motion */
  --ease-out: cubic-bezier(0.16, 1, 0.3, 1);
  --duration-fast: 200ms;
  --duration-medium: 400ms;
}
```

## Do Not

- ハードコードされた色値やサイズを使用（変数を使う）
