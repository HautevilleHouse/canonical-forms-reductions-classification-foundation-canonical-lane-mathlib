import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CanonicalFormAdmittedObject
  reductionValid : Prop
  remainderRecorded : Prop
  gateWitness : reductionValid ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanonicalFormReductionClosed A.object ∧ (A.reductionValid ∨ A.remainderRecorded)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse
