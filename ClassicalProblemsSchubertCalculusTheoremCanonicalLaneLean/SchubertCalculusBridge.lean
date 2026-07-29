import canonicalLaneMathlib.AdmissibleClass
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.GrassmannianSchubertCycles
import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertVarieties

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

def bridgeClosedSchubert (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def gateClosedSchubert (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse
