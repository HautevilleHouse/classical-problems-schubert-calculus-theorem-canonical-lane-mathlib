import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure LittlewoodRichardsonCoefficient where
  λ μ ν : List ℕ
  coefficient : ℕ

structure LittlewoodRichardsonRule where
  coefficients : List LittlewoodRichardsonCoefficient
  ruleStatement : Prop
  positivityCondition : Prop

structure LittlewoodRichardsonEvidence (R : LittlewoodRichardsonRule) where
  ruleStatementClosed : R.ruleStatement
  positivityConditionClosed : R.positivityCondition

def LittlewoodRichardsonClosed (R : LittlewoodRichardsonRule) : Prop :=
  R.ruleStatement ∧ R.positivityCondition

theorem littlewood_richardson_closed_from_evidence (R : LittlewoodRichardsonRule) (E : LittlewoodRichardsonEvidence R) : LittlewoodRichardsonClosed R := by
  exact And.intro E.ruleStatementClosed E.positivityConditionClosed

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse