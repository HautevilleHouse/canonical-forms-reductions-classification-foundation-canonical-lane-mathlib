import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CanonicalFormReductionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.reductionConclusion

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse
