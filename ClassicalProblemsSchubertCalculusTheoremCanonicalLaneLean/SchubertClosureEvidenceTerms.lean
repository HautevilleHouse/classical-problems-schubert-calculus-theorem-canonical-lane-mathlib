import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GiambelliFormulaEvidence

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertClosureEvidenceTerms {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    {P : PieriRuleFormalizationPackage S G} {F : GiambelliFormulaEvidencePackage S G P} where
  schubertConditionsClosed : SchubertConditionsClosed S
  grassmannianCohomologyClosed : GrassmannianCohomologyClosed G
  pieriRuleFormalizationClosed : PieriRuleFormalizationClosed P
  giambelliFormulaClosed : GiambelliFormulaClosed F
  closureTermsCombined : Prop

def SchubertClosureEvidenceTerms.fromEvidence {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    {P : PieriRuleFormalizationPackage S G} {F : GiambelliFormulaEvidencePackage S G P}
    (SE : SchubertConditionsEvidence S) (GE : GrassmannianCohomologyEvidence G) (PE : PieriRuleFormalizationEvidence P) (FE : GiambelliFormulaEvidence F) :
    SchubertClosureEvidenceTerms := {
  schubertConditionsClosed := schubert_conditions_closed_from_evidence S SE
  grassmannianCohomologyClosed := grassmannian_cohomology_closed_from_evidence G GE
  pieriRuleFormalizationClosed := pieri_rule_formalization_closed_from_evidence P PE
  giambelliFormulaClosed := giambelli_formula_closed_from_evidence F FE
  closureTermsCombined := by
    exact And.intro (schubert_conditions_closed_from_evidence S SE)
      (And.intro (grassmannian_cohomology_closed_from_evidence G GE)
        (And.intro (pieri_rule_formalization_closed_from_evidence P PE)
          (giambelli_formula_closed_from_evidence F FE)))
}

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse