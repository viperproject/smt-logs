// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:29:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/parallel-array-replace/parallel-array-replace-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_17: Ref, f_25: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_17, f_25] }
  Heap[o_17, $allocated] ==> Heap[Heap[o_17, f_25], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref, f_65: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, f_65] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_47, f_65) ==> Heap[o_47, f_65] == ExhaleHeap[o_47, f_65]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_65: (Field A B) ::
    { ExhaleHeap[o2_34, f_65] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_65] ==> Heap[o2_34, f_65] == ExhaleHeap[o2_34, f_65]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_47, $allocated] ==> ExhaleHeap[o_47, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_17: Ref, f_19: (Field A B), v: B ::
  { Heap[o_17, f_19:=v] }
  succHeap(Heap, Heap[o_17, f_19:=v])
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

function  neverTriggered1(i_3_2: int): bool;
function  neverTriggered2(i_1: int): bool;
function  neverTriggered3(i$0_1: int): bool;
function  neverTriggered4(i$0_2_1: int): bool;
function  neverTriggered5(i$2_1: int): bool;
function  neverTriggered6(i$3_1: int): bool;
function  neverTriggered7(i$4_1: int): bool;
function  neverTriggered8(i$6_1: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_2: int): bool;
function  neverTriggered11(i_3_2: int): bool;
function  neverTriggered12(i$0: int): bool;
function  neverTriggered13(i_4_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: Contains
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_6: int): Ref;

// Translation of domain function len
function  len(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first_1(r_4: Ref): ArrayDomainType;

// Translation of domain function second
function  second_1(r_4: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first_1((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second_1((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (len(a_2): int) }
  (len(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function Contains
// ==================================================

// Uninterpreted function definitions
function  Contains(Heap: HeapType, a_2: ArrayDomainType, v_2: int, before_1: int): bool;
function  Contains'(Heap: HeapType, a_2: ArrayDomainType, v_2: int, before_1: int): bool;
axiom (forall Heap: HeapType, a_2: ArrayDomainType, v_2: int, before_1: int ::
  { Contains(Heap, a_2, v_2, before_1) }
  Contains(Heap, a_2, v_2, before_1) == Contains'(Heap, a_2, v_2, before_1) && dummyFunction(Contains#triggerStateless(a_2, v_2, before_1))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType, v_2: int, before_1: int ::
  { Contains'(Heap, a_2, v_2, before_1) }
  dummyFunction(Contains#triggerStateless(a_2, v_2, before_1))
);

// Framing axioms
function  Contains#frame(frame: FrameType, a_2: ArrayDomainType, v_2: int, before_1: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, v_2: int, before_1: int ::
  { state(Heap, Mask), Contains'(Heap, a_2, v_2, before_1) }
  state(Heap, Mask) ==> Contains'(Heap, a_2, v_2, before_1) == Contains#frame(FrameFragment(Contains#condqp1(Heap, a_2, v_2, before_1)), a_2, v_2, before_1)
);
// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(a, i) } 0 <= i && i < before ==> acc(loc(a, i).val, write)) in function Contains
// ==================================================

function  Contains#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType, v_1_1_1: int, before_1_1: int): int;
function  sk_Contains#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType, v_2: int, before_1: int ::
  { Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) && sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) < before_1) && NoPerm < FullPerm <==> (0 <= sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) && sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) < before_1) && NoPerm < FullPerm) && ((0 <= sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) && sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1)) < before_1) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1))): Ref), val] == Heap1Heap[(loc(a_2, sk_Contains#condqp1(Contains#condqp1(Heap2Heap, a_2, v_2, before_1), Contains#condqp1(Heap1Heap, a_2, v_2, before_1))): Ref), val]) ==> Contains#condqp1(Heap2Heap, a_2, v_2, before_1) == Contains#condqp1(Heap1Heap, a_2, v_2, before_1)
);

// Trigger function (controlling recursive postconditions)
function  Contains#trigger(frame: FrameType, a_2: ArrayDomainType, v_2: int, before_1: int): bool;

// State-independent trigger function
function  Contains#triggerStateless(a_2: ArrayDomainType, v_2: int, before_1: int): bool;

// Check contract well-formedness and postcondition
procedure Contains#definedness(a_2: ArrayDomainType, v_2: int, before_1: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= before_1;
    assume before_1 <= (len(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < before ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@54.12--54.72) [104783]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < before_1)) && (0 <= i_3_3 && i_3_3 < before_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        (0 <= i_3_2 && i_3_2 < before_1) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_3_2): Ref)) && invRecv1((loc(a_2, i_3_2): Ref)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((0 <= invRecv1(o_9) && invRecv1(o_9) < before_1) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        0 <= i_3_2 && i_3_2 < before_1 ==> (loc(a_2, i_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv1(o_9) && invRecv1(o_9) < before_1) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < before_1) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Replace
// ==================================================

procedure Replace(a_2: ArrayDomainType, left: int, right_2: int, from_1: int, to_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i$1_6: int;
  var mid: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i$5: int;
  var i$7: int;
  var i$1_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= left;
    assume left < right_2;
    assume right_2 <= (len(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@14.12--14.32) [104784]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (left <= i_1 && i_1 < right_2)) && (left <= i_1_1 && i_1_1 < right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (left <= i_1 && i_1 < right_2) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i_1): Ref)) && invRecv2((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((left <= invRecv2(o_9) && invRecv2(o_9) < right_2) && NoPerm < FullPerm) && qpRange2(o_9) ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        left <= i_1 && i_1 < right_2 ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv2(o_9) && invRecv2(o_9) < right_2) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv2(o_9) && invRecv2(o_9) < right_2) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall i$0: Int :: { loc(a, i$0) } left <= i$0 && i$0 < right ==> acc(loc(a, i$0).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i$0).val might not be injective. (parallel-array-replace.vpr@15.12--15.33) [104785]"}
      (forall i$0_1: int, i$0_1_2: int ::
      
      (((i$0_1 != i$0_1_2 && (left <= i$0_1 && i$0_1 < right_2)) && (left <= i$0_1_2 && i$0_1_2 < right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_1): Ref) != (loc(a_2, i$0_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { (loc(a_2, i$0_1): Ref) }
        (left <= i$0_1 && i$0_1 < right_2) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i$0_1): Ref)) && invRecv3((loc(a_2, i$0_1): Ref)) == i$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((left <= invRecv3(o_9) && invRecv3(o_9) < right_2) && NoPerm < FullPerm) && qpRange3(o_9) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { (loc(a_2, i$0_1): Ref) }
        left <= i$0_1 && i$0_1 < right_2 ==> (loc(a_2, i$0_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv3(o_9) && invRecv3(o_9) < right_2) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((left <= invRecv3(o_9) && invRecv3(o_9) < right_2) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i$1: Int :: { old(loc(a, i$1)) } left <= i$1 && i$1 < right ==> (old(loc(a, i$1).val == from) ? loc(a, i$1).val == to : loc(a, i$1).val == old(loc(a, i$1).val)))
      if (*) {
        if (left <= i$1_6 && i$1_6 < right_2) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i$1).val (parallel-array-replace.vpr@16.12--16.33) [104786]"}
            HasDirectPerm(oldMask, (loc(a_2, i$1_6): Ref), val);
          if (oldHeap[(loc(a_2, i$1_6): Ref), val] == from_1) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i$1).val (parallel-array-replace.vpr@16.12--16.33) [104787]"}
              HasDirectPerm(PostMask, (loc(a_2, i$1_6): Ref), val);
          } else {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i$1).val (parallel-array-replace.vpr@16.12--16.33) [104788]"}
              HasDirectPerm(PostMask, (loc(a_2, i$1_6): Ref), val);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i$1).val (parallel-array-replace.vpr@16.12--16.33) [104789]"}
              HasDirectPerm(oldMask, (loc(a_2, i$1_6): Ref), val);
          }
        }
        assume false;
      }
    assume (forall i$1_1: int ::
      { (loc(a_2, i$1_1): Ref) }
      left <= i$1_1 && i$1_1 < right_2 ==> (if oldHeap[(loc(a_2, i$1_1): Ref), val] == from_1 then PostHeap[(loc(a_2, i$1_1): Ref), val] == to_1 else PostHeap[(loc(a_2, i$1_1): Ref), val] == oldHeap[(loc(a_2, i$1_1): Ref), val])
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (right - left <= 1) -- parallel-array-replace.vpr@18.3--40.4
    if (right_2 - left <= 1) {
      
      // -- Translating statement: if (loc(a, left).val == from) -- parallel-array-replace.vpr@19.5--21.6
        
        // -- Check definedness of loc(a, left).val == from
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, left).val (parallel-array-replace.vpr@19.8--19.32) [104790]"}
            HasDirectPerm(Mask, (loc(a_2, left): Ref), val);
        if (Heap[(loc(a_2, left): Ref), val] == from_1) {
          
          // -- Translating statement: loc(a, left).val := to -- parallel-array-replace.vpr@20.7--20.29
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, left).val (parallel-array-replace.vpr@20.7--20.29) [104791]"}
              FullPerm == Mask[(loc(a_2, left): Ref), val];
            Heap := Heap[(loc(a_2, left): Ref), val:=to_1];
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: mid := left + (right - left) \ 2 -- parallel-array-replace.vpr@23.5--23.46
        mid := left + (right_2 - left) div 2;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale 0 <= left && (left < mid && mid <= len(a)) -- parallel-array-replace.vpr@26.5--26.30
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion 0 <= left might not hold. (parallel-array-replace.vpr@26.12--26.30) [104792]"}
          0 <= left;
        assert {:msg "  Exhale might fail. Assertion left < mid might not hold. (parallel-array-replace.vpr@26.12--26.30) [104793]"}
          left < mid;
        assert {:msg "  Exhale might fail. Assertion mid <= len(a) might not hold. (parallel-array-replace.vpr@26.12--26.30) [104794]"}
          mid <= (len(a_2): int);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i$2: Int ::
  //     { loc(a, i$2) }
  //     left <= i$2 && i$2 < mid ==> acc(loc(a, i$2).val, write)) -- parallel-array-replace.vpr@27.5--27.30
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i$2: Int :: { loc(a, i$2) } left <= i$2 && i$2 < mid ==> acc(loc(a, i$2).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i$2) is injective
          assert {:msg "  Exhale might fail. Quantified resource loc(a, i$2).val might not be injective. (parallel-array-replace.vpr@27.12--27.30) [104796]"}
            (forall i$2_1: int, i$2_1_1: int ::
            { neverTriggered5(i$2_1), neverTriggered5(i$2_1_1) }
            (((i$2_1 != i$2_1_1 && (left <= i$2_1 && i$2_1 < mid)) && (left <= i$2_1_1 && i$2_1_1 < mid)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$2_1): Ref) != (loc(a_2, i$2_1_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access loc(a, i$2).val (parallel-array-replace.vpr@27.12--27.30) [104797]"}
            (forall i$2_1: int ::
            { (loc(a_2, i$2_1): Ref) } { (loc(a_2, i$2_1): Ref) }
            left <= i$2_1 && i$2_1 < mid ==> Mask[(loc(a_2, i$2_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i$2)
          assume (forall i$2_1: int ::
            { (loc(a_2, i$2_1): Ref) } { (loc(a_2, i$2_1): Ref) }
            (left <= i$2_1 && i$2_1 < mid) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i$2_1): Ref)) && invRecv5((loc(a_2, i$2_1): Ref)) == i$2_1
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            (left <= invRecv5(o_9) && invRecv5(o_9) < mid) && (NoPerm < FullPerm && qpRange5(o_9)) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((left <= invRecv5(o_9) && invRecv5(o_9) < mid) && (NoPerm < FullPerm && qpRange5(o_9)) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv5(o_9) && invRecv5(o_9) < mid) && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale 0 <= mid && (mid < right && right <= len(a)) -- parallel-array-replace.vpr@30.5--30.31
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion 0 <= mid might not hold. (parallel-array-replace.vpr@30.12--30.31) [104798]"}
          0 <= mid;
        assert {:msg "  Exhale might fail. Assertion mid < right might not hold. (parallel-array-replace.vpr@30.12--30.31) [104799]"}
          mid < right_2;
        assert {:msg "  Exhale might fail. Assertion right <= len(a) might not hold. (parallel-array-replace.vpr@30.12--30.31) [104800]"}
          right_2 <= (len(a_2): int);
        assume state(Heap, Mask);
      
      // -- Translating statement: exhale (forall i$3: Int ::
  //     { loc(a, i$3) }
  //     mid <= i$3 && i$3 < right ==> acc(loc(a, i$3).val, write)) -- parallel-array-replace.vpr@31.5--31.31
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall i$3: Int :: { loc(a, i$3) } mid <= i$3 && i$3 < right ==> acc(loc(a, i$3).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i$3) is injective
          assert {:msg "  Exhale might fail. Quantified resource loc(a, i$3).val might not be injective. (parallel-array-replace.vpr@31.12--31.31) [104802]"}
            (forall i$3_1: int, i$3_1_1: int ::
            { neverTriggered6(i$3_1), neverTriggered6(i$3_1_1) }
            (((i$3_1 != i$3_1_1 && (mid <= i$3_1 && i$3_1 < right_2)) && (mid <= i$3_1_1 && i$3_1_1 < right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$3_1): Ref) != (loc(a_2, i$3_1_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Exhale might fail. There might be insufficient permission to access loc(a, i$3).val (parallel-array-replace.vpr@31.12--31.31) [104803]"}
            (forall i$3_1: int ::
            { (loc(a_2, i$3_1): Ref) } { (loc(a_2, i$3_1): Ref) }
            mid <= i$3_1 && i$3_1 < right_2 ==> Mask[(loc(a_2, i$3_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i$3)
          assume (forall i$3_1: int ::
            { (loc(a_2, i$3_1): Ref) } { (loc(a_2, i$3_1): Ref) }
            (mid <= i$3_1 && i$3_1 < right_2) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i$3_1): Ref)) && invRecv6((loc(a_2, i$3_1): Ref)) == i$3_1
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            (mid <= invRecv6(o_9) && invRecv6(o_9) < right_2) && (NoPerm < FullPerm && qpRange6(o_9)) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((mid <= invRecv6(o_9) && invRecv6(o_9) < right_2) && (NoPerm < FullPerm && qpRange6(o_9)) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((mid <= invRecv6(o_9) && invRecv6(o_9) < right_2) && (NoPerm < FullPerm && qpRange6(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i$4: Int ::
  //     { loc(a, i$4) }
  //     left <= i$4 && i$4 < mid ==> acc(loc(a, i$4).val, write)) &&
  //   true -- parallel-array-replace.vpr@34.5--34.31
        
        // -- Check definedness of (forall i$4: Int :: { loc(a, i$4) } left <= i$4 && i$4 < mid ==> acc(loc(a, i$4).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i$4).val might not be injective. (parallel-array-replace.vpr@34.12--34.31) [104804]"}
          (forall i$4_1: int, i$4_1_1: int ::
          
          (((i$4_1 != i$4_1_1 && (left <= i$4_1 && i$4_1 < mid)) && (left <= i$4_1_1 && i$4_1_1 < mid)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$4_1): Ref) != (loc(a_2, i$4_1_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i$4_1: int ::
            { (loc(a_2, i$4_1): Ref) } { (loc(a_2, i$4_1): Ref) }
            (left <= i$4_1 && i$4_1 < mid) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i$4_1): Ref)) && invRecv7((loc(a_2, i$4_1): Ref)) == i$4_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            ((left <= invRecv7(o_9) && invRecv7(o_9) < mid) && NoPerm < FullPerm) && qpRange7(o_9) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i$4_1: int ::
            { (loc(a_2, i$4_1): Ref) } { (loc(a_2, i$4_1): Ref) }
            left <= i$4_1 && i$4_1 < mid ==> (loc(a_2, i$4_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((left <= invRecv7(o_9) && invRecv7(o_9) < mid) && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv7(o_9) && invRecv7(o_9) < mid) && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i$5: Int ::
  //     { old(loc(a, i$5)) }
  //     left <= i$5 && i$5 < mid ==>
  //     (old(loc(a, i$5).val == from) ?
  //       loc(a, i$5).val == to :
  //       loc(a, i$5).val == old(loc(a, i$5).val))) -- parallel-array-replace.vpr@35.5--35.31
        
        // -- Check definedness of (forall i$5: Int :: { old(loc(a, i$5)) } left <= i$5 && i$5 < mid ==> (old(loc(a, i$5).val == from) ? loc(a, i$5).val == to : loc(a, i$5).val == old(loc(a, i$5).val)))
          if (*) {
            if (left <= i$5 && i$5 < mid) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$5).val (parallel-array-replace.vpr@35.12--35.31) [104805]"}
                HasDirectPerm(oldMask, (loc(a_2, i$5): Ref), val);
              if (oldHeap[(loc(a_2, i$5): Ref), val] == from_1) {
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$5).val (parallel-array-replace.vpr@35.12--35.31) [104806]"}
                  HasDirectPerm(Mask, (loc(a_2, i$5): Ref), val);
              } else {
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$5).val (parallel-array-replace.vpr@35.12--35.31) [104807]"}
                  HasDirectPerm(Mask, (loc(a_2, i$5): Ref), val);
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$5).val (parallel-array-replace.vpr@35.12--35.31) [104808]"}
                  HasDirectPerm(oldMask, (loc(a_2, i$5): Ref), val);
              }
            }
            assume false;
          }
        assume (forall i$5_1: int ::
          { (loc(a_2, i$5_1): Ref) }
          left <= i$5_1 && i$5_1 < mid ==> (if oldHeap[(loc(a_2, i$5_1): Ref), val] == from_1 then Heap[(loc(a_2, i$5_1): Ref), val] == to_1 else Heap[(loc(a_2, i$5_1): Ref), val] == oldHeap[(loc(a_2, i$5_1): Ref), val])
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i$6: Int ::
  //     { loc(a, i$6) }
  //     mid <= i$6 && i$6 < right ==> acc(loc(a, i$6).val, write)) &&
  //   true -- parallel-array-replace.vpr@38.5--38.32
        
        // -- Check definedness of (forall i$6: Int :: { loc(a, i$6) } mid <= i$6 && i$6 < right ==> acc(loc(a, i$6).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i$6).val might not be injective. (parallel-array-replace.vpr@38.12--38.32) [104809]"}
          (forall i$6_1: int, i$6_1_1: int ::
          
          (((i$6_1 != i$6_1_1 && (mid <= i$6_1 && i$6_1 < right_2)) && (mid <= i$6_1_1 && i$6_1_1 < right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$6_1): Ref) != (loc(a_2, i$6_1_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i$6_1: int ::
            { (loc(a_2, i$6_1): Ref) } { (loc(a_2, i$6_1): Ref) }
            (mid <= i$6_1 && i$6_1 < right_2) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i$6_1): Ref)) && invRecv8((loc(a_2, i$6_1): Ref)) == i$6_1
          );
          assume (forall o_9: Ref ::
            { invRecv8(o_9) }
            ((mid <= invRecv8(o_9) && invRecv8(o_9) < right_2) && NoPerm < FullPerm) && qpRange8(o_9) ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i$6_1: int ::
            { (loc(a_2, i$6_1): Ref) } { (loc(a_2, i$6_1): Ref) }
            mid <= i$6_1 && i$6_1 < right_2 ==> (loc(a_2, i$6_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((mid <= invRecv8(o_9) && invRecv8(o_9) < right_2) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((mid <= invRecv8(o_9) && invRecv8(o_9) < right_2) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i$7: Int ::
  //     { old(loc(a, i$7)) }
  //     mid <= i$7 && i$7 < right ==>
  //     (old(loc(a, i$7).val == from) ?
  //       loc(a, i$7).val == to :
  //       loc(a, i$7).val == old(loc(a, i$7).val))) -- parallel-array-replace.vpr@39.5--39.32
        
        // -- Check definedness of (forall i$7: Int :: { old(loc(a, i$7)) } mid <= i$7 && i$7 < right ==> (old(loc(a, i$7).val == from) ? loc(a, i$7).val == to : loc(a, i$7).val == old(loc(a, i$7).val)))
          if (*) {
            if (mid <= i$7 && i$7 < right_2) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$7).val (parallel-array-replace.vpr@39.12--39.32) [104810]"}
                HasDirectPerm(oldMask, (loc(a_2, i$7): Ref), val);
              if (oldHeap[(loc(a_2, i$7): Ref), val] == from_1) {
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$7).val (parallel-array-replace.vpr@39.12--39.32) [104811]"}
                  HasDirectPerm(Mask, (loc(a_2, i$7): Ref), val);
              } else {
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$7).val (parallel-array-replace.vpr@39.12--39.32) [104812]"}
                  HasDirectPerm(Mask, (loc(a_2, i$7): Ref), val);
                assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i$7).val (parallel-array-replace.vpr@39.12--39.32) [104813]"}
                  HasDirectPerm(oldMask, (loc(a_2, i$7): Ref), val);
              }
            }
            assume false;
          }
        assume (forall i$7_1: int ::
          { (loc(a_2, i$7_1): Ref) }
          mid <= i$7_1 && i$7_1 < right_2 ==> (if oldHeap[(loc(a_2, i$7_1): Ref), val] == from_1 then Heap[(loc(a_2, i$7_1): Ref), val] == to_1 else Heap[(loc(a_2, i$7_1): Ref), val] == oldHeap[(loc(a_2, i$7_1): Ref), val])
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i$0) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i$0).val might not be injective. (parallel-array-replace.vpr@15.12--15.33) [104814]"}
        (forall i$0_2_1: int, i$0_2_2: int ::
        { neverTriggered4(i$0_2_1), neverTriggered4(i$0_2_2) }
        (((i$0_2_1 != i$0_2_2 && (left <= i$0_2_1 && i$0_2_1 < right_2)) && (left <= i$0_2_2 && i$0_2_2 < right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_2_1): Ref) != (loc(a_2, i$0_2_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Replace might not hold. There might be insufficient permission to access loc(a, i$0).val (parallel-array-replace.vpr@15.12--15.33) [104815]"}
        (forall i$0_2_1: int ::
        { (loc(a_2, i$0_2_1): Ref) } { (loc(a_2, i$0_2_1): Ref) }
        left <= i$0_2_1 && i$0_2_1 < right_2 ==> Mask[(loc(a_2, i$0_2_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i$0)
      assume (forall i$0_2_1: int ::
        { (loc(a_2, i$0_2_1): Ref) } { (loc(a_2, i$0_2_1): Ref) }
        (left <= i$0_2_1 && i$0_2_1 < right_2) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i$0_2_1): Ref)) && invRecv4((loc(a_2, i$0_2_1): Ref)) == i$0_2_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (left <= invRecv4(o_9) && invRecv4(o_9) < right_2) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((left <= invRecv4(o_9) && invRecv4(o_9) < right_2) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv4(o_9) && invRecv4(o_9) < right_2) && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (left <= i$1_2_1 && i$1_2_1 < right_2) {
        if (oldHeap[(loc(a_2, i$1_2_1): Ref), val] == from_1) {
          assert {:msg "  Postcondition of Replace might not hold. Assertion loc(a, i$1).val == to might not hold. (parallel-array-replace.vpr@16.12--16.33) [104816]"}
            Heap[(loc(a_2, i$1_2_1): Ref), val] == to_1;
        } else {
          assert {:msg "  Postcondition of Replace might not hold. Assertion loc(a, i$1).val == old(loc(a, i$1).val) might not hold. (parallel-array-replace.vpr@16.12--16.33) [104817]"}
            Heap[(loc(a_2, i$1_2_1): Ref), val] == oldHeap[(loc(a_2, i$1_2_1): Ref), val];
        }
      }
      assume false;
    }
    assume (forall i$1_3_1_1: int ::
      { (loc(a_2, i$1_3_1_1): Ref) }
      left <= i$1_3_1_1 && i$1_3_1_1 < right_2 ==> (if oldHeap[(loc(a_2, i$1_3_1_1): Ref), val] == from_1 then Heap[(loc(a_2, i$1_3_1_1): Ref), val] == to_1 else Heap[(loc(a_2, i$1_3_1_1): Ref), val] == oldHeap[(loc(a_2, i$1_3_1_1): Ref), val])
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Client
// ==================================================

procedure Client(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_right: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 1 < (len(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@45.12--45.72) [104818]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange9((loc(a_2, i_1): Ref)) && invRecv9((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Contains(a, 5, 1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Contains might not hold. Assertion 1 <= len(a) might not hold. (parallel-array-replace.vpr@46.12--46.29) [104819]"}
          1 <= (len(a_2): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function Contains might not hold. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@46.12--46.29) [104820]"}
            (forall i_2: int, i_2_2: int ::
            { neverTriggered10(i_2), neverTriggered10(i_2_2) }
            (((i_2 != i_2_2 && (0 <= i_2 && i_2 < 1)) && (0 <= i_2_2 && i_2_2 < 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_2): Ref) != (loc(a_2, i_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function Contains might not hold. There might be insufficient permission to access loc(a, i).val (parallel-array-replace.vpr@46.12--46.29) [104821]"}
            (forall i_2: int ::
            { (loc(a_2, i_2): Ref) } { (loc(a_2, i_2): Ref) }
            0 <= i_2 && i_2 < 1 ==> FullPerm > NoPerm ==> Mask[(loc(a_2, i_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_2: int ::
            { (loc(a_2, i_2): Ref) } { (loc(a_2, i_2): Ref) }
            (0 <= i_2 && i_2 < 1) && NoPerm < FullPerm ==> qpRange10((loc(a_2, i_2): Ref)) && invRecv10((loc(a_2, i_2): Ref)) == i_2
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            (0 <= invRecv10(o_9) && invRecv10(o_9) < 1) && (NoPerm < FullPerm && qpRange10(o_9)) ==> (loc(a_2, invRecv10(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Contains(Heap, a_2, 5, 1);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: Replace(a, 1, len(a), 5, 7) -- parallel-array-replace.vpr@48.3--48.30
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_right := (len(a_2): int);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Replace might not hold. Assertion 1 < len(a) might not hold. (parallel-array-replace.vpr@48.3--48.30) [104822]"}
        1 < arg_right;
      assert {:msg "  The precondition of method Replace might not hold. Assertion len(a) <= len(a) might not hold. (parallel-array-replace.vpr@48.3--48.30) [104823]"}
        arg_right <= (len(a_2): int);
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver loc(a, i) is injective
        assert {:msg "  The precondition of method Replace might not hold. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@48.3--48.30) [104824]"}
          (forall i_3_2: int, i_3_3: int ::
          { neverTriggered11(i_3_2), neverTriggered11(i_3_3) }
          (((i_3_2 != i_3_3 && (1 <= i_3_2 && i_3_2 < arg_right)) && (1 <= i_3_3 && i_3_3 < arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Replace might not hold. There might be insufficient permission to access loc(a, i).val (parallel-array-replace.vpr@48.3--48.30) [104825]"}
          (forall i_3_2: int ::
          { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
          1 <= i_3_2 && i_3_2 < arg_right ==> Mask[(loc(a_2, i_3_2): Ref), val] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver loc(a, i)
        assume (forall i_3_2: int ::
          { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
          (1 <= i_3_2 && i_3_2 < arg_right) && NoPerm < FullPerm ==> qpRange11((loc(a_2, i_3_2): Ref)) && invRecv11((loc(a_2, i_3_2): Ref)) == i_3_2
        );
        assume (forall o_9: Ref ::
          { invRecv11(o_9) }
          (1 <= invRecv11(o_9) && invRecv11(o_9) < arg_right) && (NoPerm < FullPerm && qpRange11(o_9)) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9
        );
      
      // -- assume permission updates for field val
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((1 <= invRecv11(o_9) && invRecv11(o_9) < arg_right) && (NoPerm < FullPerm && qpRange11(o_9)) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((1 <= invRecv11(o_9) && invRecv11(o_9) < arg_right) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource loc(a, i$0).val might not be injective. (parallel-array-replace.vpr@48.3--48.30) [104826]"}
        (forall i$0: int, i$0_3: int ::
        
        (((i$0 != i$0_3 && (1 <= i$0 && i$0 < arg_right)) && (1 <= i$0_3 && i$0_3 < arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0): Ref) != (loc(a_2, i$0_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i$0: int ::
          { (loc(a_2, i$0): Ref) } { (loc(a_2, i$0): Ref) }
          (1 <= i$0 && i$0 < arg_right) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i$0): Ref)) && invRecv12((loc(a_2, i$0): Ref)) == i$0
        );
        assume (forall o_9: Ref ::
          { invRecv12(o_9) }
          ((1 <= invRecv12(o_9) && invRecv12(o_9) < arg_right) && NoPerm < FullPerm) && qpRange12(o_9) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i$0: int ::
          { (loc(a_2, i$0): Ref) } { (loc(a_2, i$0): Ref) }
          1 <= i$0 && i$0 < arg_right ==> (loc(a_2, i$0): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((1 <= invRecv12(o_9) && invRecv12(o_9) < arg_right) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((1 <= invRecv12(o_9) && invRecv12(o_9) < arg_right) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i$1: int ::
        { (loc(a_2, i$1): Ref) }
        1 <= i$1 && i$1 < arg_right ==> (if PreCallHeap[(loc(a_2, i$1): Ref), val] == 5 then Heap[(loc(a_2, i$1): Ref), val] == 7 else Heap[(loc(a_2, i$1): Ref), val] == PreCallHeap[(loc(a_2, i$1): Ref), val])
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Contains(a, 5, 1) -- parallel-array-replace.vpr@49.3--49.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of Contains(a, 5, 1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Contains might not hold. Assertion 1 <= len(a) might not hold. (parallel-array-replace.vpr@49.10--49.27) [104827]"}
          1 <= (len(a_2): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Precondition of function Contains might not hold. Quantified resource loc(a, i).val might not be injective. (parallel-array-replace.vpr@49.10--49.27) [104828]"}
            (forall i_4_1: int, i_4_2: int ::
            { neverTriggered13(i_4_1), neverTriggered13(i_4_2) }
            (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < 1)) && (0 <= i_4_2 && i_4_2 < 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1): Ref) != (loc(a_2, i_4_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function Contains might not hold. There might be insufficient permission to access loc(a, i).val (parallel-array-replace.vpr@49.10--49.27) [104829]"}
            (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
            0 <= i_4_1 && i_4_1 < 1 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, i_4_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_4_1: int ::
            { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
            (0 <= i_4_1 && i_4_1 < 1) && NoPerm < FullPerm ==> qpRange13((loc(a_2, i_4_1): Ref)) && invRecv13((loc(a_2, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv13(o_9) }
            (0 <= invRecv13(o_9) && invRecv13(o_9) < 1) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Contains(a, 5, 1) might not hold. (parallel-array-replace.vpr@49.10--49.27) [104830]"}
      Contains(Heap, a_2, 5, 1);
    assume state(Heap, Mask);
}