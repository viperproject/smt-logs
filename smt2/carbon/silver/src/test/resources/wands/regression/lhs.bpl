// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:01:18
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/lhs.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/lhs-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
// - height 0: sum
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: int, arg6: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: int, arg6_2: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum(Heap: HeapType, p_1: Ref): int;
function  sum'(Heap: HeapType, p_1: Ref): int;
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum(Heap, p_1) }
  sum(Heap, p_1) == sum'(Heap, p_1) && dummyFunction(sum#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum'(Heap, p_1) }
  dummyFunction(sum#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum(Heap, p_1) } { state(Heap, Mask), sum#triggerStateless(p_1), Pair#trigger(Heap, Pair(p_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum(Heap, p_1) == Heap[p_1, f_7] + Heap[p_1, g]
);

// Framing axioms
function  sum#frame(frame: FrameType, p_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum'(Heap, p_1) }
  state(Heap, Mask) ==> sum'(Heap, p_1) == sum#frame(Heap[null, Pair(p_1)], p_1)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, p_1: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(p_1: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(p_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[p_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Pair(p), write) in p.f + p.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Pair#trigger(UnfoldingHeap, Pair(p_1));
      assume UnfoldingHeap[null, Pair(p_1)] == CombineFrames(FrameFragment(UnfoldingHeap[p_1, f_7]), FrameFragment(UnfoldingHeap[p_1, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Pair(p) (lhs.vpr@13.1--15.35) [127163]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Pair(p_1)];
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, g:=UnfoldingMask[p_1, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (lhs.vpr@13.1--15.35) [127164]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.g (lhs.vpr@13.1--15.35) [127165]"}
        HasDirectPerm(UnfoldingMask, p_1, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[p_1, f_7] + Heap[p_1, g];
}

// ==================================================
// Translation of predicate Pair
// ==================================================

type PredicateType_Pair;
function  Pair(this: Ref): Field PredicateType_Pair FrameType;
function  Pair#sm(this: Ref): Field PredicateType_Pair PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Pair(this)) }
  PredicateMaskField(Pair(this)) == Pair#sm(this)
);
axiom (forall this: Ref ::
  { Pair(this) }
  IsPredicateField(Pair(this))
);
axiom (forall this: Ref ::
  { Pair(this) }
  getPredWandId(Pair(this)) == 0
);
function  Pair#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Pair#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Pair(this), Pair(this2) }
  Pair(this) == Pair(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Pair#sm(this), Pair#sm(this2) }
  Pair#sm(this) == Pair#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Pair#trigger(Heap, Pair(this)) }
  Pair#everUsed(Pair(this))
);

procedure Pair#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Pair
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, g:=Mask[this, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_6: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: p.f := 10 -- lhs.vpr@21.3--21.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.f (lhs.vpr@21.3--21.12) [127166]"}
      FullPerm == Mask[p_1, f_7];
    Heap := Heap[p_1, f_7:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(p.g, write) --*
  // acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g) {
  //   fold acc(Pair(p), write)
  // } -- lhs.vpr@23.3--25.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && p_1 != null;
      Ops_1Mask := Ops_1Mask[p_1, g:=Ops_1Mask[p_1, g] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- lhs.vpr@23.11--23.70
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(Pair(p), write) -- lhs.vpr@24.7--24.19
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(p.f, write)
          rcvLocal := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(p) might fail. Fraction acc(p.f, write) might be negative. (lhs.vpr@24.7--24.19) [127168]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
                Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1)][p_1, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (lhs.vpr@24.7--24.19) [127169]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(p.g, write)
          rcvLocal := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(p) might fail. Fraction acc(p.g, write) might be negative. (lhs.vpr@24.7--24.19) [127170]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1):=Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1)][p_1, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (lhs.vpr@24.7--24.19) [127171]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Pair(p_1):=Ops_1Mask[null, Pair(p_1)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume Pair#trigger(Ops_1Heap, Pair(p_1));
        assume Ops_1Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_1Heap[p_1, f_7]), FrameFragment(Ops_1Heap[p_1, g]));
        if (!HasDirectPerm(Ops_1Mask, null, Pair(p_1))) {
          Ops_1Heap := Ops_1Heap[null, Pair#sm(p_1):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, Pair(p_1):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, Pair#sm(p_1):=Ops_1Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Ops_1Heap := Ops_1Heap[null, Pair#sm(p_1):=Ops_1Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g)
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_5 := b_5 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(Pair(p), write)
      arg_1 := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, Pair(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Pair(p), write) might be negative. (lhs.vpr@23.3--25.4) [127173]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Pair(arg_1):=Used_2Mask[null, Pair(arg_1)] + takeTransfer];
            b_5 := b_5 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Pair(arg_1):=Ops_1Mask[null, Pair(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Pair(arg_1):=Used_2Mask[null, Pair(arg_1)] + takeTransfer];
            b_5 := b_5 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, Pair(arg_1):=Mask[null, Pair(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1)][o_15, f_20] || Heap[null, Pair#sm(p_1)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(p_1, FullPerm, p_1, p_1, 10, p_1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Pair(p) (lhs.vpr@23.3--25.4) [127174]"}
        (b_1_1 && b_1_1) && b_5 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Pair(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_5;
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
        b_6 := b_6 && sumMask(Result_2Mask, Ops_1Mask, Used_2Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_2Heap, Used_2Mask);
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_6;
    if ((b_1_1 && b_1_1) && b_5) {
      if (b_1_1) {
        
        // -- Check definedness of sum(p) == 10 + old[lhs](p.g)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Result_2Mask;
            ExhaleWellDef0Heap := Result_2Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (lhs.vpr@23.42--23.48) [127175]"}
              NoPerm < perm ==> NoPerm < Result_2Mask[null, Pair(p_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_2Heap, ExhaleHeap, Result_2Mask);
            Result_2Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (lhs.vpr@23.3--25.4) [127176]"}
            HasDirectPerm(Labellhs1Mask, p_1, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum(p) == 10 + old[lhs](p.g) might not hold. (lhs.vpr@23.3--25.4) [127177]"}
      (b_1_1 && b_1_1) && b_5 ==> sum(Result_2Heap, p_1) == 10 + Labellhs1Heap[p_1, g];
    assume state(Heap, Mask);
    Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1):=Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Labellhs4Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p.g, write) --* acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, g:=WandDefLHSMask[p_1, g] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- lhs.vpr@31.12--31.69
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Pair(p_1):=WandDefRHSMask[null, Pair(p_1)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of sum(p) == 10 + old[lhs](p.g)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := WandDefRHSMask;
            ExhaleWellDef0Heap := WandDefRHSHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (lhs.vpr@31.41--31.47) [127178]"}
              NoPerm < perm ==> NoPerm < WandDefRHSMask[null, Pair(p_1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefRHSHeap, ExhaleHeap, WandDefRHSMask);
            WandDefRHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.g (lhs.vpr@31.12--31.69) [127179]"}
            HasDirectPerm(Labellhs3Mask, p_1, g);
        assume sum(WandDefRHSHeap, p_1) == 10 + Labellhs3Heap[p_1, g];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1):=Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: p.g := 3 -- lhs.vpr@33.3--33.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.g (lhs.vpr@33.3--33.11) [127180]"}
      FullPerm == Mask[p_1, g];
    Heap := Heap[p_1, g:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(p.g, write) --*
  //   acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g) -- lhs.vpr@34.3--34.66
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (lhs.vpr@34.3--34.66) [127181]"}
        FullPerm <= Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1)];
      Mask := Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1):=Mask[null, wand(p_1, FullPerm, p_1, p_1, 10, p_1)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.g (lhs.vpr@34.3--34.66) [127183]"}
          perm <= Mask[p_1, g];
      }
      Mask := Mask[p_1, g:=Mask[p_1, g] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume sum(Heap, p_1) == 10 + Labellhs4Heap[p_1, g];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(p) == 13 -- lhs.vpr@35.3--35.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of sum(p) == 13
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (lhs.vpr@35.10--35.16) [127185]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Pair(p_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(p) == 13 might not hold. (lhs.vpr@35.10--35.22) [127186]"}
      sum(Heap, p_1) == 13;
    assume state(Heap, Mask);
}