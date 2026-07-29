import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure AdmissibleClass where
  object : CombinedLogicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinedLogicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse