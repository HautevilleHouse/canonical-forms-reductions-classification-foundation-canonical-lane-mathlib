import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormsAdmissibleClass

/-!
# Rational Canonical Form Reduction Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure RationalCanonicalFormPackage where
  matrix : Type
  companionMatrixDecomposition : Prop
  invariantFactorDetermination : Prop
  similarityClassRepresentation : Prop

structure RationalCanonicalFormEvidence (R : RationalCanonicalFormPackage) where
  companionMatrixDecompositionClosed : R.companionMatrixDecomposition
  invariantFactorDeterminationClosed : R.invariantFactorDetermination
  similarityClassRepresentationClosed : R.similarityClassRepresentation

def RationalCanonicalFormClosed (R : RationalCanonicalFormPackage) : Prop :=
  R.companionMatrixDecomposition ∧ R.invariantFactorDetermination ∧
  R.similarityClassRepresentation

theorem rational_canonical_form_closed_from_evidence
    (R : RationalCanonicalFormPackage) (E : RationalCanonicalFormEvidence R) :
    RationalCanonicalFormClosed R := by
  exact And.intro E.companionMatrixDecompositionClosed
    (And.intro E.invariantFactorDeterminationClosed E.similarityClassRepresentationClosed)

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse