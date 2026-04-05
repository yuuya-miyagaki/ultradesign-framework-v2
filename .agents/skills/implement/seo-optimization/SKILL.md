---
name: implement/seo-optimization
description: "SEO・OGP・構造化データ・Core Web Vitals最適化。「SEO」「OGP」で起動。"
---

# SEO Optimization — SEO最適化

> 検索エンジンとソーシャルメディアでの可視性を最大化する。

## 起動条件

- craft-frontend 完了後
- 「SEO対応して」「OGP設定」

## Steps

1. **メタタグ**: title, description, canonical, viewport
2. **OGP/Twitter Card**: og:title, og:description, og:image, twitter:card
3. **構造化データ**: JSON-LD（Organization, WebSite, Product等）
4. **パフォーマンス**: Core Web Vitals（LCP, FID, CLS）
5. **技術SEO**: sitemap.xml, robots.txt, heading hierarchy

## Checklist

- [ ] `<title>` が 50-60文字
- [ ] `<meta description>` が 150-160文字
- [ ] OGP画像 (1200x630px)
- [ ] `<h1>` が1ページ1つ
- [ ] 画像にalt属性
- [ ] JSON-LD 構造化データ
- [ ] canonical URL

## Do Not

- キーワードスタッフィング
- h1 を複数配置
