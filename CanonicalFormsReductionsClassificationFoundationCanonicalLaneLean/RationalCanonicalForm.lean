import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormAdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure RationalCanonicalFormPackage (A : CanonicalFormAdmittedObject) where
  companionBlocks : List (Polynomial A.carrier)
  rationalMatrix : A.carrier → A.carrier → A.matrixRing
  similarityTransformation : A.carrier → A.carrier
  invariantFactorsMatches : A.invariantFactors = companionBlocks
  minimalPolynomialMatches : A.minimalPolynomial = List.max' companionBlocks (List.length companionBlocks ≠ 0)
  characteristicPolynomialMatches : A.characteristicPolynomial = ∏ companionBlocks

structure RationalCanonicalFormEvidence (A : CanonicalFormAdmittedObject) (R : RationalCanonicalFormPackage A) where
  companionBlocksNotNull : R.companionBlocks ≠ []
  invariantFactorsMatchesClosed : R.invariantFactorsMatches
  minPolyMatchesClosed : R.minimalPolynomialMatches
  charPolyMatchesClosed : R.characteristicPolynomialMatches

def RationalCanonicalFormClosed (A : CanonicalFormAdmittedObject) (R : RationalCanonicalFormPackage A) : Prop :=
  R.companionBlocks ≠ [] ∧ R.invariantFactorsMatches ∧ R.minimalPolynomialMatches ∧ R.characteristicPolynomialMatches

theorem rational_canonical_form_closed_from_evidence (A : CanonicalFormAdmittedObject) (R : RationalCanonicalFormPackage A) (E : RationalCanonicalFormEvidence A R) :
    RationalCanonicalFormClosed A R := by
  exact And.intro E.companionBlocksNotNull (And.intro E.invariantFactorsMatchesClosed (And.intro E.minPolyMatchesClosed E.charPolyMatchesClosed))

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse