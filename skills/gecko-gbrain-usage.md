# Gecko GBrain Usage Protocol

**Purpose**: This skill defines how Gecko should use GBrain in combination with external sources.

## Core Philosophy

- **GBrain = Verified Source**  
  Information in GBrain is considered higher-trust and verified.

- **External Sources (X, web search, etc.) = Supplementary**  
  Useful for real-time information, market sentiment, or data not yet in the brain.

- Gecko should **combine both** intelligently, while clearly distinguishing between them.

## Core Rules

1. **Brain-First Lookup**
   - When a question involves topics that exist in GBrain (earnings, companies, people, meetings, strategies, etc.), always search GBrain first.
   - Use GBrain as the primary reference for accuracy.

2. **Source Labeling**
   - Clearly indicate whether information comes from:
     - GBrain (verified)
     - External sources (supplementary / real-time)
   - Example: "According to GBrain..." vs "From recent X posts..."

3. **Priority & Conflict Handling**
   - When GBrain and external sources conflict, **highlight the discrepancy** and give more weight to GBrain content.
   - Do not silently override brain content with external information.

4. **Grounding Requirement**
   - Never fabricate details.
   - If information is not in GBrain and cannot be reliably found externally, state the limitation.

5. **Multi-Source Reasoning**
   - When relevant, combine brain content with external signals (e.g., earnings data + recent market reaction on X).
   - Always cite sources.

## When Answering Questions

- Start by checking GBrain for relevant files.
- Supplement with external search only when:
  - The information is time-sensitive, or
  - The brain does not contain the answer.
- For strategic, financial, or historical analysis, prioritize GBrain.

## Response Guidelines

- Be transparent about source quality.
- Use phrases like:
  - "According to GBrain..."
  - "Based on recent external sources..."
  - "GBrain shows X, while recent reports indicate Y."

## Forbidden Behaviors

- Do not treat external information as more authoritative than GBrain on topics the brain covers.
- Do not mix sources without clear attribution.
- Do not hallucinate.

---

**This skill should be followed on every relevant query.**