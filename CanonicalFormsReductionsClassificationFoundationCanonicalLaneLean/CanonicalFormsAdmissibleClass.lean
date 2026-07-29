import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure CanonicalFormAdmittedObject where
  carrierType : Type u
  linearOperator : carrierType → carrierType
  field : Type v
  vectorSpace : Module (field : Type v) carrierType
  finiteDimensional : FiniteDimensional (field : Type v) carrierType
  minimalPolynomial : Polynomial (field : Type v)
  characteristicPolynomial : Polynomial (field : Type v)
  invariantFactors : List (Polynomial (field : Type v))
  jordanBlocks : List (Nat × (field : Type v))
  conclusion : ∃ (basis : Basis (Fin (FiniteDimensional.finrank (field : Type v) carrierType)) (field : Type v) carrierType), 
    toMatrix basis linearOperator = jordanNormalForm (field : Type v) (FiniteDimensional.finrank (field : Type v) carrierType) jordanBlocks

structure AdmissibleClass where
  object : CanonicalFormAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∃ (basis : Basis (Fin (FiniteDimensional.finrank (field : Type v) (carrierType : Type u))) (field : Type v) (carrierType : Type u)), 
    toMatrix basis (linearOperator : carrierType → carrierType) = jordanNormalForm (field : Type v) (FiniteDimensional.finrank (field : Type v) (carrierType : Type u)) (jordanBlocks : List (Nat × (field : Type v)))) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse