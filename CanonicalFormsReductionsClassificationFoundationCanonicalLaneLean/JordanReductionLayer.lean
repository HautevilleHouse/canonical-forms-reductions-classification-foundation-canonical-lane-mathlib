import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.LinearAlgebraObject

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure JordanReductionPackage (A : LinearAlgebraFoundation) where
  generalizedEigenspaces : Type u
  nilpotentPart : Type v
  semisimplePart : Type w
  jordanChainBasis : Type x
  jordanBlockDecomposition : Prop
  jordanFormComputed : Prop

def JordanReductionClosed {A : LinearAlgebraFoundation} (J : JordanReductionPackage A) : Prop :=
  J.jordanBlockDecomposition ∧ J.jordanFormComputed

theorem jordan_reduction_from_evidence {A : LinearAlgebraFoundation} (J : JordanReductionPackage A) (E : JordanReductionEvidence J) : JordanReductionClosed J :=
  sorry

structure JordanReductionEvidence {A : LinearAlgebraFoundation} (J : JordanReductionPackage A) where
  jordanBlockDecompositionClosed : J.jordanBlockDecomposition
  jordanFormComputedClosed : J.jordanFormComputed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  JordanReductionClosed (A.object : LinearAlgebraFoundation)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  sorry

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse