import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

def ConstrainedSchubertCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_calculus_endgame (A : AdmissibleClass) : ConstrainedSchubertCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse