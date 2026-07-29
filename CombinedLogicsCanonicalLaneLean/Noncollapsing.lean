import CombinedLogicsCanonicalLaneLean.PerelmanEntropy

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure NoncollapsingPackage {G : CombinedLogicsCurvaturePackage}
    {F : CombinedLogicsFlowPackage G} (Epkg : PerelmanEntropyPackage F) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : CombinedLogicsCurvaturePackage}
    {F : CombinedLogicsFlowPackage G} {Epkg : PerelmanEntropyPackage F}
    (N : NoncollapsingPackage Epkg) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {G : CombinedLogicsCurvaturePackage}
    {F : CombinedLogicsFlowPackage G} {Epkg : PerelmanEntropyPackage F}
    (N : NoncollapsingPackage Epkg) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : CombinedLogicsCurvaturePackage} {F : CombinedLogicsFlowPackage G}
    {Epkg : PerelmanEntropyPackage F}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse