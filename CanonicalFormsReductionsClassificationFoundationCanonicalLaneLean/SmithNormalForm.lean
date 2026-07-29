import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure SmithNormalFormPackage where
  matrix : CanonicalFormObject
  smithForm : List (matrix.field → matrix.field)  -- diagonal entries
  smithFormExists : Prop
  equivalenceToSmith : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  smithFormExistsClosed : S.smithFormExists
  equivalenceToSmithClosed : S.equivalenceToSmith

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.smithFormExists ∧ S.equivalenceToSmith

theorem smith_normal_form_closed_from_evidence
    (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact And.intro E.smithFormExistsClosed E.equivalenceToSmithClosed

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse
