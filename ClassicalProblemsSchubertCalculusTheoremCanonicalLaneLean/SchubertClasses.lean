import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertClass (n k : ℕ) where
  partition : List ℕ
  schubertCycle : Type u
  cohomologyClass : Type u
  integralGenerator : Prop
  poincareDualityPairing : Prop
  integralGeneratorTerm : integralGenerator
  poincareDualityPairingTerm : poincareDualityPairing

structure SchubertClassEvidence (n k : ℕ) (S : SchubertClass n k) where
  integralGeneratorClosed : S.integralGenerator
  poincareDualityPairingClosed : S.poincareDualityPairing

def SchubertClassClosed (n k : ℕ) (S : SchubertClass n k) : Prop :=
  S.integralGenerator ∧ S.poincareDualityPairing

theorem schubert_class_closed_from_evidence (n k : ℕ) (S : SchubertClass n k) (E : SchubertClassEvidence n k S) :
    SchubertClassClosed n k S := by
  exact And.intro E.integralGeneratorClosed E.poincareDualityPairingClosed

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse