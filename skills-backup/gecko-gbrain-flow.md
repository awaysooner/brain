# Gecko + GBrain Architecture Flow

## Simple Overview

```mermaid
flowchart TD
    A[User Question] --> B{Gecko}
    B --> C[Read Relevant Skills]
    C --> D[Search GBrain]
    D --> E[Embedding Model<br/>Ollama nomic-embed-text]
    E --> F[Hybrid Search<br/>Vector + Keyword + Graph]
    F --> G[Retrieved Context<br/>+ Relationships]
    G --> H[Send to LLM]
    H --> I[Grok-4.3]
    I --> J[Generate Grounded Answer]
    J --> K[Response with Citations]
```

## Detailed Flow

1. **User asks a question**
2. **Gecko reads relevant Skills** (e.g. `gecko-gbrain-usage.md`, `financial-analysis-framework.md`)
3. **Gecko searches GBrain**
   - Uses **Ollama embedding model** to convert query into vectors
   - Performs hybrid search (vector + BM25 + knowledge graph)
4. **GBrain returns** relevant chunks + entity relationships
5. **Gecko sends context + rules to Grok-4.3**
6. **Grok-4.3 generates** the final answer (following skill rules)
7. **Response is returned** with proper citations and grounding

## Key Components

| Component              | Model / System       | Role |
|------------------------|----------------------|------|
| Embedding              | Ollama (nomic-embed-text) | Semantic search |
| Knowledge Graph        | GBrain               | Typed entity relationships |
| Reasoning & Generation | Grok-4.3             | Final answer generation |
| Rules & Behavior       | Skills (markdown)    | How Gecko should use the brain |

## Why This Matters

- **Ollama** is only used for retrieval (search)
- **Grok-4.3** is used for thinking and writing
- **Skills** ensure consistent, grounded behavior
- **Graph** enables relationship-aware answers beyond simple similarity search
