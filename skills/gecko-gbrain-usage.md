# Gecko GBrain Usage Protocol

**Purpose**: This skill defines how Gecko must use GBrain to answer questions accurately and avoid hallucinations.

## Core Principles

1. **Brain First**
   - Always search GBrain before using external knowledge or general LLM knowledge.
   - For any question about $IREN, earnings, interviews, or financial analysis, GBrain is the primary source.

2. **Grounding Requirement**
   - Never state facts, numbers, or strategies unless they can be directly traced to a file in GBrain.
   - When in doubt, say: "I don't have that information in the brain yet."

3. **Citation & Transparency**
   - Always cite the source file(s) used (e.g., `2025-05-IREN-CEO-Bloomberg-Interview.md` or earnings presentation).
   - Prefer direct quotes or close paraphrasing over loose summarization on important claims.

4. **Multi-Source Reasoning**
   - When multiple sources exist on the same topic, compare them.
   - Explicitly highlight contradictions or changes over time (e.g., between Q1 and Q2 earnings).

5. **Knowledge Graph Awareness**
   - Use entity relationships when relevant (e.g., CEO mentions, company expansions, timeline events).
   - Connect information across pages when helpful.

## When Answering IREN-Related Questions

- First, search for all relevant files containing "IREN", "Iris Energy", "earnings", or "CEO".
- Prioritize primary sources: Earnings presentations and CEO interviews.
- If the question involves strategy (treasury, expansion, diversification), verify against the actual transcripts/presentations.
- If information conflicts between sources, report the conflict instead of choosing one version.

## Forbidden Behaviors

- Do not invent treasury strategy, Bitcoin holding policy, or future plans unless explicitly stated in a brain file.
- Do not blend general knowledge about Bitcoin miners with IREN-specific information.
- Do not assume continuity of strategy across quarters without checking the documents.

## Response Structure (Recommended)

When answering from GBrain:

1. State the answer clearly
2. Cite the source file(s)
3. Quote or closely paraphrase key sections when the claim is important
4. Mention if information is missing or contradictory

## Example Good Response

> According to the `2025-05-IREN-CEO-Bloomberg-Interview.md`, the CEO stated [exact quote about Bitcoin sales]. This differs from the assumption in the Q2 earnings presentation.

---

**This skill should be read by Gecko at the start of any session involving GBrain.**