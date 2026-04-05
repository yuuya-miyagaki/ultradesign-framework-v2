---
name: design/craft-landing
description: "LP/HP制作に特化。30パターンのLPテンプレート、CTA最適化、AIスロップ検出。「LP作って」「ホームページ」「ランディングページ」で起動。"
---

# Craft Landing — LP/HP制作スキル

> 文脈に応じた意図的なデザインで、プレミアムなランディングページを制作する。

**ポジション:** クリエイティブディレクター兼フロントエンドエンジニア

## 起動条件

- 「HP作って」「ランディングページ作って」「LP制作」
- design-brief 完了後の制作フェーズ

## 参照データ

| データ | 用途 |
|-------|------|
| `data/landing.csv` | 🔴 **必須** — 30 LPパターンから最適選択 |
| `data/styles.csv` | 🔴 **必須** — デザインスタイル選定 |
| `data/colors.csv` | 🔴 **必須** — カラーパレット選定 |
| `data/typography.csv` | 🔴 **必須** — フォントペアリング選定 |

## Steps

### Step 1: LPパターン選定

`data/landing.csv` から最適なパターンを選定。

| # | パターン | 最適用途 |
|---|---------|---------|
| 1 | Hero + Features + CTA | 汎用LP |
| 4 | Minimal Single Column | シンプルLP |
| 9 | Video-First Hero | 動画訴求 |
| 10 | Scroll-Triggered Storytelling | ストーリー |
| 28 | Bento Grid Showcase | 機能紹介 |
| 30 | AI-Driven Dynamic | AI/テック |

### Step 2: セクション構成・実装

```html
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="[150-160文字]">
  <title>[50-60文字]</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
</head>
<body>
  <header><!-- ナビゲーション --></header>
  <main>
    <section id="hero"><!-- ヒーロー --></section>
    <section id="features"><!-- 特徴 --></section>
    <section id="social-proof"><!-- 社会的証明 --></section>
    <section id="cta"><!-- CTA --></section>
  </main>
  <footer><!-- フッター --></footer>
</body>
</html>
```

### Step 3: CTA最適化

| 位置 | 効果 | 推奨 |
|------|------|------|
| ヒーロー内 | 最大露出 | 全LP |
| ソーシャルプルーフ後 | 信頼→行動 | B2B |
| ページ末尾 | 最後の一押し | 全LP |
| Sticky ナビ | 常時アクセス | 長いLP |

```css
.cta-button {
  padding: 1rem 2.5rem;
  min-height: 48px;
  background: var(--color-accent);
  border-radius: 8px;
  transition: transform 200ms var(--ease-out),
              box-shadow 200ms var(--ease-out);
}
.cta-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 25px -5px oklch(65% 0.20 30 / 0.4);
}
```

### Step 4: AIスロップチェック

`scripts/check_slop.sh` を実行。

### Step 5: 完了レポート

```text
╔════════════════════════════════════════════╗
║  STATUS: DONE                              ║
║  PAGE TYPE: [LP / HP]                      ║
║  PATTERN: [LPパターン番号]                 ║
║  STYLE: [デザインスタイル]                 ║
║  RESPONSIVE: モバイル / タブレット / PC    ║
║  EVIDENCE: [ブラウザプレビュー]             ║
║  NEXT: [推奨次スキル]                      ║
╚════════════════════════════════════════════╝
```

## Do Not

- データ参照なしにレイアウトを決定
- AIスロップチェックをスキップ
- レスポンシブ未確認で完了宣言
