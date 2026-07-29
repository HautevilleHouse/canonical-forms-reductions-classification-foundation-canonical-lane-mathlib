import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormAdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure JordanFormPackage (A : CanonicalFormAdmittedObject) where
  jordanBlocks : List (Polynomial A.carrier × ℕ)
  jordanMatrix : A.carrier → A.carrier → A.matrixRing
  similarityTransformation : A.carrier → A.carrier
  characteristicPolynomialMatches : A.characteristicPolynomial = ∏ (λ bd, (X - bd.1) ^ bd.2) jordanBlocks
  minimalPolynomialMatches : A.minimalPolynomial = ∏ (λ bd, (X - bd.1)) (List.dedup (List.map Prod.fst jordanBlocks))
  invariantFactorsDerived : List (Polynomial A.carrier) = List.map (λ bd, (X - bd.1) ^ bd.2) jordanBlocks

structure JordanFormEvidence (A : CanonicalFormAdmittedObject) (J : JordanFormPackage A) where
  jordanBlocksNotNull : J.jordanBlocks ≠ []
  charPolyMatchesClosed : J.characteristicPolynomialMatches
  minPolyMatchesClosed : J.minimalPolynomialMatches
  invariantFactorsDerivedClosed : J.invariantFactorsDerived

def JordanFormClosed (A : CanonicalFormAdmittedObject) (J : JordanFormPackage A) : Prop :=
  J.jordanBlocks ≠ [] ∧ J.characteristicPolynomialMatches ∧ J.minimalPolynomialMatches ∧ J.invariantFactorsDerived

theorem jordan_form_closed_from_evidence (A : CanonicalFormAdmittedObject) (J : JordanFormPackage A) (E : JordanFormEvidence A J) :
    JordanFormClosed A J := by
  exact And.intro E.jordanBlocksNotNull (And.intro E.charPolyMatchesClosed (And.intro E.minPolyMatchesClosed E.invariantFactorsDerivedClosed))

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse