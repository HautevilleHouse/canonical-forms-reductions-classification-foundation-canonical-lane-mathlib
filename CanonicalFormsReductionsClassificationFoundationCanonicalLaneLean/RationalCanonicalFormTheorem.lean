import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.MatrixCanonicalFormsFoundation

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure RationalCanonicalFormPackage where
  object : CanonicalFormObject
  rationalCanonicalMatrix : Matrix field
  similarityToRational : Prop
  invariantFactorsRational : List (Polynomial field)

structure RationalCanonicalFormEvidence (R : RationalCanonicalFormPackage) where
  similarityClosed : R.similarityToRational
  invariantFactorsClosed : R.invariantFactorsRational = object.invariantFactors

def RationalCanonicalFormClosed (R : RationalCanonicalFormPackage) : Prop :=
  R.similarityToRational ∧ R.invariantFactorsRational = object.invariantFactors

theorem rational_canonical_form_closed_from_evidence (R : RationalCanonicalFormPackage) (E : RationalCanonicalFormEvidence R) : RationalCanonicalFormClosed R :=
  And.intro E.similarityClosed E.invariantFactorsClosed

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse