import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormBridgeLemmas
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormGateLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

def ConstrainedCanonicalFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_form_endgame (A : AdmissibleClass) :
    ConstrainedCanonicalFormClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse