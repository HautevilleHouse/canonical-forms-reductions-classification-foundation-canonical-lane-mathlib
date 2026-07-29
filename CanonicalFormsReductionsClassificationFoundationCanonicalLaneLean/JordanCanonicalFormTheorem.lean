import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.MatrixCanonicalFormsFoundation

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure JordanCanonicalFormPackage where
  object : CanonicalFormObject
  jordanBlocksList : List (List (field × Nat))
  similarityToJordan : Prop
  eigenvalueMultiplicities : List (field × Nat)

structure JordanCanonicalFormEvidence (J : JordanCanonicalFormPackage) where
  similarityClosed : J.similarityToJordan
  eigenvalueMultiplicitiesClosed : J.eigenvalueMultiplicities = computeJordanBlocks J.object

def JordanCanonicalFormClosed (J : JordanCanonicalFormPackage) : Prop :=
  J.similarityToJordan ∧ J.eigenvalueMultiplicities = computeJordanBlocks J.object

theorem jordan_canonical_form_closed_from_evidence (J : JordanCanonicalFormPackage) (E : JordanCanonicalFormEvidence J) : JordanCanonicalFormClosed J :=
  And.intro E.similarityClosed E.eigenvalueMultiplicitiesClosed

-- helper function placeholder
def computeJordanBlocks (o : CanonicalFormObject) : List (field × Nat) := []

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse