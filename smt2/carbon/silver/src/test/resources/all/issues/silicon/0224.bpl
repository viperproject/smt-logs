// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:39:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0224.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0224-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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

function  neverTriggered1(k_3: int): bool;
function  neverTriggered2(k_4_1: int): bool;
function  neverTriggered3(k_5: int): bool;
function  neverTriggered4(k_4_1: int): bool;
function  neverTriggered5(k_5: int): bool;
function  neverTriggered6(k_1_1: int): bool;
function  neverTriggered7(k_2_1: int): bool;
function  neverTriggered8(k_1_1: int): bool;
function  neverTriggered9(k_2_1: int): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: f_loop
// - height 1: f_lcp
// - height 0: f_loop_simpl
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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function length
function  length_1(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): IArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: IArrayDomainType ::
  { (length_1(a_2): int) }
  (length_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function f_loop_simpl
// ==================================================

// Uninterpreted function definitions
function  f_loop_simpl(Heap: HeapType, a_2: IArrayDomainType): int;
function  f_loop_simpl'(Heap: HeapType, a_2: IArrayDomainType): int;
axiom (forall Heap: HeapType, a_2: IArrayDomainType ::
  { f_loop_simpl(Heap, a_2) }
  f_loop_simpl(Heap, a_2) == f_loop_simpl'(Heap, a_2) && dummyFunction(f_loop_simpl#triggerStateless(a_2))
);
axiom (forall Heap: HeapType, a_2: IArrayDomainType ::
  { f_loop_simpl'(Heap, a_2) }
  dummyFunction(f_loop_simpl#triggerStateless(a_2))
);

// Framing axioms
function  f_loop_simpl#frame(frame: FrameType, a_2: IArrayDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType ::
  { state(Heap, Mask), f_loop_simpl'(Heap, a_2) }
  state(Heap, Mask) ==> f_loop_simpl'(Heap, a_2) == f_loop_simpl#frame(FrameFragment(f_loop_simpl#condqp1(Heap, a_2)), a_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write)) in function f_loop_simpl
// ==================================================

function  f_loop_simpl#condqp1(Heap: HeapType, a_1_1_1: IArrayDomainType): int;
function  sk_f_loop_simpl#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: IArrayDomainType ::
  { f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) && sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) < (length_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) && sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) < (length_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) && sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2)) < (length_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2))): Ref), val] == Heap1Heap[(loc(a_2, sk_f_loop_simpl#condqp1(f_loop_simpl#condqp1(Heap2Heap, a_2), f_loop_simpl#condqp1(Heap1Heap, a_2))): Ref), val]) ==> f_loop_simpl#condqp1(Heap2Heap, a_2) == f_loop_simpl#condqp1(Heap1Heap, a_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType ::
  { state(Heap, Mask), f_loop_simpl'(Heap, a_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || f_loop_simpl#trigger(FrameFragment(f_loop_simpl#condqp1(Heap, a_2)), a_2)) ==> 0 < f_loop_simpl'(Heap, a_2) && (f_loop_simpl'(Heap, a_2) < (length_1(a_2): int) && Heap[(loc(a_2, f_loop_simpl'(Heap, a_2)): Ref), val] != 0)
);

// Trigger function (controlling recursive postconditions)
function  f_loop_simpl#trigger(frame: FrameType, a_2: IArrayDomainType): bool;

// State-independent trigger function
function  f_loop_simpl#triggerStateless(a_2: IArrayDomainType): int;

// Check contract well-formedness and postcondition
procedure f_loop_simpl#definedness(a_2: IArrayDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, k).val might not be injective. (0224.vpr@8.12--8.21) [199801]"}
      (forall k_3: int, k_3_1: int ::
      
      (((k_3 != k_3_1 && (0 <= k_3 && k_3 < (length_1(a_2): int))) && (0 <= k_3_1 && k_3_1 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_3): Ref) != (loc(a_2, k_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall k_3: int ::
        { (loc(a_2, k_3): Ref) } { (loc(a_2, k_3): Ref) }
        (0 <= k_3 && k_3 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, k_3): Ref)) && invRecv1((loc(a_2, k_3): Ref)) == k_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_3: int ::
        { (loc(a_2, k_3): Ref) } { (loc(a_2, k_3): Ref) }
        0 <= k_3 && k_3 < (length_1(a_2): int) ==> (loc(a_2, k_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume 0 < Result;
    assume Result < (length_1(a_2): int);
    
    // -- Check definedness of loc(a, result).val != 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, result).val (0224.vpr@10.14--12.36) [199802]"}
        HasDirectPerm(Mask, (loc(a_2, Result): Ref), val);
    assume Heap[(loc(a_2, Result): Ref), val] != 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function f_loop
// ==================================================

// Uninterpreted function definitions
function  f_loop(Heap: HeapType, a_2: IArrayDomainType, x: int, y: int, n: int): int;
function  f_loop'(Heap: HeapType, a_2: IArrayDomainType, x: int, y: int, n: int): int;
axiom (forall Heap: HeapType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { f_loop(Heap, a_2, x, y, n) }
  f_loop(Heap, a_2, x, y, n) == f_loop'(Heap, a_2, x, y, n) && dummyFunction(f_loop#triggerStateless(a_2, x, y, n))
);
axiom (forall Heap: HeapType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { f_loop'(Heap, a_2, x, y, n) }
  dummyFunction(f_loop#triggerStateless(a_2, x, y, n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { state(Heap, Mask), f_loop(Heap, a_2, x, y, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ((0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int))) && (0 <= n && (x + n <= (length_1(a_2): int) && y + n <= (length_1(a_2): int))) ==> f_loop(Heap, a_2, x, y, n) == (if x + n < (length_1(a_2): int) && (y + n < (length_1(a_2): int) && Heap[(loc(a_2, x + n): Ref), val] == Heap[(loc(a_2, y + n): Ref), val]) then f_loop'(Heap, a_2, x, y, n + 1) else n)
);

// Framing axioms
function  f_loop#frame(frame: FrameType, a_2: IArrayDomainType, x: int, y: int, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { state(Heap, Mask), f_loop'(Heap, a_2, x, y, n) }
  state(Heap, Mask) ==> f_loop'(Heap, a_2, x, y, n) == f_loop#frame(FrameFragment(f_loop#condqp2(Heap, a_2, x, y, n)), a_2, x, y, n)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write)) in function f_loop
// ==================================================

function  f_loop#condqp2(Heap: HeapType, a_1_1_1: IArrayDomainType, x_1_1_1: int, y_1_1_1: int, n_1_1_1: int): int;
function  sk_f_loop#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) && sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) < (length_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) && sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) < (length_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) && sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n)) < (length_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n))): Ref), val] == Heap1Heap[(loc(a_2, sk_f_loop#condqp2(f_loop#condqp2(Heap2Heap, a_2, x, y, n), f_loop#condqp2(Heap1Heap, a_2, x, y, n))): Ref), val]) ==> f_loop#condqp2(Heap2Heap, a_2, x, y, n) == f_loop#condqp2(Heap1Heap, a_2, x, y, n)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { state(Heap, Mask), f_loop'(Heap, a_2, x, y, n) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || f_loop#trigger(FrameFragment(f_loop#condqp2(Heap, a_2, x, y, n)), a_2, x, y, n)) ==> ((0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int))) && (0 <= n && (x + n <= (length_1(a_2): int) && y + n <= (length_1(a_2): int))) ==> 0 <= f_loop'(Heap, a_2, x, y, n) && (x + f_loop'(Heap, a_2, x, y, n) <= (length_1(a_2): int) && y + f_loop'(Heap, a_2, x, y, n) <= (length_1(a_2): int))
);
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int, n: int ::
  { state(Heap, Mask), f_loop'(Heap, a_2, x, y, n) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || f_loop#trigger(FrameFragment(f_loop#condqp2(Heap, a_2, x, y, n)), a_2, x, y, n)) ==> ((0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int))) && (0 <= n && (x + n <= (length_1(a_2): int) && y + n <= (length_1(a_2): int))) ==> x + f_loop'(Heap, a_2, x, y, n) < (length_1(a_2): int) && y + f_loop'(Heap, a_2, x, y, n) < (length_1(a_2): int) ==> Heap[(loc(a_2, x + f_loop'(Heap, a_2, x, y, n)): Ref), val] != Heap[(loc(a_2, y + f_loop'(Heap, a_2, x, y, n)): Ref), val]
);

// Trigger function (controlling recursive postconditions)
function  f_loop#trigger(frame: FrameType, a_2: IArrayDomainType, x: int, y: int, n: int): bool;

// State-independent trigger function
function  f_loop#triggerStateless(a_2: IArrayDomainType, x: int, y: int, n: int): int;

// Check contract well-formedness and postcondition
procedure f_loop#definedness(a_2: IArrayDomainType, x: int, y: int, n: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, k).val might not be injective. (0224.vpr@25.12--25.21) [199803]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < (length_1(a_2): int))) && (0 <= k_4_2 && k_4_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_4_1): Ref) != (loc(a_2, k_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { (loc(a_2, k_4_1): Ref) } { (loc(a_2, k_4_1): Ref) }
        (0 <= k_4_1 && k_4_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, k_4_1): Ref)) && invRecv2((loc(a_2, k_4_1): Ref)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { (loc(a_2, k_4_1): Ref) } { (loc(a_2, k_4_1): Ref) }
        0 <= k_4_1 && k_4_1 < (length_1(a_2): int) ==> (loc(a_2, k_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= x;
    assume x < (length_1(a_2): int);
    assume 0 <= y;
    assume y < (length_1(a_2): int);
    assume state(Heap, Mask);
    assume 0 <= n;
    assume x + n <= (length_1(a_2): int);
    assume y + n <= (length_1(a_2): int);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x + n < length(a) && (y + n < length(a) && loc(a, x + n).val == loc(a, y + n).val) ? f_loop(a, x, y, n + 1) : n)
      if (x + n < (length_1(a_2): int)) {
        if (y + n < (length_1(a_2): int)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(a, x + n).val (0224.vpr@24.1--33.2) [199804]"}
            HasDirectPerm(Mask, (loc(a_2, x + n): Ref), val);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(a, y + n).val (0224.vpr@24.1--33.2) [199805]"}
            HasDirectPerm(Mask, (loc(a_2, y + n): Ref), val);
        }
      }
      if (x + n < (length_1(a_2): int) && (y + n < (length_1(a_2): int) && Heap[(loc(a_2, x + n): Ref), val] == Heap[(loc(a_2, y + n): Ref), val])) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, k) is injective
            assert {:msg "  Precondition of function f_loop might not hold. Quantified resource loc(a, k).val might not be injective. (0224.vpr@32.81--32.98) [199806]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered3(k_5), neverTriggered3(k_5_1) }
              (((k_5 != k_5_1 && (0 <= k_5 && k_5 < (length_1(a_2): int))) && (0 <= k_5_1 && k_5_1 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_5): Ref) != (loc(a_2, k_5_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function f_loop might not hold. There might be insufficient permission to access loc(a, k).val (0224.vpr@32.81--32.98) [199807]"}
              (forall k_5: int ::
              { (loc(a_2, k_5): Ref) } { (loc(a_2, k_5): Ref) }
              0 <= k_5 && k_5 < (length_1(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, k_5): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, k)
            assume (forall k_5: int ::
              { (loc(a_2, k_5): Ref) } { (loc(a_2, k_5): Ref) }
              (0 <= k_5 && k_5 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, k_5): Ref)) && invRecv3((loc(a_2, k_5): Ref)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv3(o_4) }
              (0 <= invRecv3(o_4) && invRecv3(o_4) < (length_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
            );
          assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= x might not hold. (0224.vpr@32.81--32.98) [199808]"}
            0 <= x;
          assert {:msg "  Precondition of function f_loop might not hold. Assertion x < length(a) might not hold. (0224.vpr@32.81--32.98) [199809]"}
            x < (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= y might not hold. (0224.vpr@32.81--32.98) [199810]"}
            0 <= y;
          assert {:msg "  Precondition of function f_loop might not hold. Assertion y < length(a) might not hold. (0224.vpr@32.81--32.98) [199811]"}
            y < (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= n + 1 might not hold. (0224.vpr@32.81--32.98) [199812]"}
            0 <= n + 1;
          assert {:msg "  Precondition of function f_loop might not hold. Assertion x + (n + 1) <= length(a) might not hold. (0224.vpr@32.81--32.98) [199813]"}
            x + (n + 1) <= (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion y + (n + 1) <= length(a) might not hold. (0224.vpr@32.81--32.98) [199814]"}
            y + (n + 1) <= (length_1(a_2): int);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f_loop#trigger(FrameFragment(f_loop#condqp2(Heap, a_2, x, y, n + 1)), a_2, x, y, n + 1);
        }
      }
  
  // -- Translate function body
    Result := (if x + n < (length_1(a_2): int) && (y + n < (length_1(a_2): int) && Heap[(loc(a_2, x + n): Ref), val] == Heap[(loc(a_2, y + n): Ref), val]) then f_loop(Heap, a_2, x, y, n + 1) else n);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of f_loop might not hold. Assertion 0 <= result might not hold. (0224.vpr@29.11--29.72) [199815]"}
      0 <= Result;
    assert {:msg "  Postcondition of f_loop might not hold. Assertion x + result <= length(a) might not hold. (0224.vpr@29.11--29.72) [199816]"}
      x + Result <= (length_1(a_2): int);
    assert {:msg "  Postcondition of f_loop might not hold. Assertion y + result <= length(a) might not hold. (0224.vpr@29.11--29.72) [199817]"}
      y + Result <= (length_1(a_2): int);
    if (x + Result < (length_1(a_2): int) && y + Result < (length_1(a_2): int)) {
      
      // -- Check definedness of loc(a, x + result).val != loc(a, y + result).val
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, x + result).val (0224.vpr@30.11--30.104) [199818]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, x + Result): Ref), val);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, y + result).val (0224.vpr@30.11--30.104) [199819]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, y + Result): Ref), val);
      assert {:msg "  Postcondition of f_loop might not hold. Assertion loc(a, x + result).val != loc(a, y + result).val might not hold. (0224.vpr@30.11--30.104) [199820]"}
        Heap[(loc(a_2, x + Result): Ref), val] != Heap[(loc(a_2, y + Result): Ref), val];
    }
}

// ==================================================
// Translation of function f_lcp
// ==================================================

// Uninterpreted function definitions
function  f_lcp(Heap: HeapType, a_2: IArrayDomainType, x: int, y: int): int;
function  f_lcp'(Heap: HeapType, a_2: IArrayDomainType, x: int, y: int): int;
axiom (forall Heap: HeapType, a_2: IArrayDomainType, x: int, y: int ::
  { f_lcp(Heap, a_2, x, y) }
  f_lcp(Heap, a_2, x, y) == f_lcp'(Heap, a_2, x, y) && dummyFunction(f_lcp#triggerStateless(a_2, x, y))
);
axiom (forall Heap: HeapType, a_2: IArrayDomainType, x: int, y: int ::
  { f_lcp'(Heap, a_2, x, y) }
  dummyFunction(f_lcp#triggerStateless(a_2, x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int ::
  { state(Heap, Mask), f_lcp(Heap, a_2, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int)) ==> f_lcp(Heap, a_2, x, y) == f_loop(Heap, a_2, x, y, 0)
);

// Framing axioms
function  f_lcp#frame(frame: FrameType, a_2: IArrayDomainType, x: int, y: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int ::
  { state(Heap, Mask), f_lcp'(Heap, a_2, x, y) }
  state(Heap, Mask) ==> f_lcp'(Heap, a_2, x, y) == f_lcp#frame(FrameFragment(f_lcp#condqp3(Heap, a_2, x, y)), a_2, x, y)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write)) in function f_lcp
// ==================================================

function  f_lcp#condqp3(Heap: HeapType, a_1_1_1: IArrayDomainType, x_1_1_1: int, y_1_1_1: int): int;
function  sk_f_lcp#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: IArrayDomainType, x: int, y: int ::
  { f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) && sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) < (length_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) && sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) < (length_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) && sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y)) < (length_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y))): Ref), val] == Heap1Heap[(loc(a_2, sk_f_lcp#condqp3(f_lcp#condqp3(Heap2Heap, a_2, x, y), f_lcp#condqp3(Heap1Heap, a_2, x, y))): Ref), val]) ==> f_lcp#condqp3(Heap2Heap, a_2, x, y) == f_lcp#condqp3(Heap1Heap, a_2, x, y)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int ::
  { state(Heap, Mask), f_lcp'(Heap, a_2, x, y) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || f_lcp#trigger(FrameFragment(f_lcp#condqp3(Heap, a_2, x, y)), a_2, x, y)) ==> (0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int)) ==> 0 <= f_lcp'(Heap, a_2, x, y) && (x + f_lcp'(Heap, a_2, x, y) <= (length_1(a_2): int) && y + f_lcp'(Heap, a_2, x, y) <= (length_1(a_2): int))
);
axiom (forall Heap: HeapType, Mask: MaskType, a_2: IArrayDomainType, x: int, y: int ::
  { state(Heap, Mask), f_lcp'(Heap, a_2, x, y) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || f_lcp#trigger(FrameFragment(f_lcp#condqp3(Heap, a_2, x, y)), a_2, x, y)) ==> (0 <= x && x < (length_1(a_2): int)) && (0 <= y && y < (length_1(a_2): int)) ==> x + f_lcp'(Heap, a_2, x, y) < (length_1(a_2): int) && y + f_lcp'(Heap, a_2, x, y) < (length_1(a_2): int) ==> Heap[(loc(a_2, x + f_lcp'(Heap, a_2, x, y)): Ref), val] != Heap[(loc(a_2, y + f_lcp'(Heap, a_2, x, y)): Ref), val]
);

// Trigger function (controlling recursive postconditions)
function  f_lcp#trigger(frame: FrameType, a_2: IArrayDomainType, x: int, y: int): bool;

// State-independent trigger function
function  f_lcp#triggerStateless(a_2: IArrayDomainType, x: int, y: int): int;

// Check contract well-formedness and postcondition
procedure f_lcp#definedness(a_2: IArrayDomainType, x: int, y: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, k).val might not be injective. (0224.vpr@37.11--37.20) [199821]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < (length_1(a_2): int))) && (0 <= k_4_2 && k_4_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_4_1): Ref) != (loc(a_2, k_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { (loc(a_2, k_4_1): Ref) } { (loc(a_2, k_4_1): Ref) }
        (0 <= k_4_1 && k_4_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, k_4_1): Ref)) && invRecv4((loc(a_2, k_4_1): Ref)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { (loc(a_2, k_4_1): Ref) } { (loc(a_2, k_4_1): Ref) }
        0 <= k_4_1 && k_4_1 < (length_1(a_2): int) ==> (loc(a_2, k_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= x;
    assume x < (length_1(a_2): int);
    assume 0 <= y;
    assume y < (length_1(a_2): int);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of f_loop(a, x, y, 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, k) is injective
          assert {:msg "  Precondition of function f_loop might not hold. Quantified resource loc(a, k).val might not be injective. (0224.vpr@43.2--43.17) [199822]"}
            (forall k_5: int, k_5_1: int ::
            { neverTriggered5(k_5), neverTriggered5(k_5_1) }
            (((k_5 != k_5_1 && (0 <= k_5 && k_5 < (length_1(a_2): int))) && (0 <= k_5_1 && k_5_1 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_5): Ref) != (loc(a_2, k_5_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function f_loop might not hold. There might be insufficient permission to access loc(a, k).val (0224.vpr@43.2--43.17) [199823]"}
            (forall k_5: int ::
            { (loc(a_2, k_5): Ref) } { (loc(a_2, k_5): Ref) }
            0 <= k_5 && k_5 < (length_1(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, k_5): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, k)
          assume (forall k_5: int ::
            { (loc(a_2, k_5): Ref) } { (loc(a_2, k_5): Ref) }
            (0 <= k_5 && k_5 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, k_5): Ref)) && invRecv5((loc(a_2, k_5): Ref)) == k_5
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (0 <= invRecv5(o_4) && invRecv5(o_4) < (length_1(a_2): int)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
          );
        assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= x might not hold. (0224.vpr@43.2--43.17) [199824]"}
          0 <= x;
        assert {:msg "  Precondition of function f_loop might not hold. Assertion x < length(a) might not hold. (0224.vpr@43.2--43.17) [199825]"}
          x < (length_1(a_2): int);
        assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= y might not hold. (0224.vpr@43.2--43.17) [199826]"}
          0 <= y;
        assert {:msg "  Precondition of function f_loop might not hold. Assertion y < length(a) might not hold. (0224.vpr@43.2--43.17) [199827]"}
          y < (length_1(a_2): int);
        assert {:msg "  Precondition of function f_loop might not hold. Assertion x + 0 <= length(a) might not hold. (0224.vpr@43.2--43.17) [199828]"}
          x + 0 <= (length_1(a_2): int);
        assert {:msg "  Precondition of function f_loop might not hold. Assertion y + 0 <= length(a) might not hold. (0224.vpr@43.2--43.17) [199829]"}
          y + 0 <= (length_1(a_2): int);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f_loop(Heap, a_2, x, y, 0);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of f_lcp might not hold. Assertion 0 <= result might not hold. (0224.vpr@40.10--40.71) [199830]"}
      0 <= Result;
    assert {:msg "  Postcondition of f_lcp might not hold. Assertion x + result <= length(a) might not hold. (0224.vpr@40.10--40.71) [199831]"}
      x + Result <= (length_1(a_2): int);
    assert {:msg "  Postcondition of f_lcp might not hold. Assertion y + result <= length(a) might not hold. (0224.vpr@40.10--40.71) [199832]"}
      y + Result <= (length_1(a_2): int);
    if (x + Result < (length_1(a_2): int) && y + Result < (length_1(a_2): int)) {
      
      // -- Check definedness of loc(a, x + result).val != loc(a, y + result).val
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, x + result).val (0224.vpr@41.10--41.103) [199833]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, x + Result): Ref), val);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, y + result).val (0224.vpr@41.10--41.103) [199834]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, y + Result): Ref), val);
      assert {:msg "  Postcondition of f_lcp might not hold. Assertion loc(a, x + result).val != loc(a, y + result).val might not hold. (0224.vpr@41.10--41.103) [199835]"}
        Heap[(loc(a_2, x + Result): Ref), val] != Heap[(loc(a_2, y + Result): Ref), val];
    }
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(a_2: IArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, k).val might not be injective. (0224.vpr@15.12--15.39) [199836]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < (length_1(a_2): int))) && (0 <= k_1_2 && k_1_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_1_1): Ref) != (loc(a_2, k_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { (loc(a_2, k_1_1): Ref) } { (loc(a_2, k_1_1): Ref) }
        (0 <= k_1_1 && k_1_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, k_1_1): Ref)) && invRecv6((loc(a_2, k_1_1): Ref)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { (loc(a_2, k_1_1): Ref) } { (loc(a_2, k_1_1): Ref) }
        0 <= k_1_1 && k_1_1 < (length_1(a_2): int) ==> (loc(a_2, k_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume 10 < (length_1(a_2): int);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: res := f_loop_simpl(a) -- 0224.vpr@17.3--17.34
    
    // -- Check definedness of f_loop_simpl(a)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, k) is injective
          assert {:msg "  Precondition of function f_loop_simpl might not hold. Quantified resource loc(a, k).val might not be injective. (0224.vpr@17.19--17.34) [199837]"}
            (forall k_2_1: int, k_2_2: int ::
            { neverTriggered7(k_2_1), neverTriggered7(k_2_2) }
            (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < (length_1(a_2): int))) && (0 <= k_2_2 && k_2_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_2_1): Ref) != (loc(a_2, k_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function f_loop_simpl might not hold. There might be insufficient permission to access loc(a, k).val (0224.vpr@17.19--17.34) [199838]"}
            (forall k_2_1: int ::
            { (loc(a_2, k_2_1): Ref) } { (loc(a_2, k_2_1): Ref) }
            0 <= k_2_1 && k_2_1 < (length_1(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, k_2_1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, k)
          assume (forall k_2_1: int ::
            { (loc(a_2, k_2_1): Ref) } { (loc(a_2, k_2_1): Ref) }
            (0 <= k_2_1 && k_2_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, k_2_1): Ref)) && invRecv7((loc(a_2, k_2_1): Ref)) == k_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (0 <= invRecv7(o_4) && invRecv7(o_4) < (length_1(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_4)) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    res := f_loop_simpl(Heap, a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert loc(a, res).val != 0 -- 0224.vpr@18.3--18.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of loc(a, res).val != 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, res).val (0224.vpr@18.10--18.29) [199839]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, res): Ref), val);
    assert {:msg "  Assert might fail. Assertion loc(a, res).val != 0 might not hold. (0224.vpr@18.10--18.29) [199840]"}
      Heap[(loc(a_2, res): Ref), val] != 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(a_2: IArrayDomainType, x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var res: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall k: Int ::
  //     { loc(a, k) }
  //     0 <= k && k < length(a) ==> acc(loc(a, k).val, write)) -- 0224.vpr@50.2--50.18
    
    // -- Check definedness of (forall k: Int :: { loc(a, k) } 0 <= k && k < length(a) ==> acc(loc(a, k).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(a, k).val might not be injective. (0224.vpr@50.9--50.18) [199841]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && (0 <= k_1_1 && k_1_1 < (length_1(a_2): int))) && (0 <= k_1_2 && k_1_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_1_1): Ref) != (loc(a_2, k_1_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { (loc(a_2, k_1_1): Ref) } { (loc(a_2, k_1_1): Ref) }
        (0 <= k_1_1 && k_1_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, k_1_1): Ref)) && invRecv8((loc(a_2, k_1_1): Ref)) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { (loc(a_2, k_1_1): Ref) } { (loc(a_2, k_1_1): Ref) }
        0 <= k_1_1 && k_1_1 < (length_1(a_2): int) ==> (loc(a_2, k_1_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv8(o_4) && invRecv8(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < (length_1(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= x && x < length(a) && (0 <= y && y < length(a)) -- 0224.vpr@51.2--51.33
    assume 0 <= x;
    assume x < (length_1(a_2): int);
    assume 0 <= y;
    assume y < (length_1(a_2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := (x < length(a) && (y < length(a) && loc(a, x).val == loc(a, y).val) ?
  //     f_loop(a, x, y, 1) :
  //     0) -- 0224.vpr@53.2--53.95
    
    // -- Check definedness of (x < length(a) && (y < length(a) && loc(a, x).val == loc(a, y).val) ? f_loop(a, x, y, 1) : 0)
      if (x < (length_1(a_2): int)) {
        if (y < (length_1(a_2): int)) {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, x).val (0224.vpr@53.2--53.95) [199842]"}
            HasDirectPerm(Mask, (loc(a_2, x): Ref), val);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, y).val (0224.vpr@53.2--53.95) [199843]"}
            HasDirectPerm(Mask, (loc(a_2, y): Ref), val);
        }
      }
      if (x < (length_1(a_2): int) && (y < (length_1(a_2): int) && Heap[(loc(a_2, x): Ref), val] == Heap[(loc(a_2, y): Ref), val])) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, k) is injective
            assert {:msg "  Precondition of function f_loop might not hold. Quantified resource loc(a, k).val might not be injective. (0224.vpr@53.76--53.91) [199844]"}
              (forall k_2_1: int, k_2_2: int ::
              { neverTriggered9(k_2_1), neverTriggered9(k_2_2) }
              (((k_2_1 != k_2_2 && (0 <= k_2_1 && k_2_1 < (length_1(a_2): int))) && (0 <= k_2_2 && k_2_2 < (length_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, k_2_1): Ref) != (loc(a_2, k_2_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function f_loop might not hold. There might be insufficient permission to access loc(a, k).val (0224.vpr@53.76--53.91) [199845]"}
              (forall k_2_1: int ::
              { (loc(a_2, k_2_1): Ref) } { (loc(a_2, k_2_1): Ref) }
              0 <= k_2_1 && k_2_1 < (length_1(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, k_2_1): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, k)
            assume (forall k_2_1: int ::
              { (loc(a_2, k_2_1): Ref) } { (loc(a_2, k_2_1): Ref) }
              (0 <= k_2_1 && k_2_1 < (length_1(a_2): int)) && NoPerm < FullPerm ==> qpRange9((loc(a_2, k_2_1): Ref)) && invRecv9((loc(a_2, k_2_1): Ref)) == k_2_1
            );
            assume (forall o_4: Ref ::
              { invRecv9(o_4) }
              (0 <= invRecv9(o_4) && invRecv9(o_4) < (length_1(a_2): int)) && (NoPerm < FullPerm && qpRange9(o_4)) ==> (loc(a_2, invRecv9(o_4)): Ref) == o_4
            );
          assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= x might not hold. (0224.vpr@53.76--53.91) [199846]"}
            0 <= x;
          assert {:msg "  Precondition of function f_loop might not hold. Assertion x < length(a) might not hold. (0224.vpr@53.76--53.91) [199847]"}
            x < (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion 0 <= y might not hold. (0224.vpr@53.76--53.91) [199848]"}
            0 <= y;
          assert {:msg "  Precondition of function f_loop might not hold. Assertion y < length(a) might not hold. (0224.vpr@53.76--53.91) [199849]"}
            y < (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion x + 1 <= length(a) might not hold. (0224.vpr@53.76--53.91) [199850]"}
            x + 1 <= (length_1(a_2): int);
          assert {:msg "  Precondition of function f_loop might not hold. Assertion y + 1 <= length(a) might not hold. (0224.vpr@53.76--53.91) [199851]"}
            y + 1 <= (length_1(a_2): int);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    res := (if x < (length_1(a_2): int) && (y < (length_1(a_2): int) && Heap[(loc(a_2, x): Ref), val] == Heap[(loc(a_2, y): Ref), val]) then f_loop(Heap, a_2, x, y, 1) else 0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 0 <= res && (x + res <= length(a) && y + res <= length(a)) -- 0224.vpr@55.2--55.61
    assume 0 <= res;
    assume x + res <= (length_1(a_2): int);
    assume y + res <= (length_1(a_2): int);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x + res < length(a) && y + res < length(a) ==>
  //   loc(a, x + res).val != loc(a, y + res).val -- 0224.vpr@56.3--56.91
    if (x + res < (length_1(a_2): int) && y + res < (length_1(a_2): int)) {
      
      // -- Check definedness of loc(a, x + res).val != loc(a, y + res).val
        assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, x + res).val (0224.vpr@56.10--56.91) [199852]"}
          HasDirectPerm(Mask, (loc(a_2, x + res): Ref), val);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, y + res).val (0224.vpr@56.10--56.91) [199853]"}
          HasDirectPerm(Mask, (loc(a_2, y + res): Ref), val);
      assume Heap[(loc(a_2, x + res): Ref), val] != Heap[(loc(a_2, y + res): Ref), val];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale x + res < length(a) && y + res < length(a) ==>
  //   loc(a, x + res).val != loc(a, y + res).val -- 0224.vpr@58.3--58.91
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (x + res < (length_1(a_2): int) && y + res < (length_1(a_2): int)) {
      
      // -- Check definedness of loc(a, x + res).val != loc(a, y + res).val
        assert {:msg "  Exhale might fail. There might be insufficient permission to access loc(a, x + res).val (0224.vpr@58.10--58.91) [199854]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, x + res): Ref), val);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access loc(a, y + res).val (0224.vpr@58.10--58.91) [199855]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, y + res): Ref), val);
      assert {:msg "  Exhale might fail. Assertion loc(a, x + res).val != loc(a, y + res).val might not hold. (0224.vpr@58.10--58.91) [199856]"}
        Heap[(loc(a_2, x + res): Ref), val] != Heap[(loc(a_2, y + res): Ref), val];
    }
    assume state(Heap, Mask);
}