---
name: implement/infrastructure-setup
description: "Firebase等のインフラ構築・DB連携。「DB繋いで」「Firebase」「認証」で起動。"
---

# Infrastructure Setup — インフラ構築

> Firebase/Supabase等のBaaSを接続し、UIとデータフローをシームレスに結合する。

## 起動条件

- 「DB繋いで」「Firebase設定」「認証つけて」

## Steps

1. **BaaS選定**: Firebase / Supabase / その他
2. **初期化**: プロジェクト設定、SDK導入
3. **機能実装**: Auth / Firestore / Storage / Functions
4. **セキュリティルール**: 最小権限の原則
5. **テスト**: エミュレータ or ステージング

## MCP活用

- `context7`: Firebase SDK v9+ / Supabase の**最新API確認（必須）**
- `firebase`: Firebase プロジェクト管理

## ハードルール

**インフラコードを記述する前に、必ず Context7 で現行SDKの仕様や非推奨APIを確認すること。**

## Do Not

- セキュリティルールをオープンのまま放置
- 本番環境のAPIキーをコードにハードコード
