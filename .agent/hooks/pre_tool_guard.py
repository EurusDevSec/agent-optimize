#!/usr/bin/env python3
import sys, re

def check_command(cmd):
    dangerous_patterns = [
        r"rm\s+-rf\s+/",
        r"git\s+push\s+.*--force",
        r"drop\s+database",
        r"> /dev/null"
    ]
    for pattern in dangerous_patterns:
        if re.search(pattern, cmd, re.IGNORECASE):
            print(f"[SAFETY HOOK BLOCKED]: Dangerous command detected: '{cmd}'")
            sys.exit(1)
    print("[SAFETY HOOK PASSED]")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        check_command(" ".join(sys.argv[1:]))
