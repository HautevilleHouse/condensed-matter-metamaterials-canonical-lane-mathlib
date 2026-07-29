import CondensedMatterMetamaterialsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CondensedMatterMetamaterialsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MetamaterialCrystal where
  crystalLattice : Type
  unitCellType : Type
  effectiveMedium : Prop
  bandStructure : Prop
  topologicalPhase : Prop

structure MetamaterialAdmittedObject where
  crystal : MetamaterialCrystal
  effectiveMediumApproved : Prop
  topologicalPhaseClosed : Prop
  bandGapClosed : Prop
  conclusion : effectiveMediumApproved ∧ topologicalPhaseClosed ∧ bandGapClosed

structure AdmissibleClass where
  object : MetamaterialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MetamaterialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CondensedMatterMetamaterialsCanonicalLaneLean
end HautevilleHouse