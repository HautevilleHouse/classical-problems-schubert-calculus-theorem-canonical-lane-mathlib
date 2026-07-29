import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GrassmannianCohomology

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure PieriRuleFormalizationPackage {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S} where
  pieriRuleConstructed : Prop
  equivariantVersion : Prop
  combinatorialAlgorithm : Prop

structure PieriRuleFormalizationEvidence {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S} (P : PieriRuleFormalizationPackage S G) where
  pieriRuleConstructedClosed : P.pieriRuleConstructed
  equivariantVersionClosed : P.equivariantVersion
  combinatorialAlgorithmClosed : P.combinatorialAlgorithm

def PieriRuleFormalizationClosed {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S} (P : PieriRuleFormalizationPackage S G) : Prop :=
  P.pieriRuleConstructed ∧ P.equivariantVersion ∧ P.combinatorialAlgorithm

theorem pieri_rule_formalization_closed_from_evidence {S : SchubertConditionsPackage} {G : GrassmannianCohomologyPackage S}
    (P : PieriRuleFormalizationPackage S G) (E : PieriRuleFormalizationEvidence P) :
    PieriRuleFormalizationClosed P := by
  exact And.intro E.pieriRuleConstructedClosed (And.intro E.equivariantVersionClosed E.combinatorialAlgorithmClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse