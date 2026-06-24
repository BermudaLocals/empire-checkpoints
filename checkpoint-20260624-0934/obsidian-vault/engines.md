---
copyright: "(c) 2026 NvMe Empire - Bernell (God-Mode). All rights reserved."
fingerprint: "NVME-EMPIRE-V2.1.0-20260524"
protection: active
---

# Inference Engines

OpenJarvis supports several inference backends.

## Ollama

The default on consumer hardware. Runs locally and exposes an HTTP API. Good for GGUF-quantized models.

## vLLM

High-throughput serving backend with tensor parallelism. Best for NVIDIA GPUs with plenty of VRAM. Supports prefix caching and continuous batching.

## llama.cpp

Pure C++ inference. Runs on CPU, Metal, CUDA, or ROCm. Ideal for laptops without a discrete GPU.

## Picking an Engine

Run `jarvis init` — it detects your hardware and recommends the best fit. You can override with `--engine <name>`.
