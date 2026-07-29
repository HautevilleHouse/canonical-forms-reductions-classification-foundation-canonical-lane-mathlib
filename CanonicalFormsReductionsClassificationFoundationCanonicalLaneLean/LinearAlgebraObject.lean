import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Matrix.Basis
import Mathlib.LinearAlgebra.JordanNormalForm

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean

structure LinearAlgebraFoundation where
  field : Type v
  dimension : ℕ
  matrix : Matrix (Fin dimension) (Fin dimension) (field : Type v)
  minimalPolynomial : Polynomial (field : Type v)
  characteristicPolynomial : Polynomial (field : Type v)
  invariantFactors : List (Polynomial (field : Type v))
  jordanBlocks : List (Nat × (field : Type v))
  similarityClassClosed : Prop
  similarityClassClosedTerm : similarityClassClosed

def jordanNormalFormMatrix (blocks : List (Nat × (field : Type v))) : Matrix (Fin (List.sum (List.map Prod.fst blocks))) (Fin (List.sum (List.map Prod.fst blocks))) (field : Type v) :=
  sorry

theorem jordan_form_exists (A : LinearAlgebraFoundation) : ∃ (P : Matrix (Fin A.dimension) (Fin A.dimension) (A.field : Type v)), IsUnit P ∧ P⁻¹ * A.matrix * P = jordanNormalFormMatrix A.jordanBlocks :=
  sorry

end CanonicalFormsReductionsClassificationFoundationCanonicalLaneLean
end HautevilleHouse