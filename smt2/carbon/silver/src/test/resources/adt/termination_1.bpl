// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:22:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/termination_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/termination_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 9: lenBad
// - height 8: len
// - height 7: ilen2
// - height 6: stupidFunc
// - height 5: lenBad2
// - height 4: dlen
// - height 3: ilenBad
// - height 2: ilen
// - height 1: dlenBad
// - height 0: len2
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
// Translation of domain Val
// ==================================================

// The type for domain Val
type ValDomainType;

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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType V;

// Translation of domain function Nil
function  Nil<V>(): ListDomainType V;

// Translation of domain function Cons
function  Cons<V>(value_2: V, tail: (ListDomainType V)): ListDomainType V;

// Translation of domain function get_List_value
function  get_List_value<V>(t_9: (ListDomainType V)): V;

// Translation of domain function get_List_tail
function  get_List_tail<V>(t_9: (ListDomainType V)): ListDomainType V;

// Translation of domain function List_tag
function  List_tag<V>(t_9: (ListDomainType V)): int;

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  value_1 == (get_List_value((Cons(value_1, tail_1): ListDomainType V)): V)
);

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  tail_1 == (get_List_tail((Cons(value_1, tail_1): ListDomainType V)): ListDomainType V)
);

// Translation of anonymous domain axiom
axiom (forall <V>  ::
  
  (List_tag((Nil(): ListDomainType V)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <V> value_1: V, tail_1: (ListDomainType V) ::
  { (Cons(value_1, tail_1): ListDomainType V) }
  (List_tag((Cons(value_1, tail_1): ListDomainType V)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <V> t_2: (ListDomainType V) ::
  { (List_tag(t_2): int) } { (get_List_value(t_2): V) } { (get_List_tail(t_2): ListDomainType V) }
  t_2 == (Nil(): ListDomainType V) || t_2 == (Cons((get_List_value(t_2): V), (get_List_tail(t_2): ListDomainType V)): ListDomainType V)
);

// ==================================================
// Translation of domain ListWellFoundedOrder
// ==================================================

// The type for domain ListWellFoundedOrder
type ListWellFoundedOrderDomainType V;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall <V> tail_0: (ListDomainType V), value_1: V ::
  { (Cons(value_1, tail_0): ListDomainType V) }
  (decreasing(tail_0, (Cons(value_1, tail_0): ListDomainType V)): bool)
);

// Translation of anonymous domain axiom
axiom (forall <V> v1: (ListDomainType V), v2: (ListDomainType V), v3: (ListDomainType V) ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall <V> x: (ListDomainType V) ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain IntList
// ==================================================

// The type for domain IntList
type IntListDomainType;

// Translation of domain function INil
function  INil(): IntListDomainType;

// Translation of domain function ICons
function  ICons(ivalue: int, itail: IntListDomainType): IntListDomainType;

// Translation of domain function get_IntList_ivalue
function  get_IntList_ivalue(t_9: IntListDomainType): int;

// Translation of domain function get_IntList_itail
function  get_IntList_itail(t_9: IntListDomainType): IntListDomainType;

// Translation of domain function IntList_tag
function  IntList_tag(t_9: IntListDomainType): int;

// Translation of anonymous domain axiom
axiom (forall ivalue_1: int, itail_1: IntListDomainType ::
  { (ICons(ivalue_1, itail_1): IntListDomainType) }
  ivalue_1 == (get_IntList_ivalue((ICons(ivalue_1, itail_1): IntListDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall ivalue_1: int, itail_1: IntListDomainType ::
  { (ICons(ivalue_1, itail_1): IntListDomainType) }
  itail_1 == (get_IntList_itail((ICons(ivalue_1, itail_1): IntListDomainType)): IntListDomainType)
);

// Translation of anonymous domain axiom
axiom (IntList_tag((INil(): IntListDomainType)): int) == 1;

// Translation of anonymous domain axiom
axiom (forall ivalue_1: int, itail_1: IntListDomainType ::
  { (ICons(ivalue_1, itail_1): IntListDomainType) }
  (IntList_tag((ICons(ivalue_1, itail_1): IntListDomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: IntListDomainType ::
  { (IntList_tag(t_2): int) } { (get_IntList_ivalue(t_2): int) } { (get_IntList_itail(t_2): IntListDomainType) }
  t_2 == (INil(): IntListDomainType) || t_2 == (ICons((get_IntList_ivalue(t_2): int), (get_IntList_itail(t_2): IntListDomainType)): IntListDomainType)
);

// ==================================================
// Translation of domain IntListWellFoundedOrder
// ==================================================

// The type for domain IntListWellFoundedOrder
type IntListWellFoundedOrderDomainType;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall itail_0: IntListDomainType, ivalue_1: int ::
  { (ICons(ivalue_1, itail_0): IntListDomainType) }
  (decreasing(itail_0, (ICons(ivalue_1, itail_0): IntListDomainType)): bool)
);

// Translation of anonymous domain axiom
axiom (forall v1: IntListDomainType, v2: IntListDomainType, v3: IntListDomainType ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall x: IntListDomainType ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain Pair
// ==================================================

// The type for domain Pair
type PairDomainType T V;

// Translation of domain function pair
function  pair_1<T, V>(fst_1: T, snd: V): PairDomainType T V;

// Translation of domain function get_Pair_fst
function  get_Pair_fst<T, V>(t_9: (PairDomainType T V)): T;

// Translation of domain function get_Pair_snd
function  get_Pair_snd<T, V>(t_9: (PairDomainType T V)): V;

// Translation of domain function Pair_tag
function  Pair_tag<T, V>(t_9: (PairDomainType T V)): int;

// Translation of anonymous domain axiom
axiom (forall <T, V> fst: T, snd_1: V ::
  { (pair_1(fst, snd_1): PairDomainType T V) }
  fst == (get_Pair_fst((pair_1(fst, snd_1): PairDomainType T V)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T, V> fst: T, snd_1: V ::
  { (pair_1(fst, snd_1): PairDomainType T V) }
  snd_1 == (get_Pair_snd((pair_1(fst, snd_1): PairDomainType T V)): V)
);

// Translation of anonymous domain axiom
axiom (forall <T, V> fst: T, snd_1: V ::
  { (pair_1(fst, snd_1): PairDomainType T V) }
  (Pair_tag((pair_1(fst, snd_1): PairDomainType T V)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T, V> t_2: (PairDomainType T V) ::
  { (Pair_tag(t_2): int) } { (get_Pair_fst(t_2): T) } { (get_Pair_snd(t_2): V) }
  t_2 == (pair_1((get_Pair_fst(t_2): T), (get_Pair_snd(t_2): V)): PairDomainType T V)
);

// ==================================================
// Translation of domain PairWellFoundedOrder
// ==================================================

// The type for domain PairWellFoundedOrder
type PairWellFoundedOrderDomainType T V;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall <T, V> v1: (PairDomainType T V), v2: (PairDomainType T V), v3: (PairDomainType T V) ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall <T, V> x: (PairDomainType T V) ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of domain DList
// ==================================================

// The type for domain DList
type DListDomainType V T;

// Translation of domain function DNil
function  DNil<V, T>(): DListDomainType V T;

// Translation of domain function DCons
function  DCons<V, T>(dvalue1: V, dvalue2: T, dtail: (DListDomainType V T)): DListDomainType V T;

// Translation of domain function get_DList_dvalue1
function  get_DList_dvalue1<V, T>(t_9: (DListDomainType V T)): V;

// Translation of domain function get_DList_dvalue2
function  get_DList_dvalue2<V, T>(t_9: (DListDomainType V T)): T;

// Translation of domain function get_DList_dtail
function  get_DList_dtail<V, T>(t_9: (DListDomainType V T)): DListDomainType V T;

// Translation of domain function DList_tag
function  DList_tag<V, T>(t_9: (DListDomainType V T)): int;

// Translation of anonymous domain axiom
axiom (forall <V, T> dvalue1_1: V, dvalue2_1: T, dtail_1: (DListDomainType V T) ::
  { (DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T) }
  dvalue1_1 == (get_DList_dvalue1((DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T)): V)
);

// Translation of anonymous domain axiom
axiom (forall <V, T> dvalue1_1: V, dvalue2_1: T, dtail_1: (DListDomainType V T) ::
  { (DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T) }
  dvalue2_1 == (get_DList_dvalue2((DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <V, T> dvalue1_1: V, dvalue2_1: T, dtail_1: (DListDomainType V T) ::
  { (DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T) }
  dtail_1 == (get_DList_dtail((DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T)): DListDomainType V T)
);

// Translation of anonymous domain axiom
axiom (forall <V, T>  ::
  
  (DList_tag((DNil(): DListDomainType V T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <V, T> dvalue1_1: V, dvalue2_1: T, dtail_1: (DListDomainType V T) ::
  { (DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T) }
  (DList_tag((DCons(dvalue1_1, dvalue2_1, dtail_1): DListDomainType V T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <V, T> t_2: (DListDomainType V T) ::
  { (DList_tag(t_2): int) } { (get_DList_dvalue1(t_2): V) } { (get_DList_dvalue2(t_2): T) } { (get_DList_dtail(t_2): DListDomainType V T) }
  t_2 == (DNil(): DListDomainType V T) || t_2 == (DCons((get_DList_dvalue1(t_2): V), (get_DList_dvalue2(t_2): T), (get_DList_dtail(t_2): DListDomainType V T)): DListDomainType V T)
);

// ==================================================
// Translation of domain DListWellFoundedOrder
// ==================================================

// The type for domain DListWellFoundedOrder
type DListWellFoundedOrderDomainType V T;

// Translation of anonymous domain axiom
axiom true;

// Translation of anonymous domain axiom
axiom (forall <V, T> dtail_0: (DListDomainType V T), dvalue1_1: V, dvalue2_1: T ::
  { (DCons(dvalue1_1, dvalue2_1, dtail_0): DListDomainType V T) }
  (decreasing(dtail_0, (DCons(dvalue1_1, dvalue2_1, dtail_0): DListDomainType V T)): bool)
);

// Translation of anonymous domain axiom
axiom (forall <V, T> v1: (DListDomainType V T), v2: (DListDomainType V T), v3: (DListDomainType V T) ::
  { (decreasing(v1, v2): bool), (decreasing(v2, v3): bool) }
  (decreasing(v1, v2): bool) && (decreasing(v2, v3): bool) ==> (decreasing(v1, v3): bool)
);

// Translation of anonymous domain axiom
axiom (forall <V, T> x: (DListDomainType V T) ::
  { (bounded(x): bool) }
  (bounded(x): bool)
);

// ==================================================
// Translation of function len
// ==================================================

// Uninterpreted function definitions
function  len_3(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
function  len'(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len_3(Heap, l_2) }
  len_3(Heap, l_2) == len'(Heap, l_2) && dummyFunction(len#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len'(Heap, l_2) }
  dummyFunction(len#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len_3(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> len_3(Heap, l_2) == (if (List_tag(l_2): int) == 1 then 0 else 1 + len'(Heap, (get_List_tail(l_2): ListDomainType ValDomainType)))
);

// Framing axioms
function  len#frame(frame: FrameType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len'(Heap, l_2) }
  state(Heap, Mask) ==> len'(Heap, l_2) == len#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 8 || len#trigger(EmptyFrame, l_2)) ==> len'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  len#trigger(frame: FrameType, l_2: (ListDomainType ValDomainType)): bool;

// State-independent trigger function
function  len#triggerStateless(l_2: (ListDomainType ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure len#definedness(l_2: (ListDomainType ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 8;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((List_tag(l): Int) == 1 ? 0 : 1 + len((get_List_tail(l): List[Val])))
      if ((List_tag(l_2): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume len#trigger(EmptyFrame, (get_List_tail(l_2): ListDomainType ValDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (List_tag(l_2): int) == 1 then 0 else 1 + len_3(Heap, (get_List_tail(l_2): ListDomainType ValDomainType)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of len might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@13.11--13.22) [222498]"}
      Result >= 0;
}

// ==================================================
// Translation of function len2
// ==================================================

// Uninterpreted function definitions
function  len2(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
function  len2'(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len2(Heap, l_2) }
  len2(Heap, l_2) == len2'(Heap, l_2) && dummyFunction(len2#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { len2'(Heap, l_2) }
  dummyFunction(len2#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len2(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> len2(Heap, l_2) == (if (List_tag(l_2): int) == 1 then 0 else (if (List_tag((get_List_tail(l_2): ListDomainType ValDomainType)): int) == 1 then 1 else 2 + len2'(Heap, (get_List_tail((get_List_tail(l_2): ListDomainType ValDomainType)): ListDomainType ValDomainType))))
);

// Framing axioms
function  len2#frame(frame: FrameType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len2'(Heap, l_2) }
  state(Heap, Mask) ==> len2'(Heap, l_2) == len2#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), len2'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || len2#trigger(EmptyFrame, l_2)) ==> len2'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  len2#trigger(frame: FrameType, l_2: (ListDomainType ValDomainType)): bool;

// State-independent trigger function
function  len2#triggerStateless(l_2: (ListDomainType ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure len2#definedness(l_2: (ListDomainType ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((List_tag(l): Int) == 1 ? 0 : ((List_tag((get_List_tail(l): List[Val])): Int) == 1 ? 1 : 2 + len2((get_List_tail((get_List_tail(l): List[Val])): List[Val]))))
      if ((List_tag(l_2): int) == 1) {
      } else {
        if ((List_tag((get_List_tail(l_2): ListDomainType ValDomainType)): int) == 1) {
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume len2#trigger(EmptyFrame, (get_List_tail((get_List_tail(l_2): ListDomainType ValDomainType)): ListDomainType ValDomainType));
          }
        }
      }
  
  // -- Translate function body
    Result := (if (List_tag(l_2): int) == 1 then 0 else (if (List_tag((get_List_tail(l_2): ListDomainType ValDomainType)): int) == 1 then 1 else 2 + len2(Heap, (get_List_tail((get_List_tail(l_2): ListDomainType ValDomainType)): ListDomainType ValDomainType))));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of len2 might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@20.11--20.22) [222499]"}
      Result >= 0;
}

// ==================================================
// Translation of function lenBad
// ==================================================

// Uninterpreted function definitions
function  lenBad(Heap: HeapType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType): int;
function  lenBad'(Heap: HeapType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType): int;
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType ::
  { lenBad(Heap, l_2, v_2) }
  lenBad(Heap, l_2, v_2) == lenBad'(Heap, l_2, v_2) && dummyFunction(lenBad#triggerStateless(l_2, v_2))
);
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType ::
  { lenBad'(Heap, l_2, v_2) }
  dummyFunction(lenBad#triggerStateless(l_2, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType ::
  { state(Heap, Mask), lenBad(Heap, l_2, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> lenBad(Heap, l_2, v_2) == lenBad'(Heap, (Cons(v_2, (Nil(): ListDomainType ValDomainType)): ListDomainType ValDomainType), v_2)
);

// Framing axioms
function  lenBad#frame(frame: FrameType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType ::
  { state(Heap, Mask), lenBad'(Heap, l_2, v_2) }
  state(Heap, Mask) ==> lenBad'(Heap, l_2, v_2) == lenBad#frame(EmptyFrame, l_2, v_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType ::
  { state(Heap, Mask), lenBad'(Heap, l_2, v_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 9 || lenBad#trigger(EmptyFrame, l_2, v_2)) ==> lenBad'(Heap, l_2, v_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  lenBad#trigger(frame: FrameType, l_2: (ListDomainType ValDomainType), v_2: ValDomainType): bool;

// State-independent trigger function
function  lenBad#triggerStateless(l_2: (ListDomainType ValDomainType), v_2: ValDomainType): int;

// Check contract well-formedness and postcondition
procedure lenBad#definedness(l_2: (ListDomainType ValDomainType), v_2: ValDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 9;
  
  // -- Check definedness of function body
    
    // -- Check definedness of lenBad((Cons(v, (Nil(): List[Val])): List[Val]), v)
      if (*) {
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume lenBad#trigger(EmptyFrame, (Cons(v_2, (Nil(): ListDomainType ValDomainType)): ListDomainType ValDomainType), v_2);
      }
  
  // -- Translate function body
    Result := lenBad(Heap, (Cons(v_2, (Nil(): ListDomainType ValDomainType)): ListDomainType ValDomainType), v_2);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of lenBad might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@27.10--27.21) [222500]"}
      Result >= 0;
}

// ==================================================
// Translation of function lenBad2
// ==================================================

// Uninterpreted function definitions
function  lenBad2(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
function  lenBad2'(Heap: HeapType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { lenBad2(Heap, l_2) }
  lenBad2(Heap, l_2) == lenBad2'(Heap, l_2) && dummyFunction(lenBad2#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (ListDomainType ValDomainType) ::
  { lenBad2'(Heap, l_2) }
  dummyFunction(lenBad2#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), lenBad2(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> lenBad2(Heap, l_2) == 1 + lenBad2'(Heap, l_2)
);

// Framing axioms
function  lenBad2#frame(frame: FrameType, l_2: (ListDomainType ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), lenBad2'(Heap, l_2) }
  state(Heap, Mask) ==> lenBad2'(Heap, l_2) == lenBad2#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (ListDomainType ValDomainType) ::
  { state(Heap, Mask), lenBad2'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 5 || lenBad2#trigger(EmptyFrame, l_2)) ==> lenBad2'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  lenBad2#trigger(frame: FrameType, l_2: (ListDomainType ValDomainType)): bool;

// State-independent trigger function
function  lenBad2#triggerStateless(l_2: (ListDomainType ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure lenBad2#definedness(l_2: (ListDomainType ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + lenBad2(l)
      if (*) {
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume lenBad2#trigger(EmptyFrame, l_2);
      }
  
  // -- Translate function body
    Result := 1 + lenBad2(Heap, l_2);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of lenBad2 might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@35.10--35.21) [222501]"}
      Result >= 0;
}

// ==================================================
// Translation of function ilen
// ==================================================

// Uninterpreted function definitions
function  ilen(Heap: HeapType, l_2: IntListDomainType): int;
function  ilen'(Heap: HeapType, l_2: IntListDomainType): int;
axiom (forall Heap: HeapType, l_2: IntListDomainType ::
  { ilen(Heap, l_2) }
  ilen(Heap, l_2) == ilen'(Heap, l_2) && dummyFunction(ilen#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: IntListDomainType ::
  { ilen'(Heap, l_2) }
  dummyFunction(ilen#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> ilen(Heap, l_2) == (if (IntList_tag(l_2): int) == 1 then 0 else 1 + ilen'(Heap, (get_IntList_itail(l_2): IntListDomainType)))
);

// Framing axioms
function  ilen#frame(frame: FrameType, l_2: IntListDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen'(Heap, l_2) }
  state(Heap, Mask) ==> ilen'(Heap, l_2) == ilen#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || ilen#trigger(EmptyFrame, l_2)) ==> ilen'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  ilen#trigger(frame: FrameType, l_2: IntListDomainType): bool;

// State-independent trigger function
function  ilen#triggerStateless(l_2: IntListDomainType): int;

// Check contract well-formedness and postcondition
procedure ilen#definedness(l_2: IntListDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (IntList_tag(l) == 1 ? 0 : 1 + ilen(get_IntList_itail(l)))
      if ((IntList_tag(l_2): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume ilen#trigger(EmptyFrame, (get_IntList_itail(l_2): IntListDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (IntList_tag(l_2): int) == 1 then 0 else 1 + ilen(Heap, (get_IntList_itail(l_2): IntListDomainType)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ilen might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@50.11--50.22) [222502]"}
      Result >= 0;
}

// ==================================================
// Translation of function ilen2
// ==================================================

// Uninterpreted function definitions
function  ilen2(Heap: HeapType, l_2: IntListDomainType): int;
function  ilen2'(Heap: HeapType, l_2: IntListDomainType): int;
axiom (forall Heap: HeapType, l_2: IntListDomainType ::
  { ilen2(Heap, l_2) }
  ilen2(Heap, l_2) == ilen2'(Heap, l_2) && dummyFunction(ilen2#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: IntListDomainType ::
  { ilen2'(Heap, l_2) }
  dummyFunction(ilen2#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen2(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> ilen2(Heap, l_2) == (if (IntList_tag(l_2): int) == 1 then 0 else (if (IntList_tag((get_IntList_itail(l_2): IntListDomainType)): int) == 1 then 1 else 2 + ilen2'(Heap, (get_IntList_itail((get_IntList_itail(l_2): IntListDomainType)): IntListDomainType))))
);

// Framing axioms
function  ilen2#frame(frame: FrameType, l_2: IntListDomainType): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen2'(Heap, l_2) }
  state(Heap, Mask) ==> ilen2'(Heap, l_2) == ilen2#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType ::
  { state(Heap, Mask), ilen2'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 7 || ilen2#trigger(EmptyFrame, l_2)) ==> ilen2'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  ilen2#trigger(frame: FrameType, l_2: IntListDomainType): bool;

// State-independent trigger function
function  ilen2#triggerStateless(l_2: IntListDomainType): int;

// Check contract well-formedness and postcondition
procedure ilen2#definedness(l_2: IntListDomainType) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 7;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (IntList_tag(l) == 1 ? 0 : (IntList_tag(get_IntList_itail(l)) == 1 ? 1 : 2 + ilen2(get_IntList_itail(get_IntList_itail(l)))))
      if ((IntList_tag(l_2): int) == 1) {
      } else {
        if ((IntList_tag((get_IntList_itail(l_2): IntListDomainType)): int) == 1) {
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume ilen2#trigger(EmptyFrame, (get_IntList_itail((get_IntList_itail(l_2): IntListDomainType)): IntListDomainType));
          }
        }
      }
  
  // -- Translate function body
    Result := (if (IntList_tag(l_2): int) == 1 then 0 else (if (IntList_tag((get_IntList_itail(l_2): IntListDomainType)): int) == 1 then 1 else 2 + ilen2(Heap, (get_IntList_itail((get_IntList_itail(l_2): IntListDomainType)): IntListDomainType))));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ilen2 might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@57.11--57.22) [222503]"}
      Result >= 0;
}

// ==================================================
// Translation of function ilenBad
// ==================================================

// Uninterpreted function definitions
function  ilenBad(Heap: HeapType, l_2: IntListDomainType, v_2: int): int;
function  ilenBad'(Heap: HeapType, l_2: IntListDomainType, v_2: int): int;
axiom (forall Heap: HeapType, l_2: IntListDomainType, v_2: int ::
  { ilenBad(Heap, l_2, v_2) }
  ilenBad(Heap, l_2, v_2) == ilenBad'(Heap, l_2, v_2) && dummyFunction(ilenBad#triggerStateless(l_2, v_2))
);
axiom (forall Heap: HeapType, l_2: IntListDomainType, v_2: int ::
  { ilenBad'(Heap, l_2, v_2) }
  dummyFunction(ilenBad#triggerStateless(l_2, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType, v_2: int ::
  { state(Heap, Mask), ilenBad(Heap, l_2, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ilenBad(Heap, l_2, v_2) == ilenBad'(Heap, (ICons(v_2, (INil(): IntListDomainType)): IntListDomainType), v_2)
);

// Framing axioms
function  ilenBad#frame(frame: FrameType, l_2: IntListDomainType, v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType, v_2: int ::
  { state(Heap, Mask), ilenBad'(Heap, l_2, v_2) }
  state(Heap, Mask) ==> ilenBad'(Heap, l_2, v_2) == ilenBad#frame(EmptyFrame, l_2, v_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: IntListDomainType, v_2: int ::
  { state(Heap, Mask), ilenBad'(Heap, l_2, v_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || ilenBad#trigger(EmptyFrame, l_2, v_2)) ==> ilenBad'(Heap, l_2, v_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  ilenBad#trigger(frame: FrameType, l_2: IntListDomainType, v_2: int): bool;

// State-independent trigger function
function  ilenBad#triggerStateless(l_2: IntListDomainType, v_2: int): int;

// Check contract well-formedness and postcondition
procedure ilenBad#definedness(l_2: IntListDomainType, v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ilenBad(ICons(v, INil()), v)
      if (*) {
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume ilenBad#trigger(EmptyFrame, (ICons(v_2, (INil(): IntListDomainType)): IntListDomainType), v_2);
      }
  
  // -- Translate function body
    Result := ilenBad(Heap, (ICons(v_2, (INil(): IntListDomainType)): IntListDomainType), v_2);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ilenBad might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@64.10--64.21) [222504]"}
      Result >= 0;
}

// ==================================================
// Translation of function stupidFunc
// ==================================================

// Uninterpreted function definitions
function  stupidFunc(Heap: HeapType, p_1: (PairDomainType int ValDomainType)): ValDomainType;
function  stupidFunc'(Heap: HeapType, p_1: (PairDomainType int ValDomainType)): ValDomainType;
axiom (forall Heap: HeapType, p_1: (PairDomainType int ValDomainType) ::
  { stupidFunc(Heap, p_1) }
  stupidFunc(Heap, p_1) == stupidFunc'(Heap, p_1) && dummyFunction(stupidFunc#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: (PairDomainType int ValDomainType) ::
  { stupidFunc'(Heap, p_1) }
  dummyFunction(stupidFunc#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: (PairDomainType int ValDomainType) ::
  { state(Heap, Mask), stupidFunc(Heap, p_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> stupidFunc(Heap, p_1) == stupidFunc'(Heap, p_1)
);

// Framing axioms
function  stupidFunc#frame(frame: FrameType, p_1: (PairDomainType int ValDomainType)): ValDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: (PairDomainType int ValDomainType) ::
  { state(Heap, Mask), stupidFunc'(Heap, p_1) }
  state(Heap, Mask) ==> stupidFunc'(Heap, p_1) == stupidFunc#frame(EmptyFrame, p_1)
);

// Trigger function (controlling recursive postconditions)
function  stupidFunc#trigger(frame: FrameType, p_1: (PairDomainType int ValDomainType)): bool;

// State-independent trigger function
function  stupidFunc#triggerStateless(p_1: (PairDomainType int ValDomainType)): ValDomainType;

// Check contract well-formedness and postcondition
procedure stupidFunc#definedness(p_1: (PairDomainType int ValDomainType)) returns (Result: ValDomainType)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Check definedness of function body
    
    // -- Check definedness of stupidFunc(p)
      if (*) {
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume stupidFunc#trigger(EmptyFrame, p_1);
      }
  
  // -- Translate function body
    Result := stupidFunc(Heap, p_1);
}

// ==================================================
// Translation of function dlen
// ==================================================

// Uninterpreted function definitions
function  dlen(Heap: HeapType, l_2: (DListDomainType int ValDomainType)): int;
function  dlen'(Heap: HeapType, l_2: (DListDomainType int ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (DListDomainType int ValDomainType) ::
  { dlen(Heap, l_2) }
  dlen(Heap, l_2) == dlen'(Heap, l_2) && dummyFunction(dlen#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (DListDomainType int ValDomainType) ::
  { dlen'(Heap, l_2) }
  dummyFunction(dlen#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlen(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> dlen(Heap, l_2) == (if (DList_tag(l_2): int) == 1 then 0 else 1 + dlen'(Heap, (get_DList_dtail(l_2): DListDomainType int ValDomainType)))
);

// Framing axioms
function  dlen#frame(frame: FrameType, l_2: (DListDomainType int ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlen'(Heap, l_2) }
  state(Heap, Mask) ==> dlen'(Heap, l_2) == dlen#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlen'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || dlen#trigger(EmptyFrame, l_2)) ==> dlen'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  dlen#trigger(frame: FrameType, l_2: (DListDomainType int ValDomainType)): bool;

// State-independent trigger function
function  dlen#triggerStateless(l_2: (DListDomainType int ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure dlen#definedness(l_2: (DListDomainType int ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((DList_tag(l): Int) == 1 ? 0 : 1 + dlen((get_DList_dtail(l): DList[Int, Val])))
      if ((DList_tag(l_2): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume dlen#trigger(EmptyFrame, (get_DList_dtail(l_2): DListDomainType int ValDomainType));
        }
      }
  
  // -- Translate function body
    Result := (if (DList_tag(l_2): int) == 1 then 0 else 1 + dlen(Heap, (get_DList_dtail(l_2): DListDomainType int ValDomainType)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of dlen might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@92.11--92.22) [222505]"}
      Result >= 0;
}

// ==================================================
// Translation of function dlenBad
// ==================================================

// Uninterpreted function definitions
function  dlenBad(Heap: HeapType, l_2: (DListDomainType int ValDomainType)): int;
function  dlenBad'(Heap: HeapType, l_2: (DListDomainType int ValDomainType)): int;
axiom (forall Heap: HeapType, l_2: (DListDomainType int ValDomainType) ::
  { dlenBad(Heap, l_2) }
  dlenBad(Heap, l_2) == dlenBad'(Heap, l_2) && dummyFunction(dlenBad#triggerStateless(l_2))
);
axiom (forall Heap: HeapType, l_2: (DListDomainType int ValDomainType) ::
  { dlenBad'(Heap, l_2) }
  dummyFunction(dlenBad#triggerStateless(l_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlenBad(Heap, l_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> dlenBad(Heap, l_2) == (if (DList_tag(l_2): int) == 1 then 0 else 1 + dlenBad'(Heap, l_2))
);

// Framing axioms
function  dlenBad#frame(frame: FrameType, l_2: (DListDomainType int ValDomainType)): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlenBad'(Heap, l_2) }
  state(Heap, Mask) ==> dlenBad'(Heap, l_2) == dlenBad#frame(EmptyFrame, l_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, l_2: (DListDomainType int ValDomainType) ::
  { state(Heap, Mask), dlenBad'(Heap, l_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || dlenBad#trigger(EmptyFrame, l_2)) ==> dlenBad'(Heap, l_2) >= 0
);

// Trigger function (controlling recursive postconditions)
function  dlenBad#trigger(frame: FrameType, l_2: (DListDomainType int ValDomainType)): bool;

// State-independent trigger function
function  dlenBad#triggerStateless(l_2: (DListDomainType int ValDomainType)): int;

// Check contract well-formedness and postcondition
procedure dlenBad#definedness(l_2: (DListDomainType int ValDomainType)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of ((DList_tag(l): Int) == 1 ? 0 : 1 + dlenBad(l))
      if ((DList_tag(l_2): int) == 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume dlenBad#trigger(EmptyFrame, l_2);
        }
      }
  
  // -- Translate function body
    Result := (if (DList_tag(l_2): int) == 1 then 0 else 1 + dlenBad(Heap, l_2));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of dlenBad might not hold. Assertion result >= 0 might not hold. (termination_1.vpr@99.11--99.22) [222506]"}
      Result >= 0;
}

// ==================================================
// Translation of method len_termination_proof
// ==================================================

procedure len_termination_proof(l_2: (ListDomainType ValDomainType)) returns ()
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
  
  // -- Translating statement: if ((List_tag(l): Int) == 1) -- <no position>
    if ((List_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: assert (decreasing((get_List_tail(l): List[Val]), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((get_List_tail(l): List[Val]), old(l)): Bool) might not hold. (<no position>) [222507]"}
          (decreasing((get_List_tail(l_2): ListDomainType ValDomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222508]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method len2_termination_proof
// ==================================================

procedure len2_termination_proof(l_2: (ListDomainType ValDomainType)) returns ()
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
  
  // -- Translating statement: if ((List_tag(l): Int) == 1) -- <no position>
    if ((List_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: if ((List_tag((get_List_tail(l): List[Val])): Int) == 1) -- <no position>
        if ((List_tag((get_List_tail(l_2): ListDomainType ValDomainType)): int) == 1) {
        } else {
          
          // -- Translating statement: assert (decreasing((get_List_tail((get_List_tail(l): List[Val])): List[Val]),
  //   old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing((get_List_tail((get_List_tail(l): List[Val])): List[Val]), old(l)): Bool) might not hold. (<no position>) [222509]"}
              (decreasing((get_List_tail((get_List_tail(l_2): ListDomainType ValDomainType)): ListDomainType ValDomainType), l_2): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222510]"}
              (bounded(l_2): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method lenBad_termination_proof
// ==================================================

procedure lenBad_termination_proof(l_2: (ListDomainType ValDomainType), v_2: ValDomainType) returns ()
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
  
  // -- Translating statement: assert (decreasing((Cons(v, (Nil(): List[Val])): List[Val]), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing((Cons(v, (Nil(): List[Val])): List[Val]), old(l)): Bool) might not hold. (<no position>) [222511]"}
      (decreasing((Cons(v_2, (Nil(): ListDomainType ValDomainType)): ListDomainType ValDomainType), l_2): bool);
    assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222512]"}
      (bounded(l_2): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method lenBad2_termination_proof
// ==================================================

procedure lenBad2_termination_proof(l_2: (ListDomainType ValDomainType)) returns ()
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
  
  // -- Translating statement: assert (decreasing(l, old(l)): Bool) && (bounded(old(l)): Bool) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(l, old(l)): Bool) might not hold. (<no position>) [222513]"}
      (decreasing(l_2, l_2): bool);
    assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222514]"}
      (bounded(l_2): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method ilen_termination_proof
// ==================================================

procedure ilen_termination_proof(l_2: IntListDomainType) returns ()
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
  
  // -- Translating statement: if (IntList_tag(l) == 1) -- <no position>
    if ((IntList_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: assert (decreasing(get_IntList_itail(l), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(get_IntList_itail(l), old(l)): Bool) might not hold. (<no position>) [222515]"}
          (decreasing((get_IntList_itail(l_2): IntListDomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222516]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method ilen2_termination_proof
// ==================================================

procedure ilen2_termination_proof(l_2: IntListDomainType) returns ()
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
  
  // -- Translating statement: if (IntList_tag(l) == 1) -- <no position>
    if ((IntList_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: if (IntList_tag(get_IntList_itail(l)) == 1) -- <no position>
        if ((IntList_tag((get_IntList_itail(l_2): IntListDomainType)): int) == 1) {
        } else {
          
          // -- Translating statement: assert (decreasing(get_IntList_itail(get_IntList_itail(l)), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(get_IntList_itail(get_IntList_itail(l)), old(l)): Bool) might not hold. (<no position>) [222517]"}
              (decreasing((get_IntList_itail((get_IntList_itail(l_2): IntListDomainType)): IntListDomainType), l_2): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222518]"}
              (bounded(l_2): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method ilenBad_termination_proof
// ==================================================

procedure ilenBad_termination_proof(l_2: IntListDomainType, v_2: int) returns ()
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
  
  // -- Translating statement: assert (decreasing(ICons(v, INil()), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(ICons(v, INil()), old(l)): Bool) might not hold. (<no position>) [222519]"}
      (decreasing((ICons(v_2, (INil(): IntListDomainType)): IntListDomainType), l_2): bool);
    assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222520]"}
      (bounded(l_2): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method stupidFunc_termination_proof
// ==================================================

procedure stupidFunc_termination_proof(p_1: (PairDomainType int ValDomainType)) returns ()
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
  
  // -- Translating statement: assert (decreasing(p, old(p)): Bool) && (bounded(old(p)): Bool) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (decreasing(p, old(p)): Bool) might not hold. (<no position>) [222521]"}
      (decreasing(p_1, p_1): bool);
    assert {:msg "  Assert might fail. Assertion (bounded(old(p)): Bool) might not hold. (<no position>) [222522]"}
      (bounded(p_1): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method dlen_termination_proof
// ==================================================

procedure dlen_termination_proof(l_2: (DListDomainType int ValDomainType)) returns ()
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
  
  // -- Translating statement: if ((DList_tag(l): Int) == 1) -- <no position>
    if ((DList_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: assert (decreasing((get_DList_dtail(l): DList[Int, Val]), old(l)): Bool) &&
  //   (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing((get_DList_dtail(l): DList[Int, Val]), old(l)): Bool) might not hold. (<no position>) [222523]"}
          (decreasing((get_DList_dtail(l_2): DListDomainType int ValDomainType), l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222524]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method dlenBad_termination_proof
// ==================================================

procedure dlenBad_termination_proof(l_2: (DListDomainType int ValDomainType)) returns ()
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
  
  // -- Translating statement: if ((DList_tag(l): Int) == 1) -- <no position>
    if ((DList_tag(l_2): int) == 1) {
    } else {
      
      // -- Translating statement: assert (decreasing(l, old(l)): Bool) && (bounded(old(l)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(l, old(l)): Bool) might not hold. (<no position>) [222525]"}
          (decreasing(l_2, l_2): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(l)): Bool) might not hold. (<no position>) [222526]"}
          (bounded(l_2): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}