import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.MatrixCanonicalFormsFoundation

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure PrimaryDecompositionPackage where
  object : CanonicalFormObject
  directSumOfGeneralizedEigenspaces : Prop
  minimalPolynomialSplits : Prop
  eigenspaceDimensions : List Nat

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  directSumClosed : P.directSumOfGeneralizedEigenspaces
  minPolySplitsClosed : P.minimalPolynomialSplits

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.directSumOfGeneralizedEigenspaces ∧ P.minimalPolynomialSplits

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage) (E : PrimaryDecompositionEvidence P) : PrimaryDecompositionClosed P :=
  And.intro E.directSumClosed E.minPolySplitsClosed

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse