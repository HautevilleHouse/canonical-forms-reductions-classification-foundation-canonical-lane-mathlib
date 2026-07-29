import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure CanonicalFormAdmittedObject where
  carrier : Type u
  matrixRing : Carrier → Carrier → Carrier
  characteristicPolynomial : Carrier → Polynomial Ring
  minimalPolynomial : Carrier → Polynomial Ring
  invariantFactors : List Polynomial Ring

structure AdmissibleClass where
  object : CanonicalFormAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanonicalFormWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CanonicalFormWitnessClosed (O : CanonicalFormAdmittedObject) : Prop :=
  O.invariantFactors ≠ []

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse