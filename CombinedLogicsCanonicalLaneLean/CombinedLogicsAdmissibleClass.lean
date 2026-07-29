import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedLogicsAdmittedObject where
  carrier : Type u
  logicStructure : Prop
  closureProperty : Prop
  conclusion : closureProperty

structure AdmissibleClass where
  object : CombinedLogicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinedLogicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CombinedLogicsWitnessClosed (O : CombinedLogicsAdmittedObject) : Prop :=
  O.closureProperty

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse
