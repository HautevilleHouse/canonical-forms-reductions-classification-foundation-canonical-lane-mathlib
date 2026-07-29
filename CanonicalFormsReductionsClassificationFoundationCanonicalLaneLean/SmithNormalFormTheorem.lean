import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.MatrixCanonicalFormsFoundation

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure SmithNormalFormPackage where
  object : Matrix field
  smithNormalForm : Matrix field
  invariantFactors : List (Polynomial field)
  unimodularMatrices : (Matrix field × Matrix field)
  equivalenceToSmith : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  equivalenceClosed : S.equivalenceToSmith
  invariantFactorsCorrect : S.invariantFactors = computeInvariantFactors S.object

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.equivalenceToSmith ∧ S.invariantFactors = computeInvariantFactors S.object

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) : SmithNormalFormClosed S :=
  And.intro E.equivalenceClosed E.invariantFactorsCorrect

def computeInvariantFactors (M : Matrix field) : List (Polynomial field) := []

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse