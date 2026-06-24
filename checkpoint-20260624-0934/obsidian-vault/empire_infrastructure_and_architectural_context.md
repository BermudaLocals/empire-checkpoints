---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

---
title: Empire Infrastructure and Architectural Context
description: Core facts about the 'Empire' container, VPS environment, and active
  project stack.
updated_at: '2026-06-14T05:46:01.342681+00:00'
memory_scope: default
grounding: grounded
source_context_ids:
- hZRQnrOW
- zWp9Er0T
- wmA0h4yQ
source_first_prompts:
- The user, acting as the Digital King, is working with §§secret(X_TITLE) to establish
  a complex AI-managed hierarchy (Empire) across multiple systems.
- Kush, initiate a comprehensive Empire Audit.
- 'import os import litellm def diagnose_auth():'
source_memory_ids:
- RmZfwJrbRG
- RHpJWLaJgD
- AIDaU64TM6
- LBITu7g7fZ
- LQlissgQyO
- hOes5EUxI6
- ma21wBN7eg
- 2UYoCLNfOe
- cAVVsF7Z7N
- ba8SaxVHBa
- VYOVjT9kfZ
- L5UZEWnZRZ
canonical_scope_name: default
---

# Empire Infrastructure
- **Project Roles**: The user is the 'Digital King', an architect of complex, multi-system AI deployments (The Empire).
- **Development Environment**: The 'Empire' container environment runs on agent-zero:latest (localhost:5080) with critical data persisted on the I: drive.
- **Operational Stack**: 53-app ORBAT hierarchy, with 14 active PM2-managed services.
- **Core Components**: 
  - Space-Agent (Orchestration)
  - Gateway (API routing at port 8000)
  - NVME platform (Creator/media stack in development)
  - Kush-Portal (Web portal)
- **Operational Procedures**: 
  - Use `pm2 save` after any process change for persistence.
  - Railway deployments require correctly mapped `PORT` variables and explicit inclusion of dependencies like `google-auth-library` in `package.json`.
  - Always verify webhook routing in third-party dashboards (e.g., Twilio) when auth or intake issues occur.
