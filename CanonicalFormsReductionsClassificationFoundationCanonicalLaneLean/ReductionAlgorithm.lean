import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure ReductionAlgorithmPackage where
  inputType : Type u
  outputType : Type v
  algorithmSteps : Prop
  terminationGuarantee : Prop
  correctness : Prop

structure ReductionAlgorithmEvidence (R : ReductionAlgorithmPackage) where
  algorithmStepsClosed : R.algorithmSteps
  terminationGuaranteeClosed : R.terminationGuarantee
  correctnessClosed : R.correctness

def ReductionAlgorithmClosed (R : ReductionAlgorithmPackage) : Prop :=
  R.algorithmSteps ∧ R.terminationGuarantee ∧ R.correctness

theorem reduction_algorithm_closed_from_evidence (R : ReductionAlgorithmPackage) (E : ReductionAlgorithmEvidence R) :
    ReductionAlgorithmClosed R := by
  exact And.intro E.algorithmStepsClosed
    (And.intro E.terminationGuaranteeClosed E.correctnessClosed)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse