import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertVariety

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure Flag (n : ℕ) where
  subspaces : List (ℕ × Subtype (λ V : Set (ℕ → ℕ) => True))
  inclusionCondition : Prop

structure DegeneracyLocus {n : ℕ} (F G : Flag n) where
  rankCondition : Prop
  schubertClass : List ℕ
  cohomologyClass : Prop

structure DegeneracyLocusEvidence {n : ℕ} {F G : Flag n} (D : DegeneracyLocus F G) where
  rankConditionClosed : D.rankCondition
  cohomologyClassClosed : D.cohomologyClass

def DegeneracyLocusClosed {n : ℕ} {F G : Flag n} (D : DegeneracyLocus F G) : Prop :=
  D.rankCondition ∧ D.cohomologyClass

theorem degeneracy_locus_closed_from_evidence {n : ℕ} {F G : Flag n} (D : DegeneracyLocus F G) (E : DegeneracyLocusEvidence D) : DegeneracyLocusClosed D := by
  exact And.intro E.rankConditionClosed E.cohomologyClassClosed

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse