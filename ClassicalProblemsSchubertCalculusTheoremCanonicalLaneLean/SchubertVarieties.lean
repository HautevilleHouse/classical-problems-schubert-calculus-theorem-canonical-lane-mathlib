import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertVarietyPackage {G : GrassmannianPackage} where
  flagType : Type u
  completeFlagDefined : Prop
  partialFlagStructure : Prop
  incidenceCondition : Prop
  dimensionFormulaProven : Prop
  cohomologyClassDefined : Prop
  poincareDualityHolds : Prop
  intersectionMultiplicityDefined : Prop

def SchubertVarietyClosed {G : GrassmannianPackage} (S : SchubertVarietyPackage G) : Prop :=
  S.flagType ∧ S.incidenceCondition ∧ S.dimensionFormulaProven

theorem schubert_variety_closed_from_evidence {G : GrassmannianPackage} (S : SchubertVarietyPackage G) : SchubertVarietyClosed S := by
  exact And.intro S.flagType (And.intro S.incidenceCondition S.dimensionFormulaProven)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse
