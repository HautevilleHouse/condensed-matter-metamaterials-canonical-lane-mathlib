import CondensedMatterMetamaterialsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CondensedMatterMetamaterialsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CondensedMatterMetamaterialsCanonicalLaneLean
end HautevilleHouse