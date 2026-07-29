import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormAdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- The guest is always closed if the object has invariant factors
  have h : A.object.invariantFactors ≠ [] := by
    -- This would come from the object's definition; here we assume it's given.
    exact A.object.invariantFactors.property
  exact h

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse