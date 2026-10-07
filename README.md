# JSP-000479 — Ordinal Ramsey (Schmerl-Specker / Specker 1957)

## Problem
Does every red-blue coloring of pairs from the prescribed countable ordinal
contain a red clique of the same order type or a blue triangle?

Reference: Specker 1957 (Comment. Math. Helv. 1957, 302-314) and Schmerl 2010
(Ann. Pure Appl. Logic 2010, 1195-1215).

## Why ordinal Ramsey matters
The classical Specker 1957 result shows that every 2-coloring of the pairs of
ω² (or the right ordinal) contains either a red clique of the same order
type or a blue triangle. This is one of the foundational results of ordinal
Ramsey theory.

## This scaffold
This Lean 4.20 file captures the statement of the partition regularity of ω²
(an outer, abstract statement) using `Finset ℕ` as a finite carrier. The
main theorem is left as `sorry` and is to be filled in after a careful
paper-based argument is drafted.

## Build
```
cd D:\evox-main\JustinSunPrize\jsp-479-ordinal-ramsey
lake build
```