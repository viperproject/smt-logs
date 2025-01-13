// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:02:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/array_exhale2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/array_exhale2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_55: Ref, f_54: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_55, f_54] }
  Heap[o_55, $allocated] ==> Heap[Heap[o_55, f_54], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_15) ==> Heap[o_43, f_15] == ExhaleHeap[o_43, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29), ExhaleHeap[null, PredicateMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> Heap[null, PredicateMaskField(pm_f_29)] == ExhaleHeap[null, PredicateMaskField(pm_f_29)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsPredicateField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_29, f_15] }
    Heap[null, PredicateMaskField(pm_f_29)][o2_29, f_15] ==> Heap[o2_29, f_15] == ExhaleHeap[o2_29, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29), ExhaleHeap[null, WandMaskField(pm_f_29)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> Heap[null, WandMaskField(pm_f_29)] == ExhaleHeap[null, WandMaskField(pm_f_29)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_29: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_29) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_29) && IsWandField(pm_f_29) ==> (forall <A, B> o2_29: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_29, f_15] }
    Heap[null, WandMaskField(pm_f_29)][o2_29, f_15] ==> Heap[o2_29, f_15] == ExhaleHeap[o2_29, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_55: Ref, f_26: (Field A B), v: B ::
  { Heap[o_55, f_26:=v] }
  succHeap(Heap, Heap[o_55, f_26:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(i_8_2: int): bool;
function  neverTriggered4(i_1: int): bool;
function  neverTriggered5(i_3: int): bool;
function  neverTriggered6(i_4_1: int): bool;
function  neverTriggered7(i_1: int): bool;
function  neverTriggered8(i_1: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_5: int): bool;
function  neverTriggered11(i_8_2: int): bool;
function  neverTriggered12(i_1: int): bool;
function  neverTriggered13(i_3: int): bool;
function  neverTriggered14(i_4_1: int): bool;
function  neverTriggered15(i_1: int): bool;
function  neverTriggered16(i_5: int): bool;
function  neverTriggered17(i_8_2: int): bool;
function  neverTriggered18(i_1: int): bool;
function  neverTriggered19(i_3: int): bool;
function  neverTriggered20(i_4_1: int): bool;
function  neverTriggered21(i_1: int): bool;
function  neverTriggered22(i_5: int): bool;
function  neverTriggered23(i_9_1: int): bool;
function  neverTriggered24(i_12_1: int): bool;
function  neverTriggered25(i_14_1: int): bool;
function  neverTriggered26(i_1: int): bool;
function  neverTriggered27(i_3: int): bool;
function  neverTriggered28(i_5: int): bool;
function  neverTriggered29(i_6_1: int): bool;
function  neverTriggered30(i_7_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv2(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv3(a_3_1_1: IArrayDomainType, i_9_1_1: int): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv8(recv: Ref): int;
function  invRecv9(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv10(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv11(a_3_1_1: IArrayDomainType, i_9_1_1: int): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
function  invRecv15(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv16(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv17(a_3_1_1: IArrayDomainType, i_9_1_1: int): int;
function  invRecv18(recv: Ref): int;
function  invRecv19(recv: Ref): int;
function  invRecv20(recv: Ref): int;
function  invRecv21(a_1_1_1: IArrayDomainType, i_2_1_1: int): int;
function  invRecv22(a_2_1_1: IArrayDomainType, i_6_1_1: int): int;
function  invRecv23(a_3_1_1: IArrayDomainType, i_10_1_1: int): int;
function  invRecv24(a_4_1: IArrayDomainType, i_13_1_1: int): int;
function  invRecv25(a_5_1_1: IArrayDomainType, i_15_1_1: int): int;
function  invRecv26(recv: Ref): int;
function  invRecv27(recv: Ref): int;
function  invRecv28(recv: Ref): int;
function  invRecv29(recv: Ref): int;
function  invRecv30(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange2(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange3(a_3_1_1: IArrayDomainType, i_9_1_1: int): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange10(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange11(a_3_1_1: IArrayDomainType, i_9_1_1: int): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange16(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange17(a_3_1_1: IArrayDomainType, i_9_1_1: int): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(a_1_1_1: IArrayDomainType, i_2_1_1: int): bool;
function  qpRange22(a_2_1_1: IArrayDomainType, i_6_1_1: int): bool;
function  qpRange23(a_3_1_1: IArrayDomainType, i_10_1_1: int): bool;
function  qpRange24(a_4_1: IArrayDomainType, i_13_1_1: int): bool;
function  qpRange25(a_5_1_1: IArrayDomainType, i_15_1_1: int): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;

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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function loc_limited
function  loc_limited(a_3: IArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): IArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom limited
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (loc(a_2, i): Ref) == (loc_limited(a_2, i): Ref)
);

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: IArrayDomainType ::
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
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(a_2: IArrayDomainType, i: int): Field PredicateType_p FrameType;
function  p#sm(a_2: IArrayDomainType, i: int): Field PredicateType_p PMaskType;
axiom (forall a_2: IArrayDomainType, i: int ::
  { PredicateMaskField(p_14(a_2, i)) }
  PredicateMaskField(p_14(a_2, i)) == p#sm(a_2, i)
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { p_14(a_2, i) }
  IsPredicateField(p_14(a_2, i))
);
axiom (forall a_2: IArrayDomainType, i: int ::
  { p_14(a_2, i) }
  getPredWandId(p_14(a_2, i)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2_1: int ::
  { p_14(a_2, i), p_14(a2, i2_1) }
  p_14(a_2, i) == p_14(a2, i2_1) ==> a_2 == a2 && i == i2_1
);
axiom (forall a_2: IArrayDomainType, i: int, a2: IArrayDomainType, i2_1: int ::
  { p#sm(a_2, i), p#sm(a2, i2_1) }
  p#sm(a_2, i) == p#sm(a2, i2_1) ==> a_2 == a2 && i == i2_1
);

axiom (forall Heap: HeapType, a_2: IArrayDomainType, i: int ::
  { p#trigger(Heap, p_14(a_2, i)) }
  p#everUsed(p_14(a_2, i))
);

procedure p#definedness(a_2: IArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    perm := FullPerm;
    assume (loc(a_2, i): Ref) != null;
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i + 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@35.12--35.62) [110573]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered1(i_1), neverTriggered1(i_1_1) }
        (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 + 1 != i_1_1 + 1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> invRecv1(a_2, i_1 + 1) == i_1 && qpRange1(a_2, i_1 + 1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv1(a_1_1_1, i_2_1_1) }
        ((invRecv1(a_1_1_1, i_2_1_1) > 0 && invRecv1(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_2_1_1) + 1 == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        ((invRecv1(a_1_1_1, i_2_1_1) > 0 && invRecv1(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv1(a_1_1_1, i_2_1_1) + 1 == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !(((invRecv1(a_1_1_1, i_2_1_1) > 0 && invRecv1(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange1(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i + 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@36.12--36.62) [110574]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered2(i_5), neverTriggered2(i_5_1) }
        (((i_5 != i_5_1 && (i_5 > 0 && i_5 < n)) && (i_5_1 > 0 && i_5_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 + 1 != i_5_1 + 1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        
        (i_5 > 0 && i_5 < n) && NoPerm < FullPerm ==> invRecv2(a_2, i_5 + 1) == i_5 && qpRange2(a_2, i_5 + 1)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv2(a_2_1_1, i_6_1_1) }
        ((invRecv2(a_2_1_1, i_6_1_1) > 0 && invRecv2(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv2(a_2_1_1, i_6_1_1) + 1 == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        ((invRecv2(a_2_1_1, i_6_1_1) > 0 && invRecv2(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv2(a_2_1_1, i_6_1_1) + 1 == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !(((invRecv2(a_2_1_1, i_6_1_1) > 0 && invRecv2(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange2(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@36.12--36.62) [110575]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered3(i_8_2), neverTriggered3(i_8_3) }
        (((i_8_2 != i_8_3 && (i_8_2 > 0 && i_8_2 < n)) && (i_8_3 > 0 && i_8_3 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_8_2 + 1 != i_8_3 + 1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access p(a, i + 1) (array_exhale2.vpr@36.12--36.62) [110576]"}
        (forall i_8_2: int ::
        
        i_8_2 > 0 && i_8_2 < n ==> Mask[null, p_14(a_2, i_8_2 + 1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i + 1), write)
      assume (forall i_8_2: int ::
        
        (i_8_2 > 0 && i_8_2 < n) && NoPerm < FullPerm ==> invRecv3(a_2, i_8_2 + 1) == i_8_2 && qpRange3(a_2, i_8_2 + 1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { invRecv3(a_3_1_1, i_9_1_1) }
        ((invRecv3(a_3_1_1, i_9_1_1) > 0 && invRecv3(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_9_1_1) ==> a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_9_1_1) + 1 == i_9_1_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        ((invRecv3(a_3_1_1, i_9_1_1) > 0 && invRecv3(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_9_1_1) ==> (a_2 == a_3_1_1 && invRecv3(a_3_1_1, i_9_1_1) + 1 == i_9_1_1) && QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        !(((invRecv3(a_3_1_1, i_9_1_1) > 0 && invRecv3(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange3(a_3_1_1, i_9_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(loc(a, i + 1).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@41.12--41.68) [110577]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1 + 1): Ref) != (loc(a_2, i_1_1 + 1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_1 + 1): Ref)) && invRecv4((loc(a_2, i_1 + 1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((invRecv4(o_4) > 0 && invRecv4(o_4) < n) && NoPerm < FullPerm) && qpRange4(o_4) ==> (loc(a_2, invRecv4(o_4) + 1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        
        i_1 > 0 && i_1 < n ==> (loc(a_2, i_1 + 1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv4(o_4) > 0 && invRecv4(o_4) < n) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv4(o_4) + 1): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((invRecv4(o_4) > 0 && invRecv4(o_4) < n) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(loc(a, i + 1).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@42.12--42.69) [110578]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (i_3 > 0 && i_3 < n)) && (i_3_1 > 0 && i_3_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3 + 1): Ref) != (loc(a_2, i_3_1 + 1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        
        (i_3 > 0 && i_3 < n) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i_3 + 1): Ref)) && invRecv5((loc(a_2, i_3 + 1): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ((invRecv5(o_4) > 0 && invRecv5(o_4) < n) && NoPerm < FullPerm) && qpRange5(o_4) ==> (loc(a_2, invRecv5(o_4) + 1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        
        i_3 > 0 && i_3 < n ==> (loc(a_2, i_3 + 1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv5(o_4) > 0 && invRecv5(o_4) < n) && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_4) + 1): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((invRecv5(o_4) > 0 && invRecv5(o_4) < n) && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i + 1) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@42.12--42.69) [110579]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered6(i_4_1), neverTriggered6(i_4_2) }
        (((i_4_1 != i_4_2 && (i_4_1 > 0 && i_4_1 < n)) && (i_4_2 > 0 && i_4_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1 + 1): Ref) != (loc(a_2, i_4_2 + 1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access loc(a, i + 1).val (array_exhale2.vpr@42.12--42.69) [110580]"}
        (forall i_4_1: int ::
        
        i_4_1 > 0 && i_4_1 < n ==> Mask[(loc(a_2, i_4_1 + 1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i + 1)
      assume (forall i_4_1: int ::
        
        (i_4_1 > 0 && i_4_1 < n) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i_4_1 + 1): Ref)) && invRecv6((loc(a_2, i_4_1 + 1): Ref)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (invRecv6(o_4) > 0 && invRecv6(o_4) < n) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (loc(a_2, invRecv6(o_4) + 1): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((invRecv6(o_4) > 0 && invRecv6(o_4) < n) && (NoPerm < FullPerm && qpRange6(o_4)) ==> (loc(a_2, invRecv6(o_4) + 1): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((invRecv6(o_4) > 0 && invRecv6(o_4) < n) && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i + 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@47.12--47.63) [110581]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered7(i_1), neverTriggered7(i_1_1) }
        (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 + 1 != i_1_1 + 1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> invRecv7(a_2, i_1 + 1) == i_1 && qpRange7(a_2, i_1 + 1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv7(a_1_1_1, i_2_1_1) }
        ((invRecv7(a_1_1_1, i_2_1_1) > 0 && invRecv7(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange7(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv7(a_1_1_1, i_2_1_1) + 1 == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        ((invRecv7(a_1_1_1, i_2_1_1) > 0 && invRecv7(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange7(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv7(a_1_1_1, i_2_1_1) + 1 == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !(((invRecv7(a_1_1_1, i_2_1_1) > 0 && invRecv7(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange7(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    perm := FullPerm;
    PostMask := PostMask[null, p_14(a_2, 1):=PostMask[null, p_14(a_2, 1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p(a, 1) (array_exhale2.vpr@50.12--50.24) [110582]"}
        perm <= Mask[null, p_14(a_2, 1)];
    }
    Mask := Mask[null, p_14(a_2, 1):=Mask[null, p_14(a_2, 1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(loc(a, i + 1).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@55.12--55.69) [110583]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1 + 1): Ref) != (loc(a_2, i_1_1 + 1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i_1 + 1): Ref)) && invRecv8((loc(a_2, i_1 + 1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        ((invRecv8(o_4) > 0 && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4) ==> (loc(a_2, invRecv8(o_4) + 1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        
        i_1 > 0 && i_1 < n ==> (loc(a_2, i_1 + 1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv8(o_4) > 0 && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_4) + 1): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((invRecv8(o_4) > 0 && invRecv8(o_4) < n) && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    perm := FullPerm;
    assume (loc(a_2, 1): Ref) != null;
    PostMask := PostMask[(loc(a_2, 1): Ref), val:=PostMask[(loc(a_2, 1): Ref), val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access loc(a, 1).val (array_exhale2.vpr@58.12--58.30) [110584]"}
        perm <= Mask[(loc(a_2, 1): Ref), val];
    }
    Mask := Mask[(loc(a_2, 1): Ref), val:=Mask[(loc(a_2, 1): Ref), val] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i + 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@63.12--63.62) [110585]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered9(i_1), neverTriggered9(i_1_1) }
        (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 + 1 != i_1_1 + 1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> invRecv9(a_2, i_1 + 1) == i_1 && qpRange9(a_2, i_1 + 1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv9(a_1_1_1, i_2_1_1) }
        ((invRecv9(a_1_1_1, i_2_1_1) > 0 && invRecv9(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange9(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv9(a_1_1_1, i_2_1_1) + 1 == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        ((invRecv9(a_1_1_1, i_2_1_1) > 0 && invRecv9(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange9(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv9(a_1_1_1, i_2_1_1) + 1 == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !(((invRecv9(a_1_1_1, i_2_1_1) > 0 && invRecv9(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange9(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int ::i > 1 && i < n + 1 ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@65.12--65.63) [110586]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered10(i_5), neverTriggered10(i_5_1) }
        (((i_5 != i_5_1 && (i_5 > 1 && i_5 < n + 1)) && (i_5_1 > 1 && i_5_1 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] }
        (i_5 > 1 && i_5 < n + 1) && NoPerm < FullPerm ==> invRecv10(a_2, i_5) == i_5 && qpRange10(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv10(a_2_1_1, i_6_1_1) }
        ((invRecv10(a_2_1_1, i_6_1_1) > 1 && invRecv10(a_2_1_1, i_6_1_1) < n + 1) && NoPerm < FullPerm) && qpRange10(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv10(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        ((invRecv10(a_2_1_1, i_6_1_1) > 1 && invRecv10(a_2_1_1, i_6_1_1) < n + 1) && NoPerm < FullPerm) && qpRange10(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv10(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !(((invRecv10(a_2_1_1, i_6_1_1) > 1 && invRecv10(a_2_1_1, i_6_1_1) < n + 1) && NoPerm < FullPerm) && qpRange10(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@65.12--65.63) [110587]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered11(i_8_2), neverTriggered11(i_8_3) }
        (((i_8_2 != i_8_3 && (i_8_2 > 1 && i_8_2 < n + 1)) && (i_8_3 > 1 && i_8_3 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_8_2 != i_8_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m5 might not hold. There might be insufficient permission to access p(a, i) (array_exhale2.vpr@65.12--65.63) [110588]"}
        (forall i_8_2: int ::
        { Heap[null, p_14(a_2, i_8_2)] } { Mask[null, p_14(a_2, i_8_2)] }
        i_8_2 > 1 && i_8_2 < n + 1 ==> Mask[null, p_14(a_2, i_8_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_8_2: int ::
        { Heap[null, p_14(a_2, i_8_2)] } { Mask[null, p_14(a_2, i_8_2)] }
        (i_8_2 > 1 && i_8_2 < n + 1) && NoPerm < FullPerm ==> invRecv11(a_2, i_8_2) == i_8_2 && qpRange11(a_2, i_8_2)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { invRecv11(a_3_1_1, i_9_1_1) }
        ((invRecv11(a_3_1_1, i_9_1_1) > 1 && invRecv11(a_3_1_1, i_9_1_1) < n + 1) && NoPerm < FullPerm) && qpRange11(a_3_1_1, i_9_1_1) ==> a_2 == a_3_1_1 && invRecv11(a_3_1_1, i_9_1_1) == i_9_1_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        ((invRecv11(a_3_1_1, i_9_1_1) > 1 && invRecv11(a_3_1_1, i_9_1_1) < n + 1) && NoPerm < FullPerm) && qpRange11(a_3_1_1, i_9_1_1) ==> (a_2 == a_3_1_1 && invRecv11(a_3_1_1, i_9_1_1) == i_9_1_1) && QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        !(((invRecv11(a_3_1_1, i_9_1_1) > 1 && invRecv11(a_3_1_1, i_9_1_1) < n + 1) && NoPerm < FullPerm) && qpRange11(a_3_1_1, i_9_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m6
// ==================================================

procedure m6(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(loc(a, i + 1).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@70.12--70.70) [110589]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1 + 1): Ref) != (loc(a_2, i_1_1 + 1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i_1 + 1): Ref)) && invRecv12((loc(a_2, i_1 + 1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((invRecv12(o_4) > 0 && invRecv12(o_4) < n) && NoPerm < FullPerm) && qpRange12(o_4) ==> (loc(a_2, invRecv12(o_4) + 1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        
        i_1 > 0 && i_1 < n ==> (loc(a_2, i_1 + 1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv12(o_4) > 0 && invRecv12(o_4) < n) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv12(o_4) + 1): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((invRecv12(o_4) > 0 && invRecv12(o_4) < n) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } i > 1 && i < n + 1 ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@72.12--72.70) [110590]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (i_3 > 1 && i_3 < n + 1)) && (i_3_1 > 1 && i_3_1 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3): Ref) != (loc(a_2, i_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        (i_3 > 1 && i_3 < n + 1) && NoPerm < FullPerm ==> qpRange13((loc(a_2, i_3): Ref)) && invRecv13((loc(a_2, i_3): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((invRecv13(o_4) > 1 && invRecv13(o_4) < n + 1) && NoPerm < FullPerm) && qpRange13(o_4) ==> (loc(a_2, invRecv13(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        i_3 > 1 && i_3 < n + 1 ==> (loc(a_2, i_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv13(o_4) > 1 && invRecv13(o_4) < n + 1) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv13(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((invRecv13(o_4) > 1 && invRecv13(o_4) < n + 1) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@72.12--72.70) [110591]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered14(i_4_1), neverTriggered14(i_4_2) }
        (((i_4_1 != i_4_2 && (i_4_1 > 1 && i_4_1 < n + 1)) && (i_4_2 > 1 && i_4_2 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1): Ref) != (loc(a_2, i_4_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m6 might not hold. There might be insufficient permission to access loc(a, i).val (array_exhale2.vpr@72.12--72.70) [110592]"}
        (forall i_4_1: int ::
        { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
        i_4_1 > 1 && i_4_1 < n + 1 ==> Mask[(loc(a_2, i_4_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_4_1: int ::
        { (loc(a_2, i_4_1): Ref) } { (loc(a_2, i_4_1): Ref) }
        (i_4_1 > 1 && i_4_1 < n + 1) && NoPerm < FullPerm ==> qpRange14((loc(a_2, i_4_1): Ref)) && invRecv14((loc(a_2, i_4_1): Ref)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (invRecv14(o_4) > 1 && invRecv14(o_4) < n + 1) && (NoPerm < FullPerm && qpRange14(o_4)) ==> (loc(a_2, invRecv14(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((invRecv14(o_4) > 1 && invRecv14(o_4) < n + 1) && (NoPerm < FullPerm && qpRange14(o_4)) ==> (loc(a_2, invRecv14(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((invRecv14(o_4) > 1 && invRecv14(o_4) < n + 1) && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 1 && i < n + 1 ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@77.12--77.64) [110593]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered15(i_1), neverTriggered15(i_1_1) }
        (((i_1 != i_1_1 && (i_1 > 1 && i_1 < n + 1)) && (i_1_1 > 1 && i_1_1 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] }
        (i_1 > 1 && i_1 < n + 1) && NoPerm < FullPerm ==> invRecv15(a_2, i_1) == i_1 && qpRange15(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv15(a_1_1_1, i_2_1_1) }
        ((invRecv15(a_1_1_1, i_2_1_1) > 1 && invRecv15(a_1_1_1, i_2_1_1) < n + 1) && NoPerm < FullPerm) && qpRange15(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv15(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        ((invRecv15(a_1_1_1, i_2_1_1) > 1 && invRecv15(a_1_1_1, i_2_1_1) < n + 1) && NoPerm < FullPerm) && qpRange15(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv15(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !(((invRecv15(a_1_1_1, i_2_1_1) > 1 && invRecv15(a_1_1_1, i_2_1_1) < n + 1) && NoPerm < FullPerm) && qpRange15(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i + 1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@78.12--78.63) [110594]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered16(i_5), neverTriggered16(i_5_1) }
        (((i_5 != i_5_1 && (i_5 > 0 && i_5 < n)) && (i_5_1 > 0 && i_5_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 + 1 != i_5_1 + 1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        
        (i_5 > 0 && i_5 < n) && NoPerm < FullPerm ==> invRecv16(a_2, i_5 + 1) == i_5 && qpRange16(a_2, i_5 + 1)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv16(a_2_1_1, i_6_1_1) }
        ((invRecv16(a_2_1_1, i_6_1_1) > 0 && invRecv16(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange16(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv16(a_2_1_1, i_6_1_1) + 1 == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        ((invRecv16(a_2_1_1, i_6_1_1) > 0 && invRecv16(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange16(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv16(a_2_1_1, i_6_1_1) + 1 == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !(((invRecv16(a_2_1_1, i_6_1_1) > 0 && invRecv16(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange16(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i + 1), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i + 1) might not be injective. (array_exhale2.vpr@78.12--78.63) [110595]"}
        (forall i_8_2: int, i_8_3: int ::
        { neverTriggered17(i_8_2), neverTriggered17(i_8_3) }
        (((i_8_2 != i_8_3 && (i_8_2 > 0 && i_8_2 < n)) && (i_8_3 > 0 && i_8_3 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_8_2 + 1 != i_8_3 + 1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access p(a, i + 1) (array_exhale2.vpr@78.12--78.63) [110596]"}
        (forall i_8_2: int ::
        
        i_8_2 > 0 && i_8_2 < n ==> Mask[null, p_14(a_2, i_8_2 + 1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i + 1), write)
      assume (forall i_8_2: int ::
        
        (i_8_2 > 0 && i_8_2 < n) && NoPerm < FullPerm ==> invRecv17(a_2, i_8_2 + 1) == i_8_2 && qpRange17(a_2, i_8_2 + 1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { invRecv17(a_3_1_1, i_9_1_1) }
        ((invRecv17(a_3_1_1, i_9_1_1) > 0 && invRecv17(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange17(a_3_1_1, i_9_1_1) ==> a_2 == a_3_1_1 && invRecv17(a_3_1_1, i_9_1_1) + 1 == i_9_1_1
      );
    
    // -- assume permission updates
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        ((invRecv17(a_3_1_1, i_9_1_1) > 0 && invRecv17(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange17(a_3_1_1, i_9_1_1) ==> (a_2 == a_3_1_1 && invRecv17(a_3_1_1, i_9_1_1) + 1 == i_9_1_1) && QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)] - FullPerm
      );
      assume (forall a_3_1_1: IArrayDomainType, i_9_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_9_1_1)] }
        !(((invRecv17(a_3_1_1, i_9_1_1) > 0 && invRecv17(a_3_1_1, i_9_1_1) < n) && NoPerm < FullPerm) && qpRange17(a_3_1_1, i_9_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_9_1_1)] == Mask[null, p_14(a_3_1_1, i_9_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m8
// ==================================================

procedure m8(a_2: IArrayDomainType, n: int, i1: int, i2_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 3;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } i > 1 && i < n + 1 ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@83.12--83.70) [110597]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (i_1 > 1 && i_1 < n + 1)) && (i_1_1 > 1 && i_1_1 < n + 1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (i_1 > 1 && i_1 < n + 1) && NoPerm < FullPerm ==> qpRange18((loc(a_2, i_1): Ref)) && invRecv18((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        ((invRecv18(o_4) > 1 && invRecv18(o_4) < n + 1) && NoPerm < FullPerm) && qpRange18(o_4) ==> (loc(a_2, invRecv18(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        i_1 > 1 && i_1 < n + 1 ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv18(o_4) > 1 && invRecv18(o_4) < n + 1) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv18(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((invRecv18(o_4) > 1 && invRecv18(o_4) < n + 1) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(loc(a, i + 1).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@84.12--84.70) [110598]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (i_3 > 0 && i_3 < n)) && (i_3_1 > 0 && i_3_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3 + 1): Ref) != (loc(a_2, i_3_1 + 1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        
        (i_3 > 0 && i_3 < n) && NoPerm < FullPerm ==> qpRange19((loc(a_2, i_3 + 1): Ref)) && invRecv19((loc(a_2, i_3 + 1): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        ((invRecv19(o_4) > 0 && invRecv19(o_4) < n) && NoPerm < FullPerm) && qpRange19(o_4) ==> (loc(a_2, invRecv19(o_4) + 1): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        
        i_3 > 0 && i_3 < n ==> (loc(a_2, i_3 + 1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv19(o_4) > 0 && invRecv19(o_4) < n) && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv19(o_4) + 1): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((invRecv19(o_4) > 0 && invRecv19(o_4) < n) && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i + 1) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i + 1).val might not be injective. (array_exhale2.vpr@84.12--84.70) [110599]"}
        (forall i_4_1: int, i_4_2: int ::
        { neverTriggered20(i_4_1), neverTriggered20(i_4_2) }
        (((i_4_1 != i_4_2 && (i_4_1 > 0 && i_4_1 < n)) && (i_4_2 > 0 && i_4_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_4_1 + 1): Ref) != (loc(a_2, i_4_2 + 1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m8 might not hold. There might be insufficient permission to access loc(a, i + 1).val (array_exhale2.vpr@84.12--84.70) [110600]"}
        (forall i_4_1: int ::
        
        i_4_1 > 0 && i_4_1 < n ==> Mask[(loc(a_2, i_4_1 + 1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i + 1)
      assume (forall i_4_1: int ::
        
        (i_4_1 > 0 && i_4_1 < n) && NoPerm < FullPerm ==> qpRange20((loc(a_2, i_4_1 + 1): Ref)) && invRecv20((loc(a_2, i_4_1 + 1): Ref)) == i_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (invRecv20(o_4) > 0 && invRecv20(o_4) < n) && (NoPerm < FullPerm && qpRange20(o_4)) ==> (loc(a_2, invRecv20(o_4) + 1): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((invRecv20(o_4) > 0 && invRecv20(o_4) < n) && (NoPerm < FullPerm && qpRange20(o_4)) ==> (loc(a_2, invRecv20(o_4) + 1): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((invRecv20(o_4) > 0 && invRecv20(o_4) < n) && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m9
// ==================================================

procedure m9(a_2: IArrayDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < n ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@89.12--89.61) [110601]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered21(i_1), neverTriggered21(i_1_1) }
        (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, p_14(a_2, i_1)] } { Mask[null, p_14(a_2, i_1)] }
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> invRecv21(a_2, i_1) == i_1 && qpRange21(a_2, i_1)
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { invRecv21(a_1_1_1, i_2_1_1) }
        ((invRecv21(a_1_1_1, i_2_1_1) > 0 && invRecv21(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange21(a_1_1_1, i_2_1_1) ==> a_2 == a_1_1_1 && invRecv21(a_1_1_1, i_2_1_1) == i_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        ((invRecv21(a_1_1_1, i_2_1_1) > 0 && invRecv21(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange21(a_1_1_1, i_2_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_1_1_1 && invRecv21(a_1_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_1_1_1: IArrayDomainType, i_2_1_1: int ::
        { QPMask[null, p_14(a_1_1_1, i_2_1_1)] }
        !(((invRecv21(a_1_1_1, i_2_1_1) > 0 && invRecv21(a_1_1_1, i_2_1_1) < n) && NoPerm < FullPerm) && qpRange21(a_1_1_1, i_2_1_1)) ==> QPMask[null, p_14(a_1_1_1, i_2_1_1)] == Mask[null, p_14(a_1_1_1, i_2_1_1)]
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
    
    // -- Check definedness of (forall i: Int ::i > 4 && i < n ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@90.11--90.60) [110602]"}
        (forall i_5: int, i_5_1: int ::
        { neverTriggered22(i_5), neverTriggered22(i_5_1) }
        (((i_5 != i_5_1 && (i_5 > 4 && i_5 < n)) && (i_5_1 > 4 && i_5_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_5 != i_5_1
      );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { PostHeap[null, p_14(a_2, i_5)] } { PostMask[null, p_14(a_2, i_5)] }
        (i_5 > 4 && i_5 < n) && NoPerm < FullPerm ==> invRecv22(a_2, i_5) == i_5 && qpRange22(a_2, i_5)
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { invRecv22(a_2_1_1, i_6_1_1) }
        ((invRecv22(a_2_1_1, i_6_1_1) > 4 && invRecv22(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange22(a_2_1_1, i_6_1_1) ==> a_2 == a_2_1_1 && invRecv22(a_2_1_1, i_6_1_1) == i_6_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        ((invRecv22(a_2_1_1, i_6_1_1) > 4 && invRecv22(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange22(a_2_1_1, i_6_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_2_1_1 && invRecv22(a_2_1_1, i_6_1_1) == i_6_1_1) && QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2_1_1: IArrayDomainType, i_6_1_1: int ::
        { QPMask[null, p_14(a_2_1_1, i_6_1_1)] }
        !(((invRecv22(a_2_1_1, i_6_1_1) > 4 && invRecv22(a_2_1_1, i_6_1_1) < n) && NoPerm < FullPerm) && qpRange22(a_2_1_1, i_6_1_1)) ==> QPMask[null, p_14(a_2_1_1, i_6_1_1)] == PostMask[null, p_14(a_2_1_1, i_6_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int ::i > 0 && i < 4 ==> acc(p(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@91.11--91.61) [110603]"}
        (forall i_9_1: int, i_9_2: int ::
        { neverTriggered23(i_9_1), neverTriggered23(i_9_2) }
        (((i_9_1 != i_9_2 && (i_9_1 > 0 && i_9_1 < 4)) && (i_9_2 > 0 && i_9_2 < 4)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_9_1 != i_9_2
      );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { PostHeap[null, p_14(a_2, i_9_1)] } { PostMask[null, p_14(a_2, i_9_1)] }
        (i_9_1 > 0 && i_9_1 < 4) && NoPerm < FullPerm ==> invRecv23(a_2, i_9_1) == i_9_1 && qpRange23(a_2, i_9_1)
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { invRecv23(a_3_1_1, i_10_1_1) }
        ((invRecv23(a_3_1_1, i_10_1_1) > 0 && invRecv23(a_3_1_1, i_10_1_1) < 4) && NoPerm < FullPerm) && qpRange23(a_3_1_1, i_10_1_1) ==> a_2 == a_3_1_1 && invRecv23(a_3_1_1, i_10_1_1) == i_10_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        ((invRecv23(a_3_1_1, i_10_1_1) > 0 && invRecv23(a_3_1_1, i_10_1_1) < 4) && NoPerm < FullPerm) && qpRange23(a_3_1_1, i_10_1_1) ==> (NoPerm < FullPerm ==> a_2 == a_3_1_1 && invRecv23(a_3_1_1, i_10_1_1) == i_10_1_1) && QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_3_1_1: IArrayDomainType, i_10_1_1: int ::
        { QPMask[null, p_14(a_3_1_1, i_10_1_1)] }
        !(((invRecv23(a_3_1_1, i_10_1_1) > 0 && invRecv23(a_3_1_1, i_10_1_1) < 4) && NoPerm < FullPerm) && qpRange23(a_3_1_1, i_10_1_1)) ==> QPMask[null, p_14(a_3_1_1, i_10_1_1)] == PostMask[null, p_14(a_3_1_1, i_10_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@90.11--90.60) [110604]"}
        (forall i_12_1: int, i_12_2: int ::
        { neverTriggered24(i_12_1), neverTriggered24(i_12_2) }
        (((i_12_1 != i_12_2 && (i_12_1 > 4 && i_12_1 < n)) && (i_12_2 > 4 && i_12_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_12_1 != i_12_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access p(a, i) (array_exhale2.vpr@90.11--90.60) [110605]"}
        (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] }
        i_12_1 > 4 && i_12_1 < n ==> Mask[null, p_14(a_2, i_12_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_12_1: int ::
        { Heap[null, p_14(a_2, i_12_1)] } { Mask[null, p_14(a_2, i_12_1)] }
        (i_12_1 > 4 && i_12_1 < n) && NoPerm < FullPerm ==> invRecv24(a_2, i_12_1) == i_12_1 && qpRange24(a_2, i_12_1)
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { invRecv24(a_4_1, i_13_1_1) }
        ((invRecv24(a_4_1, i_13_1_1) > 4 && invRecv24(a_4_1, i_13_1_1) < n) && NoPerm < FullPerm) && qpRange24(a_4_1, i_13_1_1) ==> a_2 == a_4_1 && invRecv24(a_4_1, i_13_1_1) == i_13_1_1
      );
    
    // -- assume permission updates
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        ((invRecv24(a_4_1, i_13_1_1) > 4 && invRecv24(a_4_1, i_13_1_1) < n) && NoPerm < FullPerm) && qpRange24(a_4_1, i_13_1_1) ==> (a_2 == a_4_1 && invRecv24(a_4_1, i_13_1_1) == i_13_1_1) && QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)] - FullPerm
      );
      assume (forall a_4_1: IArrayDomainType, i_13_1_1: int ::
        { QPMask[null, p_14(a_4_1, i_13_1_1)] }
        !(((invRecv24(a_4_1, i_13_1_1) > 4 && invRecv24(a_4_1, i_13_1_1) < n) && NoPerm < FullPerm) && qpRange24(a_4_1, i_13_1_1)) ==> QPMask[null, p_14(a_4_1, i_13_1_1)] == Mask[null, p_14(a_4_1, i_13_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p(a, i) might not be injective. (array_exhale2.vpr@91.11--91.61) [110606]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered25(i_14_1), neverTriggered25(i_14_2) }
        (((i_14_1 != i_14_2 && (i_14_1 > 0 && i_14_1 < 4)) && (i_14_2 > 0 && i_14_2 < 4)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2 != a_2 || i_14_1 != i_14_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access p(a, i) (array_exhale2.vpr@91.11--91.61) [110607]"}
        (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] }
        i_14_1 > 0 && i_14_1 < 4 ==> Mask[null, p_14(a_2, i_14_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p(a, i), write)
      assume (forall i_14_1: int ::
        { Heap[null, p_14(a_2, i_14_1)] } { Mask[null, p_14(a_2, i_14_1)] }
        (i_14_1 > 0 && i_14_1 < 4) && NoPerm < FullPerm ==> invRecv25(a_2, i_14_1) == i_14_1 && qpRange25(a_2, i_14_1)
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { invRecv25(a_5_1_1, i_15_1_1) }
        ((invRecv25(a_5_1_1, i_15_1_1) > 0 && invRecv25(a_5_1_1, i_15_1_1) < 4) && NoPerm < FullPerm) && qpRange25(a_5_1_1, i_15_1_1) ==> a_2 == a_5_1_1 && invRecv25(a_5_1_1, i_15_1_1) == i_15_1_1
      );
    
    // -- assume permission updates
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        ((invRecv25(a_5_1_1, i_15_1_1) > 0 && invRecv25(a_5_1_1, i_15_1_1) < 4) && NoPerm < FullPerm) && qpRange25(a_5_1_1, i_15_1_1) ==> (a_2 == a_5_1_1 && invRecv25(a_5_1_1, i_15_1_1) == i_15_1_1) && QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)] - FullPerm
      );
      assume (forall a_5_1_1: IArrayDomainType, i_15_1_1: int ::
        { QPMask[null, p_14(a_5_1_1, i_15_1_1)] }
        !(((invRecv25(a_5_1_1, i_15_1_1) > 0 && invRecv25(a_5_1_1, i_15_1_1) < 4) && NoPerm < FullPerm) && qpRange25(a_5_1_1, i_15_1_1)) ==> QPMask[null, p_14(a_5_1_1, i_15_1_1)] == Mask[null, p_14(a_5_1_1, i_15_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m10
// ==================================================

procedure m10(a_2: IArrayDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 5;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } i > 0 && i < n ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@96.12--96.66) [110608]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (i_1 > 0 && i_1 < n)) && (i_1_1 > 0 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (i_1 > 0 && i_1 < n) && NoPerm < FullPerm ==> qpRange26((loc(a_2, i_1): Ref)) && invRecv26((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        ((invRecv26(o_4) > 0 && invRecv26(o_4) < n) && NoPerm < FullPerm) && qpRange26(o_4) ==> (loc(a_2, invRecv26(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        i_1 > 0 && i_1 < n ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv26(o_4) > 0 && invRecv26(o_4) < n) && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv26(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((invRecv26(o_4) > 0 && invRecv26(o_4) < n) && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } i > 4 && i < n ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@97.11--97.65) [110609]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (i_3 > 4 && i_3 < n)) && (i_3_1 > 4 && i_3_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3): Ref) != (loc(a_2, i_3_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        (i_3 > 4 && i_3 < n) && NoPerm < FullPerm ==> qpRange27((loc(a_2, i_3): Ref)) && invRecv27((loc(a_2, i_3): Ref)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv27(o_4) }
        ((invRecv27(o_4) > 4 && invRecv27(o_4) < n) && NoPerm < FullPerm) && qpRange27(o_4) ==> (loc(a_2, invRecv27(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { (loc(a_2, i_3): Ref) } { (loc(a_2, i_3): Ref) }
        i_3 > 4 && i_3 < n ==> (loc(a_2, i_3): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv27(o_4) > 4 && invRecv27(o_4) < n) && NoPerm < FullPerm) && qpRange27(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv27(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((invRecv27(o_4) > 4 && invRecv27(o_4) < n) && NoPerm < FullPerm) && qpRange27(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } i > 0 && i < 4 ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@98.11--98.66) [110610]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (i_5 > 0 && i_5 < 4)) && (i_5_1 > 0 && i_5_1 < 4)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5): Ref) != (loc(a_2, i_5_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
        (i_5 > 0 && i_5 < 4) && NoPerm < FullPerm ==> qpRange28((loc(a_2, i_5): Ref)) && invRecv28((loc(a_2, i_5): Ref)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv28(o_4) }
        ((invRecv28(o_4) > 0 && invRecv28(o_4) < 4) && NoPerm < FullPerm) && qpRange28(o_4) ==> (loc(a_2, invRecv28(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { (loc(a_2, i_5): Ref) } { (loc(a_2, i_5): Ref) }
        i_5 > 0 && i_5 < 4 ==> (loc(a_2, i_5): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((invRecv28(o_4) > 0 && invRecv28(o_4) < 4) && NoPerm < FullPerm) && qpRange28(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv28(o_4)): Ref) == o_4) && QPMask[o_4, val] == PostMask[o_4, val] + FullPerm) && (!(((invRecv28(o_4) > 0 && invRecv28(o_4) < 4) && NoPerm < FullPerm) && qpRange28(o_4)) ==> QPMask[o_4, val] == PostMask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@97.11--97.65) [110611]"}
        (forall i_6_1: int, i_6_2: int ::
        { neverTriggered29(i_6_1), neverTriggered29(i_6_2) }
        (((i_6_1 != i_6_2 && (i_6_1 > 4 && i_6_1 < n)) && (i_6_2 > 4 && i_6_2 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_1): Ref) != (loc(a_2, i_6_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m10 might not hold. There might be insufficient permission to access loc(a, i).val (array_exhale2.vpr@97.11--97.65) [110612]"}
        (forall i_6_1: int ::
        { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
        i_6_1 > 4 && i_6_1 < n ==> Mask[(loc(a_2, i_6_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_6_1: int ::
        { (loc(a_2, i_6_1): Ref) } { (loc(a_2, i_6_1): Ref) }
        (i_6_1 > 4 && i_6_1 < n) && NoPerm < FullPerm ==> qpRange29((loc(a_2, i_6_1): Ref)) && invRecv29((loc(a_2, i_6_1): Ref)) == i_6_1
      );
      assume (forall o_4: Ref ::
        { invRecv29(o_4) }
        (invRecv29(o_4) > 4 && invRecv29(o_4) < n) && (NoPerm < FullPerm && qpRange29(o_4)) ==> (loc(a_2, invRecv29(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((invRecv29(o_4) > 4 && invRecv29(o_4) < n) && (NoPerm < FullPerm && qpRange29(o_4)) ==> (loc(a_2, invRecv29(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((invRecv29(o_4) > 4 && invRecv29(o_4) < n) && (NoPerm < FullPerm && qpRange29(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (array_exhale2.vpr@98.11--98.66) [110613]"}
        (forall i_7_1: int, i_7_2: int ::
        { neverTriggered30(i_7_1), neverTriggered30(i_7_2) }
        (((i_7_1 != i_7_2 && (i_7_1 > 0 && i_7_1 < 4)) && (i_7_2 > 0 && i_7_2 < 4)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_7_1): Ref) != (loc(a_2, i_7_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m10 might not hold. There might be insufficient permission to access loc(a, i).val (array_exhale2.vpr@98.11--98.66) [110614]"}
        (forall i_7_1: int ::
        { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
        i_7_1 > 0 && i_7_1 < 4 ==> Mask[(loc(a_2, i_7_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_7_1: int ::
        { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
        (i_7_1 > 0 && i_7_1 < 4) && NoPerm < FullPerm ==> qpRange30((loc(a_2, i_7_1): Ref)) && invRecv30((loc(a_2, i_7_1): Ref)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        (invRecv30(o_4) > 0 && invRecv30(o_4) < 4) && (NoPerm < FullPerm && qpRange30(o_4)) ==> (loc(a_2, invRecv30(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((invRecv30(o_4) > 0 && invRecv30(o_4) < 4) && (NoPerm < FullPerm && qpRange30(o_4)) ==> (loc(a_2, invRecv30(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((invRecv30(o_4) > 0 && invRecv30(o_4) < 4) && (NoPerm < FullPerm && qpRange30(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}