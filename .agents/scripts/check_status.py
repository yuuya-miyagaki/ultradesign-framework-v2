#!/usr/bin/env python3
"""Validate docs/STATUS.md structure and consistency."""
import argparse
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

    # Check required sections
    required = ["Phase Approvals", "Current State", "Session History"]
    for section in required:
        if section not in content:
            errors.append(f"Missing section: {section}")

    # Check phase_approvals keys
    approval_keys = ["brainstorm", "brief", "review", "qa"]
    for key in approval_keys:
        if key not in content:
            errors.append(f"Missing approval key: {key}")

    # Check valid states
    valid_states = ["pending", "approved", "blocked", "n/a"]
    for key in approval_keys:
        for state in valid_states:
            if f'{key}: "{state}"' in content:
                break
        else:
            # Only warn if the key exists but has an invalid state
            import re
            match = re.search(rf'{key}:\s*"([^"]*)"', content)
            if match and match.group(1) not in valid_states:
                errors.append(f"Invalid state for {key}: {match.group(1)}")

    if errors:
        print("❌ STATUS.md validation failed:")
        for e in errors:
            print(f"  - {e}")
        sys.exit(1)
    else:
        print("✅ STATUS.md is valid")
        sys.exit(0)

if __name__ == "__main__":
    main()
