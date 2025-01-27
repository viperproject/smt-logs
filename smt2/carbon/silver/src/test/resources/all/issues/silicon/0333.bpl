// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:45
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
axiom (forall o_15: Ref, f_23: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_15, f_23] }
  Heap[o_15, $allocated] ==> Heap[Heap[o_15, f_23], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_53: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_53] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_53) ==> Heap[o_41, f_53] == ExhaleHeap[o_41, f_53]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> Heap[null, PredicateMaskField(pm_f_20)] == ExhaleHeap[null, PredicateMaskField(pm_f_20)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> Heap[null, WandMaskField(pm_f_20)] == ExhaleHeap[null, WandMaskField(pm_f_20)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_15: Ref, f_54: (Field A B), v: B ::
  { Heap[o_15, f_54:=v] }
  succHeap(Heap, Heap[o_15, f_54:=v])
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

const unique l: Field NormalField Ref;
axiom !IsPredicateField(l);
axiom !IsWandField(l);
const unique r_11: Field NormalField Ref;
axiom !IsPredicateField(r_11);
axiom !IsWandField(r_11);

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
  { state(Heap, Mask), I2(Heap, t_2) } { state(Heap, Mask), I2#triggerStateless(t_2), I#trigger(Heap, I(t_2)), I#trigger(Heap, I(t_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> I2(Heap, t_2) == (t_2 != null ==> I2'(Heap, (if p(Heap) then Heap[t_2, r_11] else Heap[t_2, l])) && I2'(Heap, (if p(Heap) then Heap[t_2, l] else Heap[t_2, r_11])))
);

// Framing axioms
function  I2#frame(frame: FrameType, t_2: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Ref ::
  { state(Heap, Mask), I2'(Heap, t_2) } { state(Heap, Mask), I2#triggerStateless(t_2), I#trigger(Heap, I(t_2)), I#trigger(Heap, I(t_2)) }
  state(Heap, Mask) ==> I2'(Heap, t_2) == I2#frame(Heap[null, I(t_2)], t_2)
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
    Mask := Mask[null, I(t_2):=Mask[null, I(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(I(t), write) in t != null ==> (let up == ((p() ? t.l : t.r)) in (let dn == ((p() ? t.r : t.l)) in I2(dn) && I2(up))))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume I#trigger(UnfoldingHeap, I(t_2));
      assume UnfoldingHeap[null, I(t_2)] == FrameFragment((if t_2 != null then CombineFrames(FrameFragment(UnfoldingHeap[t_2, r_11]), CombineFrames(FrameFragment(UnfoldingHeap[t_2, l]), FrameFragment((if p(UnfoldingHeap) then CombineFrames(UnfoldingHeap[null, I(UnfoldingHeap[t_2, r_11])], UnfoldingHeap[null, I(UnfoldingHeap[t_2, l])]) else CombineFrames(UnfoldingHeap[null, I(UnfoldingHeap[t_2, r_11])], UnfoldingHeap[null, I(UnfoldingHeap[t_2, l])]))))) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access I(t) (0333.vpr@14.1--21.2) [64656]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, I(t_2)];
      if (t_2 != null) {
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, r_11:=UnfoldingMask[t_2, r_11] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume t_2 != null;
        UnfoldingMask := UnfoldingMask[t_2, l:=UnfoldingMask[t_2, l] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (p(UnfoldingHeap)) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I(UnfoldingHeap[t_2, r_11]):=UnfoldingMask[null, I(UnfoldingHeap[t_2, r_11])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I(t_2), UnfoldingHeap[null, I(t_2)], I(UnfoldingHeap[t_2, r_11]), UnfoldingHeap[null, I(UnfoldingHeap[t_2, r_11])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I(UnfoldingHeap[t_2, l]):=UnfoldingMask[null, I(UnfoldingHeap[t_2, l])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I(t_2), UnfoldingHeap[null, I(t_2)], I(UnfoldingHeap[t_2, l]), UnfoldingHeap[null, I(UnfoldingHeap[t_2, l])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        } else {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I(UnfoldingHeap[t_2, r_11]):=UnfoldingMask[null, I(UnfoldingHeap[t_2, r_11])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I(t_2), UnfoldingHeap[null, I(t_2)], I(UnfoldingHeap[t_2, r_11]), UnfoldingHeap[null, I(UnfoldingHeap[t_2, r_11])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, I(UnfoldingHeap[t_2, l]):=UnfoldingMask[null, I(UnfoldingHeap[t_2, l])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(I(t_2), UnfoldingHeap[null, I(t_2)], I(UnfoldingHeap[t_2, l]), UnfoldingHeap[null, I(UnfoldingHeap[t_2, l])]);
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
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@14.1--21.2) [64657]"}
            HasDirectPerm(UnfoldingMask, t_2, l);
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@14.1--21.2) [64658]"}
            HasDirectPerm(UnfoldingMask, t_2, r_11);
        }
        up_1 := (if p(UnfoldingHeap) then UnfoldingHeap[t_2, l] else UnfoldingHeap[t_2, r_11]);
        if (*) {
          // Stop execution
          assume false;
        }
        if (p(UnfoldingHeap)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@14.1--21.2) [64659]"}
            HasDirectPerm(UnfoldingMask, t_2, r_11);
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@14.1--21.2) [64660]"}
            HasDirectPerm(UnfoldingMask, t_2, l);
        }
        dn_1 := (if p(UnfoldingHeap) then UnfoldingHeap[t_2, r_11] else UnfoldingHeap[t_2, l]);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function I2 might not hold. There might be insufficient permission to access I(dn) (0333.vpr@20.5--20.11) [64661]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, I(dn_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume I2#trigger(UnfoldingHeap[null, I(dn_1)], dn_1);
        }
        if (I2(UnfoldingHeap, dn_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function I2 might not hold. There might be insufficient permission to access I(up) (0333.vpr@20.15--20.21) [64662]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, I(up_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume I2#trigger(UnfoldingHeap[null, I(up_1)], up_1);
          }
        }
      }
      
      // -- Free assumptions (exp module)
        if (t_2 != null) {
          Heap := Heap[null, I#sm(t_2):=Heap[null, I#sm(t_2)][t_2, r_11:=true]];
          Heap := Heap[null, I#sm(t_2):=Heap[null, I#sm(t_2)][t_2, l:=true]];
          if (p(Heap)) {
            havoc newPMask;
            assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
              { newPMask[o_5, f_11] }
              Heap[null, I#sm(t_2)][o_5, f_11] || Heap[null, I#sm(Heap[t_2, r_11])][o_5, f_11] ==> newPMask[o_5, f_11]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
              { newPMask[o_6, f_12] }
              Heap[null, I#sm(t_2)][o_6, f_12] || Heap[null, I#sm(Heap[t_2, l])][o_6, f_12] ==> newPMask[o_6, f_12]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
          } else {
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, I#sm(t_2)][o_40, f_52] || Heap[null, I#sm(Heap[t_2, r_11])][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
              { newPMask[o_42, f_55] }
              Heap[null, I#sm(t_2)][o_42, f_55] || Heap[null, I#sm(Heap[t_2, l])][o_42, f_55] ==> newPMask[o_42, f_55]
            );
            Heap := Heap[null, I#sm(t_2):=newPMask];
          }
        }
        assume state(Heap, Mask);
        up_2 := (if p(Heap) then Heap[t_2, l] else Heap[t_2, r_11]);
        dn_2 := (if p(Heap) then Heap[t_2, r_11] else Heap[t_2, l]);
  
  // -- Translate function body
    Result := t_2 != null ==> I2(Heap, (if p(Heap) then Heap[t_2, r_11] else Heap[t_2, l])) && I2(Heap, (if p(Heap) then Heap[t_2, l] else Heap[t_2, r_11]));
}

// ==================================================
// Translation of predicate I
// ==================================================

type PredicateType_I;
function  I(t_2: Ref): Field PredicateType_I FrameType;
function  I#sm(t_2: Ref): Field PredicateType_I PMaskType;
axiom (forall t_2: Ref ::
  { PredicateMaskField(I(t_2)) }
  PredicateMaskField(I(t_2)) == I#sm(t_2)
);
axiom (forall t_2: Ref ::
  { I(t_2) }
  IsPredicateField(I(t_2))
);
axiom (forall t_2: Ref ::
  { I(t_2) }
  getPredWandId(I(t_2)) == 0
);
function  I#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  I#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall t_2: Ref, t2_1: Ref ::
  { I(t_2), I(t2_1) }
  I(t_2) == I(t2_1) ==> t_2 == t2_1
);
axiom (forall t_2: Ref, t2_1: Ref ::
  { I#sm(t_2), I#sm(t2_1) }
  I#sm(t_2) == I#sm(t2_1) ==> t_2 == t2_1
);

axiom (forall Heap: HeapType, t_2: Ref ::
  { I#trigger(Heap, I(t_2)) }
  I#everUsed(I(t_2))
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
      Mask := Mask[t_2, r_11:=Mask[t_2, r_11] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume t_2 != null;
      Mask := Mask[t_2, l:=Mask[t_2, l] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of p()
        if (*) {
          // Stop execution
          assume false;
        }
      if (p(Heap)) {
        
        // -- Check definedness of acc(I(t.r), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@8.1--12.2) [64663]"}
            HasDirectPerm(Mask, t_2, r_11);
        perm := FullPerm;
        Mask := Mask[null, I(Heap[t_2, r_11]):=Mask[null, I(Heap[t_2, r_11])] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(I(t.l), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@8.1--12.2) [64664]"}
            HasDirectPerm(Mask, t_2, l);
        perm := FullPerm;
        Mask := Mask[null, I(Heap[t_2, l]):=Mask[null, I(Heap[t_2, l])] + perm];
        assume state(Heap, Mask);
      } else {
        
        // -- Check definedness of acc(I(t.r), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.r (0333.vpr@8.1--12.2) [64665]"}
            HasDirectPerm(Mask, t_2, r_11);
        perm := FullPerm;
        Mask := Mask[null, I(Heap[t_2, r_11]):=Mask[null, I(Heap[t_2, r_11])] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(I(t.l), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access t.l (0333.vpr@8.1--12.2) [64666]"}
            HasDirectPerm(Mask, t_2, l);
        perm := FullPerm;
        Mask := Mask[null, I(Heap[t_2, l]):=Mask[null, I(Heap[t_2, l])] + perm];
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
    assert {:msg "  Postcondition of fail might not hold. Assertion false might not hold. (0333.vpr@25.11--25.16) [64667]"}
      false;
}