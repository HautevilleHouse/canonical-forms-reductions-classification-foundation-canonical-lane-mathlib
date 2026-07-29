import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.CanonicalFormsAdmissibleClass

/-!
# Jordan Form Reduction Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure JordanFormPackage where
  matrix : Type
  characteristicPolynomial : Prop
  minimalPolynomialFactorized : Prop
  jordanBlocks : Prop
  invariantFactorDecomposition : Prop

structure JordanFormEvidence (J : JordanFormPackage) where
  characteristicPolynomialClosed : J.characteristicPolynomial
  minimalPolynomialFactorizedClosed : J.minimalPolynomialFactorized
  jordanBlocksClosed : J.jordanBlocks
  invariantFactorDecompositionClosed : J.invariantFactorDecomposition

def JordanFormClosed (J : JordanFormPackage) : Prop :=
  J.characteristicPolynomial ∧ J.minimalPolynomialFactorized ∧
  J.jordanBlocks ∧ J.invariantFactorDecomposition

theorem jordan_form_closed_from_evidence (J : JordanFormPackage) (E : JordanFormEvidence J) :
    JordanFormClosed J := by
  exact And.intro E.characteristicPolynomialClosed
    (And.intro E.minimalPolynomialFactorizedClosed
      (And.intro E.jordanBlocksClosed E.invariantFactorDecompositionClosed))

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse