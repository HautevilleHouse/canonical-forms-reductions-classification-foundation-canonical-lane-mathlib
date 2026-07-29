import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormsAdmissibleClass

/-!
# Smith Normal Form Reduction Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure SmithNormalFormPackage where
  moduleType : Type
  presentationMatrix : Prop
  diagonalForm : Prop
  invariantFactors : Prop
  uniquenessUpToUnits : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  presentationMatrixClosed : S.presentationMatrix
  diagonalFormClosed : S.diagonalForm
  invariantFactorsClosed : S.invariantFactors
  uniquenessUpToUnitsClosed : S.uniquenessUpToUnits

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.presentationMatrix ∧ S.diagonalForm ∧
  S.invariantFactors ∧ S.uniquenessUpToUnits

theorem smith_normal_form_closed_from_evidence
    (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact And.intro E.presentationMatrixClosed
    (And.intro E.diagonalFormClosed
      (And.intro E.invariantFactorsClosed E.uniquenessUpToUnitsClosed))

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse