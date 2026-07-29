import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure VectorSpace where
  carrier : Type u
  field : Type v
  zero : carrier
  add : carrier → carrier → carrier
  scalar : field → carrier → carrier

structure CanonicalFormObject where
  space : VectorSpace
  linearMap : carrier → carrier
  minPoly : Polynomial field
  charPoly : Polynomial field
  invariantFactors : List (Polynomial field)
  conclusion : Prop

structure AdmissibleClass where
  object : CanonicalFormObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse