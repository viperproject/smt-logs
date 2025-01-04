// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:22:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/termination_mutual_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/termination_mutual_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 10: tripleLen3Bad
// - height 9: len1
// - height 8: tripleLen1
// - height 7: mlen2
// - height 6: tripleLen1Bad
// - height 5: len2
// - height 4: tripleLen3
// - height 3: len1Bad
// - height 2: tripleLen2Bad
// - height 1: tripleLen2
// - height 0: len2Bad
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
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of domain List1
// ==================================================

// The type for domain List1
type List1DomainType;

// Translation of domain function RList1
function  RList1(x_8: int, l_11: List2DomainType): List1DomainType;

// Translation of domain function get_List1_x
function  get_List1_x(t_9: List1DomainType): int;

// Translation of domain function get_List1_l
function  get_List1_l(t_9: List1DomainType): List2DomainType;

// Translation of domain function List1_tag
function  List1_tag(t_9: List1DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List2DomainType ::
  { (RList1(x, l_2): List1DomainType) }
  x == (get_List1_x((RList1(x, l_2): List1DomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List2DomainType ::
  { (RList1(x, l_2): List1DomainType) }
  l_2 == (get_List1_l((RList1(x, l_2): List1DomainType)): List2DomainType)
);

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List2DomainType ::
  { (RList1(x, l_2): List1DomainType) }
  (List1_tag((RList1(x, l_2): List1DomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: List1DomainType ::
  { (List1_tag(t_2): int) } { (get_List1_x(t_2): int) } { (get_List1_l(t_2): List2DomainType) }
  t_2 == (RList1((get_List1_x(t_2): int), (get_List1_l(t_2): List2DomainType)): List1DomainType)
);

// ==================================================
// Translation of domain List1WellFoundedOrder
// ==================================================

// The type for domain List1WellFoundedOrder
type List1WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom (forall l_1: List1DomainType, x_0: int, x: int ::
  { (RList1(x, (NonEmpty(x_0, l_1): List2DomainType)): List1DomainType) }
  (decreasing(l_1, (RList1(x, (NonEmpty(x_0, l_1): List2DomainType)): List1DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: List1DomainType, v2: List1DomainType, v3: List1DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: List1DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain List2
// ==================================================

// The type for domain List2
type List2DomainType;

// Translation of domain function Empty
function  Empty(): List2DomainType;

// Translation of domain function NonEmpty
function  NonEmpty(x_8: int, l_11: List1DomainType): List2DomainType;

// Translation of domain function get_List2_x
function  get_List2_x(t_9: List2DomainType): int;

// Translation of domain function get_List2_l
function  get_List2_l(t_9: List2DomainType): List1DomainType;

// Translation of domain function List2_tag
function  List2_tag(t_9: List2DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List1DomainType ::
  { (NonEmpty(x, l_2): List2DomainType) }
  x == (get_List2_x((NonEmpty(x, l_2): List2DomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List1DomainType ::
  { (NonEmpty(x, l_2): List2DomainType) }
  l_2 == (get_List2_l((NonEmpty(x, l_2): List2DomainType)): List1DomainType)
);

// Translation of anonymous domain axiom
axiom (List2_tag((Empty(): List2DomainType)): int) == 0;

// Translation of anonymous domain axiom
axiom (forall x: int, l_2: List1DomainType ::
  { (NonEmpty(x, l_2): List2DomainType) }
  (List2_tag((NonEmpty(x, l_2): List2DomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall t_2: List2DomainType ::
  { (List2_tag(t_2): int) } { (get_List2_x(t_2): int) } { (get_List2_l(t_2): List1DomainType) }
  t_2 == (Empty(): List2DomainType) || t_2 == (NonEmpty((get_List2_x(t_2): int), (get_List2_l(t_2): List1DomainType)): List2DomainType)
);

// ==================================================
// Translation of domain List2WellFoundedOrder
// ==================================================

// The type for domain List2WellFoundedOrder
type List2WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall l_1: List2DomainType, x_0: int, x: int ::
  { (NonEmpty(x, (RList1(x_0, l_1): List1DomainType)): List2DomainType) }
  (decreasing(l_1, (NonEmpty(x, (RList1(x_0, l_1): List1DomainType)): List2DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: List2DomainType, v2: List2DomainType, v3: List2DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: List2DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain MList1
// ==================================================

// The type for domain MList1
type MList1DomainType;

// Translation of domain function MRList1
function  MRList1(x_8: int, y_6: MList2DomainType): MList1DomainType;

// Translation of domain function get_MList1_x
function  get_MList1_x(t_9: MList1DomainType): int;

// Translation of domain function get_MList1_y
function  get_MList1_y(t_9: MList1DomainType): MList2DomainType;

// Translation of domain function MList1_tag
function  MList1_tag(t_9: MList1DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: int, y: MList2DomainType ::
  { (MRList1(x, y): MList1DomainType) }
  x == (get_MList1_x((MRList1(x, y): MList1DomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall x: int, y: MList2DomainType ::
  { (MRList1(x, y): MList1DomainType) }
  y == (get_MList1_y((MRList1(x, y): MList1DomainType)): MList2DomainType)
);

// Translation of anonymous domain axiom
axiom (forall x: int, y: MList2DomainType ::
  { (MRList1(x, y): MList1DomainType) }
  (MList1_tag((MRList1(x, y): MList1DomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: MList1DomainType ::
  { (MList1_tag(t_2): int) } { (get_MList1_x(t_2): int) } { (get_MList1_y(t_2): MList2DomainType) }
  t_2 == (MRList1((get_MList1_x(t_2): int), (get_MList1_y(t_2): MList2DomainType)): MList1DomainType)
);

// ==================================================
// Translation of domain MList1WellFoundedOrder
// ==================================================

// The type for domain MList1WellFoundedOrder
type MList1WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom (forall l_1: MList1DomainType, y_0: int, x: int ::
  { (MRList1(x, (MNonEmpty(y_0, l_1): MList2DomainType)): MList1DomainType) }
  (decreasing(l_1, (MRList1(x, (MNonEmpty(y_0, l_1): MList2DomainType)): MList1DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: MList1DomainType, v2: MList1DomainType, v3: MList1DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: MList1DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain MList2
// ==================================================

// The type for domain MList2
type MList2DomainType;

// Translation of domain function MEmpty
function  MEmpty(): MList2DomainType;

// Translation of domain function MNonEmpty
function  MNonEmpty(y_6: int, l_11: MList1DomainType): MList2DomainType;

// Translation of domain function get_MList2_y
function  get_MList2_y(t_9: MList2DomainType): int;

// Translation of domain function get_MList2_l
function  get_MList2_l(t_9: MList2DomainType): MList1DomainType;

// Translation of domain function MList2_tag
function  MList2_tag(t_9: MList2DomainType): int;

// Translation of anonymous domain axiom
axiom (forall y: int, l_2: MList1DomainType ::
  { (MNonEmpty(y, l_2): MList2DomainType) }
  y == (get_MList2_y((MNonEmpty(y, l_2): MList2DomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall y: int, l_2: MList1DomainType ::
  { (MNonEmpty(y, l_2): MList2DomainType) }
  l_2 == (get_MList2_l((MNonEmpty(y, l_2): MList2DomainType)): MList1DomainType)
);

// Translation of anonymous domain axiom
axiom (MList2_tag((MEmpty(): MList2DomainType)): int) == 0;

// Translation of anonymous domain axiom
axiom (forall y: int, l_2: MList1DomainType ::
  { (MNonEmpty(y, l_2): MList2DomainType) }
  (MList2_tag((MNonEmpty(y, l_2): MList2DomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall t_2: MList2DomainType ::
  { (MList2_tag(t_2): int) } { (get_MList2_y(t_2): int) } { (get_MList2_l(t_2): MList1DomainType) }
  t_2 == (MEmpty(): MList2DomainType) || t_2 == (MNonEmpty((get_MList2_y(t_2): int), (get_MList2_l(t_2): MList1DomainType)): MList2DomainType)
);

// ==================================================
// Translation of domain MList2WellFoundedOrder
// ==================================================

// The type for domain MList2WellFoundedOrder
type MList2WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall y_1: MList2DomainType, x_0: int, y: int ::
  { (MNonEmpty(y, (MRList1(x_0, y_1): MList1DomainType)): MList2DomainType) }
  (decreasing(y_1, (MNonEmpty(y, (MRList1(x_0, y_1): MList1DomainType)): MList2DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: MList2DomainType, v2: MList2DomainType, v3: MList2DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: MList2DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain Triple1
// ==================================================

// The type for domain Triple1
type Triple1DomainType;

// Translation of domain function triple1
function  triple1(x_8: Triple2DomainType): Triple1DomainType;

// Translation of domain function get_Triple1_x
function  get_Triple1_x(t_9: Triple1DomainType): Triple2DomainType;

// Translation of domain function Triple1_tag
function  Triple1_tag(t_9: Triple1DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: Triple2DomainType ::
  { (triple1(x): Triple1DomainType) }
  x == (get_Triple1_x((triple1(x): Triple1DomainType)): Triple2DomainType)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple2DomainType ::
  { (triple1(x): Triple1DomainType) }
  (Triple1_tag((triple1(x): Triple1DomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: Triple1DomainType ::
  { (Triple1_tag(t_2): int) } { (get_Triple1_x(t_2): Triple2DomainType) }
  t_2 == (triple1((get_Triple1_x(t_2): Triple2DomainType)): Triple1DomainType)
);

// ==================================================
// Translation of domain Triple1WellFoundedOrder
// ==================================================

// The type for domain Triple1WellFoundedOrder
type Triple1WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom (forall x_2_2: Triple1DomainType ::
  { (triple1((triple2((triple3(x_2_2): Triple3DomainType)): Triple2DomainType)): Triple1DomainType) }
  (decreasing(x_2_2, (triple1((triple2((triple3(x_2_2): Triple3DomainType)): Triple2DomainType)): Triple1DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: Triple1DomainType, v2: Triple1DomainType, v3: Triple1DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple1DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain Triple2
// ==================================================

// The type for domain Triple2
type Triple2DomainType;

// Translation of domain function triple2
function  triple2(x_8: Triple3DomainType): Triple2DomainType;

// Translation of domain function get_Triple2_x
function  get_Triple2_x(t_9: Triple2DomainType): Triple3DomainType;

// Translation of domain function Triple2_tag
function  Triple2_tag(t_9: Triple2DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: Triple3DomainType ::
  { (triple2(x): Triple2DomainType) }
  x == (get_Triple2_x((triple2(x): Triple2DomainType)): Triple3DomainType)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple3DomainType ::
  { (triple2(x): Triple2DomainType) }
  (Triple2_tag((triple2(x): Triple2DomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: Triple2DomainType ::
  { (Triple2_tag(t_2): int) } { (get_Triple2_x(t_2): Triple3DomainType) }
  t_2 == (triple2((get_Triple2_x(t_2): Triple3DomainType)): Triple2DomainType)
);

// ==================================================
// Translation of domain Triple2WellFoundedOrder
// ==================================================

// The type for domain Triple2WellFoundedOrder
type Triple2WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom (forall x_2_2: Triple2DomainType ::
  { (triple2((triple3((triple1(x_2_2): Triple1DomainType)): Triple3DomainType)): Triple2DomainType) }
  (decreasing(x_2_2, (triple2((triple3((triple1(x_2_2): Triple1DomainType)): Triple3DomainType)): Triple2DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: Triple2DomainType, v2: Triple2DomainType, v3: Triple2DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple2DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain Triple3
// ==================================================

// The type for domain Triple3
type Triple3DomainType;

// Translation of domain function triple3
function  triple3(x_8: Triple1DomainType): Triple3DomainType;

// Translation of domain function nil
function  nil(i_79: int): Triple3DomainType;

// Translation of domain function get_Triple3_x
function  get_Triple3_x(t_9: Triple3DomainType): Triple1DomainType;

// Translation of domain function get_Triple3_i
function  get_Triple3_i(t_9: Triple3DomainType): int;

// Translation of domain function Triple3_tag
function  Triple3_tag(t_9: Triple3DomainType): int;

// Translation of anonymous domain axiom
axiom (forall x: Triple1DomainType ::
  { (triple3(x): Triple3DomainType) }
  x == (get_Triple3_x((triple3(x): Triple3DomainType)): Triple1DomainType)
);

// Translation of anonymous domain axiom
axiom (forall i: int ::
  { (nil(i): Triple3DomainType) }
  i == (get_Triple3_i((nil(i): Triple3DomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple1DomainType ::
  { (triple3(x): Triple3DomainType) }
  (Triple3_tag((triple3(x): Triple3DomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall i: int ::
  { (nil(i): Triple3DomainType) }
  (Triple3_tag((nil(i): Triple3DomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: Triple3DomainType ::
  { (Triple3_tag(t_2): int) } { (get_Triple3_i(t_2): int) }
  t_2 == (triple3((get_Triple3_x(t_2): Triple1DomainType)): Triple3DomainType) || t_2 == (nil((get_Triple3_i(t_2): int)): Triple3DomainType)
);

// ==================================================
// Translation of domain Triple3WellFoundedOrder
// ==================================================

// The type for domain Triple3WellFoundedOrder
type Triple3WellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom (forall x_2_2: Triple3DomainType ::
  { (triple3((triple1((triple2(x_2_2): Triple2DomainType)): Triple1DomainType)): Triple3DomainType) }
  (decreasing(x_2_2, (triple3((triple1((triple2(x_2_2): Triple2DomainType)): Triple1DomainType)): Triple3DomainType)): bool)
);

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall v1: Triple3DomainType, v2: Triple3DomainType, v3: Triple3DomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: Triple3DomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of function len2
// ==================================================

// Uninterpreted function definitions
function  len2(Heap: HeapType, l_2: List2DomainType): int;
function  len2'(Heap: HeapType, l_2: List2DomainType): int;
axiom (forall Heap: HeapType, l_2: List2DomainType ::
  { len2(Heap, l_2) }
  len2(Heap, l_2) == len2'(Heap, l_2) && dummyFunction(len2#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: List2DomainType ::
  { len2'(Heap, l_2) }
  dummyFunction(len2#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List2DomainType ::
  { state(Heap, Mask), len2(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> len2(Heap, l_2) == (if l_2 == (Empty(): List2DomainType) then 0 else 1 + len2'(Heap, (get_List1_l((get_List2_l(l_2): List1DomainType)): List2DomainType)))
);

// Framing axioms
function  len2#frame(frame: FrameType, l_2: List2DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List2DomainType ::
  { state(Heap, Mask), len2'(Heap, l_2) }
  state(Heap, Mask) ==> len2'(Heap, l_2) == len2#frame(EmptyFrame, l_2)
);

// Trigger function (controlling recursive postconditions)
function  len2#trigger(frame: FrameType, l_2: List2DomainType): bool;

// State-independent trigger function
function  len2#triggerStateless(l_2: List2DomainType): int;

// Check contract well-formedness and postcondition
procedure len2#definedness(l_2: List2DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (l == Empty() ? 0 : 1 + len2(get_List1_l(get_List2_l(l))))
      if (l_2 == (Empty(): List2DomainType)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len2#trigger(EmptyFrame, (get_List1_l((get_List2_l(l_2): List1DomainType)): List2DomainType));
        }
      }
  
  // -- Translate function body
    Result := (if l_2 == (Empty(): List2DomainType) then 0 else 1 + len2(Heap, (get_List1_l((get_List2_l(l_2): List1DomainType)): List2DomainType)));
}

// ==================================================
// Translation of function len2Bad
// ==================================================

// Uninterpreted function definitions
function  len2Bad(Heap: HeapType, l_2: List2DomainType): int;
function  len2Bad'(Heap: HeapType, l_2: List2DomainType): int;
axiom (forall Heap: HeapType, l_2: List2DomainType ::
  { len2Bad(Heap, l_2) }
  len2Bad(Heap, l_2) == len2Bad'(Heap, l_2) && dummyFunction(len2Bad#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: List2DomainType ::
  { len2Bad'(Heap, l_2) }
  dummyFunction(len2Bad#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List2DomainType ::
  { state(Heap, Mask), len2Bad(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> len2Bad(Heap, l_2) == (if l_2 == (Empty(): List2DomainType) then 0 else 1 + len2Bad'(Heap, l_2))
);

// Framing axioms
function  len2Bad#frame(frame: FrameType, l_2: List2DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List2DomainType ::
  { state(Heap, Mask), len2Bad'(Heap, l_2) }
  state(Heap, Mask) ==> len2Bad'(Heap, l_2) == len2Bad#frame(EmptyFrame, l_2)
);

// Trigger function (controlling recursive postconditions)
function  len2Bad#trigger(frame: FrameType, l_2: List2DomainType): bool;

// State-independent trigger function
function  len2Bad#triggerStateless(l_2: List2DomainType): int;

// Check contract well-formedness and postcondition
procedure len2Bad#definedness(l_2: List2DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (l == Empty() ? 0 : 1 + len2Bad(l))
      if (l_2 == (Empty(): List2DomainType)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len2Bad#trigger(EmptyFrame, l_2);
        }
      }
  
  // -- Translate function body
    Result := (if l_2 == (Empty(): List2DomainType) then 0 else 1 + len2Bad(Heap, l_2));
}

// ==================================================
// Translation of function len1
// ==================================================

// Uninterpreted function definitions
function  len1(Heap: HeapType, l_2: List1DomainType): int;
function  len1'(Heap: HeapType, l_2: List1DomainType): int;
axiom (forall Heap: HeapType, l_2: List1DomainType ::
  { len1(Heap, l_2) }
  len1(Heap, l_2) == len1'(Heap, l_2) && dummyFunction(len1#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: List1DomainType ::
  { len1'(Heap, l_2) }
  dummyFunction(len1#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List1DomainType ::
  { state(Heap, Mask), len1(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> len1(Heap, l_2) == (if (get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType) then 0 else 1 + len1'(Heap, (get_List2_l((get_List1_l(l_2): List2DomainType)): List1DomainType)))
);

// Framing axioms
function  len1#frame(frame: FrameType, l_2: List1DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List1DomainType ::
  { state(Heap, Mask), len1'(Heap, l_2) }
  state(Heap, Mask) ==> len1'(Heap, l_2) == len1#frame(EmptyFrame, l_2)
);

// Trigger function (controlling recursive postconditions)
function  len1#trigger(frame: FrameType, l_2: List1DomainType): bool;

// State-independent trigger function
function  len1#triggerStateless(l_2: List1DomainType): int;

// Check contract well-formedness and postcondition
procedure len1#definedness(l_2: List1DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 9;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (get_List1_l(l) == Empty() ? 0 : 1 + len1(get_List2_l(get_List1_l(l))))
      if ((get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len1#trigger(EmptyFrame, (get_List2_l((get_List1_l(l_2): List2DomainType)): List1DomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType) then 0 else 1 + len1(Heap, (get_List2_l((get_List1_l(l_2): List2DomainType)): List1DomainType)));
}

// ==================================================
// Translation of function len1Bad
// ==================================================

// Uninterpreted function definitions
function  len1Bad(Heap: HeapType, l_2: List1DomainType): int;
function  len1Bad'(Heap: HeapType, l_2: List1DomainType): int;
axiom (forall Heap: HeapType, l_2: List1DomainType ::
  { len1Bad(Heap, l_2) }
  len1Bad(Heap, l_2) == len1Bad'(Heap, l_2) && dummyFunction(len1Bad#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: List1DomainType ::
  { len1Bad'(Heap, l_2) }
  dummyFunction(len1Bad#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List1DomainType ::
  { state(Heap, Mask), len1Bad(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> len1Bad(Heap, l_2) == (if (get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType) then 0 else 1 + len1Bad'(Heap, l_2))
);

// Framing axioms
function  len1Bad#frame(frame: FrameType, l_2: List1DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: List1DomainType ::
  { state(Heap, Mask), len1Bad'(Heap, l_2) }
  state(Heap, Mask) ==> len1Bad'(Heap, l_2) == len1Bad#frame(EmptyFrame, l_2)
);

// Trigger function (controlling recursive postconditions)
function  len1Bad#trigger(frame: FrameType, l_2: List1DomainType): bool;

// State-independent trigger function
function  len1Bad#triggerStateless(l_2: List1DomainType): int;

// Check contract well-formedness and postcondition
procedure len1Bad#definedness(l_2: List1DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (get_List1_l(l) == Empty() ? 0 : 1 + len1Bad(l))
      if ((get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len1Bad#trigger(EmptyFrame, l_2);
        }
      }
  
  // -- Translate function body
    Result := (if (get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType) then 0 else 1 + len1Bad(Heap, l_2));
}

// ==================================================
// Translation of function mlen2
// ==================================================

// Uninterpreted function definitions
function  mlen2(Heap: HeapType, l_2: MList2DomainType): int;
function  mlen2'(Heap: HeapType, l_2: MList2DomainType): int;
axiom (forall Heap: HeapType, l_2: MList2DomainType ::
  { mlen2(Heap, l_2) }
  mlen2(Heap, l_2) == mlen2'(Heap, l_2) && dummyFunction(mlen2#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: MList2DomainType ::
  { mlen2'(Heap, l_2) }
  dummyFunction(mlen2#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: MList2DomainType ::
  { state(Heap, Mask), mlen2(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> mlen2(Heap, l_2) == (if l_2 == (MEmpty(): MList2DomainType) then 0 else 1 + mlen2'(Heap, (get_MList1_y((get_MList2_l(l_2): MList1DomainType)): MList2DomainType)))
);

// Framing axioms
function  mlen2#frame(frame: FrameType, l_2: MList2DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: MList2DomainType ::
  { state(Heap, Mask), mlen2'(Heap, l_2) }
  state(Heap, Mask) ==> mlen2'(Heap, l_2) == mlen2#frame(EmptyFrame, l_2)
);

// Trigger function (controlling recursive postconditions)
function  mlen2#trigger(frame: FrameType, l_2: MList2DomainType): bool;

// State-independent trigger function
function  mlen2#triggerStateless(l_2: MList2DomainType): int;

// Check contract well-formedness and postcondition
procedure mlen2#definedness(l_2: MList2DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 7;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (l == MEmpty() ? 0 : 1 + mlen2(get_MList1_y(get_MList2_l(l))))
      if (l_2 == (MEmpty(): MList2DomainType)) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume mlen2#trigger(EmptyFrame, (get_MList1_y((get_MList2_l(l_2): MList1DomainType)): MList2DomainType));
        }
      }
  
  // -- Translate function body
    Result := (if l_2 == (MEmpty(): MList2DomainType) then 0 else 1 + mlen2(Heap, (get_MList1_y((get_MList2_l(l_2): MList1DomainType)): MList2DomainType)));
}

// ==================================================
// Translation of function tripleLen1
// ==================================================

// Uninterpreted function definitions
function  tripleLen1(Heap: HeapType, t_2: Triple1DomainType): int;
function  tripleLen1'(Heap: HeapType, t_2: Triple1DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple1DomainType ::
  { tripleLen1(Heap, t_2) }
  tripleLen1(Heap, t_2) == tripleLen1'(Heap, t_2) && dummyFunction(tripleLen1#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple1DomainType ::
  { tripleLen1'(Heap, t_2) }
  dummyFunction(tripleLen1#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple1DomainType ::
  { state(Heap, Mask), tripleLen1(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> tripleLen1(Heap, t_2) == 2 + (if (Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0 then 0 else tripleLen1'(Heap, (get_Triple3_x((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): Triple1DomainType)))
);

// Framing axioms
function  tripleLen1#frame(frame: FrameType, t_2: Triple1DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple1DomainType ::
  { state(Heap, Mask), tripleLen1'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen1'(Heap, t_2) == tripleLen1#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen1#trigger(frame: FrameType, t_2: Triple1DomainType): bool;

// State-independent trigger function
function  tripleLen1#triggerStateless(t_2: Triple1DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen1#definedness(t_2: Triple1DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 8;
  
  // -- Check definedness of function body
    
    // -- Check definedness of 2 + (Triple3_tag(get_Triple2_x(get_Triple1_x(t))) == 0 ? 0 : tripleLen1(get_Triple3_x(get_Triple2_x(get_Triple1_x(t)))))
      if ((Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen1#trigger(EmptyFrame, (get_Triple3_x((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): Triple1DomainType));
        }
      }
  
  // -- Translate function body
    Result := 2 + (if (Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0 then 0 else tripleLen1(Heap, (get_Triple3_x((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): Triple1DomainType)));
}

// ==================================================
// Translation of function tripleLen2
// ==================================================

// Uninterpreted function definitions
function  tripleLen2(Heap: HeapType, t_2: Triple2DomainType): int;
function  tripleLen2'(Heap: HeapType, t_2: Triple2DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple2DomainType ::
  { tripleLen2(Heap, t_2) }
  tripleLen2(Heap, t_2) == tripleLen2'(Heap, t_2) && dummyFunction(tripleLen2#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple2DomainType ::
  { tripleLen2'(Heap, t_2) }
  dummyFunction(tripleLen2#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple2DomainType ::
  { state(Heap, Mask), tripleLen2(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> tripleLen2(Heap, t_2) == 1 + (if (Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0 then 0 else 1 + tripleLen2'(Heap, (get_Triple1_x((get_Triple3_x((get_Triple2_x(t_2): Triple3DomainType)): Triple1DomainType)): Triple2DomainType)))
);

// Framing axioms
function  tripleLen2#frame(frame: FrameType, t_2: Triple2DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple2DomainType ::
  { state(Heap, Mask), tripleLen2'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen2'(Heap, t_2) == tripleLen2#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen2#trigger(frame: FrameType, t_2: Triple2DomainType): bool;

// State-independent trigger function
function  tripleLen2#triggerStateless(t_2: Triple2DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen2#definedness(t_2: Triple2DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (Triple3_tag(get_Triple2_x(t)) == 0 ? 0 : 1 + tripleLen2(get_Triple1_x(get_Triple3_x(get_Triple2_x(t)))))
      if ((Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen2#trigger(EmptyFrame, (get_Triple1_x((get_Triple3_x((get_Triple2_x(t_2): Triple3DomainType)): Triple1DomainType)): Triple2DomainType));
        }
      }
  
  // -- Translate function body
    Result := 1 + (if (Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0 then 0 else 1 + tripleLen2(Heap, (get_Triple1_x((get_Triple3_x((get_Triple2_x(t_2): Triple3DomainType)): Triple1DomainType)): Triple2DomainType)));
}

// ==================================================
// Translation of function tripleLen3
// ==================================================

// Uninterpreted function definitions
function  tripleLen3(Heap: HeapType, t_2: Triple3DomainType): int;
function  tripleLen3'(Heap: HeapType, t_2: Triple3DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple3DomainType ::
  { tripleLen3(Heap, t_2) }
  tripleLen3(Heap, t_2) == tripleLen3'(Heap, t_2) && dummyFunction(tripleLen3#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple3DomainType ::
  { tripleLen3'(Heap, t_2) }
  dummyFunction(tripleLen3#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple3DomainType ::
  { state(Heap, Mask), tripleLen3(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> tripleLen3(Heap, t_2) == (if (Triple3_tag(t_2): int) == 0 then 0 else 3 + tripleLen3'(Heap, (get_Triple2_x((get_Triple1_x((get_Triple3_x(t_2): Triple1DomainType)): Triple2DomainType)): Triple3DomainType)))
);

// Framing axioms
function  tripleLen3#frame(frame: FrameType, t_2: Triple3DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple3DomainType ::
  { state(Heap, Mask), tripleLen3'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen3'(Heap, t_2) == tripleLen3#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen3#trigger(frame: FrameType, t_2: Triple3DomainType): bool;

// State-independent trigger function
function  tripleLen3#triggerStateless(t_2: Triple3DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen3#definedness(t_2: Triple3DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (Triple3_tag(t) == 0 ? 0 : 3 + tripleLen3(get_Triple2_x(get_Triple1_x(get_Triple3_x(t)))))
      if ((Triple3_tag(t_2): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen3#trigger(EmptyFrame, (get_Triple2_x((get_Triple1_x((get_Triple3_x(t_2): Triple1DomainType)): Triple2DomainType)): Triple3DomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (Triple3_tag(t_2): int) == 0 then 0 else 3 + tripleLen3(Heap, (get_Triple2_x((get_Triple1_x((get_Triple3_x(t_2): Triple1DomainType)): Triple2DomainType)): Triple3DomainType)));
}

// ==================================================
// Translation of function tripleLen1Bad
// ==================================================

// Uninterpreted function definitions
function  tripleLen1Bad(Heap: HeapType, t_2: Triple1DomainType): int;
function  tripleLen1Bad'(Heap: HeapType, t_2: Triple1DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple1DomainType ::
  { tripleLen1Bad(Heap, t_2) }
  tripleLen1Bad(Heap, t_2) == tripleLen1Bad'(Heap, t_2) && dummyFunction(tripleLen1Bad#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple1DomainType ::
  { tripleLen1Bad'(Heap, t_2) }
  dummyFunction(tripleLen1Bad#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple1DomainType ::
  { state(Heap, Mask), tripleLen1Bad(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> tripleLen1Bad(Heap, t_2) == 2 + (if (Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0 then 0 else tripleLen1Bad'(Heap, t_2))
);

// Framing axioms
function  tripleLen1Bad#frame(frame: FrameType, t_2: Triple1DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple1DomainType ::
  { state(Heap, Mask), tripleLen1Bad'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen1Bad'(Heap, t_2) == tripleLen1Bad#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen1Bad#trigger(frame: FrameType, t_2: Triple1DomainType): bool;

// State-independent trigger function
function  tripleLen1Bad#triggerStateless(t_2: Triple1DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen1Bad#definedness(t_2: Triple1DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Check definedness of function body
    
    // -- Check definedness of 2 + (Triple3_tag(get_Triple2_x(get_Triple1_x(t))) == 0 ? 0 : tripleLen1Bad(t))
      if ((Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen1Bad#trigger(EmptyFrame, t_2);
        }
      }
  
  // -- Translate function body
    Result := 2 + (if (Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0 then 0 else tripleLen1Bad(Heap, t_2));
}

// ==================================================
// Translation of function tripleLen2Bad
// ==================================================

// Uninterpreted function definitions
function  tripleLen2Bad(Heap: HeapType, t_2: Triple2DomainType): int;
function  tripleLen2Bad'(Heap: HeapType, t_2: Triple2DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple2DomainType ::
  { tripleLen2Bad(Heap, t_2) }
  tripleLen2Bad(Heap, t_2) == tripleLen2Bad'(Heap, t_2) && dummyFunction(tripleLen2Bad#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple2DomainType ::
  { tripleLen2Bad'(Heap, t_2) }
  dummyFunction(tripleLen2Bad#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple2DomainType ::
  { state(Heap, Mask), tripleLen2Bad(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> tripleLen2Bad(Heap, t_2) == 1 + (if (Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0 then 0 else 1 + tripleLen2Bad'(Heap, t_2))
);

// Framing axioms
function  tripleLen2Bad#frame(frame: FrameType, t_2: Triple2DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple2DomainType ::
  { state(Heap, Mask), tripleLen2Bad'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen2Bad'(Heap, t_2) == tripleLen2Bad#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen2Bad#trigger(frame: FrameType, t_2: Triple2DomainType): bool;

// State-independent trigger function
function  tripleLen2Bad#triggerStateless(t_2: Triple2DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen2Bad#definedness(t_2: Triple2DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (Triple3_tag(get_Triple2_x(t)) == 0 ? 0 : 1 + tripleLen2Bad(t))
      if ((Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen2Bad#trigger(EmptyFrame, t_2);
        }
      }
  
  // -- Translate function body
    Result := 1 + (if (Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0 then 0 else 1 + tripleLen2Bad(Heap, t_2));
}

// ==================================================
// Translation of function tripleLen3Bad
// ==================================================

// Uninterpreted function definitions
function  tripleLen3Bad(Heap: HeapType, t_2: Triple3DomainType): int;
function  tripleLen3Bad'(Heap: HeapType, t_2: Triple3DomainType): int;
axiom (forall Heap: HeapType, t_2: Triple3DomainType ::
  { tripleLen3Bad(Heap, t_2) }
  tripleLen3Bad(Heap, t_2) == tripleLen3Bad'(Heap, t_2) && dummyFunction(tripleLen3Bad#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: Triple3DomainType ::
  { tripleLen3Bad'(Heap, t_2) }
  dummyFunction(tripleLen3Bad#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple3DomainType ::
  { state(Heap, Mask), tripleLen3Bad(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 10 ==> tripleLen3Bad(Heap, t_2) == (if (Triple3_tag(t_2): int) == 0 then 0 else 3 + tripleLen3Bad'(Heap, t_2))
);

// Framing axioms
function  tripleLen3Bad#frame(frame: FrameType, t_2: Triple3DomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: Triple3DomainType ::
  { state(Heap, Mask), tripleLen3Bad'(Heap, t_2) }
  state(Heap, Mask) ==> tripleLen3Bad'(Heap, t_2) == tripleLen3Bad#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  tripleLen3Bad#trigger(frame: FrameType, t_2: Triple3DomainType): bool;

// State-independent trigger function
function  tripleLen3Bad#triggerStateless(t_2: Triple3DomainType): int;

// Check contract well-formedness and postcondition
procedure tripleLen3Bad#definedness(t_2: Triple3DomainType) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 10;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (Triple3_tag(t) == 0 ? 0 : 3 + tripleLen3Bad(t))
      if ((Triple3_tag(t_2): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tripleLen3Bad#trigger(EmptyFrame, t_2);
        }
      }
  
  // -- Translate function body
    Result := (if (Triple3_tag(t_2): int) == 0 then 0 else 3 + tripleLen3Bad(Heap, t_2));
}

// ==================================================
// Translation of method len2_termination_proof
// ==================================================

procedure len2_termination_proof(l_2: List2DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (l == Empty()) -- <no position>
    if (l_2 == (Empty(): List2DomainType)) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_List1_l(get_List2_l(l)), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_List1_l(get_List2_l(l)), old(l)): Bool) might not hold. (<no position>) [222760]"}
          (decreasing((get_List1_l((get_List2_l(l_2): List1DomainType)): List2DomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222761]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method len2Bad_termination_proof
// ==================================================

procedure len2Bad_termination_proof(l_2: List2DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (l == Empty()) -- <no position>
    if (l_2 == (Empty(): List2DomainType)) {
    } else {
      
      // -- Translating statement: assert (decreasing(l, old(l)): Bool) && (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(l, old(l)): Bool) might not hold. (<no position>) [222762]"}
          (decreasing(l_2, l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222763]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method len1_termination_proof
// ==================================================

procedure len1_termination_proof(l_2: List1DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (get_List1_l(l) == Empty()) -- <no position>
    if ((get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType)) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_List2_l(get_List1_l(l)), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_List2_l(get_List1_l(l)), old(l)): Bool) might not hold. (<no position>) [222764]"}
          (decreasing((get_List2_l((get_List1_l(l_2): List2DomainType)): List1DomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222765]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method len1Bad_termination_proof
// ==================================================

procedure len1Bad_termination_proof(l_2: List1DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (get_List1_l(l) == Empty()) -- <no position>
    if ((get_List1_l(l_2): List2DomainType) == (Empty(): List2DomainType)) {
    } else {
      
      // -- Translating statement: assert (decreasing(l, old(l)): Bool) && (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(l, old(l)): Bool) might not hold. (<no position>) [222766]"}
          (decreasing(l_2, l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222767]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mlen2_termination_proof
// ==================================================

procedure mlen2_termination_proof(l_2: MList2DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (l == MEmpty()) -- <no position>
    if (l_2 == (MEmpty(): MList2DomainType)) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_MList1_y(get_MList2_l(l)), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_MList1_y(get_MList2_l(l)), old(l)): Bool) might not hold. (<no position>) [222768]"}
          (decreasing((get_MList1_y((get_MList2_l(l_2): MList1DomainType)): MList2DomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222769]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen1_termination_proof
// ==================================================

procedure tripleLen1_termination_proof(t_2: Triple1DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(get_Triple2_x(get_Triple1_x(t))) == 0) -- <no position>
    if ((Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_Triple3_x(get_Triple2_x(get_Triple1_x(t))), old(t)): Bool) &&
  //   (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_Triple3_x(get_Triple2_x(get_Triple1_x(t))), old(t)): Bool) might not hold. (<no position>) [222770]"}
          (decreasing((get_Triple3_x((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): Triple1DomainType), t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222771]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen2_termination_proof
// ==================================================

procedure tripleLen2_termination_proof(t_2: Triple2DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(get_Triple2_x(t)) == 0) -- <no position>
    if ((Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_Triple1_x(get_Triple3_x(get_Triple2_x(t))), old(t)): Bool) &&
  //   (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_Triple1_x(get_Triple3_x(get_Triple2_x(t))), old(t)): Bool) might not hold. (<no position>) [222772]"}
          (decreasing((get_Triple1_x((get_Triple3_x((get_Triple2_x(t_2): Triple3DomainType)): Triple1DomainType)): Triple2DomainType), t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222773]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen3_termination_proof
// ==================================================

procedure tripleLen3_termination_proof(t_2: Triple3DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(t) == 0) -- <no position>
    if ((Triple3_tag(t_2): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_Triple2_x(get_Triple1_x(get_Triple3_x(t))), old(t)): Bool) &&
  //   (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_Triple2_x(get_Triple1_x(get_Triple3_x(t))), old(t)): Bool) might not hold. (<no position>) [222774]"}
          (decreasing((get_Triple2_x((get_Triple1_x((get_Triple3_x(t_2): Triple1DomainType)): Triple2DomainType)): Triple3DomainType), t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222775]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen1Bad_termination_proof
// ==================================================

procedure tripleLen1Bad_termination_proof(t_2: Triple1DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(get_Triple2_x(get_Triple1_x(t))) == 0) -- <no position>
    if ((Triple3_tag((get_Triple2_x((get_Triple1_x(t_2): Triple2DomainType)): Triple3DomainType)): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(t, old(t)): Bool) && (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(t, old(t)): Bool) might not hold. (<no position>) [222776]"}
          (decreasing(t_2, t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222777]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen2Bad_termination_proof
// ==================================================

procedure tripleLen2Bad_termination_proof(t_2: Triple2DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(get_Triple2_x(t)) == 0) -- <no position>
    if ((Triple3_tag((get_Triple2_x(t_2): Triple3DomainType)): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(t, old(t)): Bool) && (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(t, old(t)): Bool) might not hold. (<no position>) [222778]"}
          (decreasing(t_2, t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222779]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method tripleLen3Bad_termination_proof
// ==================================================

procedure tripleLen3Bad_termination_proof(t_2: Triple3DomainType) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
  
  // -- Translating statement: if (Triple3_tag(t) == 0) -- <no position>
    if ((Triple3_tag(t_2): int) == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(t, old(t)): Bool) && (bounded(old(t)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(t, old(t)): Bool) might not hold. (<no position>) [222780]"}
          (decreasing(t_2, t_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(t)): Bool) might not hold. (<no position>) [222781]"}
          (bounded(t_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}