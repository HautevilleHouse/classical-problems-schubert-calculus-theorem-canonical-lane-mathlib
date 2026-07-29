import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure GrassmannianPackage where
  groundField : Type u
  vectorSpaceDimension : Nat
  grassmannianParameter : Nat
  manifoldStructure : Prop
  smoothAtlasDefined : Prop
  tangentBundleModeled : Prop
  grassmannianIsCompact : Prop
  grassmannianIsConnected : Prop
  schubertCellDecompositionExists : Prop

def GrassmannianClosed (G : GrassmannianPackage) : Prop :=
  G.smoothAtlasDefined ∧ G.schubertCellDecompositionExists

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse
