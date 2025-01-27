// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/function_precondition_perms.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/function_precondition_perms-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_47: Ref, f_65: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_47, f_65] }
  Heap[o_47, $allocated] ==> Heap[Heap[o_47, f_65], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref, f_50: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, f_50] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_36, f_50) ==> Heap[o_36, f_50] == ExhaleHeap[o_36, f_50]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_28, f_50] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_50] ==> Heap[o2_28, f_50] == ExhaleHeap[o2_28, f_50]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_28, f_50] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_50] ==> Heap[o2_28, f_50] == ExhaleHeap[o2_28, f_50]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_36, $allocated] ==> ExhaleHeap[o_36, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_47: Ref, f_20: (Field A B), v: B ::
  { Heap[o_47, f_20:=v] }
  succHeap(Heap, Heap[o_47, f_20:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(z_3: Ref): bool;
function  neverTriggered2(z_3: Ref): bool;
function  neverTriggered3(z_3: Ref): bool;
function  neverTriggered4(z_3: Ref): bool;
function  neverTriggered5(z_3: Ref): bool;
function  neverTriggered6(y_1: Ref): bool;
function  neverTriggered7(y_1: Ref): bool;
function  neverTriggered8(y_1: Ref): bool;
function  neverTriggered9(y_1: Ref): bool;
function  neverTriggered10(y_1: Ref): bool;
function  neverTriggered11(y_1: Ref): bool;
function  neverTriggered12(y_1: Ref): bool;
function  neverTriggered13(y_1: Ref): bool;
function  neverTriggered14(y_1: Ref): bool;
function  neverTriggered15(y_1: Ref): bool;
function  neverTriggered16(y_1: Ref): bool;
function  neverTriggered17(y_1: Ref): bool;
function  neverTriggered18(z: Ref): bool;
function  neverTriggered19(z: Ref): bool;
function  neverTriggered20(z: Ref): bool;
function  neverTriggered21(z: Ref): bool;
function  neverTriggered22(z: Ref): bool;
function  neverTriggered23(z: Ref): bool;
function  neverTriggered24(z: Ref): bool;
function  neverTriggered25(z: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(x_2_1: Ref): Ref;
function  invRecv4(x_2_1: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(x_1_1_1: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(x_1_1_1: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(recv: Ref): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(x_1_1_1: Ref): Ref;
function  invRecv21(x_1_1_1: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(x_1_1_1: Ref): Ref;
function  invRecv25(x_1_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(x_2_1: Ref): bool;
function  qpRange4(x_2_1: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(x_1_1_1: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(x_1_1_1: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(x_1_1_1: Ref): bool;
function  qpRange21(x_1_1_1: Ref): bool;
function  qpRange22(recv: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(x_1_1_1: Ref): bool;
function  qpRange25(x_1_1_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 16: foo
// - height 15: bar4
// - height 14: bar5
// - height 13: nonAliasF
// - height 12: foo2w
// - height 11: bar3
// - height 10: foo5pw
// - height 9: foo5p
// - height 8: foo5w
// - height 7: foo5
// - height 6: foo6
// - height 5: bar2
// - height 4: foo4
// - height 3: foo3
// - height 2: foop
// - height 1: bar
// - height 0: foo2
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, x: Ref): int;
function  foo'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo_1(Heap, x) }
  foo_1(Heap, x) == foo'(Heap, x) && dummyFunction(foo#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo'(Heap, x) }
  dummyFunction(foo#triggerStateless(x))
);

// Framing axioms
function  foo#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) ==> foo'(Heap, x) == foo#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 16;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foop
// ==================================================

// Uninterpreted function definitions
function  foop(Heap: HeapType, x: Ref): int;
function  foop'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foop(Heap, x) }
  foop(Heap, x) == foop'(Heap, x) && dummyFunction(foop#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foop'(Heap, x) }
  dummyFunction(foop#triggerStateless(x))
);

// Framing axioms
function  foop#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foop'(Heap, x) }
  state(Heap, Mask) ==> foop'(Heap, x) == foop#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  foop#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foop#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foop#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo2
// ==================================================

// Uninterpreted function definitions
function  foo2(Heap: HeapType, x: Ref, b_24: bool): int;
function  foo2'(Heap: HeapType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { foo2(Heap, x, b_24) }
  foo2(Heap, x, b_24) == foo2'(Heap, x, b_24) && dummyFunction(foo2#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { foo2'(Heap, x, b_24) }
  dummyFunction(foo2#triggerStateless(x, b_24))
);

// Framing axioms
function  foo2#frame(frame: FrameType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), foo2'(Heap, x, b_24) }
  state(Heap, Mask) ==> foo2'(Heap, x, b_24) == foo2#frame(ConditionalFrame((if b_24 then FullPerm else NoPerm), FrameFragment(Heap[x, f_7])), x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  foo2#trigger(frame: FrameType, x: Ref, b_24: bool): bool;

// State-independent trigger function
function  foo2#triggerStateless(x: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure foo2#definedness(x: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := (if b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b ? write : none) might be negative. (function_precondition_perms.vpr@19.12--19.38) [49283]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo2w
// ==================================================

// Uninterpreted function definitions
function  foo2w(Heap: HeapType, x: Ref, b_24: bool): int;
function  foo2w'(Heap: HeapType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { foo2w(Heap, x, b_24) }
  foo2w(Heap, x, b_24) == foo2w'(Heap, x, b_24) && dummyFunction(foo2w#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { foo2w'(Heap, x, b_24) }
  dummyFunction(foo2w#triggerStateless(x, b_24))
);

// Framing axioms
function  foo2w#frame(frame: FrameType, x: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), foo2w'(Heap, x, b_24) }
  state(Heap, Mask) ==> foo2w'(Heap, x, b_24) == foo2w#frame(ConditionalFrame((if b_24 then FullPerm else NoPerm), FrameFragment(Heap[x, f_7])), x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  foo2w#trigger(frame: FrameType, x: Ref, b_24: bool): bool;

// State-independent trigger function
function  foo2w#triggerStateless(x: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure foo2w#definedness(x: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 12;
  
  // -- Inhaling precondition (with checking)
    perm := (if b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b ? wildcard : none) might be negative. (function_precondition_perms.vpr@22.12--22.41) [49284]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo3
// ==================================================

// Uninterpreted function definitions
function  foo3(Heap: HeapType, x: Ref): int;
function  foo3'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo3(Heap, x) }
  foo3(Heap, x) == foo3'(Heap, x) && dummyFunction(foo3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo3'(Heap, x) }
  dummyFunction(foo3#triggerStateless(x))
);

// Framing axioms
function  foo3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo3'(Heap, x) }
  state(Heap, Mask) ==> foo3'(Heap, x) == foo3#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  foo3#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo3#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo3#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo4
// ==================================================

// Uninterpreted function definitions
function  foo4(Heap: HeapType, x: Ref): int;
function  foo4'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo4(Heap, x) }
  foo4(Heap, x) == foo4'(Heap, x) && dummyFunction(foo4#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo4'(Heap, x) }
  dummyFunction(foo4#triggerStateless(x))
);

// Framing axioms
function  foo4#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo4'(Heap, x) }
  state(Heap, Mask) ==> foo4'(Heap, x) == foo4#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, f_7])), x)
);

// Trigger function (controlling recursive postconditions)
function  foo4#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo4#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo4#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo5
// ==================================================

// Uninterpreted function definitions
function  foo5(Heap: HeapType, x: Ref): int;
function  foo5'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo5(Heap, x) }
  foo5(Heap, x) == foo5'(Heap, x) && dummyFunction(foo5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo5'(Heap, x) }
  dummyFunction(foo5#triggerStateless(x))
);

// Framing axioms
function  foo5#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo5'(Heap, x) }
  state(Heap, Mask) ==> foo5'(Heap, x) == foo5#frame(FrameFragment(foo5#condqp1(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::z == x ==> acc(z.f, write)) in function foo5
// ==================================================

function  foo5#condqp1(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_foo5#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (sk_foo5#condqp1(foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm <==> sk_foo5#condqp1(foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm) && (sk_foo5#condqp1(foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x)) == x && NoPerm < FullPerm ==> Heap2Heap[sk_foo5#condqp1(foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x)), f_7] == Heap1Heap[sk_foo5#condqp1(foo5#condqp1(Heap2Heap, x), foo5#condqp1(Heap1Heap, x)), f_7]) ==> foo5#condqp1(Heap2Heap, x) == foo5#condqp1(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  foo5#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo5#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo5#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@31.12--31.48) [49285]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x && NoPerm < FullPerm ==> qpRange1(z_3) && invRecv1(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv1(o_9) == x && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo5w
// ==================================================

// Uninterpreted function definitions
function  foo5w(Heap: HeapType, x: Ref): int;
function  foo5w'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo5w(Heap, x) }
  foo5w(Heap, x) == foo5w'(Heap, x) && dummyFunction(foo5w#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo5w'(Heap, x) }
  dummyFunction(foo5w#triggerStateless(x))
);

// Framing axioms
function  foo5w#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo5w'(Heap, x) }
  state(Heap, Mask) ==> foo5w'(Heap, x) == foo5w#frame(FrameFragment(foo5w#condqp2(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::z == x ==> acc(z.f, wildcard)) in function foo5w
// ==================================================

function  foo5w#condqp2(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_foo5w#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (sk_foo5w#condqp2(foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x)) == x <==> sk_foo5w#condqp2(foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x)) == x) && (sk_foo5w#condqp2(foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x)) == x ==> Heap2Heap[sk_foo5w#condqp2(foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x)), f_7] == Heap1Heap[sk_foo5w#condqp2(foo5w#condqp2(Heap2Heap, x), foo5w#condqp2(Heap1Heap, x)), f_7]) ==> foo5w#condqp2(Heap2Heap, x) == foo5w#condqp2(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  foo5w#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo5w#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo5w#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@34.12--34.58) [49286]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x ==> qpRange2(z_3) && invRecv2(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        invRecv2(o_9) == x && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == x ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (invRecv2(o_9) == x && qpRange2(o_9) ==> invRecv2(o_9) == o_9 && Mask[o_9, f_7] < QPMask[o_9, f_7]) && (!(invRecv2(o_9) == x && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo5p
// ==================================================

// Uninterpreted function definitions
function  foo5p(Heap: HeapType, x: Ref): int;
function  foo5p'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo5p(Heap, x) }
  foo5p(Heap, x) == foo5p'(Heap, x) && dummyFunction(foo5p#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo5p'(Heap, x) }
  dummyFunction(foo5p#triggerStateless(x))
);

// Framing axioms
function  foo5p#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo5p'(Heap, x) }
  state(Heap, Mask) ==> foo5p'(Heap, x) == foo5p#frame(FrameFragment(foo5p#condqp3(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::z == x ==> acc(P(z), write)) in function foo5p
// ==================================================

function  foo5p#condqp3(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_foo5p#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (sk_foo5p#condqp3(foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x)) == x && NoPerm < FullPerm <==> sk_foo5p#condqp3(foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x)) == x && NoPerm < FullPerm) && (sk_foo5p#condqp3(foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x)) == x && NoPerm < FullPerm ==> Heap2Heap[null, P(sk_foo5p#condqp3(foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x)))] == Heap1Heap[null, P(sk_foo5p#condqp3(foo5p#condqp3(Heap2Heap, x), foo5p#condqp3(Heap1Heap, x)))]) ==> foo5p#condqp3(Heap2Heap, x) == foo5p#condqp3(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  foo5p#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo5p#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo5p#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(P(z), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(z), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@37.12--37.44) [49287]"}
        (forall z_3: Ref, z_3_1: Ref ::
        { neverTriggered3(z_3), neverTriggered3(z_3_1) }
        (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
      );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[null, P(z_3)] } { Mask[null, P(z_3)] }
        z_3 == x && NoPerm < FullPerm ==> invRecv3(z_3) == z_3 && qpRange3(z_3)
      );
      assume (forall x_2_1: Ref ::
        { invRecv3(x_2_1) }
        (invRecv3(x_2_1) == x && NoPerm < FullPerm) && qpRange3(x_2_1) ==> invRecv3(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        (invRecv3(x_2_1) == x && NoPerm < FullPerm) && qpRange3(x_2_1) ==> (NoPerm < FullPerm ==> invRecv3(x_2_1) == x_2_1) && QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        !((invRecv3(x_2_1) == x && NoPerm < FullPerm) && qpRange3(x_2_1)) ==> QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo5pw
// ==================================================

// Uninterpreted function definitions
function  foo5pw(Heap: HeapType, x: Ref): int;
function  foo5pw'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo5pw(Heap, x) }
  foo5pw(Heap, x) == foo5pw'(Heap, x) && dummyFunction(foo5pw#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo5pw'(Heap, x) }
  dummyFunction(foo5pw#triggerStateless(x))
);

// Framing axioms
function  foo5pw#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo5pw'(Heap, x) }
  state(Heap, Mask) ==> foo5pw'(Heap, x) == foo5pw#frame(FrameFragment(foo5pw#condqp4(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::z == x ==> acc(P(z), wildcard)) in function foo5pw
// ==================================================

function  foo5pw#condqp4(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_foo5pw#condqp4(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (sk_foo5pw#condqp4(foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x)) == x <==> sk_foo5pw#condqp4(foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x)) == x) && (sk_foo5pw#condqp4(foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x)) == x ==> Heap2Heap[null, P(sk_foo5pw#condqp4(foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x)))] == Heap1Heap[null, P(sk_foo5pw#condqp4(foo5pw#condqp4(Heap2Heap, x), foo5pw#condqp4(Heap1Heap, x)))]) ==> foo5pw#condqp4(Heap2Heap, x) == foo5pw#condqp4(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  foo5pw#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo5pw#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo5pw#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 10;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(P(z), wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(P(z), wildcard) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@40.12--40.59) [49288]"}
        (forall z_3: Ref, z_3_1: Ref ::
        { neverTriggered4(z_3), neverTriggered4(z_3_1) }
        (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z_3 != z_3_1
      );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[null, P(z_3)] } { Mask[null, P(z_3)] }
        z_3 == x && NoPerm < wildcard ==> invRecv4(z_3) == z_3 && qpRange4(z_3)
      );
      assume (forall x_2_1: Ref ::
        { invRecv4(x_2_1) }
        (invRecv4(x_2_1) == x && NoPerm < wildcard) && qpRange4(x_2_1) ==> invRecv4(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        (invRecv4(x_2_1) == x && NoPerm < wildcard) && qpRange4(x_2_1) ==> (NoPerm < wildcard ==> invRecv4(x_2_1) == x_2_1) && QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, P(x_2_1)] }
        !((invRecv4(x_2_1) == x && NoPerm < wildcard) && qpRange4(x_2_1)) ==> QPMask[null, P(x_2_1)] == Mask[null, P(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function nonAliasF
// ==================================================

// Uninterpreted function definitions
function  nonAliasF(Heap: HeapType, x: Ref, y: Ref): int;
function  nonAliasF'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { nonAliasF(Heap, x, y) }
  nonAliasF(Heap, x, y) == nonAliasF'(Heap, x, y) && dummyFunction(nonAliasF#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { nonAliasF'(Heap, x, y) }
  dummyFunction(nonAliasF#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), nonAliasF(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 13 ==> nonAliasF(Heap, x, y) == Heap[x, f_7]
);

// Framing axioms
function  nonAliasF#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), nonAliasF'(Heap, x, y) }
  state(Heap, Mask) ==> nonAliasF'(Heap, x, y) == nonAliasF#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, f_7])), x, y)
);

// Trigger function (controlling recursive postconditions)
function  nonAliasF#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  nonAliasF#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure nonAliasF#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 13;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (asserting (x != y) in x.f)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Mask := assertingMask;
      ExhaleWellDef0Heap := assertingHeap;
      assert {:msg "  Function might not be well-formed. Assertion x != y might not hold. (function_precondition_perms.vpr@43.1--47.2) [49289]"}
        x != y;
      
      // -- Check definedness of x.f
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (function_precondition_perms.vpr@43.1--47.2) [49290]"}
          HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function bar
// ==================================================

// Uninterpreted function definitions
function  bar(Heap: HeapType, x: Ref): int;
function  bar'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { bar(Heap, x) }
  bar(Heap, x) == bar'(Heap, x) && dummyFunction(bar#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { bar'(Heap, x) }
  dummyFunction(bar#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar(Heap, x) } { state(Heap, Mask), bar#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> bar(Heap, x) == foo_1(Heap, x)
);

// Framing axioms
function  bar#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar'(Heap, x) } { state(Heap, Mask), bar#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) ==> bar'(Heap, x) == bar#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  bar#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  bar#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure bar#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@59.12--59.26) [49291]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), 1 / 2) in foo(x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@58.1--62.2) [49292]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@58.1--62.2) [49293]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@58.1--62.2) [49294]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@61.31--61.37) [49295]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := foo_1(Heap, x);
}

// ==================================================
// Translation of function bar2
// ==================================================

// Uninterpreted function definitions
function  bar2(Heap: HeapType, x: Ref): int;
function  bar2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { bar2(Heap, x) }
  bar2(Heap, x) == bar2'(Heap, x) && dummyFunction(bar2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { bar2'(Heap, x) }
  dummyFunction(bar2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar2(Heap, x) } { state(Heap, Mask), bar2#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> bar2(Heap, x) == foo_1(Heap, x)
);

// Framing axioms
function  bar2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar2'(Heap, x) } { state(Heap, Mask), bar2#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) ==> bar2'(Heap, x) == bar2#frame(ConditionalFrame(NoPerm, Heap[null, P(x)]), x)
);

// Trigger function (controlling recursive postconditions)
function  bar2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  bar2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure bar2#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), 1 / 2) in foo(x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@65.1--69.2) [49296]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@65.1--69.2) [49297]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@65.1--69.2) [49298]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@68.31--68.37) [49299]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := foo_1(Heap, x);
}

// ==================================================
// Translation of function bar3
// ==================================================

// Uninterpreted function definitions
function  bar3(Heap: HeapType, x: Ref): int;
function  bar3'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { bar3(Heap, x) }
  bar3(Heap, x) == bar3'(Heap, x) && dummyFunction(bar3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { bar3'(Heap, x) }
  dummyFunction(bar3#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar3(Heap, x) } { state(Heap, Mask), bar3#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 11 ==> bar3(Heap, x) == Heap[x, g]
);

// Framing axioms
function  bar3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar3'(Heap, x) }
  state(Heap, Mask) ==> bar3'(Heap, x) == bar3#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  bar3#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  bar3#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure bar3#definedness(x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 11;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), 1 / 2) in x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@72.1--76.2) [49300]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@72.1--76.2) [49301]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@72.1--76.2) [49302]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (function_precondition_perms.vpr@72.1--76.2) [49303]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, g];
}

// ==================================================
// Translation of function bar4
// ==================================================

// Uninterpreted function definitions
function  bar4(Heap: HeapType, x: Ref): int;
function  bar4'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { bar4(Heap, x) }
  bar4(Heap, x) == bar4'(Heap, x) && dummyFunction(bar4#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { bar4'(Heap, x) }
  dummyFunction(bar4#triggerStateless(x))
);

// Framing axioms
function  bar4#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar4'(Heap, x) }
  state(Heap, Mask) ==> bar4'(Heap, x) == bar4#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  bar4#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  bar4#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure bar4#definedness(x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 15;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@79.12--79.55) [49304]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.f > 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@79.12--79.55) [49305]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (function_precondition_perms.vpr@79.12--79.55) [49306]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function bar5
// ==================================================

// Uninterpreted function definitions
function  bar5(Heap: HeapType, x: Ref): int;
function  bar5'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { bar5(Heap, x) }
  bar5(Heap, x) == bar5'(Heap, x) && dummyFunction(bar5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { bar5'(Heap, x) }
  dummyFunction(bar5#triggerStateless(x))
);

// Framing axioms
function  bar5#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), bar5'(Heap, x) }
  state(Heap, Mask) ==> bar5'(Heap, x) == bar5#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  bar5#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  bar5#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure bar5#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 14;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.f > 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@84.12--84.37) [49307]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (function_precondition_perms.vpr@84.12--84.37) [49308]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo6
// ==================================================

// Uninterpreted function definitions
function  foo6(Heap: HeapType, x: Ref): int;
function  foo6'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo6(Heap, x) }
  foo6(Heap, x) == foo6'(Heap, x) && dummyFunction(foo6#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo6'(Heap, x) }
  dummyFunction(foo6#triggerStateless(x))
);

// Framing axioms
function  foo6#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo6'(Heap, x) }
  state(Heap, Mask) ==> foo6'(Heap, x) == foo6#frame(CombineFrames(FrameFragment(foo6#condqp5(Heap, x)), FrameFragment(Heap[x, f_7])), x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref ::false ==> acc(z.f, write)) in function foo6
// ==================================================

function  foo6#condqp5(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_foo6#condqp5(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { foo6#condqp5(Heap2Heap, x), foo6#condqp5(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (false <==> false) ==> foo6#condqp5(Heap2Heap, x) == foo6#condqp5(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  foo6#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo6#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo6#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref ::false ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- Define Inverse Function
      
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        QPMask[o_9, f_7] == Mask[o_9, f_7]
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate nonAliasPred
// ==================================================

type PredicateType_nonAliasPred;
function  nonAliasPred(x: Ref, y: Ref): Field PredicateType_nonAliasPred FrameType;
function  nonAliasPred#sm(x: Ref, y: Ref): Field PredicateType_nonAliasPred PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(nonAliasPred(x, y)) }
  PredicateMaskField(nonAliasPred(x, y)) == nonAliasPred#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { nonAliasPred(x, y) }
  IsPredicateField(nonAliasPred(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { nonAliasPred(x, y) }
  getPredWandId(nonAliasPred(x, y)) == 1
);
function  nonAliasPred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  nonAliasPred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { nonAliasPred(x, y), nonAliasPred(x2, y2) }
  nonAliasPred(x, y) == nonAliasPred(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { nonAliasPred#sm(x, y), nonAliasPred#sm(x2, y2) }
  nonAliasPred#sm(x, y) == nonAliasPred#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { nonAliasPred#trigger(Heap, nonAliasPred(x, y)) }
  nonAliasPred#everUsed(nonAliasPred(x, y))
);

procedure nonAliasPred#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Check definedness of predicate body of nonAliasPred
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (asserting (x != y) in true)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Mask := assertingMask;
      ExhaleWellDef0Heap := assertingHeap;
      assert {:msg "  Predicate might not be well-formed. Assertion x != y might not hold. (function_precondition_perms.vpr@49.1--51.2) [49309]"}
        x != y;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method nonAliasM
// ==================================================

procedure nonAliasM(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(y.f, write) -- function_precondition_perms.vpr@54.5--54.32
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x != y -- function_precondition_perms.vpr@55.5--55.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion x != y might not hold. (function_precondition_perms.vpr@55.12--55.18) [49312]"}
      x != y;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@92.4--92.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@92.11--92.24) [49313]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@94.4--94.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@94.11--94.17) [49314]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0mce
// ==================================================

procedure test0mce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@100.4--100.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@100.11--100.24) [49315]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@102.4--102.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@102.11--102.17) [49316]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0qp
// ==================================================

procedure test0qp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2)) -- function_precondition_perms.vpr@107.4--107.52
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@107.11--107.52) [49317]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < 1 / 2 ==> qpRange6(y_1) && invRecv6(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (invRecv6(o_9) == x && NoPerm < 1 / 2) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@107.11--107.52) [49318]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && 1 / 2 > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv6(o_9) == x && NoPerm < 1 / 2) && qpRange6(o_9) ==> (NoPerm < 1 / 2 ==> invRecv6(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + 1 / 2) && (!((invRecv6(o_9) == x && NoPerm < 1 / 2) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@109.4--109.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@109.11--109.17) [49319]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0p
// ==================================================

procedure test0p(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), 1 / 2) -- function_precondition_perms.vpr@114.4--114.25
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@114.11--114.25) [49320]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@116.4--116.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@116.11--116.18) [49321]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0pmce
// ==================================================

procedure test0pmce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), 1 / 2) -- function_precondition_perms.vpr@122.4--122.25
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@122.11--122.25) [49322]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@124.4--124.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@124.11--124.18) [49323]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0pqp
// ==================================================

procedure test0pqp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(P(y), 1 / 2)) -- function_precondition_perms.vpr@129.4--129.53
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(P(y), 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(y), 1 / 2) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(y) might not be injective. (function_precondition_perms.vpr@129.11--129.53) [49324]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered7(y_1), neverTriggered7(y_1_1) }
        (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> y_1 != y_1_1
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[null, P(y_1)] } { Mask[null, P(y_1)] }
        y_1 == x && NoPerm < 1 / 2 ==> invRecv7(y_1) == y_1 && qpRange7(y_1)
      );
      assume (forall x_1_1_1: Ref ::
        { invRecv7(x_1_1_1) }
        (invRecv7(x_1_1_1) == x && NoPerm < 1 / 2) && qpRange7(x_1_1_1) ==> invRecv7(x_1_1_1) == x_1_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@129.11--129.53) [49325]"}
      (forall y_1: Ref ::
      { Heap[null, P(y_1)] } { Mask[null, P(y_1)] }
      y_1 == x ==> 1 / 2 >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, P(x_1_1_1)] }
        (invRecv7(x_1_1_1) == x && NoPerm < 1 / 2) && qpRange7(x_1_1_1) ==> (NoPerm < 1 / 2 ==> invRecv7(x_1_1_1) == x_1_1_1) && QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)] + 1 / 2
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, P(x_1_1_1)] }
        !((invRecv7(x_1_1_1) == x && NoPerm < 1 / 2) && qpRange7(x_1_1_1)) ==> QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@131.4--131.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@131.11--131.18) [49326]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, none) -- function_precondition_perms.vpr@136.4--136.25
    perm := NoPerm;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@139.4--139.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@139.11--139.17) [49328]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1mce
// ==================================================

procedure test1mce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, none) -- function_precondition_perms.vpr@145.4--145.25
    perm := NoPerm;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@148.4--148.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@148.11--148.17) [49330]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1qp
// ==================================================

procedure test1qp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, none)) -- function_precondition_perms.vpr@153.4--153.53
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@153.11--153.53) [49331]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < NoPerm) && NoPerm < NoPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < NoPerm ==> qpRange8(y_1) && invRecv8(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (invRecv8(o_9) == x && NoPerm < NoPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction none might be negative. (function_precondition_perms.vpr@153.11--153.53) [49332]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> NoPerm >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv8(o_9) == x && NoPerm < NoPerm) && qpRange8(o_9) ==> (NoPerm < NoPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + NoPerm) && (!((invRecv8(o_9) == x && NoPerm < NoPerm) && qpRange8(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo(x) -- function_precondition_perms.vpr@156.4--156.17
    
    // -- Check definedness of foo(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@156.11--156.17) [49333]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo_1(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1p
// ==================================================

procedure test1p(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), none) -- function_precondition_perms.vpr@161.4--161.26
    perm := NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@164.4--164.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@164.11--164.18) [49335]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1pmce
// ==================================================

procedure test1pmce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), none) -- function_precondition_perms.vpr@170.4--170.26
    perm := NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@173.4--173.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@173.11--173.18) [49337]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1pqp
// ==================================================

procedure test1pqp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(P(y), none)) -- function_precondition_perms.vpr@178.4--178.54
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(P(y), none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(y), none) is injective
      assert {:msg "  Inhale might fail. Quantified resource P(y) might not be injective. (function_precondition_perms.vpr@178.11--178.54) [49338]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered9(y_1), neverTriggered9(y_1_1) }
        (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < NoPerm) && NoPerm < NoPerm ==> y_1 != y_1_1
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[null, P(y_1)] } { Mask[null, P(y_1)] }
        y_1 == x && NoPerm < NoPerm ==> invRecv9(y_1) == y_1 && qpRange9(y_1)
      );
      assume (forall x_1_1_1: Ref ::
        { invRecv9(x_1_1_1) }
        (invRecv9(x_1_1_1) == x && NoPerm < NoPerm) && qpRange9(x_1_1_1) ==> invRecv9(x_1_1_1) == x_1_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction none might be negative. (function_precondition_perms.vpr@178.11--178.54) [49339]"}
      (forall y_1: Ref ::
      { Heap[null, P(y_1)] } { Mask[null, P(y_1)] }
      y_1 == x ==> NoPerm >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, P(x_1_1_1)] }
        (invRecv9(x_1_1_1) == x && NoPerm < NoPerm) && qpRange9(x_1_1_1) ==> (NoPerm < NoPerm ==> invRecv9(x_1_1_1) == x_1_1_1) && QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)] + NoPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, P(x_1_1_1)] }
        !((invRecv9(x_1_1_1) == x && NoPerm < NoPerm) && qpRange9(x_1_1_1)) ==> QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foop(x) -- function_precondition_perms.vpr@181.4--181.18
    
    // -- Check definedness of foop(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foop might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@181.11--181.18) [49340]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foop(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@186.4--186.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@186.11--186.35) [49341]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, b) -- function_precondition_perms.vpr@188.4--188.21
    
    // -- Check definedness of foo2(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (b ? write : none) might be negative. (function_precondition_perms.vpr@188.11--188.21) [49342]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@188.11--188.21) [49343]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2mce
// ==================================================

procedure test2mce(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@194.4--194.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@194.11--194.35) [49344]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, b) -- function_precondition_perms.vpr@196.4--196.21
    
    // -- Check definedness of foo2(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (b ? write : none) might be negative. (function_precondition_perms.vpr@196.11--196.21) [49345]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@196.11--196.21) [49346]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2qp
// ==================================================

procedure test2qp(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none))) -- function_precondition_perms.vpr@201.4--201.63
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@201.11--201.63) [49347]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> qpRange10(y_1) && invRecv10(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (invRecv10(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange10(o_9) ==> invRecv10(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@201.11--201.63) [49348]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> (if b_24 then 1 / 2 else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && (if b_24 then 1 / 2 else NoPerm) > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv10(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange10(o_9) ==> (NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> invRecv10(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if b_24 then 1 / 2 else NoPerm)) && (!((invRecv10(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, b) -- function_precondition_perms.vpr@203.4--203.21
    
    // -- Check definedness of foo2(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (b ? write : none) might be negative. (function_precondition_perms.vpr@203.11--203.21) [49349]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@203.11--203.21) [49350]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@209.4--209.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@209.11--209.35) [49351]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, !b) -- function_precondition_perms.vpr@212.4--212.22
    
    // -- Check definedness of foo2(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (!b ? write : none) might be negative. (function_precondition_perms.vpr@212.11--212.22) [49352]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@212.11--212.22) [49353]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3mce
// ==================================================

procedure test3mce(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@218.4--218.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@218.11--218.35) [49354]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, !b) -- function_precondition_perms.vpr@221.4--221.22
    
    // -- Check definedness of foo2(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (!b ? write : none) might be negative. (function_precondition_perms.vpr@221.11--221.22) [49355]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@221.11--221.22) [49356]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3qp
// ==================================================

procedure test3qp(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none))) -- function_precondition_perms.vpr@226.4--226.63
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@226.11--226.63) [49357]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> qpRange11(y_1) && invRecv11(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (invRecv11(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange11(o_9) ==> invRecv11(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@226.11--226.63) [49358]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> (if b_24 then 1 / 2 else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && (if b_24 then 1 / 2 else NoPerm) > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv11(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange11(o_9) ==> (NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> invRecv11(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if b_24 then 1 / 2 else NoPerm)) && (!((invRecv11(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange11(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2(x, !b) -- function_precondition_perms.vpr@229.4--229.22
    
    // -- Check definedness of foo2(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2 might not hold. Fraction (!b ? write : none) might be negative. (function_precondition_perms.vpr@229.11--229.22) [49359]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@229.11--229.22) [49360]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2w
// ==================================================

procedure test2w(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@234.4--234.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@234.11--234.35) [49361]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, b) -- function_precondition_perms.vpr@236.4--236.22
    
    // -- Check definedness of foo2w(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (b ? wildcard : none) might be negative. (function_precondition_perms.vpr@236.11--236.22) [49362]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@236.11--236.22) [49363]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2mcew
// ==================================================

procedure test2mcew(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@242.4--242.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@242.11--242.35) [49364]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, b) -- function_precondition_perms.vpr@244.4--244.22
    
    // -- Check definedness of foo2w(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (b ? wildcard : none) might be negative. (function_precondition_perms.vpr@244.11--244.22) [49365]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@244.11--244.22) [49366]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2qpw
// ==================================================

procedure test2qpw(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none))) -- function_precondition_perms.vpr@249.4--249.63
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@249.11--249.63) [49367]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> qpRange12(y_1) && invRecv12(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (invRecv12(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange12(o_9) ==> invRecv12(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@249.11--249.63) [49368]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> (if b_24 then 1 / 2 else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && (if b_24 then 1 / 2 else NoPerm) > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv12(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange12(o_9) ==> (NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> invRecv12(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if b_24 then 1 / 2 else NoPerm)) && (!((invRecv12(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, b) -- function_precondition_perms.vpr@251.4--251.22
    
    // -- Check definedness of foo2w(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (b ? wildcard : none) might be negative. (function_precondition_perms.vpr@251.11--251.22) [49369]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@251.11--251.22) [49370]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3w
// ==================================================

procedure test3w(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@257.4--257.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@257.11--257.35) [49371]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, !b) -- function_precondition_perms.vpr@260.4--260.23
    
    // -- Check definedness of foo2w(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (!b ? wildcard : none) might be negative. (function_precondition_perms.vpr@260.11--260.23) [49372]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@260.11--260.23) [49373]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3mcew
// ==================================================

procedure test3mcew(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, (b ? 1 / 2 : none)) -- function_precondition_perms.vpr@266.4--266.35
    perm := (if b_24 then 1 / 2 else NoPerm);
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@266.11--266.35) [49374]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, !b) -- function_precondition_perms.vpr@269.4--269.23
    
    // -- Check definedness of foo2w(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (!b ? wildcard : none) might be negative. (function_precondition_perms.vpr@269.11--269.23) [49375]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@269.11--269.23) [49376]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3qpw
// ==================================================

procedure test3qpw(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none))) -- function_precondition_perms.vpr@274.4--274.63
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, (b ? 1 / 2 : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@274.11--274.63) [49377]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> qpRange13(y_1) && invRecv13(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (invRecv13(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (b ? 1 / 2 : none) might be negative. (function_precondition_perms.vpr@274.11--274.63) [49378]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> (if b_24 then 1 / 2 else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && (if b_24 then 1 / 2 else NoPerm) > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv13(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange13(o_9) ==> (NoPerm < (if b_24 then 1 / 2 else NoPerm) ==> invRecv13(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if b_24 then 1 / 2 else NoPerm)) && (!((invRecv13(o_9) == x && NoPerm < (if b_24 then 1 / 2 else NoPerm)) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo2w(x, !b) -- function_precondition_perms.vpr@277.4--277.23
    
    // -- Check definedness of foo2w(x, !b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := (if !b_24 then FullPerm else NoPerm);
        assert {:msg "  Precondition of function foo2w might not hold. Fraction (!b ? wildcard : none) might be negative. (function_precondition_perms.vpr@277.11--277.23) [49379]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function foo2w might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@277.11--277.23) [49380]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo2w(Heap, x, !b_24);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@282.4--282.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@282.11--282.24) [49381]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@284.4--284.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@284.11--284.18) [49382]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4mce
// ==================================================

procedure test4mce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@290.4--290.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@290.11--290.24) [49383]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@292.4--292.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@292.11--292.18) [49384]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4qp
// ==================================================

procedure test4qp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2)) -- function_precondition_perms.vpr@297.4--297.52
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@297.11--297.52) [49385]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < 1 / 2 ==> qpRange14(y_1) && invRecv14(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (invRecv14(o_9) == x && NoPerm < 1 / 2) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@297.11--297.52) [49386]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && 1 / 2 > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv14(o_9) == x && NoPerm < 1 / 2) && qpRange14(o_9) ==> (NoPerm < 1 / 2 ==> invRecv14(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + 1 / 2) && (!((invRecv14(o_9) == x && NoPerm < 1 / 2) && qpRange14(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@299.4--299.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@299.11--299.18) [49387]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4f
// ==================================================

procedure test4f(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@306.4--306.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@306.11--306.18) [49388]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4mcef
// ==================================================

procedure test4mcef(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@314.4--314.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@314.11--314.18) [49389]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4qpf
// ==================================================

procedure test4qpf(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::false ==> acc(y.f, 1 / 2)) -- function_precondition_perms.vpr@319.4--319.51
    
    // -- Check definedness of (forall y: Ref ::false ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- Define Inverse Function
      
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        QPMask[o_9, f_7] == Mask[o_9, f_7]
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo3(x) -- function_precondition_perms.vpr@322.4--322.18
    
    // -- Check definedness of foo3(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo3 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@322.11--322.18) [49391]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo3(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@327.4--327.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@327.11--327.24) [49392]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@329.4--329.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@329.11--329.18) [49393]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@329.11--329.18) [49394]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5mce
// ==================================================

procedure test5mce(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@335.4--335.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@335.11--335.24) [49395]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@337.4--337.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@337.11--337.18) [49396]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@337.11--337.18) [49397]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5qp
// ==================================================

procedure test5qp(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::y == x ==> acc(y.f, 1 / 2)) -- function_precondition_perms.vpr@342.4--342.52
    
    // -- Check definedness of (forall y: Ref ::y == x ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource y.f might not be injective. (function_precondition_perms.vpr@342.11--342.52) [49398]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && y_1 == x) && y_1_1 == x) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && NoPerm < 1 / 2 ==> qpRange16(y_1) && invRecv16(y_1) == y_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (invRecv16(o_9) == x && NoPerm < 1 / 2) && qpRange16(o_9) ==> invRecv16(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@342.11--342.52) [49399]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
      y_1 == x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] }
        y_1 == x && 1 / 2 > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv16(o_9) == x && NoPerm < 1 / 2) && qpRange16(o_9) ==> (NoPerm < 1 / 2 ==> invRecv16(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + 1 / 2) && (!((invRecv16(o_9) == x && NoPerm < 1 / 2) && qpRange16(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@344.4--344.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@344.11--344.18) [49400]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@344.11--344.18) [49401]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5f
// ==================================================

procedure test5f(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@351.4--351.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@351.11--351.18) [49402]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@351.11--351.18) [49403]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5mcef
// ==================================================

procedure test5mcef(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@359.4--359.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@359.11--359.18) [49404]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@359.11--359.18) [49405]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5qpf
// ==================================================

procedure test5qpf(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall y: Ref ::false ==> acc(y.f, 1 / 2)) -- function_precondition_perms.vpr@364.4--364.51
    
    // -- Check definedness of (forall y: Ref ::false ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- Define Inverse Function
      
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        QPMask[o_9, f_7] == Mask[o_9, f_7]
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo4(x) -- function_precondition_perms.vpr@367.4--367.18
    
    // -- Check definedness of foo4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@367.11--367.18) [49407]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function foo4 might not hold. There might be insufficient permission to access x.f (function_precondition_perms.vpr@367.11--367.18) [49408]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 4) -- function_precondition_perms.vpr@372.4--372.24
    perm := 1 / 4;
    assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@372.11--372.24) [49409]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.f == 4 -- function_precondition_perms.vpr@373.11--373.19
    
    // -- Check definedness of x.f == 4
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (function_precondition_perms.vpr@373.11--373.19) [49410]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(x), 1 / 4) -- function_precondition_perms.vpr@374.4--374.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 4;
    assert {:msg "  Folding P(x) might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@374.4--374.23) [49412]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (function_precondition_perms.vpr@374.4--374.23) [49413]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := 1 / 4;
    assert {:msg "  Folding P(x) might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@374.4--374.23) [49414]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(x));
    assume Heap[null, P(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, P(x))) {
      Heap := Heap[null, P#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(x):=freshVersion];
    }
    Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := bar4(x) -- function_precondition_perms.vpr@376.4--376.18
    
    // -- Check definedness of bar4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function bar4 might not hold. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@376.11--376.18) [49415]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function bar4 might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@376.11--376.18) [49416]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function bar4 might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@376.11--376.18) [49417]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Precondition of function bar4 might not hold. Assertion x.f > 0 might not hold. (function_precondition_perms.vpr@376.11--376.18) [49418]"}
          Heap[x, f_7] > 0;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := bar4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6f
// ==================================================

procedure test6f(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 4) -- function_precondition_perms.vpr@381.4--381.24
    perm := 1 / 4;
    assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@381.11--381.24) [49419]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.f == -2 -- function_precondition_perms.vpr@382.11--382.20
    
    // -- Check definedness of x.f == -2
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (function_precondition_perms.vpr@382.11--382.20) [49420]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == -2;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(x), 1 / 4) -- function_precondition_perms.vpr@383.4--383.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 4;
    assert {:msg "  Folding P(x) might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@383.4--383.23) [49422]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (function_precondition_perms.vpr@383.4--383.23) [49423]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := 1 / 4;
    assert {:msg "  Folding P(x) might fail. Fraction 1 / 4 might be negative. (function_precondition_perms.vpr@383.4--383.23) [49424]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(x));
    assume Heap[null, P(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, P(x))) {
      Heap := Heap[null, P#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(x):=freshVersion];
    }
    Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := bar4(x) -- function_precondition_perms.vpr@386.4--386.18
    
    // -- Check definedness of bar4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Precondition of function bar4 might not hold. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@386.11--386.18) [49425]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function bar4 might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@386.11--386.18) [49426]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function bar4 might not hold. There might be insufficient permission to access P(x) (function_precondition_perms.vpr@386.11--386.18) [49427]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Precondition of function bar4 might not hold. Assertion x.f > 0 might not hold. (function_precondition_perms.vpr@386.11--386.18) [49428]"}
          Heap[x, f_7] > 0;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := bar4(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7
// ==================================================

procedure test7(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@392.4--392.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@392.11--392.24) [49429]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo5(x) -- function_precondition_perms.vpr@394.4--394.18
    
    // -- Check definedness of foo5(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function foo5 might not hold. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@394.11--394.18) [49430]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered18(z), neverTriggered18(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5 might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@394.11--394.18) [49431]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> FullPerm > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < FullPerm ==> qpRange18(z) && invRecv18(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv18(o_9) }
            invRecv18(o_9) == x && (NoPerm < FullPerm && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7f
// ==================================================

procedure test7f(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo5(x) -- function_precondition_perms.vpr@401.4--401.18
    
    // -- Check definedness of foo5(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function foo5 might not hold. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@401.11--401.18) [49432]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered19(z), neverTriggered19(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5 might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@401.11--401.18) [49433]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> FullPerm > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < FullPerm ==> qpRange19(z) && invRecv19(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv19(o_9) }
            invRecv19(o_9) == x && (NoPerm < FullPerm && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7p
// ==================================================

procedure test7p(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), 1 / 2) -- function_precondition_perms.vpr@406.4--406.25
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@406.11--406.25) [49434]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo5p(x) -- function_precondition_perms.vpr@408.4--408.19
    
    // -- Check definedness of foo5p(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(P(z), write) is injective
          assert {:msg "  Precondition of function foo5p might not hold. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@408.11--408.19) [49435]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered20(z), neverTriggered20(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5p might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@408.11--408.19) [49436]"}
            (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x ==> FullPerm > NoPerm ==> Mask[null, P(z)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(z), write)
          assume (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x && NoPerm < FullPerm ==> invRecv20(z) == z && qpRange20(z)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv20(x_1_1_1) }
            (invRecv20(x_1_1_1) == x && NoPerm < FullPerm) && qpRange20(x_1_1_1) ==> invRecv20(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5p(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7pf
// ==================================================

procedure test7pf(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo5p(x) -- function_precondition_perms.vpr@415.4--415.19
    
    // -- Check definedness of foo5p(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(P(z), write) is injective
          assert {:msg "  Precondition of function foo5p might not hold. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@415.11--415.19) [49437]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered21(z), neverTriggered21(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5p might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@415.11--415.19) [49438]"}
            (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x ==> FullPerm > NoPerm ==> Mask[null, P(z)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(z), write)
          assume (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x && NoPerm < FullPerm ==> invRecv21(z) == z && qpRange21(z)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv21(x_1_1_1) }
            (invRecv21(x_1_1_1) == x && NoPerm < FullPerm) && qpRange21(x_1_1_1) ==> invRecv21(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5p(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8
// ==================================================

procedure test8(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- function_precondition_perms.vpr@420.4--420.24
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@420.11--420.24) [49439]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo5w(x) -- function_precondition_perms.vpr@422.4--422.19
    
    // -- Check definedness of foo5w(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wild card assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function foo5w might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@422.11--422.19) [49440]"}
          (forall z: Ref ::
          
          z == x ==> Mask[z, f_7] > NoPerm
        );
        assume (forall z: Ref ::
          
          z == x ==> wildcard < Mask[z, f_7]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function foo5w might not hold. Fraction wildcard might be negative. (function_precondition_perms.vpr@422.11--422.19) [49441]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && dummyFunction(Heap[z, f_7]) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function foo5w might not hold. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@422.11--422.19) [49442]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered22(z), neverTriggered22(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5w might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@422.11--422.19) [49443]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> wildcard > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < wildcard ==> qpRange22(z) && invRecv22(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv22(o_9) }
            invRecv22(o_9) == x && (NoPerm < wildcard && qpRange22(o_9)) ==> invRecv22(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5w(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8f
// ==================================================

procedure test8f(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo5w(x) -- function_precondition_perms.vpr@429.4--429.19
    
    // -- Check definedness of foo5w(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wild card assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function foo5w might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@429.11--429.19) [49444]"}
          (forall z: Ref ::
          
          z == x ==> Mask[z, f_7] > NoPerm
        );
        assume (forall z: Ref ::
          
          z == x ==> wildcard < Mask[z, f_7]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function foo5w might not hold. Fraction wildcard might be negative. (function_precondition_perms.vpr@429.11--429.19) [49445]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && dummyFunction(Heap[z, f_7]) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function foo5w might not hold. Quantified resource z.f might not be injective. (function_precondition_perms.vpr@429.11--429.19) [49446]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered23(z), neverTriggered23(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5w might not hold. There might be insufficient permission to access z.f (function_precondition_perms.vpr@429.11--429.19) [49447]"}
            (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x ==> wildcard > NoPerm ==> Mask[z, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z: Ref ::
            { Heap[z, f_7] } { QPMask[z, f_7] }
            z == x && NoPerm < wildcard ==> qpRange23(z) && invRecv23(z) == z
          );
          assume (forall o_9: Ref ::
            { invRecv23(o_9) }
            invRecv23(o_9) == x && (NoPerm < wildcard && qpRange23(o_9)) ==> invRecv23(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5w(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8p
// ==================================================

procedure test8p(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), 1 / 2) -- function_precondition_perms.vpr@434.4--434.25
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (function_precondition_perms.vpr@434.11--434.25) [49448]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := foo5pw(x) -- function_precondition_perms.vpr@436.4--436.20
    
    // -- Check definedness of foo5pw(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function foo5pw might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@436.11--436.20) [49449]"}
          (forall z: Ref ::
          
          z == x ==> Mask[null, P(z)] > NoPerm
        );
        assume (forall z: Ref ::
          
          z == x ==> wildcard < Mask[null, P(z)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function foo5pw might not hold. Fraction wildcard might be negative. (function_precondition_perms.vpr@436.11--436.20) [49450]"}
            (forall x_1_1_1: Ref ::
            { invRecv24(x_1_1_1) }
            invRecv24(x_1_1_1) == x && qpRange24(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(P(z), wildcard) is injective
          assert {:msg "  Precondition of function foo5pw might not hold. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@436.11--436.20) [49451]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered24(z), neverTriggered24(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5pw might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@436.11--436.20) [49452]"}
            (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x ==> wildcard > NoPerm ==> Mask[null, P(z)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(z), wildcard)
          assume (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x && NoPerm < wildcard ==> invRecv24(z) == z && qpRange24(z)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv24(x_1_1_1) }
            (invRecv24(x_1_1_1) == x && NoPerm < wildcard) && qpRange24(x_1_1_1) ==> invRecv24(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5pw(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8pf
// ==================================================

procedure test8pf(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleHeap: HeapType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: tmp := foo5pw(x) -- function_precondition_perms.vpr@443.4--443.20
    
    // -- Check definedness of foo5pw(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        // wildcard assumptions
        havoc wildcard;
        assert {:msg "  Precondition of function foo5pw might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@443.11--443.20) [49453]"}
          (forall z: Ref ::
          
          z == x ==> Mask[null, P(z)] > NoPerm
        );
        assume (forall z: Ref ::
          
          z == x ==> wildcard < Mask[null, P(z)]
        );
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function foo5pw might not hold. Fraction wildcard might be negative. (function_precondition_perms.vpr@443.11--443.20) [49454]"}
            (forall x_1_1_1: Ref ::
            { invRecv25(x_1_1_1) }
            invRecv25(x_1_1_1) == x && qpRange25(x_1_1_1) ==> wildcard >= NoPerm
          );
        
        // -- check if receiver acc(P(z), wildcard) is injective
          assert {:msg "  Precondition of function foo5pw might not hold. Quantified resource P(z) might not be injective. (function_precondition_perms.vpr@443.11--443.20) [49455]"}
            (forall z: Ref, z_20: Ref ::
            { neverTriggered25(z), neverTriggered25(z_20) }
            (((z != z_20 && z == x) && z_20 == x) && NoPerm < wildcard) && NoPerm < wildcard ==> z != z_20
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo5pw might not hold. There might be insufficient permission to access P(z) (function_precondition_perms.vpr@443.11--443.20) [49456]"}
            (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x ==> wildcard > NoPerm ==> Mask[null, P(z)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(P(z), wildcard)
          assume (forall z: Ref ::
            { Heap[null, P(z)] } { Mask[null, P(z)] }
            z == x && NoPerm < wildcard ==> invRecv25(z) == z && qpRange25(z)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv25(x_1_1_1) }
            (invRecv25(x_1_1_1) == x && NoPerm < wildcard) && qpRange25(x_1_1_1) ==> invRecv25(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp := foo5pw(Heap, x);
    assume state(Heap, Mask);
}