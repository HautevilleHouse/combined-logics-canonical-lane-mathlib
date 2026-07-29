import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinedLogicsCanonicalLaneLean.CombinedLogicSignature

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CraigInterpolationPackage (S : CombinedLogicSignature) where
  interpolantExists : Prop
  interpolationProperty : Prop
  interpolationBound : Prop
  interpolantExistsTerm : interpolantExists
  interpolationPropertyTerm : interpolationProperty
  interpolationBoundTerm : interpolationBound

structure CraigInterpolationEvidence {S : CombinedLogicSignature}
    (C : CraigInterpolationPackage S) where
  interpolantExistsClosed : C.interpolantExists
  interpolationPropertyClosed : C.interpolationProperty
  interpolationBoundClosed : C.interpolationBound

def CraigInterpolationClosed {S : CombinedLogicSignature}
    (C : CraigInterpolationPackage S) : Prop :=
  C.interpolantExists ∧ C.interpolationProperty ∧ C.interpolationBound

theorem craig_interpolation_closed_from_evidence {S : CombinedLogicSignature}
    (C : CraigInterpolationPackage S) (E : CraigInterpolationEvidence C) :
    CraigInterpolationClosed C := by
  exact And.intro E.interpolantExistsClosed
    (And.intro E.interpolationPropertyClosed E.interpolationBoundClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse