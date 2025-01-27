// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:20:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0648.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0648-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_16: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_16, f_10] }
  Heap[o_16, $allocated] ==> Heap[Heap[o_16, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_17, f_25) ==> Heap[o_17, f_25] == ExhaleHeap[o_17, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_17, $allocated] ==> ExhaleHeap[o_17, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_16: Ref, f_2: (Field A B), v: B ::
  { Heap[o_16, f_2:=v] }
  succHeap(Heap, Heap[o_16, f_2:=v])
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

function  neverTriggered1(i_9_1: int): bool;
function  neverTriggered2(i_11_1: int): bool;
function  neverTriggered3(i_12_1: int): bool;
function  neverTriggered4(i_4_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: correctness_invar
// - height 0: correctness_upto
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
// Translation of domain array
// ==================================================

// The type for domain array
type arrayDomainType;

// Translation of domain function loc
function  loc(a_3: arrayDomainType, i_6: int): Ref;

// Translation of domain function len
function  len(a_3: arrayDomainType): int;

// Translation of domain function loc_inv_1
function  loc_inv_1(loc: Ref): arrayDomainType;

// Translation of domain function loc_inv_2
function  loc_inv_2(loc: Ref): int;

// Translation of anonymous domain axiom
axiom (forall a_2: arrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (loc_inv_1((loc(a_2, i): Ref)): arrayDomainType) == a_2 && (loc_inv_2((loc(a_2, i): Ref)): int) == i
);

// Translation of anonymous domain axiom
axiom (forall a_2: arrayDomainType ::
  { (len(a_2): int) }
  (len(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique vint_1: Field NormalField int;
axiom !IsPredicateField(vint_1);
axiom !IsWandField(vint_1);

// ==================================================
// Translation of function correctness_upto
// ==================================================

// Uninterpreted function definitions
function  correctness_upto(Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int): bool;
function  correctness_upto'(Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int): bool;
axiom (forall Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { correctness_upto(Heap, parent_1, left, root) }
  correctness_upto(Heap, parent_1, left, root) == correctness_upto'(Heap, parent_1, left, root) && dummyFunction(correctness_upto#triggerStateless(parent_1, left, root))
);
axiom (forall Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { correctness_upto'(Heap, parent_1, left, root) }
  dummyFunction(correctness_upto#triggerStateless(parent_1, left, root))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { state(Heap, Mask), correctness_upto(Heap, parent_1, left, root) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> correctness_invar(Heap, left) ==> correctness_upto(Heap, parent_1, left, root) == ((forall i_2: int ::
    { Heap[(loc(parent_1, i_2): Ref), vint_1] }
    0 <= i_2 && i_2 < (len(parent_1): int) ==> Heap[(loc(parent_1, i_2): Ref), vint_1] == 0
  ) && (forall i_3_2: int ::
    { Heap[(loc(parent_1, i_3_2): Ref), vint_1] }
    0 <= i_3_2 && i_3_2 < (len(parent_1): int) ==> Heap[(loc(parent_1, i_3_2): Ref), vint_1] == 0
  ))
);

// Framing axioms
function  correctness_upto#frame(frame: FrameType, parent_1: arrayDomainType, left: arrayDomainType, root: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { state(Heap, Mask), correctness_upto'(Heap, parent_1, left, root) }
  state(Heap, Mask) ==> correctness_upto'(Heap, parent_1, left, root) == correctness_upto#frame(CombineFrames(FrameFragment(correctness_upto#condqp1(Heap, parent_1, left, root)), FrameFragment(correctness_upto#condqp2(Heap, parent_1, left, root))), parent_1, left, root)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(left, i) } 0 <= i && i < len(left) ==> acc(loc(left, i).int, 1 / 2)) in function correctness_upto
// ==================================================

function  correctness_upto#condqp1(Heap: HeapType, parent_1_1: arrayDomainType, left_1_1: arrayDomainType, root_1_1: int): int;
function  sk_correctness_upto#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) < (len(left): int)) && NoPerm < 1 / 2 <==> (0 <= sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) < (len(left): int)) && NoPerm < 1 / 2) && ((0 <= sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root)) < (len(left): int)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(left, sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root))): Ref), vint_1] == Heap1Heap[(loc(left, sk_correctness_upto#condqp1(correctness_upto#condqp1(Heap2Heap, parent_1, left, root), correctness_upto#condqp1(Heap1Heap, parent_1, left, root))): Ref), vint_1]) ==> correctness_upto#condqp1(Heap2Heap, parent_1, left, root) == correctness_upto#condqp1(Heap1Heap, parent_1, left, root)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(parent, i) } 0 <= i && i < len(parent) ==> acc(loc(parent, i).int, 1 / 2)) in function correctness_upto
// ==================================================

function  correctness_upto#condqp2(Heap: HeapType, parent_1_1: arrayDomainType, left_1_1: arrayDomainType, root_1_1: int): int;
function  sk_correctness_upto#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, parent_1: arrayDomainType, left: arrayDomainType, root: int ::
  { correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) < (len(parent_1): int)) && NoPerm < 1 / 2 <==> (0 <= sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) < (len(parent_1): int)) && NoPerm < 1 / 2) && ((0 <= sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) && sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root)) < (len(parent_1): int)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(parent_1, sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root))): Ref), vint_1] == Heap1Heap[(loc(parent_1, sk_correctness_upto#condqp2(correctness_upto#condqp2(Heap2Heap, parent_1, left, root), correctness_upto#condqp2(Heap1Heap, parent_1, left, root))): Ref), vint_1]) ==> correctness_upto#condqp2(Heap2Heap, parent_1, left, root) == correctness_upto#condqp2(Heap1Heap, parent_1, left, root)
);

// Trigger function (controlling recursive postconditions)
function  correctness_upto#trigger(frame: FrameType, parent_1: arrayDomainType, left: arrayDomainType, root: int): bool;

// State-independent trigger function
function  correctness_upto#triggerStateless(parent_1: arrayDomainType, left: arrayDomainType, root: int): bool;

// Check contract well-formedness and postcondition
procedure correctness_upto#definedness(parent_1: arrayDomainType, left: arrayDomainType, root: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_4: int;
  var i_14: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int :: { loc(left, i) } 0 <= i && i < len(left) ==> acc(loc(left, i).int, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(left, i).int might not be injective. (0648.vpr@22.13--22.84) [74065]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < (len(left): int))) && (0 <= i_9_2 && i_9_2 < (len(left): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(left, i_9_1): Ref) != (loc(left, i_9_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { (loc(left, i_9_1): Ref) } { (loc(left, i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (len(left): int)) && NoPerm < 1 / 2 ==> qpRange1((loc(left, i_9_1): Ref)) && invRecv1((loc(left, i_9_1): Ref)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange1(o_9) ==> (loc(left, invRecv1(o_9)): Ref) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0648.vpr@22.13--22.84) [74066]"}
      (forall i_9_1: int ::
      { (loc(left, i_9_1): Ref) } { (loc(left, i_9_1): Ref) }
      0 <= i_9_1 && i_9_1 < (len(left): int) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { (loc(left, i_9_1): Ref) } { (loc(left, i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (len(left): int)) && 1 / 2 > NoPerm ==> (loc(left, i_9_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, vint_1] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> (loc(left, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, vint_1] == Mask[o_9, vint_1] + 1 / 2) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, vint_1] == Mask[o_9, vint_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != vint_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(parent, i) } 0 <= i && i < len(parent) ==> acc(loc(parent, i).int, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(parent, i).int might not be injective. (0648.vpr@23.13--23.88) [74067]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < (len(parent_1): int))) && (0 <= i_11_2 && i_11_2 < (len(parent_1): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(parent_1, i_11_1): Ref) != (loc(parent_1, i_11_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { (loc(parent_1, i_11_1): Ref) } { (loc(parent_1, i_11_1): Ref) }
        (0 <= i_11_1 && i_11_1 < (len(parent_1): int)) && NoPerm < 1 / 2 ==> qpRange2((loc(parent_1, i_11_1): Ref)) && invRecv2((loc(parent_1, i_11_1): Ref)) == i_11_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(parent_1): int)) && NoPerm < 1 / 2) && qpRange2(o_9) ==> (loc(parent_1, invRecv2(o_9)): Ref) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0648.vpr@23.13--23.88) [74068]"}
      (forall i_11_1: int ::
      { (loc(parent_1, i_11_1): Ref) } { (loc(parent_1, i_11_1): Ref) }
      0 <= i_11_1 && i_11_1 < (len(parent_1): int) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { (loc(parent_1, i_11_1): Ref) } { (loc(parent_1, i_11_1): Ref) }
        (0 <= i_11_1 && i_11_1 < (len(parent_1): int)) && 1 / 2 > NoPerm ==> (loc(parent_1, i_11_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, vint_1] }
        (((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(parent_1): int)) && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> (loc(parent_1, invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, vint_1] == Mask[o_9, vint_1] + 1 / 2) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(parent_1): int)) && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, vint_1] == Mask[o_9, vint_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != vint_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of correctness_invar(left)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function correctness_invar might not hold. Fraction 1 / 2 might be negative. (0648.vpr@24.12--24.35) [74069]"}
            (forall i_12_1: int ::
            { (loc(left, i_12_1): Ref) } { Heap[(loc(left, i_12_1): Ref), vint_1] }
            (0 <= i_12_1 && i_12_1 < (len(left): int)) && dummyFunction(Heap[(loc(left, i_12_1): Ref), vint_1]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver loc(left, i) is injective
          assert {:msg "  Precondition of function correctness_invar might not hold. Quantified resource loc(left, i).int might not be injective. (0648.vpr@24.12--24.35) [74070]"}
            (forall i_12_1: int, i_12_2: int ::
            { neverTriggered3(i_12_1), neverTriggered3(i_12_2) }
            (((i_12_1 != i_12_2 && (0 <= i_12_1 && i_12_1 < (len(left): int))) && (0 <= i_12_2 && i_12_2 < (len(left): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(left, i_12_1): Ref) != (loc(left, i_12_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function correctness_invar might not hold. There might be insufficient permission to access loc(left, i).int (0648.vpr@24.12--24.35) [74071]"}
            (forall i_12_1: int ::
            { (loc(left, i_12_1): Ref) } { Heap[(loc(left, i_12_1): Ref), vint_1] }
            0 <= i_12_1 && i_12_1 < (len(left): int) ==> 1 / 2 > NoPerm ==> Mask[(loc(left, i_12_1): Ref), vint_1] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(left, i)
          assume (forall i_12_1: int ::
            { (loc(left, i_12_1): Ref) } { Heap[(loc(left, i_12_1): Ref), vint_1] }
            (0 <= i_12_1 && i_12_1 < (len(left): int)) && NoPerm < 1 / 2 ==> qpRange3((loc(left, i_12_1): Ref)) && invRecv3((loc(left, i_12_1): Ref)) == i_12_1
          );
          assume (forall o_9: Ref ::
            { invRecv3(o_9) }
            (0 <= invRecv3(o_9) && invRecv3(o_9) < (len(left): int)) && (NoPerm < 1 / 2 && qpRange3(o_9)) ==> (loc(left, invRecv3(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume correctness_invar(Heap, left);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall i: Int :: { loc(parent, i).int } 0 <= i && i < len(parent) ==> loc(parent, i).int == 0) && (forall i: Int :: { loc(parent, i).int } 0 <= i && i < len(parent) ==> loc(parent, i).int == 0)
      if (*) {
        if (0 <= i_4 && i_4 < (len(parent_1): int)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(parent, i).int (0648.vpr@21.1--28.2) [74072]"}
            HasDirectPerm(Mask, (loc(parent_1, i_4): Ref), vint_1);
        }
        assume false;
      }
      if ((forall i_14_1: int ::
        { Heap[(loc(parent_1, i_14_1): Ref), vint_1] }
        0 <= i_14_1 && i_14_1 < (len(parent_1): int) ==> Heap[(loc(parent_1, i_14_1): Ref), vint_1] == 0
      )) {
        if (*) {
          if (0 <= i_14 && i_14 < (len(parent_1): int)) {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(parent, i).int (0648.vpr@21.1--28.2) [74073]"}
              HasDirectPerm(Mask, (loc(parent_1, i_14): Ref), vint_1);
          }
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (forall i_16_1: int ::
      { Heap[(loc(parent_1, i_16_1): Ref), vint_1] }
      0 <= i_16_1 && i_16_1 < (len(parent_1): int) ==> Heap[(loc(parent_1, i_16_1): Ref), vint_1] == 0
    ) && (forall i_17_1: int ::
      { Heap[(loc(parent_1, i_17_1): Ref), vint_1] }
      0 <= i_17_1 && i_17_1 < (len(parent_1): int) ==> Heap[(loc(parent_1, i_17_1): Ref), vint_1] == 0
    );
}

// ==================================================
// Translation of function correctness_invar
// ==================================================

// Uninterpreted function definitions
function  correctness_invar(Heap: HeapType, left: arrayDomainType): bool;
function  correctness_invar'(Heap: HeapType, left: arrayDomainType): bool;
axiom (forall Heap: HeapType, left: arrayDomainType ::
  { correctness_invar(Heap, left) }
  correctness_invar(Heap, left) == correctness_invar'(Heap, left) && dummyFunction(correctness_invar#triggerStateless(left))
);
axiom (forall Heap: HeapType, left: arrayDomainType ::
  { correctness_invar'(Heap, left) }
  dummyFunction(correctness_invar#triggerStateless(left))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, left: arrayDomainType ::
  { state(Heap, Mask), correctness_invar(Heap, left) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> correctness_invar(Heap, left)
);

// Framing axioms
function  correctness_invar#frame(frame: FrameType, left: arrayDomainType): bool;
axiom (forall Heap: HeapType, Mask: MaskType, left: arrayDomainType ::
  { state(Heap, Mask), correctness_invar'(Heap, left) }
  state(Heap, Mask) ==> correctness_invar'(Heap, left) == correctness_invar#frame(FrameFragment(correctness_invar#condqp3(Heap, left)), left)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(left, i).int } 0 <= i && i < len(left) ==> acc(loc(left, i).int, 1 / 2)) in function correctness_invar
// ==================================================

function  correctness_invar#condqp3(Heap: HeapType, left_1_1: arrayDomainType): int;
function  sk_correctness_invar#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, left: arrayDomainType ::
  { correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) && sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) < (len(left): int)) && NoPerm < 1 / 2 <==> (0 <= sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) && sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) < (len(left): int)) && NoPerm < 1 / 2) && ((0 <= sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) && sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left)) < (len(left): int)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(left, sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left))): Ref), vint_1] == Heap1Heap[(loc(left, sk_correctness_invar#condqp3(correctness_invar#condqp3(Heap2Heap, left), correctness_invar#condqp3(Heap1Heap, left))): Ref), vint_1]) ==> correctness_invar#condqp3(Heap2Heap, left) == correctness_invar#condqp3(Heap1Heap, left)
);

// Trigger function (controlling recursive postconditions)
function  correctness_invar#trigger(frame: FrameType, left: arrayDomainType): bool;

// State-independent trigger function
function  correctness_invar#triggerStateless(left: arrayDomainType): bool;

// Check contract well-formedness and postcondition
procedure correctness_invar#definedness(left: arrayDomainType) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int :: { loc(left, i).int } 0 <= i && i < len(left) ==> acc(loc(left, i).int, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(left, i).int might not be injective. (0648.vpr@31.13--31.107) [74074]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len(left): int))) && (0 <= i_4_2 && i_4_2 < (len(left): int))) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(left, i_4_1): Ref) != (loc(left, i_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { (loc(left, i_4_1): Ref) } { Heap[(loc(left, i_4_1): Ref), vint_1] }
        (0 <= i_4_1 && i_4_1 < (len(left): int)) && NoPerm < 1 / 2 ==> qpRange4((loc(left, i_4_1): Ref)) && invRecv4((loc(left, i_4_1): Ref)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange4(o_9) ==> (loc(left, invRecv4(o_9)): Ref) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0648.vpr@31.13--31.107) [74075]"}
      (forall i_4_1: int ::
      { (loc(left, i_4_1): Ref) } { Heap[(loc(left, i_4_1): Ref), vint_1] }
      0 <= i_4_1 && i_4_1 < (len(left): int) ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { (loc(left, i_4_1): Ref) } { Heap[(loc(left, i_4_1): Ref), vint_1] }
        (0 <= i_4_1 && i_4_1 < (len(left): int)) && 1 / 2 > NoPerm ==> (loc(left, i_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, vint_1] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange4(o_9) ==> (NoPerm < 1 / 2 ==> (loc(left, invRecv4(o_9)): Ref) == o_9) && QPMask[o_9, vint_1] == Mask[o_9, vint_1] + 1 / 2) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(left): int)) && NoPerm < 1 / 2) && qpRange4(o_9)) ==> QPMask[o_9, vint_1] == Mask[o_9, vint_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != vint_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}