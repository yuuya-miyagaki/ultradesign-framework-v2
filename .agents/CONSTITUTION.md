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

## Design Principle Reference

Detailed design principles live in `DESIGN.md`.

- Apply them during discovery, design, implementation, and review work.
- Keep `CONSTITUTION.md` focused on always-on rules, safety, and evidence discipline.

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

- 要件の正本は `docs/requirements/` に保管
- ブランドや構成の検討メモは `docs/specs/` に保管してよい
- 実装計画は `docs/plans/` に保管
- QA・レビュー結果は `docs/qa-reports/` に保管
- Dev handover は `docs/handover/TO-DEV.md` に保管
- セッション再開コンテキストは `docs/STATUS.md` に保管

## Guardrails

- Do not put secrets, API keys, or credentials in prompts or docs.
- Prefer fixed canonical file paths over ad hoc date-stamped filenames.
- Mark assumptions as assumptions when facts are unavailable.
