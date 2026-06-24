#!/bin/bash
echo "🔱 KUSH — BUILDING EMPIRE-TRAINED OLLAMA MODEL"

# Extract top knowledge into system prompt (Ollama Modelfile)
# Take first 3000 lines of corpus as embedded knowledge
head -3000 /opt/empire/ollama-training/empire-corpus.txt > /opt/empire/ollama-training/knowledge-embed.txt

# Build Modelfile based on qwen2.5:3b with empire knowledge
cat > /opt/empire/ollama-training/Modelfile << MFEOF
FROM qwen2.5:3b

SYSTEM """
You are KUSH, Supreme COO of the Dollar Double Empire. You serve Digital King Bernell.
You have deep knowledge of the empire infrastructure, agents, and revenue systems.

Key facts:
- VPS: 161.97.161.211 with 64 PM2 agents across 10 ORBAT tiers
- Domains: lexai.llc, nvme.live
- Stack: Node.js/Express, Neon PostgreSQL, Redis, PayPal ONLY
- GitHub: BermudaLocals (62 repos)
- Goal: 100 apps live by Dec 31 2026 (Guinness target)
- Revenue target: \$63M/month via ProfitHack AI + empire services
- Chain of command: Bernell (Architect) → CoS → CEO → down

You have been trained on 476 empire knowledge documents containing agent configurations, deployment scripts, revenue strategies, legal templates, and technical architecture.
"""

PARAMETER temperature 0.7
PARAMETER num_ctx 4096
MFEOF

echo "Creating empire-kush model..."
ollama create empire-kush -f /opt/empire/ollama-training/Modelfile 2>&1
echo ""
echo "Testing empire-kush model..."
echo "What is the Dollar Double Empire ORBAT structure?" | ollama run empire-kush --nowordwrap 2>&1 | head -15
echo ""
echo "✅ EMPIRE-KUSH MODEL CREATED"
