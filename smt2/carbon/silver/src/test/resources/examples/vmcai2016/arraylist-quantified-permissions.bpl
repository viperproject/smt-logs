// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:52:18
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
axiom (forall o_9: Ref, f_13: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_9, f_13] }
  Heap[o_9, $allocated] ==> Heap[Heap[o_9, f_13], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref, f_14: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, f_14] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_10, f_14) ==> Heap[o_10, f_14] == ExhaleHeap[o_10, f_14]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_10, $allocated] ==> ExhaleHeap[o_10, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_9: Ref, f_15: (Field A B), v: B ::
  { Heap[o_9, f_15:=v] }
  succHeap(Heap, Heap[o_9, f_15:=v])
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
function  neverTriggered3(i_2_1: int): bool;
function  neverTriggered4(i_1: int): bool;
function  neverTriggered5(i_2_1: int): bool;
function  neverTriggered6(i_4_1: int): bool;
function  neverTriggered7(i_6_1: int): bool;
function  neverTriggered8(i_9_1: int): bool;
function  neverTriggered9(i: int): bool;
function  neverTriggered10(i_1: int): bool;
function  neverTriggered11(i_3: int): bool;
function  neverTriggered12(i_5: int): bool;
function  neverTriggered13(i_8_2: int): bool;
function  neverTriggered14(i_14_1: int): bool;
function  neverTriggered15(i_19: int): bool;
function  neverTriggered16(i_22_1: int): bool;
function  neverTriggered17(i_27: int): bool;
function  neverTriggered18(i_30_2: int): bool;
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
function  first<T1, T2>(p_16: (PairDomainType T1 T2)): T1;

// Translation of domain function second
function  second<T1, T2>(p_16: (PairDomainType T1 T2)): T2;

// ==================================================
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain function inv_loc
function  inv_loc(r_3: Ref): PairDomainType ArrayDomainType int;

// Translation of domain axiom loc_injective
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  0 <= i && i < (len_1(a_2): int) ==> (first((inv_loc((loc(a_2, i): Ref)): PairDomainType ArrayDomainType int)): ArrayDomainType) == a_2 && (second((inv_loc((loc(a_2, i): Ref)): PairDomainType ArrayDomainType int)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique elems: Field NormalField ArrayDomainType;
axiom !IsPredicateField(elems);
axiom !IsWandField(elems);
const unique size: Field NormalField int;
axiom !IsPredicateField(size);
axiom !IsWandField(size);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length(Heap, this) }
  length(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), AList#trigger(Heap, AList(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length(Heap, this) == Heap[this, size]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assume UnfoldingHeap[null, AList(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, elems]), CombineFrames(FrameFragment(UnfoldingHeap[this, size]), FrameFragment(AList#condqp1(UnfoldingHeap, this))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@37.1--42.2) [112850]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, AList(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, elems:=UnfoldingMask[this, elems] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, size:=UnfoldingMask[this, size] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, size];
      assume UnfoldingHeap[this, size] <= (len_1(UnfoldingHeap[this, elems]): int);
      assume 0 < (len_1(UnfoldingHeap[this, elems]): int);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@37.1--42.2) [112851]"}
        (forall i: int, i_77: int ::
        
        (((i != i_77 && (0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int))) && (0 <= i_77 && i_77 < (len_1(UnfoldingHeap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems], i): Ref) != (loc(UnfoldingHeap[this, elems], i_77): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems], i): Ref) } { (loc(UnfoldingHeap[this, elems], i): Ref) }
          (0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange1((loc(UnfoldingHeap[this, elems], i): Ref)) && invRecv1((loc(UnfoldingHeap[this, elems], i): Ref)) == i
        );
        assume (forall o_4: Ref ::
          { invRecv1(o_4) }
          ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(UnfoldingHeap[this, elems], invRecv1(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems], i): Ref) } { (loc(UnfoldingHeap[this, elems], i): Ref) }
          0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int) ==> (loc(UnfoldingHeap[this, elems], i): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems], invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == UnfoldingMask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == UnfoldingMask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@37.1--42.2) [112852]"}
        HasDirectPerm(UnfoldingMask, this, size);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
        // register all known folded permissions guarded by predicate AList
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          Heap[null, AList#sm(this)][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        assume (forall i_1: int ::
          
          0 <= i_1 && i_1 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_1): Ref), val]
        );
        Heap := Heap[null, AList#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, size];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result >= 0 might not hold. (arraylist-quantified-permissions.vpr@39.11--39.22) [112853]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= index && index < length(Heap, this) ==> itemAt(Heap, this, index) == Heap[(loc(Heap[this, elems], index): Ref), val]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@46.34--46.46) [112854]"}
          NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume index < length(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(AList(this), write) in loc(this.elems, index).val)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume AList#trigger(UnfoldingHeap, AList(this));
      assume UnfoldingHeap[null, AList(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, elems]), CombineFrames(FrameFragment(UnfoldingHeap[this, size]), FrameFragment(AList#condqp1(UnfoldingHeap, this))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@44.1--49.2) [112855]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, AList(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, elems:=UnfoldingMask[this, elems] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, size:=UnfoldingMask[this, size] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume 0 <= UnfoldingHeap[this, size];
      assume UnfoldingHeap[this, size] <= (len_1(UnfoldingHeap[this, elems]): int);
      assume 0 < (len_1(UnfoldingHeap[this, elems]): int);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@44.1--49.2) [112856]"}
        (forall i: int, i_77: int ::
        
        (((i != i_77 && (0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int))) && (0 <= i_77 && i_77 < (len_1(UnfoldingHeap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems], i): Ref) != (loc(UnfoldingHeap[this, elems], i_77): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems], i): Ref) } { (loc(UnfoldingHeap[this, elems], i): Ref) }
          (0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange2((loc(UnfoldingHeap[this, elems], i): Ref)) && invRecv2((loc(UnfoldingHeap[this, elems], i): Ref)) == i
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(UnfoldingHeap[this, elems], invRecv2(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { (loc(UnfoldingHeap[this, elems], i): Ref) } { (loc(UnfoldingHeap[this, elems], i): Ref) }
          0 <= i && i < (len_1(UnfoldingHeap[this, elems]): int) ==> (loc(UnfoldingHeap[this, elems], i): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(UnfoldingHeap[this, elems], invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == UnfoldingMask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(UnfoldingHeap[this, elems]): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == UnfoldingMask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@44.1--49.2) [112857]"}
        HasDirectPerm(UnfoldingMask, this, elems);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(this.elems, index).val (arraylist-quantified-permissions.vpr@44.1--49.2) [112858]"}
        HasDirectPerm(UnfoldingMask, (loc(UnfoldingHeap[this, elems], index): Ref), val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
        Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
        // register all known folded permissions guarded by predicate AList
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, AList#sm(this)][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        assume (forall i_1: int ::
          
          0 <= i_1 && i_1 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_1): Ref), val]
        );
        Heap := Heap[null, AList#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[(loc(Heap[this, elems], index): Ref), val];
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
  ((0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len_1(Heap2Heap[this, elems]): int)) && NoPerm < FullPerm <==> (0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len_1(Heap1Heap[this, elems]): int)) && NoPerm < FullPerm) && ((0 <= sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) && sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this)) < (len_1(Heap2Heap[this, elems]): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(Heap2Heap[this, elems], sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this))): Ref), val] == Heap1Heap[(loc(Heap1Heap[this, elems], sk_AList#condqp1(AList#condqp1(Heap2Heap, this), AList#condqp1(Heap1Heap, this))): Ref), val]) ==> AList#condqp1(Heap2Heap, this) == AList#condqp1(Heap1Heap, this)
);

procedure AList#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var i_7: int;
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
    Mask := Mask[this, elems:=Mask[this, elems] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size:=Mask[this, size] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 <= this.size
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@30.1--35.2) [112859]"}
        HasDirectPerm(Mask, this, size);
    assume 0 <= Heap[this, size];
    
    // -- Check definedness of this.size <= len(this.elems)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@30.1--35.2) [112860]"}
        HasDirectPerm(Mask, this, size);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [112861]"}
        HasDirectPerm(Mask, this, elems);
    assume Heap[this, size] <= (len_1(Heap[this, elems]): int);
    
    // -- Check definedness of 0 < len(this.elems)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [112862]"}
        HasDirectPerm(Mask, this, elems);
    assume 0 < (len_1(Heap[this, elems]): int);
    
    // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } 0 <= i && i < len(this.elems) ==> acc(loc(this.elems, i).val, write))
      if (*) {
        if (0 <= i_7) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [112863]"}
            HasDirectPerm(Mask, this, elems);
        }
        if (0 <= i_7 && i_7 < (len_1(Heap[this, elems]): int)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@30.1--35.2) [112864]"}
            HasDirectPerm(Mask, this, elems);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@30.1--35.2) [112865]"}
      (forall i_2_1: int, i_2_2: int ::
      
      (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int))) && (0 <= i_2_2 && i_2_2 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_2_1): Ref) != (loc(Heap[this, elems], i_2_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_2_1: int ::
        { (loc(Heap[this, elems], i_2_1): Ref) } { (loc(Heap[this, elems], i_2_1): Ref) }
        (0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange3((loc(Heap[this, elems], i_2_1): Ref)) && invRecv3((loc(Heap[this, elems], i_2_1): Ref)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (loc(Heap[this, elems], invRecv3(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2_1: int ::
        { (loc(Heap[this, elems], i_2_1): Ref) } { (loc(Heap[this, elems], i_2_1): Ref) }
        0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int) ==> (loc(Heap[this, elems], i_2_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@54.11--54.23) [112866]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this) == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this := new(elems, size) -- arraylist-quantified-permissions.vpr@56.3--56.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, elems:=Mask[this, elems] + FullPerm];
    Mask := Mask[this, size:=Mask[this, size] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale len(a) == 10 -- arraylist-quantified-permissions.vpr@59.3--59.22
    assume (len_1(a_2): int) == 10;
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
    assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@60.10--60.68) [112867]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_1): Ref)) && invRecv4((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len_1(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := 0 -- arraylist-quantified-permissions.vpr@62.3--62.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@62.3--62.17) [112868]"}
      FullPerm == Mask[this, size];
    Heap := Heap[this, size:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@63.3--63.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@63.3--63.18) [112869]"}
      FullPerm == Mask[this, elems];
    Heap := Heap[this, elems:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@65.3--65.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@65.3--65.24) [112872]"}
        perm <= Mask[this, elems];
    }
    Mask := Mask[this, elems:=Mask[this, elems] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@65.3--65.24) [112874]"}
        perm <= Mask[this, size];
    }
    Mask := Mask[this, size:=Mask[this, size] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [112875]"}
      0 <= Heap[this, size];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [112876]"}
      Heap[this, size] <= (len_1(Heap[this, elems]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@65.3--65.24) [112877]"}
      0 < (len_1(Heap[this, elems]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@65.3--65.24) [112879]"}
        (forall i_2_1: int, i_2_2: int ::
        { neverTriggered5(i_2_1), neverTriggered5(i_2_2) }
        (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int))) && (0 <= i_2_2 && i_2_2 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_2_1): Ref) != (loc(Heap[this, elems], i_2_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@65.3--65.24) [112880]"}
        (forall i_2_1: int ::
        { (loc(Heap[this, elems], i_2_1): Ref) } { (loc(Heap[this, elems], i_2_1): Ref) }
        0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int) ==> Mask[(loc(Heap[this, elems], i_2_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_2_1: int ::
        { (loc(Heap[this, elems], i_2_1): Ref) } { (loc(Heap[this, elems], i_2_1): Ref) }
        (0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange5((loc(Heap[this, elems], i_2_1): Ref)) && invRecv5((loc(Heap[this, elems], i_2_1): Ref)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> (loc(Heap[this, elems], invRecv5(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange5(o_4)) ==> (loc(Heap[this, elems], invRecv5(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
      { newPMask[o_53, f_56] }
      Heap[null, AList#sm(this)][o_53, f_56] ==> newPMask[o_53, f_56]
    );
    assume (forall i_3: int ::
      
      0 <= i_3 && i_3 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_3): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of create might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@53.11--53.27) [112882]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of create might not hold. Assertion length(this) == 0 might not hold. (arraylist-quantified-permissions.vpr@54.11--54.28) [112883]"}
      length(Heap, this) == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method addAtEnd
// ==================================================

procedure addAtEnd(this: Ref, elem: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_11: int;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: ArrayDomainType;
  var i_16: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var i_2_1: int;
  
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.16--71.28) [112884]"}
          NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (0 < length(Heap, this)) {
      assume state(Heap, Mask);
      
      // -- Check definedness of itemAt(this, length(this) - 1) <= elem
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.46--71.58) [112885]"}
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
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@71.33--71.63) [112886]"}
            NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
          assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= length(this) - 1 might not hold. (arraylist-quantified-permissions.vpr@71.33--71.63) [112887]"}
            0 <= length(Heap, this) - 1;
          assert {:msg "  Precondition of function itemAt might not hold. Assertion length(this) - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@71.33--71.63) [112888]"}
            length(Heap, this) - 1 < length(Heap, this);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume itemAt(Heap, this, length(Heap, this) - 1) <= elem;
    }
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
    perm := FullPerm;
    PostMask := PostMask[null, AList(this):=PostMask[null, AList(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this) == old(length(this)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@73.11--73.23) [112889]"}
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@73.31--73.43) [112890]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this) == length(oldHeap, this) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, length(this) - 1) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@74.24--74.36) [112891]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@74.11--74.41) [112892]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= length(this) - 1 might not hold. (arraylist-quantified-permissions.vpr@74.11--74.41) [112893]"}
          0 <= length(PostHeap, this) - 1;
        assert {:msg "  Precondition of function itemAt might not hold. Assertion length(this) - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@74.11--74.41) [112894]"}
          length(PostHeap, this) - 1 < length(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, length(PostHeap, this) - 1) == elem;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(itemAt(this, i)) } 0 <= i && i < old(length(this)) ==> itemAt(this, i) == old(itemAt(this, i)))
      if (*) {
        if (0 <= i_11) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.46--75.58) [112895]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_11 && i_11 < length(oldHeap, this)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.64--75.79) [112896]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@75.64--75.79) [112897]"}
              0 <= i_11;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@75.64--75.79) [112898]"}
              i_11 < length(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@75.87--75.102) [112899]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@75.87--75.102) [112900]"}
              0 <= i_11;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@75.87--75.102) [112901]"}
              i_11 < length(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, i_1) }
      0 <= i_1 && i_1 < length(oldHeap, this) ==> itemAt(PostHeap, this, i_1) == itemAt(oldHeap, this, i_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, old(length(this))) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@76.28--76.40) [112902]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@76.11--76.42) [112903]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@76.11--76.42) [112904]"}
          0 <= length(oldHeap, this);
        assert {:msg "  Precondition of function itemAt might not hold. Assertion old(length(this)) < length(this) might not hold. (arraylist-quantified-permissions.vpr@76.11--76.42) [112905]"}
          length(oldHeap, this) < length(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, length(oldHeap, this)) == elem;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@78.3--78.26
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@78.3--78.26) [112908]"}
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
    Mask := Mask[this, elems:=Mask[this, elems] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size:=Mask[this, size] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, size];
    assume Heap[this, size] <= (len_1(Heap[this, elems]): int);
    assume 0 < (len_1(Heap[this, elems]): int);
    havoc QPMask;
    assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@78.3--78.26) [112911]"}
      (forall i_4_1: int, i_4_2: int ::
      
      (((i_4_1 != i_4_2 && (0 <= i_4_1 && i_4_1 < (len_1(Heap[this, elems]): int))) && (0 <= i_4_2 && i_4_2 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_4_1): Ref) != (loc(Heap[this, elems], i_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_4_1: int ::
        { (loc(Heap[this, elems], i_4_1): Ref) } { (loc(Heap[this, elems], i_4_1): Ref) }
        (0 <= i_4_1 && i_4_1 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange6((loc(Heap[this, elems], i_4_1): Ref)) && invRecv6((loc(Heap[this, elems], i_4_1): Ref)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (loc(Heap[this, elems], invRecv6(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_4_1: int ::
        { (loc(Heap[this, elems], i_4_1): Ref) } { (loc(Heap[this, elems], i_4_1): Ref) }
        0 <= i_4_1 && i_4_1 < (len_1(Heap[this, elems]): int) ==> (loc(Heap[this, elems], i_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.size == len(this.elems)) -- arraylist-quantified-permissions.vpr@80.3--86.4
    
    // -- Check definedness of this.size == len(this.elems)
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@80.7--80.35) [112912]"}
        HasDirectPerm(Mask, this, size);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@80.7--80.35) [112913]"}
        HasDirectPerm(Mask, this, elems);
    if (Heap[this, size] == (len_1(Heap[this, elems]): int)) {
      
      // -- Translating statement: inhale len(a) == len(this.elems) * 2 &&
  //   (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- arraylist-quantified-permissions.vpr@82.5--82.104
        
        // -- Check definedness of len(a) == len(this.elems) * 2
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@82.12--82.104) [112914]"}
            HasDirectPerm(Mask, this, elems);
        assume (len_1(a_2): int) == (len_1(Heap[this, elems]): int) * 2;
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@82.12--82.104) [112915]"}
          (forall i_6_1: int, i_6_2: int ::
          
          (((i_6_1 != i_6_2 && (0 <= i_6_1 && i_6_1 < (len_1(a_2): int))) && (0 <= i_6_2 && i_6_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_1): Ref) != (loc(a_2, i_6_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_6_1: int ::
            { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
            (0 <= i_6_1 && i_6_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_6_1): Ref)) && invRecv7((loc(a_2, i_6_1): Ref)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            ((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_6_1: int ::
            { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
            0 <= i_6_1 && i_6_1 < (len_1(a_2): int) ==> (loc(a_2, i_6_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv7(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv7(o_4) && invRecv7(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (0 <= i_16) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@84.12--84.99) [112916]"}
                HasDirectPerm(Mask, this, elems);
            }
            if (0 <= i_16 && i_16 < (len_1(Heap[this, elems]): int)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i).val (arraylist-quantified-permissions.vpr@84.12--84.99) [112917]"}
                HasDirectPerm(Mask, (loc(a_2, i_16): Ref), val);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@84.12--84.99) [112918]"}
                HasDirectPerm(Mask, this, elems);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@84.12--84.99) [112919]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems], i_16): Ref), val);
            }
            assume false;
          }
        assume (forall i_8_2: int ::
          { (loc(a_2, i_8_2): Ref) } { (loc(Heap[this, elems], i_8_2): Ref) }
          0 <= i_8_2 && i_8_2 < (len_1(Heap[this, elems]): int) ==> Heap[(loc(a_2, i_8_2): Ref), val] == Heap[(loc(Heap[this, elems], i_8_2): Ref), val]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@85.5--85.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@85.5--85.20) [112920]"}
          FullPerm == Mask[this, elems];
        Heap := Heap[this, elems:=a_2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(this.elems, this.size).val := elem -- arraylist-quantified-permissions.vpr@88.3--88.41
    
    // -- Check definedness of loc(this.elems, this.size)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@88.3--88.41) [112921]"}
        HasDirectPerm(Mask, this, elems);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@88.3--88.41) [112922]"}
        HasDirectPerm(Mask, this, size);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, this.size).val (arraylist-quantified-permissions.vpr@88.3--88.41) [112923]"}
      FullPerm == Mask[(loc(Heap[this, elems], Heap[this, size]): Ref), val];
    Heap := Heap[(loc(Heap[this, elems], Heap[this, size]): Ref), val:=elem];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := this.size + 1 -- arraylist-quantified-permissions.vpr@89.3--89.29
    
    // -- Check definedness of this.size + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@89.3--89.29) [112924]"}
        HasDirectPerm(Mask, this, size);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@89.3--89.29) [112925]"}
      FullPerm == Mask[this, size];
    Heap := Heap[this, size:=Heap[this, size] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@91.3--91.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@91.3--91.24) [112928]"}
        perm <= Mask[this, elems];
    }
    Mask := Mask[this, elems:=Mask[this, elems] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@91.3--91.24) [112930]"}
        perm <= Mask[this, size];
    }
    Mask := Mask[this, size:=Mask[this, size] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [112931]"}
      0 <= Heap[this, size];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [112932]"}
      Heap[this, size] <= (len_1(Heap[this, elems]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@91.3--91.24) [112933]"}
      0 < (len_1(Heap[this, elems]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@91.3--91.24) [112935]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered8(i_9_1), neverTriggered8(i_9_2) }
        (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < (len_1(Heap[this, elems]): int))) && (0 <= i_9_2 && i_9_2 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_9_1): Ref) != (loc(Heap[this, elems], i_9_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@91.3--91.24) [112936]"}
        (forall i_9_1: int ::
        { (loc(Heap[this, elems], i_9_1): Ref) } { (loc(Heap[this, elems], i_9_1): Ref) }
        0 <= i_9_1 && i_9_1 < (len_1(Heap[this, elems]): int) ==> Mask[(loc(Heap[this, elems], i_9_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_9_1: int ::
        { (loc(Heap[this, elems], i_9_1): Ref) } { (loc(Heap[this, elems], i_9_1): Ref) }
        (0 <= i_9_1 && i_9_1 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange8((loc(Heap[this, elems], i_9_1): Ref)) && invRecv8((loc(Heap[this, elems], i_9_1): Ref)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> (loc(Heap[this, elems], invRecv8(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange8(o_4)) ==> (loc(Heap[this, elems], invRecv8(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv8(o_4) && invRecv8(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_5: Ref, f: (Field A B) ::
      { newPMask[o_5, f] }
      Heap[null, AList#sm(this)][o_5, f] ==> newPMask[o_5, f]
    );
    assume (forall i_10_1: int ::
      
      0 <= i_10_1 && i_10_1 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_10_1): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@72.11--72.27) [112938]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion length(this) == old(length(this)) + 1 might not hold. (arraylist-quantified-permissions.vpr@73.11--73.48) [112939]"}
      length(Heap, this) == length(oldHeap, this) + 1;
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, length(this) - 1) == elem might not hold. (arraylist-quantified-permissions.vpr@74.11--74.49) [112940]"}
      itemAt(Heap, this, length(Heap, this) - 1) == elem;
    if (*) {
      if (0 <= i_2_1 && i_2_1 < length(oldHeap, this)) {
        assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, i) == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@75.11--75.103) [112941]"}
          itemAt(Heap, this, i_2_1) == itemAt(oldHeap, this, i_2_1);
      }
      assume false;
    }
    assume (forall i_3_1_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, i_3_1_1) }
      0 <= i_3_1_1 && i_3_1_1 < length(oldHeap, this) ==> itemAt(Heap, this, i_3_1_1) == itemAt(oldHeap, this, i_3_1_1)
    );
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion itemAt(this, old(length(this))) == elem might not hold. (arraylist-quantified-permissions.vpr@76.11--76.50) [112942]"}
      itemAt(Heap, this, length(oldHeap, this)) == elem;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(this: Ref, elem: int) returns (j_9: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var k_30: int;
  var k_31: int;
  var k_8: int;
  var k_32: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var k_13: int;
  var a_2: ArrayDomainType;
  var i_32: int;
  var t_2: int;
  var i_9_1: int;
  var i_11_1: int;
  var i_33: int;
  var i_34: int;
  var i_35: int;
  var i_23: int;
  var i_25: int;
  var k_4_1: int;
  var k_6: int;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, AList(this):=PostMask[null, AList(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume 0 <= j_9;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of j < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@99.25--99.37) [112943]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume j_9 < length(PostHeap, this);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this) == old(length(this)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@100.11--100.23) [112944]"}
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@100.31--100.43) [112945]"}
          NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this) == length(oldHeap, this) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < j ==> itemAt(this, k) == old(itemAt(this, k)))
      if (*) {
        if (0 <= k_30 && k_30 < j_9) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@101.48--101.63) [112946]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@101.48--101.63) [112947]"}
              0 <= k_30;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@101.48--101.63) [112948]"}
              k_30 < length(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@101.71--101.86) [112949]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@101.71--101.86) [112950]"}
              0 <= k_30;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@101.71--101.86) [112951]"}
              k_30 < length(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_1_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, k_1_1) }
      0 <= k_1_1 && k_1_1 < j_9 ==> itemAt(PostHeap, this, k_1_1) == itemAt(oldHeap, this, k_1_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of itemAt(this, j) == elem
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@102.11--102.26) [112952]"}
          NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
        assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@102.11--102.26) [112953]"}
          0 <= j_9;
        assert {:msg "  Precondition of function itemAt might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@102.11--102.26) [112954]"}
          j_9 < length(PostHeap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume itemAt(PostHeap, this, j_9) == elem;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall k: Int :: { itemAt(this, k) } j < k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k - 1)))
      if (*) {
        if (j_9 < k_31) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.41--103.53) [112955]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        if (j_9 < k_31 && k_31 < length(PostHeap, this)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.58--103.73) [112956]"}
              NoPerm < perm ==> NoPerm < PostMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@103.58--103.73) [112957]"}
              0 <= k_31;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@103.58--103.73) [112958]"}
              k_31 < length(PostHeap, this);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@103.81--103.100) [112959]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k - 1 might not hold. (arraylist-quantified-permissions.vpr@103.81--103.100) [112960]"}
              0 <= k_31 - 1;
            assert {:msg "  Precondition of function itemAt might not hold. Assertion k - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@103.81--103.100) [112961]"}
              k_31 - 1 < length(oldHeap, this);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall k_3: int ::
      { itemAt#frame(PostHeap[null, AList(this)], this, k_3) }
      j_9 < k_3 && k_3 < length(PostHeap, this) ==> itemAt(PostHeap, this, k_3) == itemAt(oldHeap, this, k_3 - 1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: j := 0 -- arraylist-quantified-permissions.vpr@105.3--105.9
    j_9 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < length(this) && itemAt(this, j) < elem) -- arraylist-quantified-permissions.vpr@106.3--116.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(AList(this), write) might not hold on entry. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@107.15--107.31) [112962]"}
            perm <= Mask[null, AList(this)];
        }
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not hold on entry. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [112963]"}
          0 <= j_9;
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not hold on entry. Assertion j <= length(this) might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [112964]"}
          j_9 <= length(Heap, this);
        if (j_9 > 0) {
          assert {:msg "  Loop invariant j > 0 ==> itemAt(this, j - 1) <= elem might not hold on entry. Assertion itemAt(this, j - 1) <= elem might not hold. (arraylist-quantified-permissions.vpr@109.15--109.49) [112965]"}
            itemAt(Heap, this, j_9 - 1) <= elem;
        }
        assert {:msg "  Loop invariant length(this) == old(length(this)) might not hold on entry. Assertion length(this) == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@110.15--110.48) [112966]"}
          length(Heap, this) == length(oldHeap, this);
        if (*) {
          if (0 <= k_8 && k_8 < length(Heap, this)) {
            assert {:msg "  Loop invariant (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))) might not hold on entry. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@111.15--111.122) [112967]"}
              itemAt(Heap, this, k_8) == itemAt(oldHeap, this, k_8);
          }
          assume false;
        }
        assume (forall k_9_1: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_9_1) }
          0 <= k_9_1 && k_9_1 < length(Heap, this) ==> itemAt(Heap, this, k_9_1) == itemAt(oldHeap, this, k_9_1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= j_9;
        assume state(Heap, Mask);
        
        // -- Check definedness of j <= length(this)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@108.30--108.42) [112968]"}
              NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume j_9 <= length(Heap, this);
        assume state(Heap, Mask);
        if (j_9 > 0) {
          assume state(Heap, Mask);
          
          // -- Check definedness of itemAt(this, j - 1) <= elem
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@109.25--109.41) [112969]"}
                NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
              assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j - 1 might not hold. (arraylist-quantified-permissions.vpr@109.25--109.41) [112970]"}
                0 <= j_9 - 1;
              assert {:msg "  Precondition of function itemAt might not hold. Assertion j - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@109.25--109.41) [112971]"}
                j_9 - 1 < length(Heap, this);
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume itemAt(Heap, this, j_9 - 1) <= elem;
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of length(this) == old(length(this))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@110.15--110.27) [112972]"}
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
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@110.35--110.47) [112973]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume length(Heap, this) == length(oldHeap, this);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k)))
          if (*) {
            if (0 <= k_32) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.68--111.80) [112974]"}
                  NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            if (0 <= k_32 && k_32 < length(Heap, this)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.85--111.99) [112975]"}
                  NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
                assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@111.85--111.99) [112976]"}
                  0 <= k_32;
                assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@111.85--111.99) [112977]"}
                  k_32 < length(Heap, this);
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                perm := FullPerm;
                assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@111.107--111.121) [112978]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= k might not hold. (arraylist-quantified-permissions.vpr@111.107--111.121) [112979]"}
                  0 <= k_32;
                assert {:msg "  Precondition of function itemAt might not hold. Assertion k < length(this) might not hold. (arraylist-quantified-permissions.vpr@111.107--111.121) [112980]"}
                  k_32 < length(oldHeap, this);
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall k_11: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_11) }
          0 <= k_11 && k_11 < length(Heap, this) ==> itemAt(Heap, this, k_11) == itemAt(oldHeap, this, k_11)
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
        assume 0 <= j_9;
        assume state(Heap, Mask);
        assume j_9 <= length(Heap, this);
        if (j_9 > 0) {
          assume state(Heap, Mask);
          assume itemAt(Heap, this, j_9 - 1) <= elem;
        }
        assume state(Heap, Mask);
        assume length(Heap, this) == length(oldHeap, this);
        assume state(Heap, Mask);
        assume (forall k_12_2: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_12_2) }
          0 <= k_12_2 && k_12_2 < length(Heap, this) ==> itemAt(Heap, this, k_12_2) == itemAt(oldHeap, this, k_12_2)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of j < length(this) && itemAt(this, j) < elem
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@106.14--106.26) [112981]"}
              NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (j_9 < length(Heap, this)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@106.30--106.44) [112982]"}
                NoPerm < perm ==> NoPerm < Mask[null, AList(this)];
              assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@106.30--106.44) [112983]"}
                0 <= j_9;
              assert {:msg "  Precondition of function itemAt might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@106.30--106.44) [112984]"}
                j_9 < length(Heap, this);
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        assume j_9 < length(Heap, this) && itemAt(Heap, this, j_9) < elem;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@113.5--113.28
            assume AList#trigger(Heap, AList(this));
            assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@113.5--113.28) [112985]"}
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
            Mask := Mask[this, elems:=Mask[this, elems] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, size:=Mask[this, size] + perm];
            assume state(Heap, Mask);
            assume 0 <= Heap[this, size];
            assume Heap[this, size] <= (len_1(Heap[this, elems]): int);
            assume 0 < (len_1(Heap[this, elems]): int);
            havoc QPMask;
            assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@113.5--113.28) [112986]"}
              (forall i: int, i_77: int ::
              
              (((i != i_77 && (0 <= i && i < (len_1(Heap[this, elems]): int))) && (0 <= i_77 && i_77 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i): Ref) != (loc(Heap[this, elems], i_77): Ref)
            );
            
            // -- Define Inverse Function
              assume (forall i: int ::
                { (loc(Heap[this, elems], i): Ref) } { (loc(Heap[this, elems], i): Ref) }
                (0 <= i && i < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange9((loc(Heap[this, elems], i): Ref)) && invRecv9((loc(Heap[this, elems], i): Ref)) == i
              );
              assume (forall o_4: Ref ::
                { invRecv9(o_4) }
                ((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (loc(Heap[this, elems], invRecv9(o_4)): Ref) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall i: int ::
                { (loc(Heap[this, elems], i): Ref) } { (loc(Heap[this, elems], i): Ref) }
                0 <= i && i < (len_1(Heap[this, elems]): int) ==> (loc(Heap[this, elems], i): Ref) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv9(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- arraylist-quantified-permissions.vpr@114.5--114.15
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@115.5--115.26
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@115.5--115.26) [112987]"}
                perm <= Mask[this, elems];
            }
            Mask := Mask[this, elems:=Mask[this, elems] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@115.5--115.26) [112988]"}
                perm <= Mask[this, size];
            }
            Mask := Mask[this, size:=Mask[this, size] - perm];
            assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [112989]"}
              0 <= Heap[this, size];
            assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [112990]"}
              Heap[this, size] <= (len_1(Heap[this, elems]): int);
            assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@115.5--115.26) [112991]"}
              0 < (len_1(Heap[this, elems]): int);
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(this.elems, i) is injective
              assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@115.5--115.26) [112992]"}
                (forall i_1: int, i_1_1: int ::
                { neverTriggered10(i_1), neverTriggered10(i_1_1) }
                (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len_1(Heap[this, elems]): int))) && (0 <= i_1_1 && i_1_1 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_1): Ref) != (loc(Heap[this, elems], i_1_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@115.5--115.26) [112993]"}
                (forall i_1: int ::
                { (loc(Heap[this, elems], i_1): Ref) } { (loc(Heap[this, elems], i_1): Ref) }
                0 <= i_1 && i_1 < (len_1(Heap[this, elems]): int) ==> Mask[(loc(Heap[this, elems], i_1): Ref), val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver loc(this.elems, i)
              assume (forall i_1: int ::
                { (loc(Heap[this, elems], i_1): Ref) } { (loc(Heap[this, elems], i_1): Ref) }
                (0 <= i_1 && i_1 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange10((loc(Heap[this, elems], i_1): Ref)) && invRecv10((loc(Heap[this, elems], i_1): Ref)) == i_1
              );
              assume (forall o_4: Ref ::
                { invRecv10(o_4) }
                (0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> (loc(Heap[this, elems], invRecv10(o_4)): Ref) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange10(o_4)) ==> (loc(Heap[this, elems], invRecv10(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv10(o_4) && invRecv10(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            perm := FullPerm;
            Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume AList#trigger(Heap, AList(this));
            assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
            if (!HasDirectPerm(Mask, null, AList(this))) {
              Heap := Heap[null, AList#sm(this):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, AList(this):=freshVersion];
            }
            Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
            Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
            // register all known folded permissions guarded by predicate AList
            havoc newPMask;
            assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
              { newPMask[o_1, f_11] }
              Heap[null, AList#sm(this)][o_1, f_11] ==> newPMask[o_1, f_11]
            );
            assume (forall i_2_1: int ::
              
              0 <= i_2_1 && i_2_1 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_2_1): Ref), val]
            );
            Heap := Heap[null, AList#sm(this):=newPMask];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(AList(this), write) might not be preserved. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@107.15--107.31) [112994]"}
            perm <= Mask[null, AList(this)];
        }
        Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not be preserved. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [112995]"}
          0 <= j_9;
        assert {:msg "  Loop invariant 0 <= j && j <= length(this) might not be preserved. Assertion j <= length(this) might not hold. (arraylist-quantified-permissions.vpr@108.15--108.42) [112996]"}
          j_9 <= length(Heap, this);
        if (j_9 > 0) {
          assert {:msg "  Loop invariant j > 0 ==> itemAt(this, j - 1) <= elem might not be preserved. Assertion itemAt(this, j - 1) <= elem might not hold. (arraylist-quantified-permissions.vpr@109.15--109.49) [112997]"}
            itemAt(Heap, this, j_9 - 1) <= elem;
        }
        assert {:msg "  Loop invariant length(this) == old(length(this)) might not be preserved. Assertion length(this) == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@110.15--110.48) [112998]"}
          length(Heap, this) == length(oldHeap, this);
        if (*) {
          if (0 <= k_13 && k_13 < length(Heap, this)) {
            assert {:msg "  Loop invariant (forall k: Int :: { old(itemAt(this, k)) } 0 <= k && k < length(this) ==> itemAt(this, k) == old(itemAt(this, k))) might not be preserved. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@111.15--111.122) [112999]"}
              itemAt(Heap, this, k_13) == itemAt(oldHeap, this, k_13);
          }
          assume false;
        }
        assume (forall k_14_1_1: int ::
          { itemAt#frame(oldHeap[null, AList(this)], this, k_14_1_1) }
          0 <= k_14_1_1 && k_14_1_1 < length(Heap, this) ==> itemAt(Heap, this, k_14_1_1) == itemAt(oldHeap, this, k_14_1_1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < length(Heap, this) && itemAt(Heap, this, j_9) < elem);
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
      assume state(Heap, Mask);
      assume 0 <= j_9;
      assume state(Heap, Mask);
      assume j_9 <= length(Heap, this);
      if (j_9 > 0) {
        assume state(Heap, Mask);
        assume itemAt(Heap, this, j_9 - 1) <= elem;
      }
      assume state(Heap, Mask);
      assume length(Heap, this) == length(oldHeap, this);
      assume state(Heap, Mask);
      assume (forall k_15_1: int ::
        { itemAt#frame(oldHeap[null, AList(this)], this, k_15_1) }
        0 <= k_15_1 && k_15_1 < length(Heap, this) ==> itemAt(Heap, this, k_15_1) == itemAt(oldHeap, this, k_15_1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@117.3--117.26
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding AList(this) might fail. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@117.3--117.26) [113002]"}
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
    Mask := Mask[this, elems:=Mask[this, elems] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, size:=Mask[this, size] + perm];
    assume state(Heap, Mask);
    assume 0 <= Heap[this, size];
    assume Heap[this, size] <= (len_1(Heap[this, elems]): int);
    assume 0 < (len_1(Heap[this, elems]): int);
    havoc QPMask;
    assert {:msg "  Unfolding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@117.3--117.26) [113005]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < (len_1(Heap[this, elems]): int))) && (0 <= i_3_1 && i_3_1 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_3): Ref) != (loc(Heap[this, elems], i_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { (loc(Heap[this, elems], i_3): Ref) } { (loc(Heap[this, elems], i_3): Ref) }
        (0 <= i_3 && i_3 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange11((loc(Heap[this, elems], i_3): Ref)) && invRecv11((loc(Heap[this, elems], i_3): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (loc(Heap[this, elems], invRecv11(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { (loc(Heap[this, elems], i_3): Ref) } { (loc(Heap[this, elems], i_3): Ref) }
        0 <= i_3 && i_3 < (len_1(Heap[this, elems]): int) ==> (loc(Heap[this, elems], i_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv11(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.size == len(this.elems)) -- arraylist-quantified-permissions.vpr@119.3--125.4
    
    // -- Check definedness of this.size == len(this.elems)
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@119.6--119.34) [113006]"}
        HasDirectPerm(Mask, this, size);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@119.6--119.34) [113007]"}
        HasDirectPerm(Mask, this, elems);
    if (Heap[this, size] == (len_1(Heap[this, elems]): int)) {
      
      // -- Translating statement: inhale len(a) == len(this.elems) * 2 &&
  //   (forall i: Int ::
  //     { loc(a, i) }
  //     0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) -- arraylist-quantified-permissions.vpr@121.5--121.103
        
        // -- Check definedness of len(a) == len(this.elems) * 2
          assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@121.12--121.103) [113008]"}
            HasDirectPerm(Mask, this, elems);
        assume (len_1(a_2): int) == (len_1(Heap[this, elems]): int) * 2;
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource loc(a, i).val might not be injective. (arraylist-quantified-permissions.vpr@121.12--121.103) [113009]"}
          (forall i_5: int, i_5_1: int ::
          
          (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5): Ref) != (loc(a_2, i_5_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5: int ::
            { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
            (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i_5): Ref)) && invRecv12((loc(a_2, i_5): Ref)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            ((0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (loc(a_2, invRecv12(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5: int ::
            { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
            0 <= i_5 && i_5 < (len_1(a_2): int) ==> (loc(a_2, i_5): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv12(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
            if (0 <= i_32) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@123.12--123.114) [113010]"}
                HasDirectPerm(Mask, this, elems);
            }
            if (0 <= i_32 && i_32 < (len_1(Heap[this, elems]): int)) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(a, i).val (arraylist-quantified-permissions.vpr@123.12--123.114) [113011]"}
                HasDirectPerm(Mask, (loc(a_2, i_32): Ref), val);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@123.12--123.114) [113012]"}
                HasDirectPerm(Mask, this, elems);
              assert {:msg "  Inhale might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@123.12--123.114) [113013]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems], i_32): Ref), val);
            }
            assume false;
          }
        assume (forall i_7_1: int ::
          { Heap[(loc(a_2, i_7_1): Ref), val] }
          0 <= i_7_1 && i_7_1 < (len_1(Heap[this, elems]): int) ==> Heap[(loc(a_2, i_7_1): Ref), val] == Heap[(loc(Heap[this, elems], i_7_1): Ref), val]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.elems := a -- arraylist-quantified-permissions.vpr@124.5--124.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@124.5--124.20) [113014]"}
          FullPerm == Mask[this, elems];
        Heap := Heap[this, elems:=a_2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: t := this.size -- arraylist-quantified-permissions.vpr@127.3--127.27
    
    // -- Check definedness of this.size
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@127.3--127.27) [113015]"}
        HasDirectPerm(Mask, this, size);
    t_2 := Heap[this, size];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (t > j) -- arraylist-quantified-permissions.vpr@130.3--141.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113016]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [113017]"}
            perm <= Mask[this, elems];
        }
        Mask := Mask[this, elems:=Mask[this, elems] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113018]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@131.15--131.91) [113019]"}
            perm <= Mask[this, size];
        }
        Mask := Mask[this, size:=Mask[this, size] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113020]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not hold on entry. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@131.15--131.91) [113021]"}
            perm <= Mask[(loc(Heap[this, elems], j_9): Ref), val];
        }
        Mask := Mask[(loc(Heap[this, elems], j_9): Ref), val:=Mask[(loc(Heap[this, elems], j_9): Ref), val] - perm];
        assert {:msg "  Loop invariant j <= t && t <= this.size might not hold on entry. Assertion j <= t might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [113022]"}
          j_9 <= t_2;
        assert {:msg "  Loop invariant j <= t && t <= this.size might not hold on entry. Assertion t <= this.size might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [113023]"}
          t_2 <= Heap[this, size];
        assert {:msg "  Loop invariant this.size == old(length(this)) might not hold on entry. Assertion this.size == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@133.15--133.45) [113024]"}
          Heap[this, size] == length(oldHeap, this);
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not hold on entry. Assertion -1 <= j might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [113025]"}
          -1 <= j_9;
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not hold on entry. Assertion this.size < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [113026]"}
          Heap[this, size] < (len_1(Heap[this, elems]): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(this.elems, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not hold on entry. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [113027]"}
            (forall i_8_2: int, i_8_3: int ::
            { neverTriggered13(i_8_2), neverTriggered13(i_8_3) }
            (((i_8_2 != i_8_3 && (j_9 < i_8_2 && i_8_2 <= Heap[this, size])) && (j_9 < i_8_3 && i_8_3 <= Heap[this, size])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_8_2): Ref) != (loc(Heap[this, elems], i_8_3): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not hold on entry. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@135.16--135.86) [113028]"}
            (forall i_8_2: int ::
            { (loc(Heap[this, elems], i_8_2): Ref) } { (loc(Heap[this, elems], i_8_2): Ref) }
            j_9 < i_8_2 && i_8_2 <= Heap[this, size] ==> Mask[(loc(Heap[this, elems], i_8_2): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(this.elems, i)
          assume (forall i_8_2: int ::
            { (loc(Heap[this, elems], i_8_2): Ref) } { (loc(Heap[this, elems], i_8_2): Ref) }
            (j_9 < i_8_2 && i_8_2 <= Heap[this, size]) && NoPerm < FullPerm ==> qpRange13((loc(Heap[this, elems], i_8_2): Ref)) && invRecv13((loc(Heap[this, elems], i_8_2): Ref)) == i_8_2
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (j_9 < invRecv13(o_4) && invRecv13(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange13(o_4)) ==> (loc(Heap[this, elems], invRecv13(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((j_9 < invRecv13(o_4) && invRecv13(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange13(o_4)) ==> (loc(Heap[this, elems], invRecv13(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((j_9 < invRecv13(o_4) && invRecv13(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange13(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (j_9 <= i_9_1 && i_9_1 <= Heap[this, size]) {
            if (i_9_1 < t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))) might not hold on entry. Assertion loc(this.elems, i).val == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@136.15--136.137) [113029]"}
                Heap[(loc(Heap[this, elems], i_9_1): Ref), val] == itemAt(oldHeap, this, i_9_1);
            }
          }
          assume false;
        }
        assume (forall i_10_1_1: int ::
          { (loc(Heap[this, elems], i_10_1_1): Ref) }
          j_9 <= i_10_1_1 && i_10_1_1 <= Heap[this, size] ==> i_10_1_1 < t_2 ==> Heap[(loc(Heap[this, elems], i_10_1_1): Ref), val] == itemAt(oldHeap, this, i_10_1_1)
        );
        if (*) {
          if (j_9 < i_11_1 && i_11_1 <= Heap[this, size]) {
            if (i_11_1 > t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))) might not hold on entry. Assertion loc(this.elems, i).val == old(itemAt(this, i - 1)) might not hold. (arraylist-quantified-permissions.vpr@137.15--137.138) [113030]"}
                Heap[(loc(Heap[this, elems], i_11_1): Ref), val] == itemAt(oldHeap, this, i_11_1 - 1);
            }
          }
          assume false;
        }
        assume (forall i_12_1_1: int ::
          { (loc(Heap[this, elems], i_12_1_1): Ref) }
          j_9 < i_12_1_1 && i_12_1_1 <= Heap[this, size] ==> i_12_1_1 > t_2 ==> Heap[(loc(Heap[this, elems], i_12_1_1): Ref), val] == itemAt(oldHeap, this, i_12_1_1 - 1)
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
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113031]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, elems:=Mask[this, elems] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113032]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, size:=Mask[this, size] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of acc(loc(this.elems, j).val, 1 / 2)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [113033]"}
            HasDirectPerm(Mask, this, elems);
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113034]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> (loc(Heap[this, elems], j_9): Ref) != null;
        Mask := Mask[(loc(Heap[this, elems], j_9): Ref), val:=Mask[(loc(Heap[this, elems], j_9): Ref), val] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume j_9 <= t_2;
        
        // -- Check definedness of t <= this.size
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@132.15--132.39) [113035]"}
            HasDirectPerm(Mask, this, size);
        assume t_2 <= Heap[this, size];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of this.size == old(length(this))
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@133.15--133.45) [113036]"}
            HasDirectPerm(Mask, this, size);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@133.32--133.44) [113037]"}
              NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assume Heap[this, size] == length(oldHeap, this);
        assume state(Heap, Mask);
        assume -1 <= j_9;
        
        // -- Check definedness of this.size < len(this.elems)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@134.15--134.53) [113038]"}
            HasDirectPerm(Mask, this, size);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@134.15--134.53) [113039]"}
            HasDirectPerm(Mask, this, elems);
        assume Heap[this, size] < (len_1(Heap[this, elems]): int);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write))
          if (*) {
            if (j_9 < i_33) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@135.16--135.86) [113040]"}
                HasDirectPerm(Mask, this, size);
            }
            if (j_9 < i_33 && i_33 <= Heap[this, size]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@135.16--135.86) [113041]"}
                HasDirectPerm(Mask, this, elems);
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [113042]"}
          (forall i_14_1: int, i_14_2: int ::
          
          (((i_14_1 != i_14_2 && (j_9 < i_14_1 && i_14_1 <= Heap[this, size])) && (j_9 < i_14_2 && i_14_2 <= Heap[this, size])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_14_1): Ref) != (loc(Heap[this, elems], i_14_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_14_1: int ::
            { (loc(Heap[this, elems], i_14_1): Ref) } { (loc(Heap[this, elems], i_14_1): Ref) }
            (j_9 < i_14_1 && i_14_1 <= Heap[this, size]) && NoPerm < FullPerm ==> qpRange14((loc(Heap[this, elems], i_14_1): Ref)) && invRecv14((loc(Heap[this, elems], i_14_1): Ref)) == i_14_1
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            ((j_9 < invRecv14(o_4) && invRecv14(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange14(o_4) ==> (loc(Heap[this, elems], invRecv14(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_14_1: int ::
            { (loc(Heap[this, elems], i_14_1): Ref) } { (loc(Heap[this, elems], i_14_1): Ref) }
            j_9 < i_14_1 && i_14_1 <= Heap[this, size] ==> (loc(Heap[this, elems], i_14_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((j_9 < invRecv14(o_4) && invRecv14(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv14(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((j_9 < invRecv14(o_4) && invRecv14(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i)))
          if (*) {
            if (j_9 <= i_34) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@136.15--136.137) [113043]"}
                HasDirectPerm(Mask, this, size);
            }
            if (j_9 <= i_34 && i_34 <= Heap[this, size]) {
              if (i_34 < t_2) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@136.15--136.137) [113044]"}
                  HasDirectPerm(Mask, this, elems);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@136.15--136.137) [113045]"}
                  HasDirectPerm(Mask, (loc(Heap[this, elems], i_34): Ref), val);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@136.121--136.135) [113046]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i might not hold. (arraylist-quantified-permissions.vpr@136.121--136.135) [113047]"}
                    0 <= i_34;
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion i < length(this) might not hold. (arraylist-quantified-permissions.vpr@136.121--136.135) [113048]"}
                    i_34 < length(oldHeap, this);
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        assume (forall i_16_1: int ::
          { (loc(Heap[this, elems], i_16_1): Ref) }
          j_9 <= i_16_1 && i_16_1 <= Heap[this, size] ==> i_16_1 < t_2 ==> Heap[(loc(Heap[this, elems], i_16_1): Ref), val] == itemAt(oldHeap, this, i_16_1)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1)))
          if (*) {
            if (j_9 < i_35) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@137.15--137.138) [113049]"}
                HasDirectPerm(Mask, this, size);
            }
            if (j_9 < i_35 && i_35 <= Heap[this, size]) {
              if (i_35 > t_2) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@137.15--137.138) [113050]"}
                  HasDirectPerm(Mask, this, elems);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@137.15--137.138) [113051]"}
                  HasDirectPerm(Mask, (loc(Heap[this, elems], i_35): Ref), val);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@137.120--137.136) [113052]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, AList(this)];
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i - 1 might not hold. (arraylist-quantified-permissions.vpr@137.120--137.136) [113053]"}
                    0 <= i_35 - 1;
                  assert {:msg "  Precondition of function itemAt might not hold. Assertion i - 1 < length(this) might not hold. (arraylist-quantified-permissions.vpr@137.120--137.136) [113054]"}
                    i_35 - 1 < length(oldHeap, this);
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
            assume false;
          }
        assume (forall i_18_1: int ::
          { (loc(Heap[this, elems], i_18_1): Ref) }
          j_9 < i_18_1 && i_18_1 <= Heap[this, size] ==> i_18_1 > t_2 ==> Heap[(loc(Heap[this, elems], i_18_1): Ref), val] == itemAt(oldHeap, this, i_18_1 - 1)
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
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113055]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, elems:=Mask[this, elems] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113056]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> this != null;
        Mask := Mask[this, size:=Mask[this, size] + perm];
        assume state(Heap, Mask);
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113057]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> (loc(Heap[this, elems], j_9): Ref) != null;
        Mask := Mask[(loc(Heap[this, elems], j_9): Ref), val:=Mask[(loc(Heap[this, elems], j_9): Ref), val] + perm];
        assume state(Heap, Mask);
        assume j_9 <= t_2;
        assume t_2 <= Heap[this, size];
        assume state(Heap, Mask);
        assume Heap[this, size] == length(oldHeap, this);
        assume -1 <= j_9;
        assume Heap[this, size] < (len_1(Heap[this, elems]): int);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [113058]"}
          (forall i_19: int, i_19_1: int ::
          
          (((i_19 != i_19_1 && (j_9 < i_19 && i_19 <= Heap[this, size])) && (j_9 < i_19_1 && i_19_1 <= Heap[this, size])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_19): Ref) != (loc(Heap[this, elems], i_19_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_19: int ::
            { (loc(Heap[this, elems], i_19): Ref) } { (loc(Heap[this, elems], i_19): Ref) }
            (j_9 < i_19 && i_19 <= Heap[this, size]) && NoPerm < FullPerm ==> qpRange15((loc(Heap[this, elems], i_19): Ref)) && invRecv15((loc(Heap[this, elems], i_19): Ref)) == i_19
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            ((j_9 < invRecv15(o_4) && invRecv15(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange15(o_4) ==> (loc(Heap[this, elems], invRecv15(o_4)): Ref) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_19: int ::
            { (loc(Heap[this, elems], i_19): Ref) } { (loc(Heap[this, elems], i_19): Ref) }
            j_9 < i_19 && i_19 <= Heap[this, size] ==> (loc(Heap[this, elems], i_19): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((j_9 < invRecv15(o_4) && invRecv15(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv15(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((j_9 < invRecv15(o_4) && invRecv15(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall i_20_1: int ::
          { (loc(Heap[this, elems], i_20_1): Ref) }
          j_9 <= i_20_1 && i_20_1 <= Heap[this, size] ==> i_20_1 < t_2 ==> Heap[(loc(Heap[this, elems], i_20_1): Ref), val] == itemAt(oldHeap, this, i_20_1)
        );
        assume state(Heap, Mask);
        assume (forall i_21: int ::
          { (loc(Heap[this, elems], i_21): Ref) }
          j_9 < i_21 && i_21 <= Heap[this, size] ==> i_21 > t_2 ==> Heap[(loc(Heap[this, elems], i_21): Ref), val] == itemAt(oldHeap, this, i_21 - 1)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume t_2 > j_9;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: loc(this.elems, t).val := loc(this.elems, t - 1).val -- arraylist-quantified-permissions.vpr@139.5--139.53
            
            // -- Check definedness of loc(this.elems, t)
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@139.5--139.53) [113059]"}
                HasDirectPerm(Mask, this, elems);
            
            // -- Check definedness of loc(this.elems, t - 1).val
              assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@139.5--139.53) [113060]"}
                HasDirectPerm(Mask, this, elems);
              assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, t - 1).val (arraylist-quantified-permissions.vpr@139.5--139.53) [113061]"}
                HasDirectPerm(Mask, (loc(Heap[this, elems], t_2 - 1): Ref), val);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, t).val (arraylist-quantified-permissions.vpr@139.5--139.53) [113062]"}
              FullPerm == Mask[(loc(Heap[this, elems], t_2): Ref), val];
            Heap := Heap[(loc(Heap[this, elems], t_2): Ref), val:=Heap[(loc(Heap[this, elems], t_2 - 1): Ref), val]];
            assume state(Heap, Mask);
          
          // -- Translating statement: t := t - 1 -- arraylist-quantified-permissions.vpr@140.5--140.15
            t_2 := t_2 - 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113063]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@131.15--131.91) [113064]"}
            perm <= Mask[this, elems];
        }
        Mask := Mask[this, elems:=Mask[this, elems] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113065]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@131.15--131.91) [113066]"}
            perm <= Mask[this, size];
        }
        Mask := Mask[this, size:=Mask[this, size] - perm];
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113067]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(this.elems, 1 / 2) && (acc(this.size, 1 / 2) && acc(loc(this.elems, j).val, 1 / 2)) might not be preserved. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@131.15--131.91) [113068]"}
            perm <= Mask[(loc(Heap[this, elems], j_9): Ref), val];
        }
        Mask := Mask[(loc(Heap[this, elems], j_9): Ref), val:=Mask[(loc(Heap[this, elems], j_9): Ref), val] - perm];
        assert {:msg "  Loop invariant j <= t && t <= this.size might not be preserved. Assertion j <= t might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [113069]"}
          j_9 <= t_2;
        assert {:msg "  Loop invariant j <= t && t <= this.size might not be preserved. Assertion t <= this.size might not hold. (arraylist-quantified-permissions.vpr@132.15--132.39) [113070]"}
          t_2 <= Heap[this, size];
        assert {:msg "  Loop invariant this.size == old(length(this)) might not be preserved. Assertion this.size == old(length(this)) might not hold. (arraylist-quantified-permissions.vpr@133.15--133.45) [113071]"}
          Heap[this, size] == length(oldHeap, this);
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not be preserved. Assertion -1 <= j might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [113072]"}
          -1 <= j_9;
        assert {:msg "  Loop invariant -1 <= j && this.size < len(this.elems) might not be preserved. Assertion this.size < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@134.15--134.53) [113073]"}
          Heap[this, size] < (len_1(Heap[this, elems]): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(this.elems, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not be preserved. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [113074]"}
            (forall i_22_1: int, i_22_2: int ::
            { neverTriggered16(i_22_1), neverTriggered16(i_22_2) }
            (((i_22_1 != i_22_2 && (j_9 < i_22_1 && i_22_1 <= Heap[this, size])) && (j_9 < i_22_2 && i_22_2 <= Heap[this, size])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_22_1): Ref) != (loc(Heap[this, elems], i_22_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> acc(loc(this.elems, i).val, write)) might not be preserved. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@135.16--135.86) [113075]"}
            (forall i_22_1: int ::
            { (loc(Heap[this, elems], i_22_1): Ref) } { (loc(Heap[this, elems], i_22_1): Ref) }
            j_9 < i_22_1 && i_22_1 <= Heap[this, size] ==> Mask[(loc(Heap[this, elems], i_22_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(this.elems, i)
          assume (forall i_22_1: int ::
            { (loc(Heap[this, elems], i_22_1): Ref) } { (loc(Heap[this, elems], i_22_1): Ref) }
            (j_9 < i_22_1 && i_22_1 <= Heap[this, size]) && NoPerm < FullPerm ==> qpRange16((loc(Heap[this, elems], i_22_1): Ref)) && invRecv16((loc(Heap[this, elems], i_22_1): Ref)) == i_22_1
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            (j_9 < invRecv16(o_4) && invRecv16(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange16(o_4)) ==> (loc(Heap[this, elems], invRecv16(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((j_9 < invRecv16(o_4) && invRecv16(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange16(o_4)) ==> (loc(Heap[this, elems], invRecv16(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((j_9 < invRecv16(o_4) && invRecv16(o_4) <= Heap[this, size]) && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (j_9 <= i_23 && i_23 <= Heap[this, size]) {
            if (i_23 < t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j <= i && i <= this.size ==> i < t ==> loc(this.elems, i).val == old(itemAt(this, i))) might not be preserved. Assertion loc(this.elems, i).val == old(itemAt(this, i)) might not hold. (arraylist-quantified-permissions.vpr@136.15--136.137) [113076]"}
                Heap[(loc(Heap[this, elems], i_23): Ref), val] == itemAt(oldHeap, this, i_23);
            }
          }
          assume false;
        }
        assume (forall i_24_1_1: int ::
          { (loc(Heap[this, elems], i_24_1_1): Ref) }
          j_9 <= i_24_1_1 && i_24_1_1 <= Heap[this, size] ==> i_24_1_1 < t_2 ==> Heap[(loc(Heap[this, elems], i_24_1_1): Ref), val] == itemAt(oldHeap, this, i_24_1_1)
        );
        if (*) {
          if (j_9 < i_25 && i_25 <= Heap[this, size]) {
            if (i_25 > t_2) {
              assert {:msg "  Loop invariant (forall i: Int :: { loc(this.elems, i) } j < i && i <= this.size ==> i > t ==> loc(this.elems, i).val == old(itemAt(this, i - 1))) might not be preserved. Assertion loc(this.elems, i).val == old(itemAt(this, i - 1)) might not hold. (arraylist-quantified-permissions.vpr@137.15--137.138) [113077]"}
                Heap[(loc(Heap[this, elems], i_25): Ref), val] == itemAt(oldHeap, this, i_25 - 1);
            }
          }
          assume false;
        }
        assume (forall i_26_1_1: int ::
          { (loc(Heap[this, elems], i_26_1_1): Ref) }
          j_9 < i_26_1_1 && i_26_1_1 <= Heap[this, size] ==> i_26_1_1 > t_2 ==> Heap[(loc(Heap[this, elems], i_26_1_1): Ref), val] == itemAt(oldHeap, this, i_26_1_1 - 1)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(t_2 > j_9);
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113078]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, elems:=Mask[this, elems] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113079]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, size:=Mask[this, size] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (arraylist-quantified-permissions.vpr@131.15--131.91) [113080]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> (loc(Heap[this, elems], j_9): Ref) != null;
      Mask := Mask[(loc(Heap[this, elems], j_9): Ref), val:=Mask[(loc(Heap[this, elems], j_9): Ref), val] + perm];
      assume state(Heap, Mask);
      assume j_9 <= t_2;
      assume t_2 <= Heap[this, size];
      assume state(Heap, Mask);
      assume Heap[this, size] == length(oldHeap, this);
      assume -1 <= j_9;
      assume Heap[this, size] < (len_1(Heap[this, elems]): int);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@135.16--135.86) [113081]"}
        (forall i_27: int, i_27_1: int ::
        
        (((i_27 != i_27_1 && (j_9 < i_27 && i_27 <= Heap[this, size])) && (j_9 < i_27_1 && i_27_1 <= Heap[this, size])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_27): Ref) != (loc(Heap[this, elems], i_27_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_27: int ::
          { (loc(Heap[this, elems], i_27): Ref) } { (loc(Heap[this, elems], i_27): Ref) }
          (j_9 < i_27 && i_27 <= Heap[this, size]) && NoPerm < FullPerm ==> qpRange17((loc(Heap[this, elems], i_27): Ref)) && invRecv17((loc(Heap[this, elems], i_27): Ref)) == i_27
        );
        assume (forall o_4: Ref ::
          { invRecv17(o_4) }
          ((j_9 < invRecv17(o_4) && invRecv17(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange17(o_4) ==> (loc(Heap[this, elems], invRecv17(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_27: int ::
          { (loc(Heap[this, elems], i_27): Ref) } { (loc(Heap[this, elems], i_27): Ref) }
          j_9 < i_27 && i_27 <= Heap[this, size] ==> (loc(Heap[this, elems], i_27): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((j_9 < invRecv17(o_4) && invRecv17(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> (loc(Heap[this, elems], invRecv17(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((j_9 < invRecv17(o_4) && invRecv17(o_4) <= Heap[this, size]) && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall i_28: int ::
        { (loc(Heap[this, elems], i_28): Ref) }
        j_9 <= i_28 && i_28 <= Heap[this, size] ==> i_28 < t_2 ==> Heap[(loc(Heap[this, elems], i_28): Ref), val] == itemAt(oldHeap, this, i_28)
      );
      assume state(Heap, Mask);
      assume (forall i_29_1: int ::
        { (loc(Heap[this, elems], i_29_1): Ref) }
        j_9 < i_29_1 && i_29_1 <= Heap[this, size] ==> i_29_1 > t_2 ==> Heap[(loc(Heap[this, elems], i_29_1): Ref), val] == itemAt(oldHeap, this, i_29_1 - 1)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(this.elems, j).val := elem -- arraylist-quantified-permissions.vpr@143.3--143.32
    
    // -- Check definedness of loc(this.elems, j)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@143.3--143.32) [113082]"}
        HasDirectPerm(Mask, this, elems);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(this.elems, j).val (arraylist-quantified-permissions.vpr@143.3--143.32) [113083]"}
      FullPerm == Mask[(loc(Heap[this, elems], j_9): Ref), val];
    Heap := Heap[(loc(Heap[this, elems], j_9): Ref), val:=elem];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.size := this.size + 1 -- arraylist-quantified-permissions.vpr@144.3--144.29
    
    // -- Check definedness of this.size + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@144.3--144.29) [113084]"}
        HasDirectPerm(Mask, this, size);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@144.3--144.29) [113085]"}
      FullPerm == Mask[this, size];
    Heap := Heap[this, size:=Heap[this, size] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(AList(this), write) -- arraylist-quantified-permissions.vpr@146.3--146.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.elems (arraylist-quantified-permissions.vpr@146.3--146.24) [113088]"}
        perm <= Mask[this, elems];
    }
    Mask := Mask[this, elems:=Mask[this, elems] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access this.size (arraylist-quantified-permissions.vpr@146.3--146.24) [113090]"}
        perm <= Mask[this, size];
    }
    Mask := Mask[this, size:=Mask[this, size] - perm];
    assert {:msg "  Folding AList(this) might fail. Assertion 0 <= this.size might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [113091]"}
      0 <= Heap[this, size];
    assert {:msg "  Folding AList(this) might fail. Assertion this.size <= len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [113092]"}
      Heap[this, size] <= (len_1(Heap[this, elems]): int);
    assert {:msg "  Folding AList(this) might fail. Assertion 0 < len(this.elems) might not hold. (arraylist-quantified-permissions.vpr@146.3--146.24) [113093]"}
      0 < (len_1(Heap[this, elems]): int);
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(this.elems, i) is injective
      assert {:msg "  Folding AList(this) might fail. Quantified resource loc(this.elems, i).val might not be injective. (arraylist-quantified-permissions.vpr@146.3--146.24) [113095]"}
        (forall i_30_2: int, i_30_3: int ::
        { neverTriggered18(i_30_2), neverTriggered18(i_30_3) }
        (((i_30_2 != i_30_3 && (0 <= i_30_2 && i_30_2 < (len_1(Heap[this, elems]): int))) && (0 <= i_30_3 && i_30_3 < (len_1(Heap[this, elems]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[this, elems], i_30_2): Ref) != (loc(Heap[this, elems], i_30_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding AList(this) might fail. There might be insufficient permission to access loc(this.elems, i).val (arraylist-quantified-permissions.vpr@146.3--146.24) [113096]"}
        (forall i_30_2: int ::
        { (loc(Heap[this, elems], i_30_2): Ref) } { (loc(Heap[this, elems], i_30_2): Ref) }
        0 <= i_30_2 && i_30_2 < (len_1(Heap[this, elems]): int) ==> Mask[(loc(Heap[this, elems], i_30_2): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(this.elems, i)
      assume (forall i_30_2: int ::
        { (loc(Heap[this, elems], i_30_2): Ref) } { (loc(Heap[this, elems], i_30_2): Ref) }
        (0 <= i_30_2 && i_30_2 < (len_1(Heap[this, elems]): int)) && NoPerm < FullPerm ==> qpRange18((loc(Heap[this, elems], i_30_2): Ref)) && invRecv18((loc(Heap[this, elems], i_30_2): Ref)) == i_30_2
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        (0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> (loc(Heap[this, elems], invRecv18(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange18(o_4)) ==> (loc(Heap[this, elems], invRecv18(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv18(o_4) && invRecv18(o_4) < (len_1(Heap[this, elems]): int)) && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume AList#trigger(Heap, AList(this));
    assume Heap[null, AList(this)] == CombineFrames(FrameFragment(Heap[this, elems]), CombineFrames(FrameFragment(Heap[this, size]), FrameFragment(AList#condqp1(Heap, this))));
    if (!HasDirectPerm(Mask, null, AList(this))) {
      Heap := Heap[null, AList#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, AList(this):=freshVersion];
    }
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, elems:=true]];
    Heap := Heap[null, AList#sm(this):=Heap[null, AList#sm(this)][this, size:=true]];
    // register all known folded permissions guarded by predicate AList
    havoc newPMask;
    assume (forall <A, B> o_30: Ref, f_8: (Field A B) ::
      { newPMask[o_30, f_8] }
      Heap[null, AList#sm(this)][o_30, f_8] ==> newPMask[o_30, f_8]
    );
    assume (forall i_31_1: int ::
      
      0 <= i_31_1 && i_31_1 < (len_1(Heap[this, elems]): int) ==> newPMask[(loc(Heap[this, elems], i_31_1): Ref), val]
    );
    Heap := Heap[null, AList#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access AList(this) (arraylist-quantified-permissions.vpr@98.11--98.27) [113098]"}
        perm <= Mask[null, AList(this)];
    }
    Mask := Mask[null, AList(this):=Mask[null, AList(this)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion 0 <= j might not hold. (arraylist-quantified-permissions.vpr@99.11--99.37) [113099]"}
      0 <= j_9;
    assert {:msg "  Postcondition of insert might not hold. Assertion j < length(this) might not hold. (arraylist-quantified-permissions.vpr@99.11--99.37) [113100]"}
      j_9 < length(Heap, this);
    assert {:msg "  Postcondition of insert might not hold. Assertion length(this) == old(length(this)) + 1 might not hold. (arraylist-quantified-permissions.vpr@100.11--100.48) [113101]"}
      length(Heap, this) == length(oldHeap, this) + 1;
    if (*) {
      if (0 <= k_4_1 && k_4_1 < j_9) {
        assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, k) == old(itemAt(this, k)) might not hold. (arraylist-quantified-permissions.vpr@101.11--101.87) [113102]"}
          itemAt(Heap, this, k_4_1) == itemAt(oldHeap, this, k_4_1);
      }
      assume false;
    }
    assume (forall k_5_1_1: int ::
      { itemAt#frame(oldHeap[null, AList(this)], this, k_5_1_1) }
      0 <= k_5_1_1 && k_5_1_1 < j_9 ==> itemAt(Heap, this, k_5_1_1) == itemAt(oldHeap, this, k_5_1_1)
    );
    assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, j) == elem might not hold. (arraylist-quantified-permissions.vpr@102.11--102.34) [113103]"}
      itemAt(Heap, this, j_9) == elem;
    if (*) {
      if (j_9 < k_6 && k_6 < length(Heap, this)) {
        assert {:msg "  Postcondition of insert might not hold. Assertion itemAt(this, k) == old(itemAt(this, k - 1)) might not hold. (arraylist-quantified-permissions.vpr@103.11--103.101) [113104]"}
          itemAt(Heap, this, k_6) == itemAt(oldHeap, this, k_6 - 1);
      }
      assume false;
    }
    assume (forall k_7_1_1: int ::
      { itemAt#frame(Heap[null, AList(this)], this, k_7_1_1) }
      j_9 < k_7_1_1 && k_7_1_1 < length(Heap, this) ==> itemAt(Heap, this, k_7_1_1) == itemAt(oldHeap, this, k_7_1_1 - 1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}