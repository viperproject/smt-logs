// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:27:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0236.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0236-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(i_2_1: int): bool;
function  neverTriggered2(i: int): bool;
function  neverTriggered3(i_3: int): bool;
function  neverTriggered4(i_5: int): bool;
function  neverTriggered5(i$0: int): bool;
function  neverTriggered6(i$0_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

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
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): ArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom injectivity
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
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

// ==================================================
// Translation of predicate array
// ==================================================

type PredicateType_array;
function  array(a_2: ArrayDomainType): Field PredicateType_array FrameType;
function  array#sm(a_2: ArrayDomainType): Field PredicateType_array PMaskType;
axiom (forall a_2: ArrayDomainType ::
  { PredicateMaskField(array(a_2)) }
  PredicateMaskField(array(a_2)) == array#sm(a_2)
);
axiom (forall a_2: ArrayDomainType ::
  { array(a_2) }
  IsPredicateField(array(a_2))
);
axiom (forall a_2: ArrayDomainType ::
  { array(a_2) }
  getPredWandId(array(a_2)) == 0
);
function  array#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  array#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: ArrayDomainType, a2: ArrayDomainType ::
  { array(a_2), array(a2) }
  array(a_2) == array(a2) ==> a_2 == a2
);
axiom (forall a_2: ArrayDomainType, a2: ArrayDomainType ::
  { array#sm(a_2), array#sm(a2) }
  array#sm(a_2) == array#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { array#trigger(Heap, array(a_2)) }
  array#everUsed(array(a_2))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) in predicate array
// ==================================================

function  array#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType): int;
function  sk_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType ::
  { array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2))): Ref), val] == Heap1Heap[(loc(a_2, sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2))): Ref), val]) ==> array#condqp1(Heap2Heap, a_2) == array#condqp1(Heap1Heap, a_2)
);

procedure array#definedness(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of array
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0236.vpr@26.1--28.2) [195428]"}
      (forall i_2_1: int, i_2_2: int ::
      
      (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(a_2): int))) && (0 <= i_2_2 && i_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_2_1): Ref) != (loc(a_2, i_2_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_2_1: int ::
        { (loc(a_2, i_2_1): Ref) } { Heap[(loc(a_2, i_2_1): Ref), val] }
        (0 <= i_2_1 && i_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_2_1): Ref)) && invRecv1((loc(a_2, i_2_1): Ref)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2_1: int ::
        { (loc(a_2, i_2_1): Ref) } { Heap[(loc(a_2, i_2_1): Ref), val] }
        0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> (loc(a_2, i_2_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
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
// Translation of method test
// ==================================================

procedure test(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var i_2: int;
  var newPMask: PMaskType;
  var i_9_1: int;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_6_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
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
    PostMask := PostMask[null, array(a_2):=PostMask[null, array(a_2)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(array(a), write) in (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(a) ==> loc(a, i).val == i))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume array#trigger(UnfoldingHeap, array(a_2));
      assume UnfoldingHeap[null, array(a_2)] == FrameFragment(array#condqp1(UnfoldingHeap, a_2));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access array(a) (0236.vpr@33.13--33.111) [195429]"}
          perm <= UnfoldingMask[null, array(a_2)];
      }
      UnfoldingMask := UnfoldingMask[null, array(a_2):=UnfoldingMask[null, array(a_2)] - perm];
      havoc QPMask;
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0236.vpr@33.13--33.111) [195430]"}
        (forall i: int, i_77: int ::
        
        (((i != i_77 && (0 <= i && i < (len_1(a_2): int))) && (0 <= i_77 && i_77 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i): Ref) != (loc(a_2, i_77): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i: int ::
          { (loc(a_2, i): Ref) } { UnfoldingHeap[(loc(a_2, i): Ref), val] }
          (0 <= i && i < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i): Ref)) && invRecv2((loc(a_2, i): Ref)) == i
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i: int ::
          { (loc(a_2, i): Ref) } { UnfoldingHeap[(loc(a_2, i): Ref), val] }
          0 <= i && i < (len_1(a_2): int) ==> (loc(a_2, i): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == UnfoldingMask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == UnfoldingMask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        if (0 <= i_2 && i_2 < (len_1(a_2): int)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (0236.vpr@33.13--33.111) [195431]"}
            HasDirectPerm(UnfoldingMask, (loc(a_2, i_2): Ref), val);
        }
        assume false;
      }
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate array
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          PostHeap[null, array#sm(a_2)][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        assume (forall i_2_1: int ::
          
          0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> newPMask[(loc(a_2, i_2_1): Ref), val]
        );
        PostHeap := PostHeap[null, array#sm(a_2):=newPMask];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume array#trigger(UnfoldingHeap, array(a_2));
      assume UnfoldingHeap[null, array(a_2)] == FrameFragment(array#condqp1(UnfoldingHeap, a_2));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, array(a_2):=UnfoldingMask[null, array(a_2)] - perm];
      havoc QPMask;
      
      // -- Define Inverse Function
        assume (forall i_3: int ::
          { (loc(a_2, i_3): Ref) } { UnfoldingHeap[(loc(a_2, i_3): Ref), val] }
          (0 <= i_3 && i_3 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i_3): Ref)) && invRecv3((loc(a_2, i_3): Ref)) == i_3
        );
        assume (forall o_4: Ref ::
          { invRecv3(o_4) }
          ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_3: int ::
          { (loc(a_2, i_3): Ref) } { UnfoldingHeap[(loc(a_2, i_3): Ref), val] }
          0 <= i_3 && i_3 < (len_1(a_2): int) ==> (loc(a_2, i_3): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == UnfoldingMask[o_4, val] + FullPerm) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == UnfoldingMask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume (forall i_4_1: int ::
      { PostHeap[(loc(a_2, i_4_1): Ref), val] }
      0 <= i_4_1 && i_4_1 < (len_1(a_2): int) ==> PostHeap[(loc(a_2, i_4_1): Ref), val] == i_4_1
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 0 -- 0236.vpr@35.5--35.20
    i_9_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < len(a)) -- 0236.vpr@37.5--43.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(array(a), write) might not hold on entry. There might be insufficient permission to access array(a) (0236.vpr@38.19--38.27) [195432]"}
            perm <= Mask[null, array(a_2)];
        }
        Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
        assume state(Heap, Mask);
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
        Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume i_9_1 < (len_1(a_2): int);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: unfold acc(array(a), write) -- 0236.vpr@40.9--40.24
            assume array#trigger(Heap, array(a_2));
            assume Heap[null, array(a_2)] == FrameFragment(array#condqp1(Heap, a_2));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding array(a) might fail. There might be insufficient permission to access array(a) (0236.vpr@40.9--40.24) [195433]"}
                perm <= Mask[null, array(a_2)];
            }
            Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, array(a_2))) {
                havoc newVersion;
                Heap := Heap[null, array(a_2):=newVersion];
              }
            havoc QPMask;
            assert {:msg "  Unfolding array(a) might fail. Quantified resource loc(a, i$0).val might not be injective. (0236.vpr@40.9--40.24) [195434]"}
              (forall i$0: int, i$0_3: int ::
              
              (((i$0 != i$0_3 && (0 <= i$0 && i$0 < (len_1(a_2): int))) && (0 <= i$0_3 && i$0_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0): Ref) != (loc(a_2, i$0_3): Ref)
            );
            
            // -- Define Inverse Function
              assume (forall i$0: int ::
                { (loc(a_2, i$0): Ref) } { Heap[(loc(a_2, i$0): Ref), val] }
                (0 <= i$0 && i$0 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i$0): Ref)) && invRecv5((loc(a_2, i$0): Ref)) == i$0
              );
              assume (forall o_4: Ref ::
                { invRecv5(o_4) }
                ((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
              );
            
            // -- Assume set of fields is nonNull
              assume (forall i$0: int ::
                { (loc(a_2, i$0): Ref) } { Heap[(loc(a_2, i$0): Ref), val] }
                0 <= i$0 && i$0 < (len_1(a_2): int) ==> (loc(a_2, i$0): Ref) != null
              );
            
            // -- Define permissions
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                (((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv5(o_4) && invRecv5(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: loc(a, i).val := i -- 0236.vpr@41.9--41.27
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (0236.vpr@41.9--41.27) [195435]"}
              FullPerm == Mask[(loc(a_2, i_9_1): Ref), val];
            Heap := Heap[(loc(a_2, i_9_1): Ref), val:=i_9_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(array(a), write) -- 0236.vpr@42.9--42.22
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver loc(a, i$0) is injective
              assert {:msg "  Folding array(a) might fail. Quantified resource loc(a, i$0).val might not be injective. (0236.vpr@42.9--42.22) [195436]"}
                (forall i$0_1: int, i$0_1_1: int ::
                { neverTriggered6(i$0_1), neverTriggered6(i$0_1_1) }
                (((i$0_1 != i$0_1_1 && (0 <= i$0_1 && i$0_1 < (len_1(a_2): int))) && (0 <= i$0_1_1 && i$0_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_1): Ref) != (loc(a_2, i$0_1_1): Ref)
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Folding array(a) might fail. There might be insufficient permission to access loc(a, i$0).val (0236.vpr@42.9--42.22) [195437]"}
                (forall i$0_1: int ::
                { (loc(a_2, i$0_1): Ref) } { Heap[(loc(a_2, i$0_1): Ref), val] }
                0 <= i$0_1 && i$0_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i$0_1): Ref), val] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver loc(a, i$0)
              assume (forall i$0_1: int ::
                { (loc(a_2, i$0_1): Ref) } { Heap[(loc(a_2, i$0_1): Ref), val] }
                (0 <= i$0_1 && i$0_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i$0_1): Ref)) && invRecv6((loc(a_2, i$0_1): Ref)) == i$0_1
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                (0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4
              );
            
            // -- assume permission updates for field val
              assume (forall o_4: Ref ::
                { QPMask[o_4, val] }
                ((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (loc(a_2, invRecv6(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv6(o_4) && invRecv6(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                { QPMask[o_4, f_5] }
                f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
              );
            Mask := QPMask;
            perm := FullPerm;
            Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume array#trigger(Heap, array(a_2));
            assume Heap[null, array(a_2)] == FrameFragment(array#condqp1(Heap, a_2));
            if (!HasDirectPerm(Mask, null, array(a_2))) {
              Heap := Heap[null, array#sm(a_2):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, array(a_2):=freshVersion];
            }
            // register all known folded permissions guarded by predicate array
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, array#sm(a_2)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            assume (forall i$0_2: int ::
              
              0 <= i$0_2 && i$0_2 < (len_1(a_2): int) ==> newPMask[(loc(a_2, i$0_2): Ref), val]
            );
            Heap := Heap[null, array#sm(a_2):=newPMask];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(array(a), write) might not be preserved. There might be insufficient permission to access array(a) (0236.vpr@38.19--38.27) [195438]"}
            perm <= Mask[null, array(a_2)];
        }
        Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i_9_1 < (len_1(a_2): int));
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test might not hold. There might be insufficient permission to access array(a) (0236.vpr@32.13--32.21) [195439]"}
        perm <= Mask[null, array(a_2)];
    }
    Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume array#trigger(UnfoldingHeap, array(a_2));
      assume UnfoldingHeap[null, array(a_2)] == FrameFragment(array#condqp1(UnfoldingHeap, a_2));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test might not hold. There might be insufficient permission to access array(a) (0236.vpr@33.13--33.111) [195440]"}
          perm <= UnfoldingMask[null, array(a_2)];
      }
      UnfoldingMask := UnfoldingMask[null, array(a_2):=UnfoldingMask[null, array(a_2)] - perm];
      havoc QPMask;
      assert {:msg "  Postcondition of test might not hold. Quantified resource loc(a, i).val might not be injective. (0236.vpr@33.13--33.111) [195441]"}
        (forall i_5: int, i_5_1: int ::
        
        (((i_5 != i_5_1 && (0 <= i_5 && i_5 < (len_1(a_2): int))) && (0 <= i_5_1 && i_5_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5): Ref) != (loc(a_2, i_5_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_5: int ::
          { (loc(a_2, i_5): Ref) } { UnfoldingHeap[(loc(a_2, i_5): Ref), val] }
          (0 <= i_5 && i_5 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_5): Ref)) && invRecv4((loc(a_2, i_5): Ref)) == i_5
        );
        assume (forall o_4: Ref ::
          { invRecv4(o_4) }
          ((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_5: int ::
          { (loc(a_2, i_5): Ref) } { UnfoldingHeap[(loc(a_2, i_5): Ref), val] }
          0 <= i_5 && i_5 < (len_1(a_2): int) ==> (loc(a_2, i_5): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == UnfoldingMask[o_4, val] + FullPerm) && (!(((0 <= invRecv4(o_4) && invRecv4(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == UnfoldingMask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    if (*) {
      if (0 <= i_6_1 && i_6_1 < (len_1(a_2): int)) {
        assert {:msg "  Postcondition of test might not hold. Assertion loc(a, i).val == i might not hold. (0236.vpr@33.13--33.111) [195442]"}
          Heap[(loc(a_2, i_6_1): Ref), val] == i_6_1;
      }
      assume false;
    }
    assume (forall i_7_1_1: int ::
      { Heap[(loc(a_2, i_7_1_1): Ref), val] }
      0 <= i_7_1_1 && i_7_1_1 < (len_1(a_2): int) ==> Heap[(loc(a_2, i_7_1_1): Ref), val] == i_7_1_1
    );
    
    // -- Free assumptions (exhale module)
      // register all known folded permissions guarded by predicate array
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, array#sm(a_2)][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      assume (forall i_8_2: int ::
        
        0 <= i_8_2 && i_8_2 < (len_1(a_2): int) ==> newPMask[(loc(a_2, i_8_2): Ref), val]
      );
      Heap := Heap[null, array#sm(a_2):=newPMask];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}