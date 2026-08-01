#!/usr/bin/env python3
import sys, os, subprocess, shutil

def auto_format(file_path):
    if not os.path.exists(file_path):
        return
    ext = os.path.splitext(file_path)[1].lower()
    
    # Try running prettier for web/json files if available
    if ext in ['.js', '.ts', '.jsx', '.tsx', '.json', '.md', '.css', '.html']:
        if shutil.which("npx"):
            subprocess.run(["npx", "--no-install", "prettier", "--write", file_path], capture_output=True)
    # Try running ruff / black / autopep8 for python files if available
    elif ext == '.py':
        if shutil.which("ruff"):
            subprocess.run(["ruff", "format", file_path], capture_output=True)
        elif shutil.which("black"):
            subprocess.run(["black", file_path], capture_output=True)
    # Try running gofmt for go files if available
    elif ext == '.go':
        if shutil.which("gofmt"):
            subprocess.run(["gofmt", "-w", file_path], capture_output=True)
    # Try running rustfmt for rust files if available
    elif ext == '.rs':
        if shutil.which("rustfmt"):
            subprocess.run(["rustfmt", file_path], capture_output=True)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        auto_format(sys.argv[1])
