#!/usr/bin/env python3
"""Validate docs/STATUS.md structure and consistency."""
import argparse
import re
import sys
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description="Check STATUS.md")
    parser.add_argument("--root", default=".", help="Project root path")
    args = parser.parse_args()

    root = Path(args.root)
    status_file = root / "docs" / "STATUS.md"

    errors = []

    if not status_file.exists():
        print("⚠️  docs/STATUS.md does not exist (OK for new projects)")
        sys.exit(0)

    content = status_file.read_text()

    required_sections = ["Phase Approvals", "Current State", "Session History"]
    for section in required_sections:
        if section not in content:
            errors.append(f"Missing section: {section}")

    approval_keys = ["discovery", "requirements", "handover", "design_review", "qa"]
    valid_states = ["pending", "approved", "blocked", "n/a"]

    for key in approval_keys:
        if key not in content:
            errors.append(f"Missing approval key: {key}")
            continue

        match = re.search(rf'{key}:\s*"([^"]*)"', content)
        if match and match.group(1) not in valid_states:
            errors.append(f"Invalid state for {key}: {match.group(1)}")

    session_lines = content.splitlines()
    in_history = False
    history_rows = []
    for line in session_lines:
        if line.strip() == "## Session History":
            in_history = True
            continue
        if in_history and line.startswith("## "):
            break
        if not in_history:
            continue
        stripped = line.strip()
        if not stripped.startswith("|"):
            continue
        if stripped == "| # | Date | Phase | Summary |":
            continue
        if stripped == "|---|------|-------|---------|":
            continue
        history_rows.append(stripped)

    if len(history_rows) > 5:
        errors.append(f"session_history has {len(history_rows)} entries (max 5)")

    if errors:
        print("❌ STATUS.md validation failed:")
        for error in errors:
            print(f"  - {error}")
        sys.exit(1)

    print("✅ STATUS.md is valid")
    sys.exit(0)


if __name__ == "__main__":
    main()
