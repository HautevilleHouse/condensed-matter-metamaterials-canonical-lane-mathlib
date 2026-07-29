import CondensedMatterMetamaterialsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterMetamaterialsCanonicalLaneLean

def MetamaterialWitnessClosed (O : MetamaterialAdmittedObject) : Prop :=
  O.effectiveMediumApproved ∧ O.topologicalPhaseClosed ∧ O.bandGapClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MetamaterialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CondensedMatterMetamaterialsCanonicalLaneLean
end HautevilleHouse