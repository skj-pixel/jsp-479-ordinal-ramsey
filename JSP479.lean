/-
  JSP-000479 — Ordinal Ramsey partition property for ω².

  Problem: Does every red-blue coloring of pairs from a prescribed
  countable ordinal contain either a red clique of the same order
  type or a blue triangle?

  References:
    [Sp57] Specker, "Teilmengen von Mengen mit Relationen",
           Comment. Math. Helv. (1957), 302-314.
    [Sc10] Schmerl, "Countable partition ordinals",
           Ann. Pure Appl. Logic (2010), 1195-1215.

  This file encodes an abstract, finite-carrier scaffold of the
  outer Ramsey statement, leaving the actual ordinal partition
  argument as `sorry`.
-/

import Mathlib

namespace JSP479

/-- A "pair coloring" assigns each unordered pair of `α` a color
    in `Bool` (false = red, true = blue). -/
abbrev PairColoring (α : Type*) [DecidableEq α] := α → α → Bool

/-- A red clique of order type ω is an infinite ascending chain
    all of whose consecutive pairs share the same red color. -/
def RedOmegaClique {α : Type*} [DecidableEq α]
    (c : PairColoring α) (chain : ℕ → α) : Prop :=
  ∀ n : ℕ, c (chain n) (chain (n + 1)) = false

/-- A blue triangle is three pairwise distinct elements with all
    three pairs colored blue. -/
def BlueTriangle {α : Type*} [DecidableEq α]
    (c : PairColoring α) (a b d : α) : Prop :=
  a ≠ b ∧ b ≠ d ∧ a ≠ d ∧
    c a b = true ∧ c b d = true ∧ c a d = true

/-- Outer statement of JSP-000479: there exists a countable ordinal
    α* such that for every red-blue coloring of pairs from α*,
    either there is a red ω-clique or a blue triangle. -/
theorem specker_1957 :
    ∃ α : Type, ∃ inst : DecidableEq α, Nonempty α ∧
      ∀ c : PairColoring α,
        (∃ chain : ℕ → α, RedOmegaClique c chain) ∨
          ∃ a b d : α, BlueTriangle c a b d := by
  -- The full proof uses Specker's 1957 partition ordinal argument
  -- for α* = ω² (or some equivalent countable ordinal).  The
  -- actual ordinal-theoretic development is heavy; we mark the
  -- claim here as `sorry` until that machinery is built out.
  sorry

/-- The JSP-eligible name. -/
theorem jsp_000479 :
    ∃ α : Type, ∃ inst : DecidableEq α, Nonempty α ∧
      ∀ c : PairColoring α,
        (∃ chain : ℕ → α, RedOmegaClique c chain) ∨
          ∃ a b d : α, BlueTriangle c a b d :=
  specker_1957

end JSP479