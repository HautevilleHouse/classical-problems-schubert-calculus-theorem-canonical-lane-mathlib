import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertClasses

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure LittlewoodRichardsonRule (n : ℕ) where
  multiplicationRule : Prop
  tableauxCombinatorics : Prop
  structureConstants : List ℕ → List ℕ → List ℕ → ℕ
  multiplicationRuleTerm : multiplicationRule
  tableauxCombinatoricsTerm : tableauxCombinatorics
  structureConstantsDefined : ∀ (λ μ ν : List ℕ), structureConstants λ μ ν = 0 ∨ structureConstants λ μ ν = 1

structure LittlewoodRichardsonRuleEvidence (n : ℕ) (L : LittlewoodRichardsonRule n) where
  multiplicationRuleClosed : L.multiplicationRule
  tableauxCombinatoricsClosed : L.tableauxCombinatorics
  structureConstantsDefinedClosed : ∀ (λ μ ν : List ℕ), L.structureConstants λ μ ν = 0 ∨ L.structureConstants λ μ ν = 1

def LittlewoodRichardsonRuleClosed (n : ℕ) (L : LittlewoodRichardsonRule n) : Prop :=
  L.multiplicationRule ∧ L.tableauxCombinatorics ∧ (∀ (λ μ ν : List ℕ), L.structureConstants λ μ ν = 0 ∨ L.structureConstants λ μ ν = 1)

theorem littlewood_richardson_rule_closed_from_evidence (n : ℕ) (L : LittlewoodRichardsonRule n) (E : LittlewoodRichardsonRuleEvidence n L) :
    LittlewoodRichardsonRuleClosed n L := by
  exact And.intro E.multiplicationRuleClosed (And.intro E.tableauxCombinatoricsClosed E.structureConstantsDefinedClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse