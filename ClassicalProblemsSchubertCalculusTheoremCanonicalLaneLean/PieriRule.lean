import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure PieriRulePackage where
  schubertClasses : Type u
  multiplicationRule : Prop
  positivityProperty : Prop
  combinatorialFormula : Prop

structure PieriRuleEvidence (P : PieriRulePackage) where
  multiplicationRuleClosed : P.multiplicationRule
  positivityPropertyClosed : P.positivityProperty
  combinatorialFormulaClosed : P.combinatorialFormula

def PieriRuleClosed (P : PieriRulePackage) : Prop :=
  P.multiplicationRule ∧ P.positivityProperty ∧ P.combinatorialFormula

theorem pieri_rule_closed_from_evidence (P : PieriRulePackage) (E : PieriRuleEvidence P) :
    PieriRuleClosed P := by
  exact And.intro E.multiplicationRuleClosed
    (And.intro E.positivityPropertyClosed E.combinatorialFormulaClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse