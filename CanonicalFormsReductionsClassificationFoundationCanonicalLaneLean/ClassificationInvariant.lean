import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure ClassificationInvariantPackage where
  objectType : Type u
  invariant : objectType → Prop
  invariantPreservedUnderReduction : Prop
  invariantDistinguishesCanonicalForms : Prop

structure ClassificationInvariantEvidence (C : ClassificationInvariantPackage) where
  invariantPreservedUnderReductionClosed : C.invariantPreservedUnderReduction
  invariantDistinguishesCanonicalFormsClosed : C.invariantDistinguishesCanonicalForms

def ClassificationInvariantClosed (C : ClassificationInvariantPackage) : Prop :=
  C.invariantPreservedUnderReduction ∧ C.invariantDistinguishesCanonicalForms

theorem classification_invariant_closed_from_evidence (C : ClassificationInvariantPackage) (E : ClassificationInvariantEvidence C) :
    ClassificationInvariantClosed C := by
  exact And.intro E.invariantPreservedUnderReductionClosed E.invariantDistinguishesCanonicalFormsClosed

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse