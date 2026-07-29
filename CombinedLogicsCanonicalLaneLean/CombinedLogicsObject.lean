import combinedLogicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinedLogicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinedLogicsAdmittedObject where
  space : CombinedLogicsSpace
  soundness : Prop
  completeness : Prop
  compactness : Prop
  interpolation : Prop
  conclusion : soundness ∧ completeness ∧ compactness ∧ interpolation

def CombinedLogicsWitnessClosed (O : CombinedLogicsAdmittedObject) : Prop :=
  O.soundness ∧ O.completeness ∧ O.compactness ∧ O.interpolation

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse