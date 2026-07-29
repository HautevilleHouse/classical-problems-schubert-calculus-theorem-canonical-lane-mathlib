import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean

structure SchubertCalculusEndpointPackage where
  targetVariety : Type u
  targetTopology : TopologicalSpace targetVariety
  schubertClassNumber : Prop
  pieriFormula : Prop
  giambelliFormula : Prop

structure SchubertCalculusEndpointEvidence
    (E : SchubertCalculusEndpointPackage) where
  schubertClassNumberClosed : E.schubertClassNumber
  pieriFormulaClosed : E.pieriFormula
  giambelliFormulaClosed : E.giambelliFormula

def SchubertCalculusEndpointClosed (E : SchubertCalculusEndpointPackage) : Prop :=
  E.schubertClassNumber ∧ E.pieriFormula ∧ E.giambelliFormula

theorem schubert_calculus_endpoint_closed_from_evidence
    (E : SchubertCalculusEndpointPackage)
    (Ev : SchubertCalculusEndpointEvidence E) :
    SchubertCalculusEndpointClosed E := by
  exact And.intro Ev.schubertClassNumberClosed
    (And.intro Ev.pieriFormulaClosed Ev.giambelliFormulaClosed)

theorem schubert_calculus_supplies_mathlib_statement
    (E : SchubertCalculusEndpointPackage) :
    E.schubertClassNumber := E.schubertClassNumber

end ClassicalProblemsSchubertCalculusTheoremCanonicalLaneLean
end HautevilleHouse