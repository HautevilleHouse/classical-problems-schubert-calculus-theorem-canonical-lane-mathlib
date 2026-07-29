import ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean.SchubertConditionsPackage

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure GrassmannianCohomologyPackage {S : SchubertConditionsPackage} where
  ringStructure : Prop
  basisPartition : Prop
  structureConstants : Prop
  positivity : Prop

structure GrassmannianCohomologyEvidence {S : SchubertConditionsPackage} (G : GrassmannianCohomologyPackage S) where
  ringStructureClosed : G.ringStructure
  basisPartitionClosed : G.basisPartition
  structureConstantsClosed : G.structureConstants
  positivityClosed : G.positivity

def GrassmannianCohomologyClosed {S : SchubertConditionsPackage} (G : GrassmannianCohomologyPackage S) : Prop :=
  G.ringStructure ∧ G.basisPartition ∧ G.structureConstants ∧ G.positivity

theorem grassmannian_cohomology_closed_from_evidence {S : SchubertConditionsPackage}
    (G : GrassmannianCohomologyPackage S) (E : GrassmannianCohomologyEvidence G) :
    GrassmannianCohomologyClosed G := by
  exact And.intro E.ringStructureClosed (And.intro E.basisPartitionClosed (And.intro E.structureConstantsClosed E.positivityClosed))

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse