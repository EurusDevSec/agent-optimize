---
name: benchmark
description: Fast slash command /benchmark to run the scientifically neutral benchmark suite locally and generate BENCHMARK_REPORT.md
---

# /benchmark Protocol

1. Execute the automated benchmark runner:
   `python benchmarks/runner.py`
2. Inspect generated report at `benchmarks/BENCHMARK_REPORT.md`.
3. Inspect raw JSONL trace logs under `benchmarks/logs/`.
