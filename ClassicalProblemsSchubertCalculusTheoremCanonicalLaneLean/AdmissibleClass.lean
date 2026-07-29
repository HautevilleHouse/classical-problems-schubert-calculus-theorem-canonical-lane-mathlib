import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : SchubertAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SchubertWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse
