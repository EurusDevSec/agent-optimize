---
name: skeleton
description: Context Virtualization skill with --depth control flag (-85% tokens for signatures, full for core files)
argument-hint: <file-or-dir-path> [--depth=signatures|full]
---

# /skeleton Protocol v2.2 (Granular Virtualization Control)

Target: $ARGUMENTS

1. **Parse Depth Flag**:
   - `--depth=signatures` (default): Extract Class declarations, function headers, docstrings, and Type Annotations. Omit function bodies (`...`). Cuts tokens by 85%.
   - `--depth=full`: Retain complete implementation code for complex metaprogrammed, decorated, or core side-effect files.
2. **Output Virtualized View**: Write skeleton to temporary virtual buffer for Agent prompt context.
