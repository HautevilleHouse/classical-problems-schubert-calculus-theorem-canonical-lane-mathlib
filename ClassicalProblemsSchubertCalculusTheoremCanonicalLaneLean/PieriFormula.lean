import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertClasses

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure PieriFormula (n : ℕ) where
  multiplicationRule : Prop
  youngDiagramCombinatorics : Prop
  structureConstants : ℕ → ℕ → ℕ
  multiplicationRuleTerm : multiplicationRule
  youngDiagramCombinatoricsTerm : youngDiagramCombinatorics
  structureConstantsDefined : ∀ (λ μ : ℕ), structureConstants λ μ = 0 ∨ structureConstants λ μ = 1

structure PieriFormulaEvidence (n : ℕ) (P : PieriFormula n) where
  multiplicationRuleClosed : P.multiplicationRule
  youngDiagramCombinatoricsClosed : P.youngDiagramCombinatorics
  structureConstantsDefinedClosed : ∀ (λ μ : ℕ), P.structureConstants λ μ = 0 ∨ P.structureConstants λ μ = 1

def PieriFormulaClosed (n : ℕ) (P : PieriFormula n) : Prop :=
  P.multiplicationRule ∧ P.youngDiagramCombinatorics ∧ (∀ (λ μ : ℕ), P.structureConstants λ μ = 0 ∨ P.structureConstants λ μ = 1)

theorem pieri_formula_closed_from_evidence (n : ℕ) (P : PieriFormula n) (E : PieriFormulaEvidence n P) :
    PieriFormulaClosed n P := by
  exact And.intro E.multiplicationRuleClosed (And.intro E.youngDiagramCombinatoricsClosed E.structureConstantsDefinedClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse