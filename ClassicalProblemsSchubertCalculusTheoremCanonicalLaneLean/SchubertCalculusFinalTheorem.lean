import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.FlagVarieties
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertClasses
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.PieriFormula
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GiambelliFormula
import HautevilleHouse.ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.LittlewoodRichardsonRule

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let n : ℕ := 4
  FlagVarietyClosed n (A.object)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedSchubertCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_schubert_calculus_endgame (A : AdmissibleClass) :
    ConstrainedSchubertCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse