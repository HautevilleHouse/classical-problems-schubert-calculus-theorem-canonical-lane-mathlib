import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertClasses

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure GiambelliFormula (n : ℕ) where
  determinantExpression : Prop
  schurPolynomialRealization : Prop
  cohomologyRingPresentation : Prop
  determinantExpressionTerm : determinantExpression
  schurPolynomialRealizationTerm : schurPolynomialRealization
  cohomologyRingPresentationTerm : cohomologyRingPresentation

structure GiambelliFormulaEvidence (n : ℕ) (G : GiambelliFormula n) where
  determinantExpressionClosed : G.determinantExpression
  schurPolynomialRealizationClosed : G.schurPolynomialRealization
  cohomologyRingPresentationClosed : G.cohomologyRingPresentation

def GiambelliFormulaClosed (n : ℕ) (G : GiambelliFormula n) : Prop :=
  G.determinantExpression ∧ G.schurPolynomialRealization ∧ G.cohomologyRingPresentation

theorem giambelli_formula_closed_from_evidence (n : ℕ) (G : GiambelliFormula n) (E : GiambelliFormulaEvidence n G) :
    GiambelliFormulaClosed n G := by
  exact And.intro E.determinantExpressionClosed (And.intro E.schurPolynomialRealizationClosed E.cohomologyRingPresentationClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse