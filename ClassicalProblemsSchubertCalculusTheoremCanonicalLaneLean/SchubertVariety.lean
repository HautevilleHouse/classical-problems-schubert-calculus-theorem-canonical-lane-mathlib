import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure Grassmannian (n k : ℕ) where
  ambientSpace : Type
  subspaceDimension : ℕ
  subspaceCondition : Prop

structure SchubertVariety (n k : ℕ) (λ : List ℕ) where
  grassmannian : Grassmannian n k
  schubertCondition : Prop
  dimension : ℕ

structure SchubertVarietyEvidence (n k : ℕ) (λ : List ℕ) (S : SchubertVariety n k λ) where
  schubertConditionClosed : S.schubertCondition
  dimensionClosed : S.dimension = (∑ i in λ, (λ.get i - i)) - 1

def SchubertVarietyClosed (n k : ℕ) (λ : List ℕ) (S : SchubertVariety n k λ) : Prop :=
  S.schubertCondition ∧ (S.dimension = (∑ i in λ, (λ.get i - i)) - 1)

theorem schubert_variety_closed_from_evidence (n k : ℕ) (λ : List ℕ) (S : SchubertVariety n k λ) (E : SchubertVarietyEvidence n k λ S) : SchubertVarietyClosed n k λ S := by
  exact And.intro E.schubertConditionClosed E.dimensionClosed

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse