// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:30:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/arraylist-quantified-permissions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_49: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_49, f_30] }
  Heap[o_49, $allocated] ==> Heap[Heap[o_49, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref, f_28: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, f_28] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_59, f_28) ==> Heap[o_59, f_28] == ExhaleHeap[o_59, f_28]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31), ExhaleHeap[null, PredicateMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> Heap[null, PredicateMaskField(pm_f_31)] == ExhaleHeap[null, PredicateMaskField(pm_f_31)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_28: (Field A B) ::
    { ExhaleHeap[o2_31, f_28] }
    Heap[null, PredicateMaskField(pm_f_31)][o2_31, f_28] ==> Heap[o2_31, f_28] == ExhaleHeap[o2_31, f_28]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31), ExhaleHeap[null, WandMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> Heap[null, WandMaskField(pm_f_31)] == ExhaleHeap[null, WandMaskField(pm_f_31)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_28: (Field A B) ::
    { ExhaleHeap[o2_31, f_28] }
    Heap[null, WandMaskField(pm_f_31)][o2_31, f_28] ==> Heap[o2_31, f_28] == ExhaleHeap[o2_31, f_28]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_59, $allocated] ==> ExhaleHeap[o_59, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_49: Ref, f_70: (Field A B), v: B ::
  { Heap[o_49, f_70:=v] }
  succHeap(Heap, Heap[o_49, f_70:=v])
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

function  neverTriggered1(i: int): bool;
function  neverTriggered2(i: int): bool;
function  neverTriggered3(i_2: int): bool;
function  neverTriggered4(i_1: int): bool;
function  neverTriggered5(i_2: int): bool;
function  neverTriggered6(i_4_1: int): bool;
function  neverTriggered7(i_6_2: int): bool;
function  neverTriggered8(i_9_1: int): bool;
function  neverTriggered9(i: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(i_3_2: int): bool;
function  neverTriggered12(i_5_1: int): bool;
function  neverTriggered13(i_8_1: int): bool;
function  neverTriggered14(i_14_1: int): bool;
function  neverTriggered15(i_19_1: int): bool;
function  neverTriggered16(i_22_1: int): bool;
function  neverTriggered17(i_27_2: int): bool;
function  neverTriggered18(i_30: int): bool;
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
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
function  invRecv16(recv: Ref): int;
function  invRecv17(recv: Ref): int;
function  invRecv18(recv: Ref): int;
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
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: length
// - height 0: itemAt
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
// Translation of domain Pair
// ==================================================

// The type for domain Pair
type PairDomainType T1 T2;

// Translation of domain function first
function  first_1<T1, T2>(p_3: (PairDomainType T1 T2)): T1;

// Translation of domain function second
function  second_1<T1, T2>(p_3: (PairDomainType T1 T2)): T2;

// ==================================================
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_6: int): Ref;

// Translation of domain function len
function  len(a_3: ArrayDomainType): int;

// Translation of domain function inv_loc
function  inv_loc(r_4: Ref): PairDomainType ArrayDomainType int;

// Translation of domain axiom loc_injective
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  0 <= i && i < (len(a_2): int) ==> (first_1((inv_loc((loc(a_2, i): Ref)): PairDomainType ArrayDomainType int)): ArrayDomainType) == a_2 && (second_1((inv_loc((loc(a_2, i): Ref)): PairDomainType ArrayDomainType int)): int) == i
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
const unique elems_1: Field NormalField ArrayDomainType;
axiom !IsPredicateField(elems_1);
axiom !IsWandField(elems_1);
const unique size_3: Field NormalField int;
axiom !IsPredicateField(size_3);
axiom !IsWandField(size_3);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length_1(Heap, this) }
  length_1(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length_1(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), AList#trigger(Heap, AList(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length_1(Heap, this) == Heap[this, size_3]
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, AList(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, AList(this)], this)) ==> length'(Heap, this) >= 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(AList(this), write) in this.size)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume AList#trigger(UnfoldingHeap, AList(this));
      assume UnfoldingHeap[null, AList(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, elems_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, size_3]), FrameFragment(AList#condqp1(UnfoldingHeap, this))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@37.1--42.2) [108775]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, AList(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, elems_1:=UnfoldingMask[this, elems_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, size_3:=UnfoldingMask[this, size_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, size_3];
      assume UnfoldingHeap[this, size_3] <= (len(UnfoldingHeap[this, elems_1]): int);
      assume 0 < (len(UnfoldingHeap[this, elems_1]): int);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@37.1--42.2) [108776]"}
        (forall i: int, i_22: int ::
        
        (((i != i_22 && (0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int))) && (0 <= i_22 && i_22 < (len(UnfoldingHeap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems_1], i): Ref) != (loc(UnfoldingHeap[this, elems_1], i_22): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems_1], i): Ref) } { (loc(UnfoldingHeap[this, elems_1], i): Ref) }
          (0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange1((loc(UnfoldingHeap[this, elems_1], i): Ref)) && invRecv1((loc(UnfoldingHeap[this, elems_1], i): Ref)) == i
        );
        assume (forall o_9: Ref ::
          { invRecv1(o_9) }
          ((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(UnfoldingHeap[this, elems_1], invRecv1(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems_1], i): Ref) } { (loc(UnfoldingHeap[this, elems_1], i): Ref) }
          0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int) ==> (loc(UnfoldingHeap[this, elems_1], i): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems_1], invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == UnfoldingMask[o_9, val] + FullPerm) && (!(((0 <= invRecv1(o_9) && invRecv1(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == UnfoldingMask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@37.1--42.2) [108777]"}
        HasDirectPerm(UnfoldingMask, this, size_3);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
        // register all known folded permissions guarded by predicate AList
        havoc newPMask;
        assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
          { newPMask[o_5, f_11] }
          Heap[null, AList#sm(this)][o_5, f_11] ==> newPMask[o_5, f_11]
        );
        assume (forall i_1: int ::
          
          0 <= i_1 && i_1 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_1): Ref), val]
        );
        Heap := Heap[null, AList#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, size_3];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of length might not hold. Assertion result >= 0 might not hold. (arraylist-quantified-permissions.vpr@39.11--39.22) [108778]"}
      Result >= 0;
}

// ==================================================
// Translation of function itemAt
// ==================================================

// Uninterpreted function definitions
function  itemAt(Heap: HeapType, this: Ref, index: int): int;
function  itemAt'(Heap: HeapType, this: Ref, index: int): int;
axiom (forall Heap: HeapType, this: Ref, index: int ::
  { itemAt(Heap, this, index) }
  itemAt(Heap, this, index) == itemAt'(Heap, this, index) && dummyFunction(itemAt#triggerStateless(this, index))
);
axiom (forall Heap: HeapType, this: Ref, index: int ::
  { itemAt'(Heap, this, index) }
  dummyFunction(itemAt#triggerStateless(this, index))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, index: int ::
  { state(Heap, Mask), itemAt(Heap, this, index) } { state(Heap, Mask), itemAt#triggerStateless(this, index), AList#trigger(Heap, AList(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= index && index < length_1(Heap, this) ==> itemAt(Heap, this, index) == Heap[(loc(Heap[this, elems_1], index): Ref), val]
);

// Framing axioms
function  itemAt#frame(frame: FrameType, this: Ref, index: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, index: int ::
  { state(Heap, Mask), itemAt'(Heap, this, index) }
  state(Heap, Mask) ==> itemAt'(Heap, this, index) == itemAt#frame(Heap[null, AList(this)], this, index)
);

// Trigger function (controlling recursive postconditions)
function  itemAt#trigger(frame: FrameType, this: Ref, index: int): bool;

// State-independent trigger function
function  itemAt#triggerStateless(this: Ref, index: int): int;

// Check contract well-formedness and postcondition
procedure itemAt#definedness(this: Ref, index: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= index;
    assume state(Heap, Mask);
    
    // -- Check definedness of index < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@46.34--46.46) [108779]"}
          NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume index < length_1(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(AList(this), write) in loc(this.elems, index).val)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume AList#trigger(UnfoldingHeap, AList(this));
      assume UnfoldingHeap[null, AList(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, elems_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, size_3]), FrameFragment(AList#condqp1(UnfoldingHeap, this))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@44.1--49.2) [108780]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, AList(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, elems_1:=UnfoldingMask[this, elems_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, size_3:=UnfoldingMask[this, size_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, size_3];
      assume UnfoldingHeap[this, size_3] <= (len(UnfoldingHeap[this, elems_1]): int);
      assume 0 < (len(UnfoldingHeap[this, elems_1]): int);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@44.1--49.2) [108781]"}
        (forall i: int, i_22: int ::
        
        (((i != i_22 && (0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int))) && (0 <= i_22 && i_22 < (len(UnfoldingHeap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems_1], i): Ref) != (loc(UnfoldingHeap[this, elems_1], i_22): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems_1], i): Ref) } { (loc(UnfoldingHeap[this, elems_1], i): Ref) }
          (0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange2((loc(UnfoldingHeap[this, elems_1], i): Ref)) && invRecv2((loc(UnfoldingHeap[this, elems_1], i): Ref)) == i
        );
        assume (forall o_9: Ref ::
          { invRecv2(o_9) }
          ((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (loc(UnfoldingHeap[this, elems_1], invRecv2(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems_1], i): Ref) } { (loc(UnfoldingHeap[this, elems_1], i): Ref) }
          0 <= i && i < (len(UnfoldingHeap[this, elems_1]): int) ==> (loc(UnfoldingHeap[this, elems_1], i): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems_1], invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == UnfoldingMask[o_9, val] + FullPerm) && (!(((0 <= invRecv2(o_9) && invRecv2(o_9) < (len(UnfoldingHeap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == UnfoldingMask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@44.1--49.2) [108782]"}
        HasDirectPerm(UnfoldingMask, this, elems_1);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(this.elems, index).val (arraylist-quantified-permissions.vpr@44.1--49.2) [108783]"}
        HasDirectPerm(UnfoldingMask, (loc(UnfoldingHeap[this, elems_1], index): Ref), val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
        // register all known folded permissions guarded by predicate AList
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, AList#sm(this)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        assume (forall i_1: int ::
          
          0 <= i_1 && i_1 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_1): Ref), val]
        );
        Heap := Heap[null, AList#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[(loc(Heap[this, elems_1], index): Ref), val];
}

// ==================================================
// Translation of predicate AList
// ==================================================

type PredicateType_AList;
function  AList(this: Ref): Field PredicateType_AList FrameType;
function  AList#sm(this: Ref): Field PredicateType_AList PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(AList(this)) }
  PredicateMaskField(AList(this)) == AList#sm(this)
);
axiom (forall this: Ref ::
  { AList(this) }
  IsPredicateField(AList(this))
);
axiom (forall this: Ref ::
  { AList(this) }
  getPredWandId(AList(this)) == 0
);
function  AList#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  AList#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { AList(this), AList(this2) }
  AList(this) == AList(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { AList#sm(this), AList#sm(this2) }
  AList#sm(this) == AList#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { AList#trigger(Heap, AList(this)) }
  AList#everUsed(AList(this))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(this.elems, i) } 0 <= i && i < len(this.elems) ==> acc(loc(this.elems, i).val, write)) in predicate AList
// ==================================================

function  AList#condqp1(Heap: HeapType, this_2_1: Ref): int;
function  sk_AList#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len(Heap2Heap[this, elems_1]): int)) && NoPerm < FullPerm <==> (0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len(Heap1Heap[this, elems_1]): int)) && NoPerm < FullPerm) && ((0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len(Heap2Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(Heap2Heap[this, elems_1], sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this))): Ref), val] == Heap1Heap[(loc(Heap1Heap[this, elems_1], sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this))): Ref), val]) ==> AList#condqp1(Heap2Heap, this) == AList#condqp1(Heap1Heap, this)
);

procedure AList#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var i_5: int;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of AList
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= this.size
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@30.1--35.2) [108784]"}
        HasDirectPerm(Mask, this, size_3);
    assume 0 <= Heap[this, size_3];
    
    // -- Check definedness of this.size <= len(this.elems)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@30.1--35.2) [108785]"}
        HasDirectPerm(Mask, this, size_3);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [108786]"}
        HasDirectPerm(Mask, this, elems_1);
    assume Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    
    // -- Check definedness of 0 < len(this.elems)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [108787]"}
        HasDirectPerm(Mask, this, elems_1);
    assume 0 < (len(Heap[this, elems_1]): int);
    
    // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } 0 <= i && i < len(this.elems) ==> acc(loc(this.elems, i).val, write))
      if (*) {
        if (0 <= i_5) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [108788]"}
            HasDirectPerm(Mask, this, elems_1);
        }
        if (0 <= i_5 && i_5 < (len(Heap[this, elems_1]): int)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [108789]"}
            HasDirectPerm(Mask, this, elems_1);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@30.1--35.2) [108790]"}
      (forall i_2: int, i_2_2: int ::
      
      (((i_2 != i_2_2 && (0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int))) && (0 <= i_2_2 && i_2_2 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_2): Ref) != (loc(Heap[this, elems_1], i_2_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_2: int ::
        { (loc(Heap[this, elems_1], i_2): Ref) } { (loc(Heap[this, elems_1], i_2): Ref) }
        (0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange3((loc(Heap[this, elems_1], i_2): Ref)) && invRecv3((loc(Heap[this, elems_1], i_2): Ref)) == i_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((0 <= invRecv3(o_9) && invRecv3(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (loc(Heap[this, elems_1], invRecv3(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2: int ::
        { (loc(Heap[this, elems_1], i_2): Ref) } { (loc(Heap[this, elems_1], i_2): Ref) }
        0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int) ==> (loc(Heap[this, elems_1], i_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv3(o_9) && invRecv3(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv3(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv3(o_9) && invRecv3(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
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
// Translation of method create
// ==================================================

procedure create() returns (this: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var freshObj: Ref;
  var a_2: ArrayDomainType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
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
    perm := FullPerm;
    PostMask := PostMask[null, AList(this):=PostMask[null, AList(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@54.11--54.23) [108791]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this) == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this := new(elems, size) -- arraylist-quantified-permissions.vpr@56.3--56.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, elems_1:=Mask[this, elems_1] + FullPerm];
    Mask := Mask[this, size_3:=Mask[this, size_3] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale len(a) == 10 -- arraylist-quantified-permissions.vpr@59.3--59.22
    assume (len(a_2): int) == 10;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- arraylist-quantified-permissions.vpr@60.3--60.68
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@60.10--60.68) [108792]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_1): Ref)) && invRecv4((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv4(o_9) && invRecv4(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := 0 -- arraylist-quantified-permissions.vpr@62.3--62.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@62.3--62.17) [108793]"}
      FullPerm == Mask[this, size_3];
    Heap := Heap[this, size_3:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@63.3--63.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@63.3--63.18) [108794]"}
      FullPerm == Mask[this, elems_1];
    Heap := Heap[this, elems_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@65.3--65.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@65.3--65.24) [108797]"}
        perm <= Mask[this, elems_1];
    }
    Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@65.3--65.24) [108799]"}
        perm <= Mask[this, size_3];
    }
    Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [108800]"}
      0 <= Heap[this, size_3];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [108801]"}
      Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [108802]"}
      0 < (len(Heap[this, elems_1]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@65.3--65.24) [108804]"}
        (forall i_2: int, i_2_2: int ::
        { neverTriggered5(i_2), neverTriggered5(i_2_2) }
        (((i_2 != i_2_2 && (0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int))) && (0 <= i_2_2 && i_2_2 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_2): Ref) != (loc(Heap[this, elems_1], i_2_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@65.3--65.24) [108805]"}
        (forall i_2: int ::
        { (loc(Heap[this, elems_1], i_2): Ref) } { (loc(Heap[this, elems_1], i_2): Ref) }
        0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int) ==> Mask[(loc(Heap[this, elems_1], i_2): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_2: int ::
        { (loc(Heap[this, elems_1], i_2): Ref) } { (loc(Heap[this, elems_1], i_2): Ref) }
        (0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange5((loc(Heap[this, elems_1], i_2): Ref)) && invRecv5((loc(Heap[this, elems_1], i_2): Ref)) == i_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (0 <= invRecv5(o_9) && invRecv5(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> (loc(Heap[this, elems_1], invRecv5(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((0 <= invRecv5(o_9) && invRecv5(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange5(o_9)) ==> (loc(Heap[this, elems_1], invRecv5(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv5(o_9) && invRecv5(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
      { newPMask[o_42, f_55] }
      Heap[null, AList#sm(this)][o_42, f_55] ==> newPMask[o_42, f_55]
    );
    assume (forall i_3_2: int ::
      
      0 <= i_3_2 && i_3_2 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_3_2): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of create might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@53.11--53.27) [108807]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of create might not hold. Assertion length(this) == 0 might not hold. (arraylist-quantified-permissions.vpr@54.11--54.28) [108808]"}
      length_1(Heap, this) == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method addAtEnd
// ==================================================

procedure addAtEnd(this: Ref, elem_1: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_8: int;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: ArrayDomainType;
  var i_9: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var i_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.16--71.28) [108809]"}
          NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (0 < length_1(Heap, this)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of itemAt(this, length(this) - 1) <= elem
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.46--71.58) [108810]"}
            NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.33--71.63) [108811]"}
            NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
          assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= length(this) - 1 might not hold. (arraylist-quantified-permissions.vpr@71.33--71.63) [108812]"}
            0 <= length_1(Heap, this) - 1;
          assert {:msg "  Precondition of function itemAt might not hold. Assertion length(this) - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@71.33--71.63) [108813]"}
            length_1(Heap, this) - 1 < length_1(Heap, this);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume itemAt(Heap, this, length_1(Heap, this) - 1) <= elem_1;
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, AList(this):=PostMask[null, AList(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this) == old(length(this)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@73.11--73.23) [108814]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@73.31--73.43) [108815]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this) == length_1(oldHeap, this) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, length(this) - 1) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@74.24--74.36) [108816]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@74.11--74.41) [108817]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= length(this) - 1 might not hold. (arraylist-quantified-permissions.vpr@74.11--74.41) [108818]"}
          0 <= length_1(PostHeap, this) - 1;
        assert {:msg "  Precondition of function itemAt might not hold. Assertion length(this) - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@74.11--74.41) [108819]"}
          length_1(PostHeap, this) - 1 < length_1(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, length_1(PostHeap, this) - 1) == elem_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(itemAt(this, i)) } 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i)))
      if (*) {
        if (0 <= i_8) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.46--75.58) [108820]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_8 && i_8 < length_1(oldHeap, this)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.64--75.79) [108821]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@75.64--75.79) [108822]"}
              0 <= i_8;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@75.64--75.79) [108823]"}
              i_8 < length_1(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.87--75.102) [108824]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@75.87--75.102) [108825]"}
              0 <= i_8;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@75.87--75.102) [108826]"}
              i_8 < length_1(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, i_1) }
      0 <= i_1 && i_1 < length_1(oldHeap, this) ==> itemAt(PostHeap, this, i_1) == itemAt(oldHeap, this, i_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, old(length(this))) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@76.28--76.40) [108827]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@76.11--76.42) [108828]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@76.11--76.42) [108829]"}
          0 <= length_1(oldHeap, this);
        assert {:msg "  Precondition of function itemAt might not hold. Assertion old(length(this)) < length(this) might not hold. (arraylist-quantified-permissions.vpr@76.11--76.42) [108830]"}
          length_1(oldHeap, this) < length_1(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, length_1(oldHeap, this)) == elem_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@78.3--78.26
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@78.3--78.26) [108833]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, AList(this))) {
        havoc newVersion;
        Heap := Heap[null, AList(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, size_3];
    assume Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    assume 0 < (len(Heap[this, elems_1]): int);
    havoc QPMask;
    assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@78.3--78.26) [108836]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len(Heap[this, elems_1]): int))) && (0 <= i_4_2 && i_4_2 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_4_1): Ref) != (loc(Heap[this, elems_1], i_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { (loc(Heap[this, elems_1], i_4_1): Ref) } { (loc(Heap[this, elems_1], i_4_1): Ref) }
        (0 <= i_4_1 && i_4_1 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange6((loc(Heap[this, elems_1], i_4_1): Ref)) && invRecv6((loc(Heap[this, elems_1], i_4_1): Ref)) == i_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        ((0 <= invRecv6(o_9) && invRecv6(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (loc(Heap[this, elems_1], invRecv6(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { (loc(Heap[this, elems_1], i_4_1): Ref) } { (loc(Heap[this, elems_1], i_4_1): Ref) }
        0 <= i_4_1 && i_4_1 < (len(Heap[this, elems_1]): int) ==> (loc(Heap[this, elems_1], i_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv6(o_9) && invRecv6(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv6(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv6(o_9) && invRecv6(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.size == len(this.elems)) -- arraylist-quantified-permissions.vpr@80.3--86.4
    
    // -- Check definedness of this.size == len(this.elems)
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@80.7--80.35) [108837]"}
        HasDirectPerm(Mask, this, size_3);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@80.7--80.35) [108838]"}
        HasDirectPerm(Mask, this, elems_1);
    if (Heap[this, size_3] == (len(Heap[this, elems_1]): int)) {
      
      // -- Translating statement: inhale len(a) == len(this.elems) * 2 &&
  //   (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- arraylist-quantified-permissions.vpr@82.5--82.104
        
        // -- Check definedness of len(a) == len(this.elems) * 2
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@82.12--82.104) [108839]"}
            HasDirectPerm(Mask, this, elems_1);
        assume (len(a_2): int) == (len(Heap[this, elems_1]): int) * 2;
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@82.12--82.104) [108840]"}
          (forall i_6_2: int, i_6_3: int ::
          
          (((i_6_2 != i_6_3 && (0 <= i_6_2 && i_6_2 < (len(a_2): int))) && (0 <= i_6_3 && i_6_3 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_2): Ref) != (loc(a_2, i_6_3): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_6_2: int ::
            { (loc(a_2, i_6_2): Ref) } { (loc(a_2, i_6_2): Ref) }
            (0 <= i_6_2 && i_6_2 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_6_2): Ref)) && invRecv7((loc(a_2, i_6_2): Ref)) == i_6_2
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            ((0 <= invRecv7(o_9) && invRecv7(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_9) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_6_2: int ::
            { (loc(a_2, i_6_2): Ref) } { (loc(a_2, i_6_2): Ref) }
            0 <= i_6_2 && i_6_2 < (len(a_2): int) ==> (loc(a_2, i_6_2): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((0 <= invRecv7(o_9) && invRecv7(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv7(o_9) && invRecv7(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i) }
  //     { loc(this.elems, i) }
  //     0 <= i && i < len(this.elems) ==>
  //     loc(a, i).val == loc(this.elems, i).val) -- arraylist-quantified-permissions.vpr@84.5--84.99
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } { loc(this.elems, i) } 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val)
          if (*) {
            if (0 <= i_9) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@84.12--84.99) [108841]"}
                HasDirectPerm(Mask, this, elems_1);
            }
            if (0 <= i_9 && i_9 < (len(Heap[this, elems_1]): int)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i).val (arraylist-quantified-permissions.vpr@84.12--84.99) [108842]"}
                HasDirectPerm(Mask, (loc(a_2, i_9): Ref), val);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@84.12--84.99) [108843]"}
                HasDirectPerm(Mask, this, elems_1);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@84.12--84.99) [108844]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems_1], i_9): Ref), val);
            }
            assume false;
          }
        assume (forall i_8_1: int ::
          { (loc(a_2, i_8_1): Ref) } { (loc(Heap[this, elems_1], i_8_1): Ref) }
          0 <= i_8_1 && i_8_1 < (len(Heap[this, elems_1]): int) ==> Heap[(loc(a_2, i_8_1): Ref), val] == Heap[(loc(Heap[this, elems_1], i_8_1): Ref), val]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@85.5--85.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@85.5--85.20) [108845]"}
          FullPerm == Mask[this, elems_1];
        Heap := Heap[this, elems_1:=a_2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(this.elems, this.size).val := elem -- arraylist-quantified-permissions.vpr@88.3--88.41
    
    // -- Check definedness of loc(this.elems, this.size)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@88.3--88.41) [108846]"}
        HasDirectPerm(Mask, this, elems_1);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@88.3--88.41) [108847]"}
        HasDirectPerm(Mask, this, size_3);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, this.size).val (arraylist-quantified-permissions.vpr@88.3--88.41) [108848]"}
      FullPerm == Mask[(loc(Heap[this, elems_1], Heap[this, size_3]): Ref), val];
    Heap := Heap[(loc(Heap[this, elems_1], Heap[this, size_3]): Ref), val:=elem_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := this.size + 1 -- arraylist-quantified-permissions.vpr@89.3--89.29
    
    // -- Check definedness of this.size + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@89.3--89.29) [108849]"}
        HasDirectPerm(Mask, this, size_3);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@89.3--89.29) [108850]"}
      FullPerm == Mask[this, size_3];
    Heap := Heap[this, size_3:=Heap[this, size_3] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@91.3--91.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@91.3--91.24) [108853]"}
        perm <= Mask[this, elems_1];
    }
    Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@91.3--91.24) [108855]"}
        perm <= Mask[this, size_3];
    }
    Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [108856]"}
      0 <= Heap[this, size_3];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [108857]"}
      Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [108858]"}
      0 < (len(Heap[this, elems_1]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@91.3--91.24) [108860]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered8(i_9_1), neverTriggered8(i_9_2) }
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < (len(Heap[this, elems_1]): int))) && (0 <= i_9_2 && i_9_2 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_9_1): Ref) != (loc(Heap[this, elems_1], i_9_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@91.3--91.24) [108861]"}
        (forall i_9_1: int ::
        { (loc(Heap[this, elems_1], i_9_1): Ref) } { (loc(Heap[this, elems_1], i_9_1): Ref) }
        0 <= i_9_1 && i_9_1 < (len(Heap[this, elems_1]): int) ==> Mask[(loc(Heap[this, elems_1], i_9_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_9_1: int ::
        { (loc(Heap[this, elems_1], i_9_1): Ref) } { (loc(Heap[this, elems_1], i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange8((loc(Heap[this, elems_1], i_9_1): Ref)) && invRecv8((loc(Heap[this, elems_1], i_9_1): Ref)) == i_9_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (0 <= invRecv8(o_9) && invRecv8(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange8(o_9)) ==> (loc(Heap[this, elems_1], invRecv8(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((0 <= invRecv8(o_9) && invRecv8(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange8(o_9)) ==> (loc(Heap[this, elems_1], invRecv8(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv8(o_9) && invRecv8(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange8(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_56: Ref, f: (Field A B) ::
      { newPMask[o_56, f] }
      Heap[null, AList#sm(this)][o_56, f] ==> newPMask[o_56, f]
    );
    assume (forall i_10_1: int ::
      
      0 <= i_10_1 && i_10_1 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_10_1): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@72.11--72.27) [108863]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion length(this) == old(length(this)) + 1 might not hold. (arraylist-quantified-permissions.vpr@73.11--73.48) [108864]"}
      length_1(Heap, this) == length_1(oldHeap, this) + 1;
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, length(this) - 1) == elem might not hold. (arraylist-quantified-permissions.vpr@74.11--74.49) [108865]"}
      itemAt(Heap, this, length_1(Heap, this) - 1) == elem_1;
    if (*) {
      if (0 <= i_2 && i_2 < length_1(oldHeap, this)) {
        assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, i) == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@75.11--75.103) [108866]"}
          itemAt(Heap, this, i_2) == itemAt(oldHeap, this, i_2);
      }
      assume false;
    }
    assume (forall i_3_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, i_3_1) }
      0 <= i_3_1 && i_3_1 < length_1(oldHeap, this) ==> itemAt(Heap, this, i_3_1) == itemAt(oldHeap, this, i_3_1)
    );
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, old(length(this))) == elem might not hold. (arraylist-quantified-permissions.vpr@76.11--76.50) [108867]"}
      itemAt(Heap, this, length_1(oldHeap, this)) == elem_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(this: Ref, elem_1: int) returns (j: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var k_23: int;
  var k_24: int;
  var k_8: int;
  var k_21: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var k_13: int;
  var a_2: ArrayDomainType;
  var i_27: int;
  var t_2: int;
  var i_9_1: int;
  var i_11_1: int;
  var i_16: int;
  var i_42: int;
  var i_51: int;
  var i_23_1: int;
  var i_25_1: int;
  var k_4_2: int;
  var k_6_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, AList(this):=PostMask[null, AList(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume 0 <= j;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of j < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@99.25--99.37) [108868]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume j < length_1(PostHeap, this);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this) == old(length(this)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@100.11--100.23) [108869]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@100.31--100.43) [108870]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this) == length_1(oldHeap, this) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k)))
      if (*) {
        if (0 <= k_23 && k_23 < j) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@101.48--101.63) [108871]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@101.48--101.63) [108872]"}
              0 <= k_23;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@101.48--101.63) [108873]"}
              k_23 < length_1(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@101.71--101.86) [108874]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@101.71--101.86) [108875]"}
              0 <= k_23;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@101.71--101.86) [108876]"}
              k_23 < length_1(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, k_1) }
      0 <= k_1 && k_1 < j ==> itemAt(PostHeap, this, k_1) == itemAt(oldHeap, this, k_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, j) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@102.11--102.26) [108877]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@102.11--102.26) [108878]"}
          0 <= j;
        assert {:msg "  Precondition of function itemAt might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@102.11--102.26) [108879]"}
          j < length_1(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, j) == elem_1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { itemAt(this, k) } j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1)))
      if (*) {
        if (j < k_24) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.41--103.53) [108880]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (j < k_24 && k_24 < length_1(PostHeap, this)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.58--103.73) [108881]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@103.58--103.73) [108882]"}
              0 <= k_24;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@103.58--103.73) [108883]"}
              k_24 < length_1(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.81--103.100) [108884]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k - 1 might not hold. (arraylist-quantified-permissions.vpr@103.81--103.100) [108885]"}
              0 <= k_24 - 1;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@103.81--103.100) [108886]"}
              k_24 - 1 < length_1(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_3: int ::
      { itemAt#frame(PostHeap[null, AList(this)], this, k_3) }
      j < k_3 && k_3 < length_1(PostHeap, this) ==> itemAt(PostHeap, this, k_3) == itemAt(oldHeap, this, k_3 - 1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: j := 0 -- arraylist-quantified-permissions.vpr@105.3--105.9
    j := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < length(this) && itemAt(this, j) < elem) -- arraylist-quantified-permissions.vpr@106.3--116.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(AList(this), write) might not hold on entry. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@107.15--107.31) [108887]"}
            perm <= Mask[null, AList(this)];
        }
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not hold on entry. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [108888]"}
          0 <= j;
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not hold on entry. Assertion j <= length(this) might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [108889]"}
          j <= length_1(Heap, this);
        if (j > 0) {
          assert {:msg "  Loop invariant j > 0 ==> itemAt(this, j - 1) <= elem might not hold on entry. Assertion itemAt(this, j - 1) <= elem might not hold. (arraylist-quantified-permissions.vpr@109.15--109.49) [108890]"}
            itemAt(Heap, this, j - 1) <= elem_1;
        }
        assert {:msg "  Loop invariant length(this) == old(length(this)) might not hold on entry. Assertion length(this) == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@110.15--110.48) [108891]"}
          length_1(Heap, this) == length_1(oldHeap, this);
        if (*) {
          if (0 <= k_8 && k_8 < length_1(Heap, this)) {
            assert {:msg "  Loop invariant (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))) might not hold on entry. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@111.15--111.122) [108892]"}
              itemAt(Heap, this, k_8) == itemAt(oldHeap, this, k_8);
          }
          assume false;
        }
        assume (forall k_9_1_1: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_9_1_1) }
          0 <= k_9_1_1 && k_9_1_1 < length_1(Heap, this) ==> itemAt(Heap, this, k_9_1_1) == itemAt(oldHeap, this, k_9_1_1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= j;
        assume state(Heap, Mask);
        
        // -- Check definedness of j <= length(this)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@108.30--108.42) [108893]"}
              NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume j <= length_1(Heap, this);
        assume state(Heap, Mask);
        if (j > 0) {
          assume state(Heap, Mask);
          
          // -- Check definedness of itemAt(this, j - 1) <= elem
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@109.25--109.41) [108894]"}
                NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
              assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j - 1 might not hold. (arraylist-quantified-permissions.vpr@109.25--109.41) [108895]"}
                0 <= j - 1;
              assert {:msg "  Precondition of function itemAt might not hold. Assertion j - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@109.25--109.41) [108896]"}
                j - 1 < length_1(Heap, this);
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume itemAt(Heap, this, j - 1) <= elem_1;
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of length(this) == old(length(this))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@110.15--110.27) [108897]"}
              NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@110.35--110.47) [108898]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume length_1(Heap, this) == length_1(oldHeap, this);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k)))
          if (*) {
            if (0 <= k_21) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.68--111.80) [108899]"}
                  NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            if (0 <= k_21 && k_21 < length_1(Heap, this)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.85--111.99) [108900]"}
                  NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
                assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@111.85--111.99) [108901]"}
                  0 <= k_21;
                assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@111.85--111.99) [108902]"}
                  k_21 < length_1(Heap, this);
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.107--111.121) [108903]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@111.107--111.121) [108904]"}
                  0 <= k_21;
                assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@111.107--111.121) [108905]"}
                  k_21 < length_1(oldHeap, this);
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall k_11: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_11) }
          0 <= k_11 && k_11 < length_1(Heap, this) ==> itemAt(Heap, this, k_11) == itemAt(oldHeap, this, k_11)
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
        assume state(Heap, Mask);
        assume 0 <= j;
        assume state(Heap, Mask);
        assume j <= length_1(Heap, this);
        if (j > 0) {
          assume state(Heap, Mask);
          assume itemAt(Heap, this, j - 1) <= elem_1;
        }
        assume state(Heap, Mask);
        assume length_1(Heap, this) == length_1(oldHeap, this);
        assume state(Heap, Mask);
        assume (forall k_12: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_12) }
          0 <= k_12 && k_12 < length_1(Heap, this) ==> itemAt(Heap, this, k_12) == itemAt(oldHeap, this, k_12)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of j < length(this) && itemAt(this, j) < elem
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@106.14--106.26) [108906]"}
              NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (j < length_1(Heap, this)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@106.30--106.44) [108907]"}
                NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
              assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@106.30--106.44) [108908]"}
                0 <= j;
              assert {:msg "  Precondition of function itemAt might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@106.30--106.44) [108909]"}
                j < length_1(Heap, this);
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume j < length_1(Heap, this) && itemAt(Heap, this, j) < elem_1;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@113.5--113.28
            assume AList#trigger(Heap, AList(this));
            assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@113.5--113.28) [108910]"}
                perm <= Mask[null, AList(this)];
            }
            Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, AList(this))) {
                havoc newVersion;
                Heap := Heap[null, AList(this):=newVersion];
              }
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
            assume state(Heap, Mask);
            assume 0 <= Heap[this, size_3];
            assume Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
            assume 0 < (len(Heap[this, elems_1]): int);
            havoc QPMask;
            assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@113.5--113.28) [108911]"}
              (forall i: int, i_22: int ::
              
              (((i != i_22 && (0 <= i && i < (len(Heap[this, elems_1]): int))) && (0 <= i_22 && i_22 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i): Ref) != (loc(Heap[this, elems_1], i_22): Ref)
            );
            
            // -- Define Inverse Function
              assume (forall i: int ::
                { (loc(Heap[this, elems_1], i): Ref) } { (loc(Heap[this, elems_1], i): Ref) }
                (0 <= i && i < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange9((loc(Heap[this, elems_1], i): Ref)) && invRecv9((loc(Heap[this, elems_1], i): Ref)) == i
              );
              assume (forall o_9: Ref ::
                { invRecv9(o_9) }
                ((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (loc(Heap[this, elems_1], invRecv9(o_9)): Ref) == o_9
              );
            
            // -- Assume set of fields is nonNull
              assume (forall i: int ::
                { (loc(Heap[this, elems_1], i): Ref) } { (loc(Heap[this, elems_1], i): Ref) }
                0 <= i && i < (len(Heap[this, elems_1]): int) ==> (loc(Heap[this, elems_1], i): Ref) != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, val] }
                (((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv9(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv9(o_9) && invRecv9(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- arraylist-quantified-permissions.vpr@114.5--114.15
            j := j + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@115.5--115.26
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@115.5--115.26) [108912]"}
                perm <= Mask[this, elems_1];
            }
            Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@115.5--115.26) [108913]"}
                perm <= Mask[this, size_3];
            }
            Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
            assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [108914]"}
              0 <= Heap[this, size_3];
            assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [108915]"}
              Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
            assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [108916]"}
              0 < (len(Heap[this, elems_1]): int);
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(this.elems, i) is injective
              assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@115.5--115.26) [108917]"}
                (forall i_1: int, i_1_1: int ::
                { neverTriggered10(i_1), neverTriggered10(i_1_1) }
                (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len(Heap[this, elems_1]): int))) && (0 <= i_1_1 && i_1_1 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_1): Ref) != (loc(Heap[this, elems_1], i_1_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@115.5--115.26) [108918]"}
                (forall i_1: int ::
                { (loc(Heap[this, elems_1], i_1): Ref) } { (loc(Heap[this, elems_1], i_1): Ref) }
                0 <= i_1 && i_1 < (len(Heap[this, elems_1]): int) ==> Mask[(loc(Heap[this, elems_1], i_1): Ref), val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver loc(this.elems, i)
              assume (forall i_1: int ::
                { (loc(Heap[this, elems_1], i_1): Ref) } { (loc(Heap[this, elems_1], i_1): Ref) }
                (0 <= i_1 && i_1 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange10((loc(Heap[this, elems_1], i_1): Ref)) && invRecv10((loc(Heap[this, elems_1], i_1): Ref)) == i_1
              );
              assume (forall o_9: Ref ::
                { invRecv10(o_9) }
                (0 <= invRecv10(o_9) && invRecv10(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> (loc(Heap[this, elems_1], invRecv10(o_9)): Ref) == o_9
              );
            
            // -- assume permission updates for field val
              assume (forall o_9: Ref ::
                { QPMask[o_9, val] }
                ((0 <= invRecv10(o_9) && invRecv10(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> (loc(Heap[this, elems_1], invRecv10(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv10(o_9) && invRecv10(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange10(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { QPMask[o_9, f_5] }
                f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            perm := FullPerm;
            Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume AList#trigger(Heap, AList(this));
            assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
            if (!HasDirectPerm(Mask, null, AList(this))) {
              Heap := Heap[null, AList#sm(this):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, AList(this):=freshVersion];
            }
            Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
            Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
            // register all known folded permissions guarded by predicate AList
            havoc newPMask;
            assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
              { newPMask[o_1, f_10] }
              Heap[null, AList#sm(this)][o_1, f_10] ==> newPMask[o_1, f_10]
            );
            assume (forall i_2: int ::
              
              0 <= i_2 && i_2 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_2): Ref), val]
            );
            Heap := Heap[null, AList#sm(this):=newPMask];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(AList(this), write) might not be preserved. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@107.15--107.31) [108919]"}
            perm <= Mask[null, AList(this)];
        }
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not be preserved. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [108920]"}
          0 <= j;
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not be preserved. Assertion j <= length(this) might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [108921]"}
          j <= length_1(Heap, this);
        if (j > 0) {
          assert {:msg "  Loop invariant j > 0 ==> itemAt(this, j - 1) <= elem might not be preserved. Assertion itemAt(this, j - 1) <= elem might not hold. (arraylist-quantified-permissions.vpr@109.15--109.49) [108922]"}
            itemAt(Heap, this, j - 1) <= elem_1;
        }
        assert {:msg "  Loop invariant length(this) == old(length(this)) might not be preserved. Assertion length(this) == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@110.15--110.48) [108923]"}
          length_1(Heap, this) == length_1(oldHeap, this);
        if (*) {
          if (0 <= k_13 && k_13 < length_1(Heap, this)) {
            assert {:msg "  Loop invariant (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))) might not be preserved. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@111.15--111.122) [108924]"}
              itemAt(Heap, this, k_13) == itemAt(oldHeap, this, k_13);
          }
          assume false;
        }
        assume (forall k_14_1: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_14_1) }
          0 <= k_14_1 && k_14_1 < length_1(Heap, this) ==> itemAt(Heap, this, k_14_1) == itemAt(oldHeap, this, k_14_1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j < length_1(Heap, this) && itemAt(Heap, this, j) < elem_1);
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
      assume state(Heap, Mask);
      assume 0 <= j;
      assume state(Heap, Mask);
      assume j <= length_1(Heap, this);
      if (j > 0) {
        assume state(Heap, Mask);
        assume itemAt(Heap, this, j - 1) <= elem_1;
      }
      assume state(Heap, Mask);
      assume length_1(Heap, this) == length_1(oldHeap, this);
      assume state(Heap, Mask);
      assume (forall k_15: int ::
        { itemAt#frame(oldHeap[null, AList(this)], this, k_15) }
        0 <= k_15 && k_15 < length_1(Heap, this) ==> itemAt(Heap, this, k_15) == itemAt(oldHeap, this, k_15)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@117.3--117.26
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@117.3--117.26) [108927]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, AList(this))) {
        havoc newVersion;
        Heap := Heap[null, AList(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, size_3];
    assume Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    assume 0 < (len(Heap[this, elems_1]): int);
    havoc QPMask;
    assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@117.3--117.26) [108930]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (0 <= i_3_2 && i_3_2 < (len(Heap[this, elems_1]): int))) && (0 <= i_3_3 && i_3_3 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_3_2): Ref) != (loc(Heap[this, elems_1], i_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { (loc(Heap[this, elems_1], i_3_2): Ref) } { (loc(Heap[this, elems_1], i_3_2): Ref) }
        (0 <= i_3_2 && i_3_2 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange11((loc(Heap[this, elems_1], i_3_2): Ref)) && invRecv11((loc(Heap[this, elems_1], i_3_2): Ref)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((0 <= invRecv11(o_9) && invRecv11(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (loc(Heap[this, elems_1], invRecv11(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { (loc(Heap[this, elems_1], i_3_2): Ref) } { (loc(Heap[this, elems_1], i_3_2): Ref) }
        0 <= i_3_2 && i_3_2 < (len(Heap[this, elems_1]): int) ==> (loc(Heap[this, elems_1], i_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv11(o_9) && invRecv11(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv11(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv11(o_9) && invRecv11(o_9) < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.size == len(this.elems)) -- arraylist-quantified-permissions.vpr@119.3--125.4
    
    // -- Check definedness of this.size == len(this.elems)
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@119.6--119.34) [108931]"}
        HasDirectPerm(Mask, this, size_3);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@119.6--119.34) [108932]"}
        HasDirectPerm(Mask, this, elems_1);
    if (Heap[this, size_3] == (len(Heap[this, elems_1]): int)) {
      
      // -- Translating statement: inhale len(a) == len(this.elems) * 2 &&
  //   (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- arraylist-quantified-permissions.vpr@121.5--121.103
        
        // -- Check definedness of len(a) == len(this.elems) * 2
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@121.12--121.103) [108933]"}
            HasDirectPerm(Mask, this, elems_1);
        assume (len(a_2): int) == (len(Heap[this, elems_1]): int) * 2;
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@121.12--121.103) [108934]"}
          (forall i_5_1: int, i_5_2: int ::
          
          (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < (len(a_2): int))) && (0 <= i_5_2 && i_5_2 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5_1): Ref) != (loc(a_2, i_5_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5_1: int ::
            { (loc(a_2, i_5_1): Ref) } { (loc(a_2, i_5_1): Ref) }
            (0 <= i_5_1 && i_5_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i_5_1): Ref)) && invRecv12((loc(a_2, i_5_1): Ref)) == i_5_1
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            ((0 <= invRecv12(o_9) && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5_1: int ::
            { (loc(a_2, i_5_1): Ref) } { (loc(a_2, i_5_1): Ref) }
            0 <= i_5_1 && i_5_1 < (len(a_2): int) ==> (loc(a_2, i_5_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((0 <= invRecv12(o_9) && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv12(o_9) && invRecv12(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall i: Int ::
  //     { loc(a, i).val }
  //     0 <= i && i < len(this.elems) ==>
  //     loc(a, i).val == loc(this.elems, i).val) -- arraylist-quantified-permissions.vpr@123.5--123.114
        
        // -- Check definedness of (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(this.elems) ==> loc(a, i).val == loc(this.elems, i).val)
          if (*) {
            if (0 <= i_27) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@123.12--123.114) [108935]"}
                HasDirectPerm(Mask, this, elems_1);
            }
            if (0 <= i_27 && i_27 < (len(Heap[this, elems_1]): int)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i).val (arraylist-quantified-permissions.vpr@123.12--123.114) [108936]"}
                HasDirectPerm(Mask, (loc(a_2, i_27): Ref), val);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@123.12--123.114) [108937]"}
                HasDirectPerm(Mask, this, elems_1);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@123.12--123.114) [108938]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems_1], i_27): Ref), val);
            }
            assume false;
          }
        assume (forall i_7_1: int ::
          { Heap[(loc(a_2, i_7_1): Ref), val] }
          0 <= i_7_1 && i_7_1 < (len(Heap[this, elems_1]): int) ==> Heap[(loc(a_2, i_7_1): Ref), val] == Heap[(loc(Heap[this, elems_1], i_7_1): Ref), val]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@124.5--124.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@124.5--124.20) [108939]"}
          FullPerm == Mask[this, elems_1];
        Heap := Heap[this, elems_1:=a_2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: t := this.size -- arraylist-quantified-permissions.vpr@127.3--127.27
    
    // -- Check definedness of this.size
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@127.3--127.27) [108940]"}
        HasDirectPerm(Mask, this, size_3);
    t_2 := Heap[this, size_3];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (t > j) -- arraylist-quantified-permissions.vpr@130.3--141.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108941]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [108942]"}
            perm <= Mask[this, elems_1];
        }
        Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108943]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@131.15--131.91) [108944]"}
            perm <= Mask[this, size_3];
        }
        Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108945]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@131.15--131.91) [108946]"}
            perm <= Mask[(loc(Heap[this, elems_1], j): Ref), val];
        }
        Mask := Mask[(loc(Heap[this, elems_1], j): Ref), val:=Mask[(loc(Heap[this, elems_1], j): Ref), val] - perm];
        assert {:msg "  Loop invariant j <= t && t <= this.size might not hold on entry. Assertion j <= t might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [108947]"}
          j <= t_2;
        assert {:msg "  Loop invariant j <= t && t <= this.size might not hold on entry. Assertion t <= this.size might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [108948]"}
          t_2 <= Heap[this, size_3];
        assert {:msg "  Loop invariant this.size == old(length(this)) might not hold on entry. Assertion this.size == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@133.15--133.45) [108949]"}
          Heap[this, size_3] == length_1(oldHeap, this);
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not hold on entry. Assertion -1 <= j might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [108950]"}
          -1 <= j;
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not hold on entry. Assertion this.size < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [108951]"}
          Heap[this, size_3] < (len(Heap[this, elems_1]): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(this.elems, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not hold on entry. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [108952]"}
            (forall i_8_1: int, i_8_2: int ::
            { neverTriggered13(i_8_1), neverTriggered13(i_8_2) }
            (((i_8_1 != i_8_2 && (j < i_8_1 && i_8_1 <= Heap[this, size_3])) && (j < i_8_2 && i_8_2 <= Heap[this, size_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_8_1): Ref) != (loc(Heap[this, elems_1], i_8_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not hold on entry. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@135.16--135.86) [108953]"}
            (forall i_8_1: int ::
            { (loc(Heap[this, elems_1], i_8_1): Ref) } { (loc(Heap[this, elems_1], i_8_1): Ref) }
            j < i_8_1 && i_8_1 <= Heap[this, size_3] ==> Mask[(loc(Heap[this, elems_1], i_8_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(this.elems, i)
          assume (forall i_8_1: int ::
            { (loc(Heap[this, elems_1], i_8_1): Ref) } { (loc(Heap[this, elems_1], i_8_1): Ref) }
            (j < i_8_1 && i_8_1 <= Heap[this, size_3]) && NoPerm < FullPerm ==> qpRange13((loc(Heap[this, elems_1], i_8_1): Ref)) && invRecv13((loc(Heap[this, elems_1], i_8_1): Ref)) == i_8_1
          );
          assume (forall o_9: Ref ::
            { invRecv13(o_9) }
            (j < invRecv13(o_9) && invRecv13(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(Heap[this, elems_1], invRecv13(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((j < invRecv13(o_9) && invRecv13(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(Heap[this, elems_1], invRecv13(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((j < invRecv13(o_9) && invRecv13(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange13(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (j <= i_9_1 && i_9_1 <= Heap[this, size_3]) {
            if (i_9_1 < t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))) might not hold on entry. Assertion loc(this.elems, i).val == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@136.15--136.137) [108954]"}
                Heap[(loc(Heap[this, elems_1], i_9_1): Ref), val] == itemAt(oldHeap, this, i_9_1);
            }
          }
          assume false;
        }
        assume (forall i_10_1_1: int ::
          { (loc(Heap[this, elems_1], i_10_1_1): Ref) }
          j <= i_10_1_1 && i_10_1_1 <= Heap[this, size_3] ==> i_10_1_1 < t_2 ==> Heap[(loc(Heap[this, elems_1], i_10_1_1): Ref), val] == itemAt(oldHeap, this, i_10_1_1)
        );
        if (*) {
          if (j < i_11_1 && i_11_1 <= Heap[this, size_3]) {
            if (i_11_1 > t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))) might not hold on entry. Assertion loc(this.elems, i).val == old(itemAt(this, i - 1)) might not hold. (arraylist-quantified-permissions.vpr@137.15--137.138) [108955]"}
                Heap[(loc(Heap[this, elems_1], i_11_1): Ref), val] == itemAt(oldHeap, this, i_11_1 - 1);
            }
          }
          assume false;
        }
        assume (forall i_12_1_1: int ::
          { (loc(Heap[this, elems_1], i_12_1_1): Ref) }
          j < i_12_1_1 && i_12_1_1 <= Heap[this, size_3] ==> i_12_1_1 > t_2 ==> Heap[(loc(Heap[this, elems_1], i_12_1_1): Ref), val] == itemAt(oldHeap, this, i_12_1_1 - 1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc t_2;
    
    // -- Check definedness of invariant
      if (*) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108956]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108957]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(loc(this.elems, j).val, 1 / 2)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [108958]"}
            HasDirectPerm(Mask, this, elems_1);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108959]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> (loc(Heap[this, elems_1], j): Ref) != null;
        Mask := Mask[(loc(Heap[this, elems_1], j): Ref), val:=Mask[(loc(Heap[this, elems_1], j): Ref), val] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume j <= t_2;
        
        // -- Check definedness of t <= this.size
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@132.15--132.39) [108960]"}
            HasDirectPerm(Mask, this, size_3);
        assume t_2 <= Heap[this, size_3];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of this.size == old(length(this))
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@133.15--133.45) [108961]"}
            HasDirectPerm(Mask, this, size_3);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@133.32--133.44) [108962]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume Heap[this, size_3] == length_1(oldHeap, this);
        assume state(Heap, Mask);
        assume -1 <= j;
        
        // -- Check definedness of this.size < len(this.elems)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@134.15--134.53) [108963]"}
            HasDirectPerm(Mask, this, size_3);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@134.15--134.53) [108964]"}
            HasDirectPerm(Mask, this, elems_1);
        assume Heap[this, size_3] < (len(Heap[this, elems_1]): int);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write))
          if (*) {
            if (j < i_16) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@135.16--135.86) [108965]"}
                HasDirectPerm(Mask, this, size_3);
            }
            if (j < i_16 && i_16 <= Heap[this, size_3]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@135.16--135.86) [108966]"}
                HasDirectPerm(Mask, this, elems_1);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [108967]"}
          (forall i_14_1: int, i_14_2: int ::
          
          (((i_14_1 != i_14_2 && (j < i_14_1 && i_14_1 <= Heap[this, size_3])) && (j < i_14_2 && i_14_2 <= Heap[this, size_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_14_1): Ref) != (loc(Heap[this, elems_1], i_14_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_14_1: int ::
            { (loc(Heap[this, elems_1], i_14_1): Ref) } { (loc(Heap[this, elems_1], i_14_1): Ref) }
            (j < i_14_1 && i_14_1 <= Heap[this, size_3]) && NoPerm < FullPerm ==> qpRange14((loc(Heap[this, elems_1], i_14_1): Ref)) && invRecv14((loc(Heap[this, elems_1], i_14_1): Ref)) == i_14_1
          );
          assume (forall o_9: Ref ::
            { invRecv14(o_9) }
            ((j < invRecv14(o_9) && invRecv14(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange14(o_9) ==> (loc(Heap[this, elems_1], invRecv14(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_14_1: int ::
            { (loc(Heap[this, elems_1], i_14_1): Ref) } { (loc(Heap[this, elems_1], i_14_1): Ref) }
            j < i_14_1 && i_14_1 <= Heap[this, size_3] ==> (loc(Heap[this, elems_1], i_14_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((j < invRecv14(o_9) && invRecv14(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv14(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((j < invRecv14(o_9) && invRecv14(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
          if (*) {
            if (j <= i_42) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@136.15--136.137) [108968]"}
                HasDirectPerm(Mask, this, size_3);
            }
            if (j <= i_42 && i_42 <= Heap[this, size_3]) {
              if (i_42 < t_2) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@136.15--136.137) [108969]"}
                  HasDirectPerm(Mask, this, elems_1);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@136.15--136.137) [108970]"}
                  HasDirectPerm(Mask, (loc(Heap[this, elems_1], i_42): Ref), val);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@136.121--136.135) [108971]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@136.121--136.135) [108972]"}
                    0 <= i_42;
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@136.121--136.135) [108973]"}
                    i_42 < length_1(oldHeap, this);
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        assume (forall i_16_1: int ::
          { (loc(Heap[this, elems_1], i_16_1): Ref) }
          j <= i_16_1 && i_16_1 <= Heap[this, size_3] ==> i_16_1 < t_2 ==> Heap[(loc(Heap[this, elems_1], i_16_1): Ref), val] == itemAt(oldHeap, this, i_16_1)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
          if (*) {
            if (j < i_51) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@137.15--137.138) [108974]"}
                HasDirectPerm(Mask, this, size_3);
            }
            if (j < i_51 && i_51 <= Heap[this, size_3]) {
              if (i_51 > t_2) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@137.15--137.138) [108975]"}
                  HasDirectPerm(Mask, this, elems_1);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@137.15--137.138) [108976]"}
                  HasDirectPerm(Mask, (loc(Heap[this, elems_1], i_51): Ref), val);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@137.120--137.136) [108977]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i - 1 might not hold. (arraylist-quantified-permissions.vpr@137.120--137.136) [108978]"}
                    0 <= i_51 - 1;
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion i - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@137.120--137.136) [108979]"}
                    i_51 - 1 < length_1(oldHeap, this);
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        assume (forall i_18_1: int ::
          { (loc(Heap[this, elems_1], i_18_1): Ref) }
          j < i_18_1 && i_18_1 <= Heap[this, size_3] ==> i_18_1 > t_2 ==> Heap[(loc(Heap[this, elems_1], i_18_1): Ref), val] == itemAt(oldHeap, this, i_18_1 - 1)
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108980]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108981]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108982]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> (loc(Heap[this, elems_1], j): Ref) != null;
        Mask := Mask[(loc(Heap[this, elems_1], j): Ref), val:=Mask[(loc(Heap[this, elems_1], j): Ref), val] + perm];
        assume state(Heap, Mask);
        assume j <= t_2;
        assume t_2 <= Heap[this, size_3];
        assume state(Heap, Mask);
        assume Heap[this, size_3] == length_1(oldHeap, this);
        assume -1 <= j;
        assume Heap[this, size_3] < (len(Heap[this, elems_1]): int);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [108983]"}
          (forall i_19_1: int, i_19_2: int ::
          
          (((i_19_1 != i_19_2 && (j < i_19_1 && i_19_1 <= Heap[this, size_3])) && (j < i_19_2 && i_19_2 <= Heap[this, size_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_19_1): Ref) != (loc(Heap[this, elems_1], i_19_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_19_1: int ::
            { (loc(Heap[this, elems_1], i_19_1): Ref) } { (loc(Heap[this, elems_1], i_19_1): Ref) }
            (j < i_19_1 && i_19_1 <= Heap[this, size_3]) && NoPerm < FullPerm ==> qpRange15((loc(Heap[this, elems_1], i_19_1): Ref)) && invRecv15((loc(Heap[this, elems_1], i_19_1): Ref)) == i_19_1
          );
          assume (forall o_9: Ref ::
            { invRecv15(o_9) }
            ((j < invRecv15(o_9) && invRecv15(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange15(o_9) ==> (loc(Heap[this, elems_1], invRecv15(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_19_1: int ::
            { (loc(Heap[this, elems_1], i_19_1): Ref) } { (loc(Heap[this, elems_1], i_19_1): Ref) }
            j < i_19_1 && i_19_1 <= Heap[this, size_3] ==> (loc(Heap[this, elems_1], i_19_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (((j < invRecv15(o_9) && invRecv15(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv15(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((j < invRecv15(o_9) && invRecv15(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall i_20_2: int ::
          { (loc(Heap[this, elems_1], i_20_2): Ref) }
          j <= i_20_2 && i_20_2 <= Heap[this, size_3] ==> i_20_2 < t_2 ==> Heap[(loc(Heap[this, elems_1], i_20_2): Ref), val] == itemAt(oldHeap, this, i_20_2)
        );
        assume state(Heap, Mask);
        assume (forall i_21_1: int ::
          { (loc(Heap[this, elems_1], i_21_1): Ref) }
          j < i_21_1 && i_21_1 <= Heap[this, size_3] ==> i_21_1 > t_2 ==> Heap[(loc(Heap[this, elems_1], i_21_1): Ref), val] == itemAt(oldHeap, this, i_21_1 - 1)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume t_2 > j;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: loc(this.elems, t).val := loc(this.elems, t - 1).val -- arraylist-quantified-permissions.vpr@139.5--139.53
            
            // -- Check definedness of loc(this.elems, t)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@139.5--139.53) [108984]"}
                HasDirectPerm(Mask, this, elems_1);
            
            // -- Check definedness of loc(this.elems, t - 1).val
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@139.5--139.53) [108985]"}
                HasDirectPerm(Mask, this, elems_1);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, t - 1).val (arraylist-quantified-permissions.vpr@139.5--139.53) [108986]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems_1], t_2 - 1): Ref), val);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, t).val (arraylist-quantified-permissions.vpr@139.5--139.53) [108987]"}
              FullPerm == Mask[(loc(Heap[this, elems_1], t_2): Ref), val];
            Heap := Heap[(loc(Heap[this, elems_1], t_2): Ref), val:=Heap[(loc(Heap[this, elems_1], t_2 - 1): Ref), val]];
            assume state(Heap, Mask);
          
          // -- Translating statement: t := t - 1 -- arraylist-quantified-permissions.vpr@140.5--140.15
            t_2 := t_2 - 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108988]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [108989]"}
            perm <= Mask[this, elems_1];
        }
        Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108990]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@131.15--131.91) [108991]"}
            perm <= Mask[this, size_3];
        }
        Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [108992]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@131.15--131.91) [108993]"}
            perm <= Mask[(loc(Heap[this, elems_1], j): Ref), val];
        }
        Mask := Mask[(loc(Heap[this, elems_1], j): Ref), val:=Mask[(loc(Heap[this, elems_1], j): Ref), val] - perm];
        assert {:msg "  Loop invariant j <= t && t <= this.size might not be preserved. Assertion j <= t might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [108994]"}
          j <= t_2;
        assert {:msg "  Loop invariant j <= t && t <= this.size might not be preserved. Assertion t <= this.size might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [108995]"}
          t_2 <= Heap[this, size_3];
        assert {:msg "  Loop invariant this.size == old(length(this)) might not be preserved. Assertion this.size == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@133.15--133.45) [108996]"}
          Heap[this, size_3] == length_1(oldHeap, this);
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not be preserved. Assertion -1 <= j might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [108997]"}
          -1 <= j;
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not be preserved. Assertion this.size < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [108998]"}
          Heap[this, size_3] < (len(Heap[this, elems_1]): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(this.elems, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not be preserved. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [108999]"}
            (forall i_22_1: int, i_22_2: int ::
            { neverTriggered16(i_22_1), neverTriggered16(i_22_2) }
            (((i_22_1 != i_22_2 && (j < i_22_1 && i_22_1 <= Heap[this, size_3])) && (j < i_22_2 && i_22_2 <= Heap[this, size_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_22_1): Ref) != (loc(Heap[this, elems_1], i_22_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not be preserved. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@135.16--135.86) [109000]"}
            (forall i_22_1: int ::
            { (loc(Heap[this, elems_1], i_22_1): Ref) } { (loc(Heap[this, elems_1], i_22_1): Ref) }
            j < i_22_1 && i_22_1 <= Heap[this, size_3] ==> Mask[(loc(Heap[this, elems_1], i_22_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(this.elems, i)
          assume (forall i_22_1: int ::
            { (loc(Heap[this, elems_1], i_22_1): Ref) } { (loc(Heap[this, elems_1], i_22_1): Ref) }
            (j < i_22_1 && i_22_1 <= Heap[this, size_3]) && NoPerm < FullPerm ==> qpRange16((loc(Heap[this, elems_1], i_22_1): Ref)) && invRecv16((loc(Heap[this, elems_1], i_22_1): Ref)) == i_22_1
          );
          assume (forall o_9: Ref ::
            { invRecv16(o_9) }
            (j < invRecv16(o_9) && invRecv16(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange16(o_9)) ==> (loc(Heap[this, elems_1], invRecv16(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((j < invRecv16(o_9) && invRecv16(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange16(o_9)) ==> (loc(Heap[this, elems_1], invRecv16(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((j < invRecv16(o_9) && invRecv16(o_9) <= Heap[this, size_3]) && (NoPerm < FullPerm && qpRange16(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (j <= i_23_1 && i_23_1 <= Heap[this, size_3]) {
            if (i_23_1 < t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))) might not be preserved. Assertion loc(this.elems, i).val == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@136.15--136.137) [109001]"}
                Heap[(loc(Heap[this, elems_1], i_23_1): Ref), val] == itemAt(oldHeap, this, i_23_1);
            }
          }
          assume false;
        }
        assume (forall i_24_1_1: int ::
          { (loc(Heap[this, elems_1], i_24_1_1): Ref) }
          j <= i_24_1_1 && i_24_1_1 <= Heap[this, size_3] ==> i_24_1_1 < t_2 ==> Heap[(loc(Heap[this, elems_1], i_24_1_1): Ref), val] == itemAt(oldHeap, this, i_24_1_1)
        );
        if (*) {
          if (j < i_25_1 && i_25_1 <= Heap[this, size_3]) {
            if (i_25_1 > t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))) might not be preserved. Assertion loc(this.elems, i).val == old(itemAt(this, i - 1)) might not hold. (arraylist-quantified-permissions.vpr@137.15--137.138) [109002]"}
                Heap[(loc(Heap[this, elems_1], i_25_1): Ref), val] == itemAt(oldHeap, this, i_25_1 - 1);
            }
          }
          assume false;
        }
        assume (forall i_26_1_1: int ::
          { (loc(Heap[this, elems_1], i_26_1_1): Ref) }
          j < i_26_1_1 && i_26_1_1 <= Heap[this, size_3] ==> i_26_1_1 > t_2 ==> Heap[(loc(Heap[this, elems_1], i_26_1_1): Ref), val] == itemAt(oldHeap, this, i_26_1_1 - 1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(t_2 > j);
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [109003]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, elems_1:=Mask[this, elems_1] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [109004]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, size_3:=Mask[this, size_3] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [109005]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> (loc(Heap[this, elems_1], j): Ref) != null;
      Mask := Mask[(loc(Heap[this, elems_1], j): Ref), val:=Mask[(loc(Heap[this, elems_1], j): Ref), val] + perm];
      assume state(Heap, Mask);
      assume j <= t_2;
      assume t_2 <= Heap[this, size_3];
      assume state(Heap, Mask);
      assume Heap[this, size_3] == length_1(oldHeap, this);
      assume -1 <= j;
      assume Heap[this, size_3] < (len(Heap[this, elems_1]): int);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [109006]"}
        (forall i_27_2: int, i_27_3: int ::
        
        (((i_27_2 != i_27_3 && (j < i_27_2 && i_27_2 <= Heap[this, size_3])) && (j < i_27_3 && i_27_3 <= Heap[this, size_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_27_2): Ref) != (loc(Heap[this, elems_1], i_27_3): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_27_2: int ::
          { (loc(Heap[this, elems_1], i_27_2): Ref) } { (loc(Heap[this, elems_1], i_27_2): Ref) }
          (j < i_27_2 && i_27_2 <= Heap[this, size_3]) && NoPerm < FullPerm ==> qpRange17((loc(Heap[this, elems_1], i_27_2): Ref)) && invRecv17((loc(Heap[this, elems_1], i_27_2): Ref)) == i_27_2
        );
        assume (forall o_9: Ref ::
          { invRecv17(o_9) }
          ((j < invRecv17(o_9) && invRecv17(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange17(o_9) ==> (loc(Heap[this, elems_1], invRecv17(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_27_2: int ::
          { (loc(Heap[this, elems_1], i_27_2): Ref) } { (loc(Heap[this, elems_1], i_27_2): Ref) }
          j < i_27_2 && i_27_2 <= Heap[this, size_3] ==> (loc(Heap[this, elems_1], i_27_2): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((j < invRecv17(o_9) && invRecv17(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange17(o_9) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems_1], invRecv17(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((j < invRecv17(o_9) && invRecv17(o_9) <= Heap[this, size_3]) && NoPerm < FullPerm) && qpRange17(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i_28: int ::
        { (loc(Heap[this, elems_1], i_28): Ref) }
        j <= i_28 && i_28 <= Heap[this, size_3] ==> i_28 < t_2 ==> Heap[(loc(Heap[this, elems_1], i_28): Ref), val] == itemAt(oldHeap, this, i_28)
      );
      assume state(Heap, Mask);
      assume (forall i_29: int ::
        { (loc(Heap[this, elems_1], i_29): Ref) }
        j < i_29 && i_29 <= Heap[this, size_3] ==> i_29 > t_2 ==> Heap[(loc(Heap[this, elems_1], i_29): Ref), val] == itemAt(oldHeap, this, i_29 - 1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(this.elems, j).val := elem -- arraylist-quantified-permissions.vpr@143.3--143.32
    
    // -- Check definedness of loc(this.elems, j)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@143.3--143.32) [109007]"}
        HasDirectPerm(Mask, this, elems_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@143.3--143.32) [109008]"}
      FullPerm == Mask[(loc(Heap[this, elems_1], j): Ref), val];
    Heap := Heap[(loc(Heap[this, elems_1], j): Ref), val:=elem_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := this.size + 1 -- arraylist-quantified-permissions.vpr@144.3--144.29
    
    // -- Check definedness of this.size + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@144.3--144.29) [109009]"}
        HasDirectPerm(Mask, this, size_3);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@144.3--144.29) [109010]"}
      FullPerm == Mask[this, size_3];
    Heap := Heap[this, size_3:=Heap[this, size_3] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@146.3--146.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@146.3--146.24) [109013]"}
        perm <= Mask[this, elems_1];
    }
    Mask := Mask[this, elems_1:=Mask[this, elems_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@146.3--146.24) [109015]"}
        perm <= Mask[this, size_3];
    }
    Mask := Mask[this, size_3:=Mask[this, size_3] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [109016]"}
      0 <= Heap[this, size_3];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [109017]"}
      Heap[this, size_3] <= (len(Heap[this, elems_1]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [109018]"}
      0 < (len(Heap[this, elems_1]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@146.3--146.24) [109020]"}
        (forall i_30: int, i_30_1: int ::
        { neverTriggered18(i_30), neverTriggered18(i_30_1) }
        (((i_30 != i_30_1 && (0 <= i_30 && i_30 < (len(Heap[this, elems_1]): int))) && (0 <= i_30_1 && i_30_1 < (len(Heap[this, elems_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems_1], i_30): Ref) != (loc(Heap[this, elems_1], i_30_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@146.3--146.24) [109021]"}
        (forall i_30: int ::
        { (loc(Heap[this, elems_1], i_30): Ref) } { (loc(Heap[this, elems_1], i_30): Ref) }
        0 <= i_30 && i_30 < (len(Heap[this, elems_1]): int) ==> Mask[(loc(Heap[this, elems_1], i_30): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_30: int ::
        { (loc(Heap[this, elems_1], i_30): Ref) } { (loc(Heap[this, elems_1], i_30): Ref) }
        (0 <= i_30 && i_30 < (len(Heap[this, elems_1]): int)) && NoPerm < FullPerm ==> qpRange18((loc(Heap[this, elems_1], i_30): Ref)) && invRecv18((loc(Heap[this, elems_1], i_30): Ref)) == i_30
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (0 <= invRecv18(o_9) && invRecv18(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange18(o_9)) ==> (loc(Heap[this, elems_1], invRecv18(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange18(o_9)) ==> (loc(Heap[this, elems_1], invRecv18(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv18(o_9) && invRecv18(o_9) < (len(Heap[this, elems_1]): int)) && (NoPerm < FullPerm && qpRange18(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems_1]), CombineFrames(FrameFragment(Heap[this, size_3]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems_1:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size_3:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_39: Ref, f_19: (Field A B) ::
      { newPMask[o_39, f_19] }
      Heap[null, AList#sm(this)][o_39, f_19] ==> newPMask[o_39, f_19]
    );
    assume (forall i_31: int ::
      
      0 <= i_31 && i_31 < (len(Heap[this, elems_1]): int) ==> newPMask[(loc(Heap[this, elems_1], i_31): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@98.11--98.27) [109023]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@99.11--99.37) [109024]"}
      0 <= j;
    assert {:msg "  Postcondition of insert might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@99.11--99.37) [109025]"}
      j < length_1(Heap, this);
    assert {:msg "  Postcondition of insert might not hold. Assertion length(this) == old(length(this)) + 1 might not hold. (arraylist-quantified-permissions.vpr@100.11--100.48) [109026]"}
      length_1(Heap, this) == length_1(oldHeap, this) + 1;
    if (*) {
      if (0 <= k_4_2 && k_4_2 < j) {
        assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@101.11--101.87) [109027]"}
          itemAt(Heap, this, k_4_2) == itemAt(oldHeap, this, k_4_2);
      }
      assume false;
    }
    assume (forall k_5_1_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, k_5_1_1) }
      0 <= k_5_1_1 && k_5_1_1 < j ==> itemAt(Heap, this, k_5_1_1) == itemAt(oldHeap, this, k_5_1_1)
    );
    assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, j) == elem might not hold. (arraylist-quantified-permissions.vpr@102.11--102.34) [109028]"}
      itemAt(Heap, this, j) == elem_1;
    if (*) {
      if (j < k_6_2 && k_6_2 < length_1(Heap, this)) {
        assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, k) == old(itemAt(this, k - 1)) might not hold. (arraylist-quantified-permissions.vpr@103.11--103.101) [109029]"}
          itemAt(Heap, this, k_6_2) == itemAt(oldHeap, this, k_6_2 - 1);
      }
      assume false;
    }
    assume (forall k_7_1_1: int ::
      { itemAt#frame(Heap[null, AList(this)], this, k_7_1_1) }
      j < k_7_1_1 && k_7_1_1 < length_1(Heap, this) ==> itemAt(Heap, this, k_7_1_1) == itemAt(oldHeap, this, k_7_1_1 - 1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}