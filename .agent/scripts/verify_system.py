#!/usr/bin/env python3
import json, os, sys

def verify():
    hot_mem_path = ".agent/memory/hot_memory.json"
    spec_path = ".agent/specs/current-task.md"
    
    if not os.path.exists(hot_mem_path):
        print("ERROR: hot_memory.json missing!")
        sys.exit(1)
        
    print("✓ Agent System Verification Passed.")

if __name__ == "__main__":
    verify()
