import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertConditionsPackage where
  flagVariety : Type u
  schubertCells : Type v
  intersectionMultiplicity : Prop
  pieriRule : Prop
  giambelliFormula : Prop

structure SchubertConditionsEvidence (S : SchubertConditionsPackage) where
  intersectionMultiplicityClosed : S.intersectionMultiplicity
  pieriRuleClosed : S.pieriRule
  giambelliFormulaClosed : S.giambelliFormula

def SchubertConditionsClosed (S : SchubertConditionsPackage) : Prop :=
  S.intersectionMultiplicity ∧ S.pieriRule ∧ S.giambelliFormula

theorem schubert_conditions_closed_from_evidence (S : SchubertConditionsPackage) (E : SchubertConditionsEvidence S) :
    SchubertConditionsClosed S := by
  exact And.intro E.intersectionMultiplicityClosed (And.intro E.pieriRuleClosed E.giambelliFormulaClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse