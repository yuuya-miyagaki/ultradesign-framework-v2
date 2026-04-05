# デザインデータ

このディレクトリには、デザイン制作を支援するリファレンスデータが格納されています。

## ファイル一覧

| ファイル | 内容 | レコード数 | 出典 |
| ------- | ---- | --------- | ---- |
| `styles.csv` | デザインスタイル辞典 | 58 | Antigravity Kit ui-ux-pro-max |
| `colors.csv` | プロダクトタイプ別カラーパレット | 96 | Antigravity Kit ui-ux-pro-max |
| `typography.csv` | フォントペアリング辞典 | 57 | Antigravity Kit ui-ux-pro-max |
| `landing.csv` | ランディングページパターン | 30 | Antigravity Kit ui-ux-pro-max |

## 使い方

### スタイル検索

```bash
# Glassmorphism のスタイル情報
grep -i "glassmorphism" data/styles.csv

# ダークモード対応スタイル
grep "✓ Full" data/styles.csv | grep "Dark Mode"
```

### カラーパレット検索

```bash
# SaaS向けカラーパレット
grep -i "saas" data/colors.csv

# ラグジュアリー向け
grep -i "luxury" data/colors.csv
```

### フォントペアリング検索

```bash
# 日本語対応フォント
grep -i "japanese" data/typography.csv

# モダンなSaaS向け
grep -i "modern.*professional\|saas" data/typography.csv
```

### LPパターン検索

```bash
# 動画ヒーロー系
grep -i "video" data/landing.csv

# AI系LP
grep -i "ai\|personalization" data/landing.csv
```

## 更新方法

データは [Antigravity Kit](https://github.com/anthropics/antigravity-kit) の `ui-ux-pro-max` モジュールが出典です。最新版に更新する場合:

```bash
# Antigravity Kit から最新データを取得
cp /path/to/antigravity-kit/.agent/.shared/ui-ux-pro-max/data/*.csv ./data/
```

## 注意事項

- これらのデータは**出発点**であり、ブランドに合わせたカスタマイズが前提です
- カラーパレットは WCAG AA 準拠（4.5:1 コントラスト比）を確認してから使用してください
- フォントペアリングは Google Fonts URL が含まれており、そのまま CSS にインポートできます
