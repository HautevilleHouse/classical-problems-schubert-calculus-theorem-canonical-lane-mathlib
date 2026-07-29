import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertConditionPackage where
  incidenceCondition : Prop
  dimensionCondition : Prop
  genericityCondition : Prop

structure SchubertConditionEvidence (S : SchubertConditionPackage) where
  incidenceConditionClosed : S.incidenceCondition
  dimensionConditionClosed : S.dimensionCondition
  genericityConditionClosed : S.genericityCondition

def SchubertConditionClosed (S : SchubertConditionPackage) : Prop :=
  S.incidenceCondition ∧ S.dimensionCondition ∧ S.genericityCondition

theorem schubert_condition_closed_from_evidence (S : SchubertConditionPackage)
    (E : SchubertConditionEvidence S) : SchubertConditionClosed S := by
  exact And.intro E.incidenceConditionClosed
    (And.intro E.dimensionConditionClosed E.genericityConditionClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse