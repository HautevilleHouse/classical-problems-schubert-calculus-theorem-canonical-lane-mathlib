import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.PieriRuleFormalization

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure GiambelliFormulaEvidencePackage {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S} {P : PieriRuleFormalizationPackage S G} where
  determinantFormula : Prop
  jacobiTrudiIdentity : Prop
  schurPolynomialRepresentation : Prop

structure GiambelliFormulaEvidence {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    {P : PieriRuleFormalizationPackage S G} (F : GiambelliFormulaEvidencePackage S G P) where
  determinantFormulaClosed : F.determinantFormula
  jacobiTrudiIdentityClosed : F.jacobiTrudiIdentity
  schurPolynomialRepresentationClosed : F.schurPolynomialRepresentation

def GiambelliFormulaClosed {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    {P : PieriRuleFormalizationPackage S G} (F : GiambelliFormulaEvidencePackage S G P) : Prop :=
  F.determinantFormula ∧ F.jacobiTrudiIdentity ∧ F.schurPolynomialRepresentation

theorem giambelli_formula_closed_from_evidence {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    {P : PieriRuleFormalizationPackage S G} (F : GiambelliFormulaEvidencePackage S G P) (E : GiambelliFormulaEvidence F) :
    GiambelliFormulaClosed F := by
  exact And.intro E.determinantFormulaClosed (And.intro E.jacobiTrudiIdentityClosed E.schurPolynomialRepresentationClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse