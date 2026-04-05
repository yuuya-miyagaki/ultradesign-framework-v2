# Ultradesign Framework v2.0 Workflow

## Session Start

1. Read `docs/STATUS.md` if it exists.
2. Open the canonical docs relevant to the current phase.
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

## Phase Model

Phase 1 targets:

- LP
- コーポレートサイト
- サービスサイト

Phase 2 targets dashboards and complex product UI. If a request is dashboard-first, note that it is outside the homepage-first default and confirm whether to continue under Phase 2 assumptions.

## Design Flow

```text
onboard → brainstorm → [GATE discovery] → design-brief → [GATE requirements] → handover → [GATE handover] → design-system → craft-* → review → [GATE design_review] → frontend → seo → infra? → qa → [GATE qa] → deploy
```

> `infra` is optional — skip when the project has no backend.

### Phase Groups

**Discovery**
- `onboard`: 既存サイト分析・既存コードベースの理解
- `brainstorm`: 方向性候補、参考方向、ブランド仮説の整理
- `design-brief`: 5 つの正本ドキュメントを作成し、要件を固定

**Handover**
- `handover`: `TO-DEV` を作成し、実装対象とデザイン意図を Dev 向けに翻訳

**Design**
- `design-system`: デザインシステム・トークン構築
- `craft-*`: LP / ポートフォリオ / プロダクト / ダッシュボード / EC の制作
- `enhance`: 追加演出（動画ヒーロー / 3D / AI チャット / アニメーション）
- `review`: デザイン品質監査・AI スロップ検出

**Implement**
- `frontend`: React/Next.js 等への実装
- `seo`: SEO / OGP / 構造化データ最適化
- `infra`: Firebase 等のインフラ構築・DB 連携
- `qa`: 受入条件、アクセシビリティ、パフォーマンス確認
- `deploy`: 本番デプロイ・CI/CD

## Hard Gates

- `brainstorm → design-brief`: discovery が承認されている（`phase_approvals.discovery = "approved"`）
- `design-brief → handover`: requirements が承認されている（`phase_approvals.requirements = "approved"`）
- `handover → design-system`: handover が承認されている（`phase_approvals.handover = "approved"`）
- `review → frontend`: design review が承認されている（`phase_approvals.design_review = "approved"`）
- `qa → deploy`: QA 完了（`phase_approvals.qa = "approved"`）

## Lightweight Entry

小規模な変更（色の修正、テキスト変更、アニメーション調整等）で全フローが不要な場合:

- `phase_approvals.discovery` と `phase_approvals.requirements` を `n/a` に設定可能
- brainstorm / design-brief / handover をスキップして直接 craft-* に入ってよい
- ただし `design_review` と `STATUS.md` 更新は必須

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
| 「要件を整理して開発へ渡したい」 | → `design-brief` |
| 「コンポーネント化」「React実装」 | → `craft-frontend` |
| 「SEO」「OGP」 | → `seo-optimization` |
| 「DB繋いで」「Firebase」 | → `infrastructure-setup` |
| 「QA」「受入確認」 | → `design-review` + `qa evidence` |
| 「デプロイ」「公開」 | → `deploy-management` |
| 「セカンドオピニオン」 | → `second-opinion` |
| 「振り返り」「レトロ」 | → `retro` |

**判断に迷った場合:** ユーザーに確認し、選択肢を最大 3 つに絞って提示。

## Session End

1. Run the relevant checklist.
2. Run validation scripts when evidence is needed.
3. Update `docs/STATUS.md` with current phase, approval state, next action, blockers, and session notes.
4. Keep `session_history` to the most recent 5 entries.
5. Append durable lessons to `docs/LEARNINGS.md` when a pattern is worth keeping.
6. Run `retro` after release, milestone completion, or significant failure recovery.
