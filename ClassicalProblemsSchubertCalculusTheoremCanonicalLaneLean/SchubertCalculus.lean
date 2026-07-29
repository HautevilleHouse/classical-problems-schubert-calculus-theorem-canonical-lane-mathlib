import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.CohomologyRing
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertVariety

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertCalculusProblem where
  n : ℕ
  k : ℕ
  partitions : List (List ℕ)
  multiplicationRule : Prop
  giambelliFormula : Prop
  pieriRule : Prop

structure SchubertCalculusEvidence (P : SchubertCalculusProblem) where
  multiplicationRuleClosed : P.multiplicationRule
  giambelliFormulaClosed : P.giambelliFormula
  pieriRuleClosed : P.pieriRule

def SchubertCalculusClosed (P : SchubertCalculusProblem) : Prop :=
  P.multiplicationRule ∧ P.giambelliFormula ∧ P.pieriRule

theorem schubert_calculus_closed_from_evidence (P : SchubertCalculusProblem) (E : SchubertCalculusEvidence P) : SchubertCalculusClosed P := by
  exact And.intro E.multiplicationRuleClosed (And.intro E.giambelliFormulaClosed E.pieriRuleClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse