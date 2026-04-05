#!/usr/bin/env python3
"""Validate docs/handover/TO-DEV.md required sections."""
import argparse
import sys
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description="Check TO-DEV.md")
    parser.add_argument("--root", default=".", help="Project root path")
    args = parser.parse_args()

    root = Path(args.root)
    handover_file = root / "docs" / "handover" / "TO-DEV.md"
    required_sections = [
        "## プロジェクト概要",
        "## 正本ドキュメント",
        "## 実装対象",
        "## デザイン意図",
        "## 完了条件",
    ]

    if not handover_file.exists():
        print("⚠️  docs/handover/TO-DEV.md does not exist")
        sys.exit(1)

    content = handover_file.read_text()
    errors = [section for section in required_sections if section not in content]

    if errors:
        print("❌ TO-DEV.md validation failed:")
        for section in errors:
            print(f"  - Missing section: {section}")
        sys.exit(1)

    print("✅ TO-DEV.md is valid")
    sys.exit(0)


if __name__ == "__main__":
    main()
