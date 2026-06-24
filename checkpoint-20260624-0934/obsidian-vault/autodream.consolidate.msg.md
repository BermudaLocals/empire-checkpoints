---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

Perform the Consolidation & Clean pass for the following memory scope:

## Canonical Memory Scope
```json
{{memory_scope}}
```

## Existing Durable Memory Files
Find overlapping files in this list, merge them into more comprehensive files, and explicitly delete the redundant ones.
```json
{{existing_memories}}
```

Return JSON only.