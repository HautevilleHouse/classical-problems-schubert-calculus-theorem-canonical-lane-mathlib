import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GrassmannianVarieties
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertConditions
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.PieriRule
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GiambelliFormula
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.LittlewoodRichardsonRule

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrassmannianClosed A.object ∧ FlagClosed A.object ∧ PieriRuleClosed A.object ∧
  GiambelliClosed A.object ∧ LittlewoodRichardsonClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have hG : GrassmannianClosed A.object := A.grassmannianClosed
  have hF : FlagClosed A.object := A.flagClosed
  have hP : PieriRuleClosed A.object := A.pieriRuleClosed
  have hGi : GiambelliClosed A.object := A.giambelliClosed
  have hL : LittlewoodRichardsonClosed A.object := A.littlewoodRichardsonClosed
  exact ⟨hG, hF, hP, hGi, hL⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedSchubertCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_calculus_endgame (A : AdmissibleClass) :
    ConstrainedSchubertCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse