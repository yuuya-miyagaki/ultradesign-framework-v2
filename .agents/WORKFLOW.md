# Ultradesign Framework v2.0 Workflow

## Session Start

1. Read `docs/STATUS.md` if it exists.
2. Open the current canonical docs referenced by the task.
3. Apply Socratic Gate if the request is ambiguous.
4. Load only the skill doc needed for the current phase.
5. Check `phase_approvals` in `docs/STATUS.md` before crossing a hard gate.

## Socratic Gate

Trigger when:

- the user asks to build or change something without enough detail,
- the request implies design tradeoffs,
- success criteria are unclear.

Skip only when:

- the file and exact change are already specified,
- the task is a focused fix or tweak,
- the user explicitly says to proceed without more questions.

## Design Flow

```
onboard → brainstorm → [GATE] → design-brief → [GATE] → design-system → craft-* → enhance → review → [GATE] → frontend → seo → infra? → deploy → [GATE]
```

> `infra` is optional — skip when the project has no backend.

### Phase Groups

**上流（Discovery）:**
- `onboard`: サイト分析・既存コードベースの理解
- `brainstorm`: デザイン方向性のアイデア出し
- `design-brief`: デザインブリーフ作成（ターゲット、ゴール、ブランド方向）

**制作（Design）:**
- `design-system`: デザインシステム・トークン構築
- `craft-*`: LP / ポートフォリオ / プロダクト / ダッシュボード / EC の制作
- `enhance`: 追加演出（動画ヒーロー / 3D / AIチャット / アニメーション）
- `review`: デザイン品質監査・AIスロップ検出

**実装（Implement）:**
- `frontend`: React/Next.js 等への実装
- `seo`: SEO / OGP / 構造化データ最適化
- `infra`: Firebase等のインフラ構築・DB連携
- `deploy`: 本番デプロイ・CI/CD

## Hard Gates

- `brainstorm → design-brief`: デザイン方向性が承認されている（`phase_approvals.brainstorm = "approved"`）
- `design-brief → craft-*`: デザインブリーフが承認されている（`phase_approvals.brief = "approved"`）
- `review → frontend`: レビュー PASS（`phase_approvals.review = "approved"`）
- `qa → deploy`: QA 完了（`phase_approvals.qa = "approved"`）

## Lightweight Entry

小規模な変更（色の修正、テキスト変更、アニメーション調整等）で全フローが不要な場合:

- `phase_approvals.brief` を `n/a` に設定可能
- brainstorm をスキップして直接 craft-* に入ってよい
- ただし review と STATUS.md 更新は必須

## Approval Updates

Update `phase_approvals` only after an explicit user decision:

1. The agent states what evidence is ready.
2. The agent asks whether the gate should be approved.
3. The user explicitly approves or blocks it.
4. The agent updates `phase_approvals` in `docs/STATUS.md`.

Allowed states: `pending`, `approved`, `blocked`, `n/a`.

## Automatic Skill Routing

ユーザーのリクエストを分析し、最適なスキルに自動ルーティングする。

| パターン | ルーティング先 |
|---------|-------------|
| 「LP作って」「ランディングページ」「HP」 | → `craft-landing` |
| 「ポートフォリオ」「作品集」 | → `craft-portfolio` |
| 「プロダクトサイト」「SaaSサイト」 | → `craft-product-site` |
| 「ダッシュボード」「管理画面」 | → `craft-dashboard` |
| 「ECサイト」「ショップ」 | → `craft-ecommerce` |
| 「デザインシステム」「テーマ」 | → `design-system` |
| 「CSS変数」「トークン」 | → `design-tokens` |
| 「デザインレビュー」「品質チェック」 | → `design-review` |
| 「3D」「WebGL」「パーティクル」 | → `craft-3d-hero` |
| 「動画ヒーロー」「ビデオ背景」 | → `hero-video` |
| 「AIチャット」「チャットボット」 | → `ai-chat-widget` |
| 「アニメーション」「GSAP」 | → `animation-craft` |
| 「アイデア」「方向性」 | → `design-brainstorm` |
| 「サイト分析」「リデザイン」 | → `design-onboard` |
| 「コンポーネント化」「React実装」 | → `craft-frontend` |
| 「SEO」「OGP」 | → `seo-optimization` |
| 「DB繋いで」「Firebase」 | → `infrastructure-setup` |
| 「デプロイ」「公開」 | → `deploy-management` |
| 「セカンドオピニオン」 | → `second-opinion` |
| 「振り返り」「レトロ」 | → `retro` |

**判断に迷った場合:** ユーザーに確認し、選択肢を最大3つに絞って提示。

## Session End

1. Run the relevant checklist.
2. Run validation scripts when evidence is needed.
3. Update `docs/STATUS.md` with current phase, approval state, next action, blockers, and session notes.
4. Keep `session_history` to the most recent 5 entries.
5. Append durable lessons to `docs/LEARNINGS.md` when a pattern is worth keeping.
