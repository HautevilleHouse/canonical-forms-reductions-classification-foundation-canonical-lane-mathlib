import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean.MatrixCanonicalFormsFoundation

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure CyclicDecompositionPackage where
  object : CanonicalFormObject
  directSumOfCyclicSubmodules : Prop
  invariantFactorList : List (Polynomial field)
  companionMatrices : List (Matrix field)

structure CyclicDecompositionEvidence (C : CyclicDecompositionPackage) where
  directSumClosed : C.directSumOfCyclicSubmodules
  invariantFactorListOK : C.invariantFactorList = object.invariantFactors

def CyclicDecompositionClosed (C : CyclicDecompositionPackage) : Prop :=
  C.directSumOfCyclicSubmodules ∧ C.invariantFactorList = object.invariantFactors

theorem cyclic_decomposition_closed_from_evidence (C : CyclicDecompositionPackage) (E : CyclicDecompositionEvidence C) : CyclicDecompositionClosed C :=
  And.intro E.directSumClosed E.invariantFactorListOK

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse