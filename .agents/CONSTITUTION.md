# Ultradesign Framework v2.0 Constitution

## Always-On Process Rules

1. Do not start a session before reading `docs/STATUS.md` when it exists.
2. Do not proceed with ambiguous goals, scope, or constraints; ask questions first.
3. Do not move to the next phase without the required approval or artifact.
   Do not write `approved` to `phase_approvals` without an explicit user decision.
4. Do not declare completion without evidence.
5. Do not keep retrying the same failed approach after three failed attempts; escalate.
6. Do not ship before review and QA are complete.
7. Do not end a session without updating `docs/STATUS.md` and, when applicable, `docs/LEARNINGS.md`.
   If `docs/LEARNINGS.md` does not yet exist, initialize it from `templates/LEARNINGS.template.md`.

## デザイン7鉄則

### 1. 意図のないピクセルは置かない（Every Pixel Has Purpose）

すべてのデザイン要素に「なぜそこに置いたか」を説明できること。装飾のための装飾は禁止。

**判断基準:**

- この要素を削除したらユーザー体験は劣化するか？ → No なら削除
- この余白は視覚的リズムに貢献しているか？ → No なら調整
- このアニメーションはユーザーの理解を助けるか？ → No なら簡素化

**アクセシビリティ原則:**

- WCAG AA 準拠（通常テキスト: 4.5:1、CTAボタン: 7:1 以上）を最低基準とする
- `prefers-reduced-motion` を全アニメーションに対応
- セマンティック HTML を徹底（`<nav>`, `<main>`, `<section>`, `<article>`）
- スクリーンリーダー対応のalt属性・aria-label

### 2. AIスロップの完全排除（Zero AI Slop）

「AIが作りました」と一目でわかるデザインを生成しない。

| ❌ AIスロップ | ✅ プロフェッショナル |
| ------------ | ------------------- |
| 汎用的なグラデーション（青→紫の定番） | ブランドに基づいた意図的なカラー |
| 全角丸ボタン + 巨大ドロップシャドウ | 文脈に合った形状とシャドウ階層 |
| テンプレート的な3カラムカード | コンテンツに最適化されたレイアウト |
| 「Lorem ipsum」の残存 | 実コンテンツまたは文脈に合ったダミー |
| 全要素にアニメーション | 意味のあるマイクロインタラクション |
| 過度なglossy/glass効果 | 制約のある美しさ |
| Floating gradient orbs | 要素として意味を持つ配置・形状 |
| SVG Blob shapes の多用 | シャープな幾何学または緻密なイラスト |
| Border-radius: 50px/999px の過剰使用 | デザインテーマに沿った一貫した角丸 |
| Basic/Pro/Enterprise 定番料金表 | ターゲットに最適化された独自構成 |

### 3. モダンWeb・CSS標準の完全活用 (Baseline 2024+)

JSへの依存を最小限にし、最新CSS仕様を用いて実装する。

- **Container Queries (@container):** コンポーネント主導のレスポンシブ設計
- **`:has()` セレクタ:** 状態管理をJSからCSSへ委譲
- **`@property`:** CSS変数の型付けとグラデーション等の高度アニメーション
- **Subgrid:** Bento Grid等で親グリッドに正確に子要素を揃える

**ブレークポイント基準:**

| ブレークポイント | デバイス | 用途 |
| -------------- | ------- | ---- |
| デフォルト | モバイル | 基本スタイル |
| 768px | タブレット | レイアウト拡張 |
| 1024px | デスクトップ | フルレイアウト |
| 1440px | ワイドスクリーン | 最大幅制限 |

### 4. 全推奨に「なぜ」を付ける

デザイン決定を提案する際は、必ず根拠を明示する。

```yaml
# ❌ 根拠なし
推奨: ヒーローセクションの背景を暗くする

# ✅ 根拠あり
推奨: ヒーローセクションの背景を #0F172A にする
根拠:
  - ダークヒーローは視線をCTAに集中させる（明暗コントラスト効果）
  - テキストの可読性が向上（白文字 on ダーク → 21:1 コントラスト比）
```

### 5. ビジュアル検証駆動（Visual Verification Driven）

テスト駆動ではなく、**ビジュアル検証駆動**でデザインを進める。

**検証フロー:**

```
1. ブラウザプレビュー（localhost）
2. レスポンシブ確認（モバイル/タブレット/デスクトップ）
3. Lighthouse スコア確認（標準LP: > 90、動画含む: > 80、Accessibility: > 95）
4. design-review スキルで AI Slop 検出
5. ユーザーへのビジュアル共有 + フィードバック収集
```

### 6. トップレベルの美学（洗練の原則）

1. **光学補正 (Optical Adjustment):** 巨大見出しは`font-weight`を1段階軽くし、負のカーニングを入れる。垂直位置は光学的中央に補正。
2. **意図的非対称 (Intentional Asymmetry):** 完全対称を避け、ヒーロー等は「58% / 42%」比率で緊張感を持たせる。
3. **エディトリアルモーメント (Editorial Moment):** 各主要セクションに1つだけ「計画された意外性」を持たせる。
4. **マテリアリティ (Materiality):** 単調なベタ塗りを避け、微細なノイズテクスチャ等で物質感を与える。

### 7. Design-to-Deployment

デザインモックアップで終わらせず、実運用可能なコードベースへと昇華させる。

- **コンポーネント指向**: デザインシステムを React/Vue コンポーネントに忠実に落とし込む
- **型安全と堅牢性**: TypeScriptとLintを活用
- **インフラとの統合**: FirebaseなどのBaaSを適切に接続
- **CI/CDによる品質保証**: デプロイ前にビルドとデザイン崩れを確認

## 安全ガードレール

### 破壊的コマンド検出

| パターン | リスク | 対応 |
| -------- | ------ | ---- |
| `rm -rf` / `rmdir` | ファイル削除 | `/` や `~` を含む場合は**絶対停止** |
| `git push --force` | 履歴破壊 | `--force-with-lease` への変更を提案 |
| `git reset --hard` | コミット消失 | stash 推奨 + 確認 |
| `firebase deploy` | 本番影響 | ステージング確認 |
| `npm publish` | 公開 | バージョン + 内容確認 |

**ユーザーの明示的承認なしに破壊的コマンドを実行しない。**

### See Something, Say Something

スキル実行中に**現在のタスク範囲外の問題**を発見した場合:

1. 問題を**1行で簡潔に報告**
2. 「修正しますか？」とユーザーに確認
3. **暗黙的に無視しない**

## Evidence Standard

- デザインブリーフは `docs/briefs/` に保管
- デザインDNAは `docs/specs/design-dna.md` に保管
- デザインスペックは `docs/specs/` に保管
- 実装計画は `docs/plans/` に保管
- QA・レビュー結果は `docs/qa-reports/` に保管
- ハンドオーバーは `docs/handover/` に保管
- セッション再開コンテキストは `docs/STATUS.md` に保管

## Guardrails

- Do not put secrets, API keys, or credentials in prompts or docs.
- Prefer fixed canonical file paths over ad hoc date-stamped filenames.
- Mark assumptions as assumptions when facts are unavailable.
