---
name: implement/deploy-management
description: "本番デプロイ・CI/CD設定。「デプロイ」「公開」「Vercel」で起動。"
---

# Deploy Management — デプロイ管理

> ステージング確認を経て本番公開する。

## 起動条件

- QA完了後
- 「デプロイして」「公開して」

## Steps

1. **デプロイ先自動検出**
2. **ビルド確認**: エラーなし
3. **ステージングデプロイ**: プレビュー確認
4. **本番デプロイ**: ユーザー承認後
5. **ポストデプロイ確認**: URL動作、SSL、パフォーマンス

## デプロイ先自動検出

| シグナル | 判定 | コマンド |
| -------- | ---- | ------- |
| `firebase.json` | Firebase | `firebase deploy --only hosting` |
| `vercel.json` / `.vercel/` | Vercel | `vercel deploy` |
| `netlify.toml` | Netlify | `netlify deploy` |
| 検出なし | ユーザーに質問 | — |

## Gate

- `phase_approvals.qa = "approved"` 必須

## Do Not

- QA未完了でデプロイ
- ユーザー承認なしに本番デプロイ
