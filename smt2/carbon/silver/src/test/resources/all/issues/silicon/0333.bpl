// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:41:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0333.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0333-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: p
// - height 0: I2
const AssumeFunctionsAbove: int;
// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique l_8: Field NormalField Ref;
axiom !IsPredicateField(l_8);
axiom !IsWandField(l_8);
const unique r_6: Field NormalField Ref;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);

// ==================================================
// Translation of function p
// ==================================================

// Uninterpreted function definitions
function  p(Heap: HeapType): bool;
function  p'(Heap: HeapType): bool;
axiom (forall Heap: HeapType ::
  { p(Heap) }
  p(Heap) == p'(Heap) && dummyFunction(p#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { p'(Heap) }
  dummyFunction(p#triggerStateless())
);

// Framing axioms
function  p#frame(frame: FrameType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), p'(Heap) }
  state(Heap, Mask) ==> p'(Heap) == p#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  p#trigger_1(frame: FrameType): bool;

// State-independent trigger function
function  p#triggerStateless(): bool;

// Check contract well-formedness and postcondition
procedure p#definedness() returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function I2
// ==================================================

// Uninterpreted function definitions
function  I2(Heap: HeapType, t_2: Ref): bool;
function  I2'(Heap: HeapType, t_2: Ref): bool;
axiom (forall Heap: HeapType, t_2: Ref ::
  { I2(Heap, t_2) }
  I2(Heap, t_2) == I2'(Heap, t_2) && dummyFunction(I2#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Ref ::
  { I2'(Heap, t_2) }
  dummyFunction(I2#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), I2(Heap, t_2) } { state(Heap, Mask), I2#triggerStateless(t_2), I#trigger(Heap, I_1(t_2)), I#trigger(Heap, I_1(t_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> I2(Heap, t_2) == (t_2 != null ==> I2'(Heap, (if p(Heap) then Heap[t_2, r_6] else Heap[t_2, l_8])) && I2'(Heap, (if p(Heap) then Heap[t_2, l_8] else Heap[t_2, r_6])))
);

// Framing axioms
function  I2#frame(frame: FrameType, t_2: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), I2'(Heap, t_2) } { state(Heap, Mask), I2#triggerStateless(t_2), I#trigger(Heap, I_1(t_2)), I#trigger(Heap, I_1(t_2)) }
  state(Heap, Mask) ==> I2'(Heap, t_2) == I2#frame(Heap[null, I_1(t_2)], t_2)
);

// Trigger function (controlling recursive postconditions)
function  I2#trigger(frame: FrameType, t_2: Ref): bool;

// State-independent trigger function
function  I2#triggerStateless(t_2: Ref): bool;

// Check contract well-formedness and postcondition
procedure I2#definedness(t_2: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var up_1: Ref;
  var dn_1: Ref;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  var up_2: Ref;
  var dn_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[t_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, I_1(t_2):=Mask[null, I_1(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(I(t), write) in t != null ==> (let up == ((p() ? t.l : t.r)) in (let dn == ((p() ? t.r : t.l)) in I2(dn) && I2(up))))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume I#trigger(UnfoldingHeap, I_1(t_2));
      assume UnfoldingHeap[null, I_1(t_2)] == FrameFragment((if t_2 != null then CombineFrames(FrameFragment(UnfoldingHeap[t_2, r_6]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, l_8]), FrameFragment((if p(UnfoldingHeap) then CombineFrames(UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, r_6])], UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, l_8])]) else CombineFrames(UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, r_6])], UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, l_8])]))))) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access I(t) (0333.vpr@14.1--21.2) [214287]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, I_1(t_2)];
      if (t_2 != null) {
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, r_6:=UnfoldingMask[t_2, r_6] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, l_8:=UnfoldingMask[t_2, l_8] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (p(UnfoldingHeap)) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I_1(UnfoldingHeap[t_2, r_6]):=UnfoldingMask[null, I_1(UnfoldingHeap[t_2, r_6])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I_1(t_2), UnfoldingHeap[null, I_1(t_2)], I_1(UnfoldingHeap[t_2, r_6]), UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, r_6])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I_1(UnfoldingHeap[t_2, l_8]):=UnfoldingMask[null, I_1(UnfoldingHeap[t_2, l_8])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I_1(t_2), UnfoldingHeap[null, I_1(t_2)], I_1(UnfoldingHeap[t_2, l_8]), UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, l_8])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        } else {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I_1(UnfoldingHeap[t_2, r_6]):=UnfoldingMask[null, I_1(UnfoldingHeap[t_2, r_6])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I_1(t_2), UnfoldingHeap[null, I_1(t_2)], I_1(UnfoldingHeap[t_2, r_6]), UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, r_6])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I_1(UnfoldingHeap[t_2, l_8]):=UnfoldingMask[null, I_1(UnfoldingHeap[t_2, l_8])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I_1(t_2), UnfoldingHeap[null, I_1(t_2)], I_1(UnfoldingHeap[t_2, l_8]), UnfoldingHeap[null, I_1(UnfoldingHeap[t_2, l_8])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (t_2 != null) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (p(UnfoldingHeap)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@14.1--21.2) [214288]"}
            HasDirectPerm(UnfoldingMask, t_2, l_8);
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@14.1--21.2) [214289]"}
            HasDirectPerm(UnfoldingMask, t_2, r_6);
        }
        up_1 := (if p(UnfoldingHeap) then UnfoldingHeap[t_2, l_8] else UnfoldingHeap[t_2, r_6]);
        if (*) {
          // Stop execution
          assume false;
        }
        if (p(UnfoldingHeap)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@14.1--21.2) [214290]"}
            HasDirectPerm(UnfoldingMask, t_2, r_6);
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@14.1--21.2) [214291]"}
            HasDirectPerm(UnfoldingMask, t_2, l_8);
        }
        dn_1 := (if p(UnfoldingHeap) then UnfoldingHeap[t_2, r_6] else UnfoldingHeap[t_2, l_8]);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function I2 might not hold. There might be insufficient permission to access I(dn) (0333.vpr@20.5--20.11) [214292]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, I_1(dn_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume I2#trigger(UnfoldingHeap[null, I_1(dn_1)], dn_1);
        }
        if (I2(UnfoldingHeap, dn_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function I2 might not hold. There might be insufficient permission to access I(up) (0333.vpr@20.15--20.21) [214293]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, I_1(up_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume I2#trigger(UnfoldingHeap[null, I_1(up_1)], up_1);
          }
        }
      }
      
      // -- Free assumptions (exp module)
        if (t_2 != null) {
          Heap := Heap[null, I#sm(t_2):=Heap[null, I#sm(t_2)][t_2, r_6:=true]];
          Heap := Heap[null, I#sm(t_2):=Heap[null, I#sm(t_2)][t_2, l_8:=true]];
          if (p(Heap)) {
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, I#sm(t_2)][o_15, f_20] || Heap[null, I#sm(Heap[t_2, r_6])][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, I#sm(t_2)][o_16, f_21] || Heap[null, I#sm(Heap[t_2, l_8])][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
          } else {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, I#sm(t_2)][o_52, f_55] || Heap[null, I#sm(Heap[t_2, r_6])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, I#sm(t_2)][o_53, f_56] || Heap[null, I#sm(Heap[t_2, l_8])][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
          }
        }
        assume state(Heap, Mask);
        up_2 := (if p(Heap) then Heap[t_2, l_8] else Heap[t_2, r_6]);
        dn_2 := (if p(Heap) then Heap[t_2, r_6] else Heap[t_2, l_8]);
  
  // -- Translate function body
    Result := t_2 != null ==> I2(Heap, (if p(Heap) then Heap[t_2, r_6] else Heap[t_2, l_8])) && I2(Heap, (if p(Heap) then Heap[t_2, l_8] else Heap[t_2, r_6]));
}

// ==================================================
// Translation of predicate I
// ==================================================

type PredicateType_I;
function  I_1(t_2: Ref): Field PredicateType_I FrameType;
function  I#sm(t_2: Ref): Field PredicateType_I PMaskType;
axiom (forall t_2: Ref ::
  { PredicateMaskField(I_1(t_2)) }
  PredicateMaskField(I_1(t_2)) == I#sm(t_2)
);
axiom (forall t_2: Ref ::
  { I_1(t_2) }
  IsPredicateField(I_1(t_2))
);
axiom (forall t_2: Ref ::
  { I_1(t_2) }
  getPredWandId(I_1(t_2)) == 0
);
function  I#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  I#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall t_2: Ref, t2_1: Ref ::
  { I_1(t_2), I_1(t2_1) }
  I_1(t_2) == I_1(t2_1) ==> t_2 == t2_1
);
axiom (forall t_2: Ref, t2_1: Ref ::
  { I#sm(t_2), I#sm(t2_1) }
  I#sm(t_2) == I#sm(t2_1) ==> t_2 == t2_1
);

axiom (forall Heap: HeapType, t_2: Ref ::
  { I#trigger(Heap, I_1(t_2)) }
  I#everUsed(I_1(t_2))
);

procedure I#definedness(t_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of I
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[t_2, $allocated];
    if (t_2 != null) {
      perm := FullPerm;
      assume t_2 != null;
      Mask := Mask[t_2, r_6:=Mask[t_2, r_6] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume t_2 != null;
      Mask := Mask[t_2, l_8:=Mask[t_2, l_8] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of p()
        if (*) {
          // Stop execution
          assume false;
        }
      if (p(Heap)) {
        
        // -- Check definedness of acc(I(t.r), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@8.1--12.2) [214294]"}
            HasDirectPerm(Mask, t_2, r_6);
        perm := FullPerm;
        Mask := Mask[null, I_1(Heap[t_2, r_6]):=Mask[null, I_1(Heap[t_2, r_6])] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(I(t.l), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@8.1--12.2) [214295]"}
            HasDirectPerm(Mask, t_2, l_8);
        perm := FullPerm;
        Mask := Mask[null, I_1(Heap[t_2, l_8]):=Mask[null, I_1(Heap[t_2, l_8])] + perm];
        assume state(Heap, Mask);
      } else {
        
        // -- Check definedness of acc(I(t.r), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@8.1--12.2) [214296]"}
            HasDirectPerm(Mask, t_2, r_6);
        perm := FullPerm;
        Mask := Mask[null, I_1(Heap[t_2, r_6]):=Mask[null, I_1(Heap[t_2, r_6])] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(I(t.l), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@8.1--12.2) [214297]"}
            HasDirectPerm(Mask, t_2, l_8);
        perm := FullPerm;
        Mask := Mask[null, I_1(Heap[t_2, l_8]):=Mask[null, I_1(Heap[t_2, l_8])] + perm];
        assume state(Heap, Mask);
      }
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fail
// ==================================================

procedure fail() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of fail might not hold. Assertion false might not hold. (0333.vpr@25.11--25.16) [214298]"}
      false;
}