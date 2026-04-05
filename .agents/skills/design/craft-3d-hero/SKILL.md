---
name: design/craft-3d-hero
description: "WebGL/Three.js/R3F 3Dヒーロー演出。「3Dにして」「パーティクル」「WebGL」で起動。"
---

# Craft 3D Hero — 3Dヒーロー演出

> Three.js / React Three Fiber を使った没入型3Dヒーローセクション。

## 起動条件

- 「3Dにして」「パーティクル」「WebGL」「R3F」

## Steps

1. **演出タイプ決定**: パーティクル / 3Dオブジェクト / アブストラクト / 地形
2. **技術選定**: Three.js / React Three Fiber + Drei
3. **パフォーマンス設計**: LOD、frustum culling、mobile fallback
4. **実装**: Canvas + フォールバック静止画
5. **テスト**: FPS計測、モバイル動作確認

## MCP活用

- `context7`: React Three Fiber / Drei の最新API確認

## Do Not

- モバイルで3D強制（静止画フォールバック必須）
- FPS 30以下になる重い演出
