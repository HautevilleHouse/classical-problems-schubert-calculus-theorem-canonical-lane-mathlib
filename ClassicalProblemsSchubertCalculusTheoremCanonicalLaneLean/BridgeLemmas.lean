import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchubertWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse
