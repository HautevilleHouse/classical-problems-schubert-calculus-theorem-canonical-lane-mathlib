import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure FlagVariety (n : ℕ) where
  completeFlag : Type u
  generalLinearGroup : Type u
  borelSubgroup : Type u
  flagManifoldStructure : Prop
  smoothProjectiveVariety : Prop
  cellDecompositionBySchubertCells : Prop
  flagManifoldStructureTerm : flagManifoldStructure
  smoothProjectiveVarietyTerm : smoothProjectiveVariety
  cellDecompositionBySchubertCellsTerm : cellDecompositionBySchubertCells

structure FlagVarietyEvidence (n : ℕ) (F : FlagVariety n) where
  flagManifoldStructureClosed : F.flagManifoldStructure
  smoothProjectiveVarietyClosed : F.smoothProjectiveVariety
  cellDecompositionBySchubertCellsClosed : F.cellDecompositionBySchubertCells

def FlagVarietyClosed (n : ℕ) (F : FlagVariety n) : Prop :=
  F.flagManifoldStructure ∧ F.smoothProjectiveVariety ∧ F.cellDecompositionBySchubertCells

theorem flag_variety_closed_from_evidence (n : ℕ) (F : FlagVariety n) (E : FlagVarietyEvidence n F) :
    FlagVarietyClosed n F := by
  exact And.intro E.flagManifoldStructureClosed (And.intro E.smoothProjectiveVarietyClosed E.cellDecompositionBySchubertCellsClosed)

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse