import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsCanonicalLaneLean

structure CombinedLogicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinedLogicsAdmittedObject where
  space : CombinedLogicsSpace
  property1 : Prop
  property2 : Prop
  conclusion : property1 ∧ property2

structure CombinedLogicsEndgameState where
  object : CombinedLogicsAdmittedObject

def CombinedLogicsWitnessClosed (O : CombinedLogicsAdmittedObject) : Prop :=
  O.conclusion

end CombinedLogicsCanonicalLaneLean
end HautevilleHouse