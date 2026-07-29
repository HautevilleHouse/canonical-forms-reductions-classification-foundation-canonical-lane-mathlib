import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.LinearAlgebraObject

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure RationalCanonicalFormPackage (A : LinearAlgebraFoundation) where
  companionMatrix : Type u
  rationalBlockDecomposition : Type v
  invariantFactorPolynomials : List (Polynomial (A.field : Type v))
  rationalCanonicalFormComputed : Prop

def RationalCanonicalFormClosed {A : LinearAlgebraFoundation} (R : RationalCanonicalFormPackage A) : Prop :=
  R.rationalCanonicalFormComputed

theorem rational_canonical_form_from_evidence {A : LinearAlgebraFoundation} (R : RationalCanonicalFormPackage A) (E : RationalCanonicalFormEvidence R) : RationalCanonicalFormClosed R :=
  by
    unfold RationalCanonicalFormClosed
    exact E.rationalCanonicalFormComputedClosed

structure RationalCanonicalFormEvidence {A : LinearAlgebraFoundation} (R : RationalCanonicalFormPackage A) where
  rationalCanonicalFormComputedClosed : R.rationalCanonicalFormComputed

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse