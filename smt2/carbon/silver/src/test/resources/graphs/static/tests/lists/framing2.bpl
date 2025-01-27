// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:08:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/framing2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/framing2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_26: Ref, f_35: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_26, f_35] }
  Heap[o_26, $allocated] ==> Heap[Heap[o_26, f_35], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_36: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_36] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_36) ==> Heap[o_27, f_36] == ExhaleHeap[o_27, f_36]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_12, f_36] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_36] ==> Heap[o2_12, f_36] == ExhaleHeap[o2_12, f_36]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_12, f_36] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_36] ==> Heap[o2_12, f_36] == ExhaleHeap[o2_12, f_36]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_26: Ref, f_37: (Field A B), v: B ::
  { Heap[o_26, f_37:=v] }
  succHeap(Heap, Heap[o_26, f_37:=v])
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

function  neverTriggered1(n_3: Ref): bool;
function  neverTriggered2(n$0_4: Ref): bool;
function  neverTriggered3(n$0_5: Ref): bool;
function  neverTriggered4(n_4: Ref): bool;
function  neverTriggered5(n_5: Ref): bool;
function  neverTriggered6(n_6: Ref): bool;
function  neverTriggered7(n_7: Ref): bool;
function  neverTriggered8(n_3: Ref): bool;
function  neverTriggered9(n$1_3: Ref): bool;
function  neverTriggered10(n_4: Ref): bool;
function  neverTriggered11(n_5: Ref): bool;
function  neverTriggered12(n_6: Ref): bool;
function  neverTriggered13(n_7: Ref): bool;
function  neverTriggered14(n_1: Ref): bool;
function  neverTriggered15(n$1_1: Ref): bool;
function  neverTriggered16(n_2: Ref): bool;
function  neverTriggered17(n_3: Ref): bool;
function  neverTriggered18(n_4: Ref): bool;
function  neverTriggered19(n_5: Ref): bool;
function  neverTriggered20(n_6: Ref): bool;
function  neverTriggered21(n_7: Ref): bool;
function  neverTriggered22(n_1: Ref): bool;
function  neverTriggered23(n$1_1: Ref): bool;
function  neverTriggered24(n_1: Ref): bool;
function  neverTriggered25(n$1_1: Ref): bool;
function  neverTriggered26(n$3_1: Ref): bool;
function  neverTriggered27(n_2: Ref): bool;
function  neverTriggered28(n_3: Ref): bool;
function  neverTriggered29(n_4: Ref): bool;
function  neverTriggered30(n_5: Ref): bool;
function  neverTriggered31(n_6: Ref): bool;
function  neverTriggered32(n$3_2: Ref): bool;
function  neverTriggered33(n_7: Ref): bool;
function  neverTriggered34(n_8: Ref): bool;
function  neverTriggered35(n$1_2: Ref): bool;
function  neverTriggered36(n_1: Ref): bool;
function  neverTriggered37(n$1_1: Ref): bool;
function  neverTriggered38(n_2: Ref): bool;
function  neverTriggered39(n_3: Ref): bool;
function  neverTriggered40(n$3_1: Ref): bool;
function  neverTriggered41(n_4: Ref): bool;
function  neverTriggered42(n_5: Ref): bool;
function  neverTriggered43(n$3_2: Ref): bool;
function  neverTriggered44(n_6: Ref): bool;
function  neverTriggered45(n$1_2: Ref): bool;
function  neverTriggered46(n_1: Ref): bool;
function  neverTriggered47(n$1_1: Ref): bool;
function  neverTriggered48(n_2: Ref): bool;
function  neverTriggered49(n_3: Ref): bool;
function  neverTriggered50(n_4: Ref): bool;
function  neverTriggered51(n_5: Ref): bool;
function  neverTriggered52(n$5_1: Ref): bool;
function  neverTriggered53(n$0_6: Ref): bool;
function  neverTriggered54(n_6: Ref): bool;
function  neverTriggered55(n$5_2: Ref): bool;
function  neverTriggered56(n_7: Ref): bool;
function  neverTriggered57(n$1_4: Ref): bool;
function  neverTriggered58(n_8: Ref): bool;
function  neverTriggered59(n_9: Ref): bool;
function  neverTriggered60(n_10_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
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
function  invRecv20(recv: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(recv: Ref): Ref;
function  invRecv25(recv: Ref): Ref;
function  invRecv26(recv: Ref): Ref;
function  invRecv27(recv: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(recv: Ref): Ref;
function  invRecv30(recv: Ref): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(recv: Ref): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(recv: Ref): Ref;
function  invRecv37(recv: Ref): Ref;
function  invRecv38(recv: Ref): Ref;
function  invRecv39(recv: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
function  invRecv41(recv: Ref): Ref;
function  invRecv42(recv: Ref): Ref;
function  invRecv43(recv: Ref): Ref;
function  invRecv44(recv: Ref): Ref;
function  invRecv45(recv: Ref): Ref;
function  invRecv46(recv: Ref): Ref;
function  invRecv47(recv: Ref): Ref;
function  invRecv48(recv: Ref): Ref;
function  invRecv49(recv: Ref): Ref;
function  invRecv50(recv: Ref): Ref;
function  invRecv51(recv: Ref): Ref;
function  invRecv52(recv: Ref): Ref;
function  invRecv53(recv: Ref): Ref;
function  invRecv54(recv: Ref): Ref;
function  invRecv55(recv: Ref): Ref;
function  invRecv56(recv: Ref): Ref;
function  invRecv57(recv: Ref): Ref;
function  invRecv58(recv: Ref): Ref;
function  invRecv59(recv: Ref): Ref;
function  invRecv60(recv: Ref): Ref;
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
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(recv: Ref): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(recv: Ref): bool;
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(recv: Ref): bool;
function  qpRange34(recv: Ref): bool;
function  qpRange35(recv: Ref): bool;
function  qpRange36(recv: Ref): bool;
function  qpRange37(recv: Ref): bool;
function  qpRange38(recv: Ref): bool;
function  qpRange39(recv: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(recv: Ref): bool;
function  qpRange42(recv: Ref): bool;
function  qpRange43(recv: Ref): bool;
function  qpRange44(recv: Ref): bool;
function  qpRange45(recv: Ref): bool;
function  qpRange46(recv: Ref): bool;
function  qpRange47(recv: Ref): bool;
function  qpRange48(recv: Ref): bool;
function  qpRange49(recv: Ref): bool;
function  qpRange50(recv: Ref): bool;
function  qpRange51(recv: Ref): bool;
function  qpRange52(recv: Ref): bool;
function  qpRange53(recv: Ref): bool;
function  qpRange54(recv: Ref): bool;
function  qpRange55(recv: Ref): bool;
function  qpRange56(recv: Ref): bool;
function  qpRange57(recv: Ref): bool;
function  qpRange58(recv: Ref): bool;
function  qpRange59(recv: Ref): bool;
function  qpRange60(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 3: $$
// - height 2: apply_TCFraming
// - height 1: is_global_sroot
// - height 0: acyclic_list_segment
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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of domain Edge
// ==================================================

// The type for domain Edge
type EdgeDomainType;

// Translation of domain function edge_pred
function  edge_pred(e: EdgeDomainType): Ref;

// Translation of domain function edge_succ
function  edge_succ(e: EdgeDomainType): Ref;

// Translation of domain function create_edge
function  create_edge(p_3: Ref, s: Ref): EdgeDomainType;

// Translation of domain function create_edge_
function  create_edge_(p_3: Ref, s: Ref): EdgeDomainType;

// Translation of domain axiom edge_injectivity
axiom (forall p_1: Ref, s_1: Ref ::
  { (create_edge(p_1, s_1): EdgeDomainType) }
  (edge_pred((create_edge(p_1, s_1): EdgeDomainType)): Ref) == p_1 && (edge_succ((create_edge(p_1, s_1): EdgeDomainType)): Ref) == s_1
);

// ==================================================
// Translation of domain TrClo
// ==================================================

// The type for domain TrClo
type TrCloDomainType;

// Translation of domain function exists_path
function  exists_path(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function exists_path_
function  exists_path_(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function exists_spath
function  exists_spath(EG: (Set EdgeDomainType), from: (Set Ref), to: Ref): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M: (Set Ref)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_37: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function edge
function  edge(EG: (Set EdgeDomainType), p_3: Ref, s: Ref): bool;

// Translation of domain function edge_
function  edge_(EG: (Set EdgeDomainType), p_3: Ref, s: Ref): bool;

// Translation of domain axiom ax_EdgeSynonim
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_1: Ref ::
  { (edge(EG_1, p_1, s_1): bool) }
  (edge(EG_1, p_1, s_1): bool) == (edge_(EG_1, p_1, s_1): bool)
);

// Translation of domain axiom ax_Edge
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_1: Ref ::
  { EG_1[(create_edge(p_1, s_1): EdgeDomainType)] } { (edge(EG_1, p_1, s_1): bool) }
  (edge_(EG_1, p_1, s_1): bool) == EG_1[(create_edge(p_1, s_1): EdgeDomainType)]
);

// Translation of domain axiom ax_NoExit
axiom (forall EG_1: (Set EdgeDomainType), U_1: (Set Ref), M_1: (Set Ref) ::
  { (apply_noExit(EG_1, U_1, M_1): bool) }
  (apply_noExit(EG_1, U_1, M_1): bool) ==> (forall u_1: Ref, v_2: Ref ::
    { (edge(EG_1, u_1, v_2): bool) } { M_1[u_1], M_1[v_2] }
    M_1[u_1] && (U_1[v_2] && !M_1[v_2]) ==> !(edge(EG_1, u_1, v_2): bool)
  ) ==> (forall u_1_1: Ref, v_1_1: Ref ::
    { (exists_path(EG_1, u_1_1, v_1_1): bool) } { M_1[u_1_1], M_1[v_1_1] }
    M_1[u_1_1] && (U_1[v_1_1] && !M_1[v_1_1]) ==> !(exists_path(EG_1, u_1_1, v_1_1): bool)
  )
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) }
  (exists_path(EG_1, start_1, end_1): bool) == (exists_path_(EG_1, start_1, end_1): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) } { (edge(EG_1, start_1, end_1): bool) }
  (exists_path_(EG_1, start_1, end_1): bool) == (start_1 == end_1 || (exists w_2: Ref ::
    { (edge(EG_1, start_1, w_2): bool) } { (exists_path_(EG_1, w_2, end_1): bool) }
    (edge(EG_1, start_1, w_2): bool) && (exists_path_(EG_1, w_2, end_1): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_1: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_1, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_1, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_1, v_2): bool)
);

// Translation of domain axiom ax_AcyclicGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (acyclic_graph(EG_1): bool) }
  (acyclic_graph(EG_1): bool) == (forall v1: Ref, v2: Ref ::
    { (edge(EG_1, v1, v2): bool) } { (exists_path(EG_1, v2, v1): bool) }
    !(edge(EG_1, v1, v2): bool) || !(exists_path(EG_1, v2, v1): bool)
  )
);

// Translation of domain axiom ax_UnsharedGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (unshared_graph(EG_1): bool) }
  (unshared_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v1, v_2): bool), (edge(EG_1, v2, v_2): bool) }
    (edge(EG_1, v1, v_2): bool) && (edge(EG_1, v2, v_2): bool) ==> v1 == v2
  )
);

// Translation of domain axiom ax_FuncGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (func_graph(EG_1): bool) }
  (func_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v_2, v1): bool), (edge(EG_1, v_2, v2): bool) }
    (edge(EG_1, v_2, v1): bool) && (edge(EG_1, v_2, v2): bool) ==> v1 == v2
  )
);

// Translation of domain axiom ax_ExistsSetPath
axiom (forall EG_1: (Set EdgeDomainType), from_1: (Set Ref), to_1: Ref ::
  { (exists_spath(EG_1, from_1, to_1): bool) }
  (exists_spath(EG_1, from_1, to_1): bool) == (exists f_38: Ref ::
    { from_1[f_38] } { (exists_path(EG_1, f_38, to_1): bool) }
    from_1[f_38] && (exists_path(EG_1, f_38, to_1): bool)
  )
);

// ==================================================
// Translation of domain FramingWisdoms
// ==================================================

// The type for domain FramingWisdoms
type FramingWisdomsDomainType;

// Translation of domain axiom ax_SetIntersection
axiom (forall g0: (Set Ref), g1: (Set Ref) ::
  { Set#Intersection(g0, g1) }
  Set#Equal(Set#Intersection(g0, g1), (Set#Empty(): Set Ref)) ==> (forall r_1: Ref ::
    { g0[r_1], g1[r_1] }
    g0[r_1] && g1[r_1] ==> (Set#Empty(): Set Ref)[r_1]
  )
);

// Translation of domain axiom ax_EdgeReverse
axiom (forall g_1: (Set EdgeDomainType), e_1: EdgeDomainType ::
  { g_1[e_1] }
  g_1[e_1] ==> (create_edge((edge_pred(e_1): Ref), (edge_succ(e_1): Ref)): EdgeDomainType) == e_1
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function $$
// ==================================================

// Uninterpreted function definitions
function  $$(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
function  $$'(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$(Heap, refs) }
  $$(Heap, refs) == $$'(Heap, refs) && dummyFunction($$#triggerStateless(refs))
);
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$'(Heap, refs) }
  dummyFunction($$#triggerStateless(refs))
);

// Framing axioms
function  $$#frame(frame: FrameType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(FrameFragment($$#condqp1(Heap, refs)), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1: Ref, s_1: Ref ::
    { (create_edge(p_1, s_1): EdgeDomainType) }
    (refs[p_1] && (refs[s_1] && Heap[p_1, next] == s_1)) == $$'(Heap, refs)[(create_edge(p_1, s_1): EdgeDomainType)]
  )
);

// Trigger function (controlling recursive postconditions)
function  $$#trigger(frame: FrameType, refs: (Set Ref)): bool;

// State-independent trigger function
function  $$#triggerStateless(refs: (Set Ref)): Set EdgeDomainType;

// Check contract well-formedness and postcondition
procedure $$#definedness(refs: (Set Ref)) returns (Result: (Set EdgeDomainType))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var p_4: Ref;
  var s_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@271.14--271.69) [5933]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < 1 / 2 ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (framing2.vpr@271.14--271.69) [5934]"}
      (forall n_3: Ref ::
      { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
      refs[n_3] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && 1 / 2 > NoPerm ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> invRecv1(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_4]) {
          if (refs[s_2]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (framing2.vpr@273.13--277.44) [5935]"}
              HasDirectPerm(Mask, p_4, next);
          }
        }
        assume false;
      }
    assume (forall p_2_1: Ref, s_2_1: Ref ::
      { (create_edge(p_2_1, s_2_1): EdgeDomainType) }
      (refs[p_2_1] && (refs[s_2_1] && Heap[p_2_1, next] == s_2_1)) == Result[(create_edge(p_2_1, s_2_1): EdgeDomainType)]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function is_global_sroot
// ==================================================

// Uninterpreted function definitions
function  is_global_sroot(Heap: HeapType, g_1: (Set Ref), roots: (Set Ref)): bool;
function  is_global_sroot'(Heap: HeapType, g_1: (Set Ref), roots: (Set Ref)): bool;
axiom (forall Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot(Heap, g_1, roots) }
  is_global_sroot(Heap, g_1, roots) == is_global_sroot'(Heap, g_1, roots) && dummyFunction(is_global_sroot#triggerStateless(g_1, roots))
);
axiom (forall Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot'(Heap, g_1, roots) }
  dummyFunction(is_global_sroot#triggerStateless(g_1, roots))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), roots: (Set Ref) ::
  { state(Heap, Mask), is_global_sroot(Heap, g_1, roots) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (!g_1[null] && (forall n$1: Ref ::
    { g_1[Heap[n$1, next]] } { g_1[n$1], Heap[n$1, next] }
    g_1[n$1] && Heap[n$1, next] != null ==> g_1[Heap[n$1, next]]
  )) && Set#Subset(roots, g_1) ==> is_global_sroot(Heap, g_1, roots) == (forall n: Ref ::
    { g_1[n] } { (exists_spath($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), roots, n): bool) }
    g_1[n] ==> (exists_spath($$(Heap, g_1), roots, n): bool)
  )
);

// Framing axioms
function  is_global_sroot#frame(frame: FrameType, g_1: (Set Ref), roots: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), roots: (Set Ref) ::
  { state(Heap, Mask), is_global_sroot'(Heap, g_1, roots) }
  state(Heap, Mask) ==> is_global_sroot'(Heap, g_1, roots) == is_global_sroot#frame(FrameFragment(is_global_sroot#condqp2(Heap, g_1, roots)), g_1, roots)
);
// ==================================================
// Function used for framing of quantified permission (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write)) in function is_global_sroot
// ==================================================

function  is_global_sroot#condqp2(Heap: HeapType, g_1_1: (Set Ref), roots_1_1: (Set Ref)): int;
function  sk_is_global_sroot#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_is_global_sroot#condqp2(is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots))] && NoPerm < FullPerm <==> g_1[sk_is_global_sroot#condqp2(is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots))] && NoPerm < FullPerm) && (g_1[sk_is_global_sroot#condqp2(is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots))] && NoPerm < FullPerm ==> Heap2Heap[sk_is_global_sroot#condqp2(is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots)), next] == Heap1Heap[sk_is_global_sroot#condqp2(is_global_sroot#condqp2(Heap2Heap, g_1, roots), is_global_sroot#condqp2(Heap1Heap, g_1, roots)), next]) ==> is_global_sroot#condqp2(Heap2Heap, g_1, roots) == is_global_sroot#condqp2(Heap1Heap, g_1, roots)
);

// Trigger function (controlling recursive postconditions)
function  is_global_sroot#trigger(frame: FrameType, g_1: (Set Ref), roots: (Set Ref)): bool;

// State-independent trigger function
function  is_global_sroot#triggerStateless(g_1: (Set Ref), roots: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure is_global_sroot#definedness(g_1: (Set Ref), roots: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_8: Ref;
  var n_16: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume !g_1[null];
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.next might not be injective. (framing2.vpr@305.14--305.22) [5936]"}
      (forall n$0_4: Ref, n$0_4_1: Ref ::
      
      (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] && NoPerm < FullPerm ==> qpRange2(n$0_4) && invRecv2(n$0_4) == n$0_4
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] ==> n$0_4 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.next in g) } { (n$1 in g), n$1.next } (n$1 in g) && n$1.next != null ==> (n$1.next in g))
      if (*) {
        if (g_1[n$1_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing2.vpr@305.14--305.22) [5937]"}
            HasDirectPerm(Mask, n$1_8, next);
        }
        if (g_1[n$1_8] && Heap[n$1_8, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing2.vpr@305.14--305.22) [5938]"}
            HasDirectPerm(Mask, n$1_8, next);
        }
        assume false;
      }
    assume (forall n$1_3: Ref ::
      { g_1[Heap[n$1_3, next]] } { g_1[n$1_3], Heap[n$1_3, next] }
      g_1[n$1_3] && Heap[n$1_3, next] != null ==> g_1[Heap[n$1_3, next]]
    );
    assume state(Heap, Mask);
    assume Set#Subset(roots, g_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_spath($$(g), roots, n) } (n in g) ==> exists_spath($$(g), roots, n))
      if (*) {
        if (g_1[n_16]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@308.45--308.50) [5939]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] && dummyFunction(Heap[n$0_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing2.vpr@308.45--308.50) [5940]"}
                (forall n$0_5: Ref, n$0_5_1: Ref ::
                { neverTriggered3(n$0_5), neverTriggered3(n$0_5_1) }
                (((n$0_5 != n$0_5_1 && g_1[n$0_5]) && g_1[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing2.vpr@308.45--308.50) [5941]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] ==> 1 / 2 > NoPerm ==> Mask[n$0_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] && NoPerm < 1 / 2 ==> qpRange3(n$0_5) && invRecv3(n$0_5) == n$0_5
              );
              assume (forall o_9: Ref ::
                { invRecv3(o_9) }
                g_1[invRecv3(o_9)] && (NoPerm < 1 / 2 && qpRange3(o_9)) ==> invRecv3(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall n_2: Ref ::
      { g_1[n_2] } { (exists_spath($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), roots, n_2): bool) }
      g_1[n_2] ==> (exists_spath($$(Heap, g_1), roots, n_2): bool)
    );
}

// ==================================================
// Translation of function acyclic_list_segment
// ==================================================

// Uninterpreted function definitions
function  acyclic_list_segment(Heap: HeapType, g_1: (Set Ref)): bool;
function  acyclic_list_segment'(Heap: HeapType, g_1: (Set Ref)): bool;
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment(Heap, g_1) }
  acyclic_list_segment(Heap, g_1) == acyclic_list_segment'(Heap, g_1) && dummyFunction(acyclic_list_segment#triggerStateless(g_1))
);
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment'(Heap, g_1) }
  dummyFunction(acyclic_list_segment#triggerStateless(g_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref) ::
  { state(Heap, Mask), acyclic_list_segment(Heap, g_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> !g_1[null] && (forall n$0_14: Ref ::
    { g_1[Heap[n$0_14, next]] } { g_1[n$0_14], Heap[n$0_14, next] }
    g_1[n$0_14] && Heap[n$0_14, next] != null ==> g_1[Heap[n$0_14, next]]
  ) ==> acyclic_list_segment(Heap, g_1) == ((acyclic_graph($$(Heap, g_1)): bool) && ((func_graph($$(Heap, g_1)): bool) && (unshared_graph($$(Heap, g_1)): bool)))
);

// Framing axioms
function  acyclic_list_segment#frame(frame: FrameType, g_1: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref) ::
  { state(Heap, Mask), acyclic_list_segment'(Heap, g_1) }
  state(Heap, Mask) ==> acyclic_list_segment'(Heap, g_1) == acyclic_list_segment#frame(FrameFragment(acyclic_list_segment#condqp3(Heap, g_1)), g_1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write)) in function acyclic_list_segment
// ==================================================

function  acyclic_list_segment#condqp3(Heap: HeapType, g_1_1: (Set Ref)): int;
function  sk_acyclic_list_segment#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_acyclic_list_segment#condqp3(acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1))] && NoPerm < FullPerm <==> g_1[sk_acyclic_list_segment#condqp3(acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1))] && NoPerm < FullPerm) && (g_1[sk_acyclic_list_segment#condqp3(acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1))] && NoPerm < FullPerm ==> Heap2Heap[sk_acyclic_list_segment#condqp3(acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1)), next] == Heap1Heap[sk_acyclic_list_segment#condqp3(acyclic_list_segment#condqp3(Heap2Heap, g_1), acyclic_list_segment#condqp3(Heap1Heap, g_1)), next]) ==> acyclic_list_segment#condqp3(Heap2Heap, g_1) == acyclic_list_segment#condqp3(Heap1Heap, g_1)
);

// Trigger function (controlling recursive postconditions)
function  acyclic_list_segment#trigger(frame: FrameType, g_1: (Set Ref)): bool;

// State-independent trigger function
function  acyclic_list_segment#triggerStateless(g_1: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure acyclic_list_segment#definedness(g_1: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_15: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@312.14--312.22) [5942]"}
      (forall n_4: Ref, n_4_1: Ref ::
      
      (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
    );
    
    // -- Define Inverse Function
      assume (forall n_4: Ref ::
        { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
        g_1[n_4] && NoPerm < FullPerm ==> qpRange4(n_4) && invRecv4(n_4) == n_4
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (g_1[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_4: Ref ::
        { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
        g_1[n_4] ==> n_4 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_15]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@312.14--312.22) [5943]"}
            HasDirectPerm(Mask, n$0_15, next);
        }
        if (g_1[n$0_15] && Heap[n$0_15, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@312.14--312.22) [5944]"}
            HasDirectPerm(Mask, n$0_15, next);
        }
        assume false;
      }
    assume (forall n$0_3: Ref ::
      { g_1[Heap[n$0_3, next]] } { g_1[n$0_3], Heap[n$0_3, next] }
      g_1[n$0_3] && Heap[n$0_3, next] != null ==> g_1[Heap[n$0_3, next]]
    );
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@314.20--314.25) [5945]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && dummyFunction(Heap[n_5, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@314.20--314.25) [5946]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered5(n_5), neverTriggered5(n_5_1) }
            (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@314.20--314.25) [5947]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && NoPerm < 1 / 2 ==> qpRange5(n_5) && invRecv5(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            g_1[invRecv5(o_9)] && (NoPerm < 1 / 2 && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if ((acyclic_graph($$(Heap, g_1)): bool)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@315.17--315.22) [5948]"}
              (forall n_6: Ref ::
              { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
              g_1[n_6] && dummyFunction(Heap[n_6, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@315.17--315.22) [5949]"}
              (forall n_6: Ref, n_6_1: Ref ::
              { neverTriggered6(n_6), neverTriggered6(n_6_1) }
              (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@315.17--315.22) [5950]"}
              (forall n_6: Ref ::
              { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
              g_1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_6: Ref ::
              { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
              g_1[n_6] && NoPerm < 1 / 2 ==> qpRange6(n_6) && invRecv6(n_6) == n_6
            );
            assume (forall o_9: Ref ::
              { invRecv6(o_9) }
              g_1[invRecv6(o_9)] && (NoPerm < 1 / 2 && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if ((func_graph($$(Heap, g_1)): bool)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@316.21--316.26) [5951]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && dummyFunction(Heap[n_7, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@316.21--316.26) [5952]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered7(n_7), neverTriggered7(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@316.21--316.26) [5953]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange7(n_7) && invRecv7(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv7(o_9) }
                g_1[invRecv7(o_9)] && (NoPerm < 1 / 2 && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
      }
  
  // -- Translate function body
    Result := (acyclic_graph($$(Heap, g_1)): bool) && ((func_graph($$(Heap, g_1)): bool) && (unshared_graph($$(Heap, g_1)): bool));
}

// ==================================================
// Translation of function apply_TCFraming
// ==================================================

// Uninterpreted function definitions
function  apply_TCFraming(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
function  apply_TCFraming'(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming(Heap, g0, g1) }
  apply_TCFraming(Heap, g0, g1) == apply_TCFraming'(Heap, g0, g1) && dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming'(Heap, g0, g1) }
  dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);

// Framing axioms
function  apply_TCFraming#frame(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp4(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp4(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp4(Heap2Heap, g0, g1) == apply_TCFraming#condqp4(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp5(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp5(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp5(Heap2Heap, g0, g1) == apply_TCFraming#condqp5(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1))), g0, g1)) ==> ((!g0[null] && (forall n$0_14: Ref ::
    { g0[Heap[n$0_14, next]] } { g0[n$0_14], Heap[n$0_14, next] }
    g0[n$0_14] && Heap[n$0_14, next] != null ==> g0[Heap[n$0_14, next]]
  )) && (!g1[null] && (forall n$2_6: Ref ::
    { g1[Heap[n$2_6, next]] } { g1[n$2_6], Heap[n$2_6, next] }
    g1[n$2_6] && Heap[n$2_6, next] != null ==> g1[Heap[n$2_6, next]]
  ))) && Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1))), g0, g1)) ==> ((!g0[null] && (forall n$0_14: Ref ::
    { g0[Heap[n$0_14, next]] } { g0[n$0_14], Heap[n$0_14, next] }
    g0[n$0_14] && Heap[n$0_14, next] != null ==> g0[Heap[n$0_14, next]]
  )) && (!g1[null] && (forall n$2_6: Ref ::
    { g1[Heap[n$2_6, next]] } { g1[n$2_6], Heap[n$2_6, next] }
    g1[n$2_6] && Heap[n$2_6, next] != null ==> g1[Heap[n$2_6, next]]
  ))) && Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1: Ref, v_2: Ref ::
    { g0[u_1], g0[v_2] } { g0[u_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_1, v_2): bool) } { g0[u_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_2): bool) } { g0[v_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_1, v_2): bool) } { g0[v_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_1, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_2): bool) }
    g0[u_1] && g0[v_2] ==> (exists_path($$(Heap, g0), u_1, v_2): bool) == (exists_path($$(Heap, Set#Union(g0, g1)), u_1, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1))), g0, g1)) ==> ((!g0[null] && (forall n$0_14: Ref ::
    { g0[Heap[n$0_14, next]] } { g0[n$0_14], Heap[n$0_14, next] }
    g0[n$0_14] && Heap[n$0_14, next] != null ==> g0[Heap[n$0_14, next]]
  )) && (!g1[null] && (forall n$2_6: Ref ::
    { g1[Heap[n$2_6, next]] } { g1[n$2_6], Heap[n$2_6, next] }
    g1[n$2_6] && Heap[n$2_6, next] != null ==> g1[Heap[n$2_6, next]]
  ))) && Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1_1: Ref, v_1_1: Ref ::
    { g1[u_1_1], g1[v_1_1] } { g1[u_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_1_1, v_1_1): bool) } { g1[u_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1_1, v_1_1): bool) } { g1[v_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_1_1, v_1_1): bool) } { g1[v_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_1_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1_1, v_1_1): bool) }
    g1[u_1_1] && g1[v_1_1] ==> (exists_path($$(Heap, g1), u_1_1, v_1_1): bool) == (exists_path($$(Heap, Set#Union(g1, g0)), u_1_1, v_1_1): bool)
  )
);

// Trigger function (controlling recursive postconditions)
function  apply_TCFraming#trigger(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;

// State-independent trigger function
function  apply_TCFraming#triggerStateless(g0: (Set Ref), g1: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure apply_TCFraming#definedness(g0: (Set Ref), g1: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_16: Ref;
  var n$2_9: Ref;
  var u_5: Ref;
  var v_5: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var u_6: Ref;
  var v_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@359.14--359.36) [5954]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        g0[n_3] && NoPerm < FullPerm ==> qpRange8(n_3) && invRecv8(n_3) == n_3
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (g0[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        g0[n_3] ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@359.14--359.36) [5955]"}
            HasDirectPerm(Mask, n$0_16, next);
        }
        if (g0[n$0_16] && Heap[n$0_16, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@359.14--359.36) [5956]"}
            HasDirectPerm(Mask, n$0_16, next);
        }
        assume false;
      }
    assume (forall n$0_2: Ref ::
      { g0[Heap[n$0_2, next]] } { g0[n$0_2], Heap[n$0_2, next] }
      g0[n$0_2] && Heap[n$0_2, next] != null ==> g0[Heap[n$0_2, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@359.14--359.36) [5957]"}
      (forall n$1_3: Ref, n$1_3_1: Ref ::
      
      (((n$1_3 != n$1_3_1 && g1[n$1_3]) && g1[n$1_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_3 != n$1_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_3: Ref ::
        { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
        g1[n$1_3] && NoPerm < FullPerm ==> qpRange9(n$1_3) && invRecv9(n$1_3) == n$1_3
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (g1[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_3: Ref ::
        { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
        g1[n$1_3] ==> n$1_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@359.14--359.36) [5958]"}
            HasDirectPerm(Mask, n$2_9, next);
        }
        if (g1[n$2_9] && Heap[n$2_9, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@359.14--359.36) [5959]"}
            HasDirectPerm(Mask, n$2_9, next);
        }
        assume false;
      }
    assume (forall n$2_2: Ref ::
      { g1[Heap[n$2_2, next]] } { g1[n$2_2], Heap[n$2_2, next] }
      g1[n$2_2] && Heap[n$2_2, next] != null ==> g1[Heap[n$2_2, next]]
    );
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), exists_path($$(g0), u, v) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g0), exists_path($$(g0), u, v) } { (v in g0), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && (v in g0) ==> exists_path($$(g0), u, v) == exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_5] && g0[v_5]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@369.73--369.79) [5960]"}
                (forall n_4: Ref ::
                { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
                g0[n_4] && dummyFunction(Heap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@369.73--369.79) [5961]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered10(n_4), neverTriggered10(n_4_1) }
                (((n_4 != n_4_1 && g0[n_4]) && g0[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@369.73--369.79) [5962]"}
                (forall n_4: Ref ::
                { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
                g0[n_4] ==> 1 / 2 > NoPerm ==> Mask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
                g0[n_4] && NoPerm < 1 / 2 ==> qpRange10(n_4) && invRecv10(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv10(o_9) }
                g0[invRecv10(o_9)] && (NoPerm < 1 / 2 && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@369.102--369.117) [5963]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                Set#Union(g0, g1)[n_5] && dummyFunction(Heap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@369.102--369.117) [5964]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered11(n_5), neverTriggered11(n_5_1) }
                (((n_5 != n_5_1 && Set#Union(g0, g1)[n_5]) && Set#Union(g0, g1)[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@369.102--369.117) [5965]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                Set#Union(g0, g1)[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                Set#Union(g0, g1)[n_5] && NoPerm < 1 / 2 ==> qpRange11(n_5) && invRecv11(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv11(o_9) }
                Set#Union(g0, g1)[invRecv11(o_9)] && (NoPerm < 1 / 2 && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_3_1: Ref, v_3_1: Ref ::
      { g0[u_3_1], g0[v_3_1] } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_3_1, v_3_1): bool) } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
      g0[u_3_1] && g0[v_3_1] ==> (exists_path($$(Heap, g0), u_3_1, v_3_1): bool) == (exists_path($$(Heap, Set#Union(g0, g1)), u_3_1, v_3_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g1), (v in g1) } { (u in g1), exists_path($$(g1), u, v) } { (u in g1), exists_path($$((g1 union g0)), u, v) } { (v in g1), exists_path($$(g1), u, v) } { (v in g1), exists_path($$((g1 union g0)), u, v) } { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && (v in g1) ==> exists_path($$(g1), u, v) == exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_6] && g1[v_6]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@370.73--370.79) [5966]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g1[n_6] && dummyFunction(Heap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@370.73--370.79) [5967]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered12(n_6), neverTriggered12(n_6_1) }
                (((n_6 != n_6_1 && g1[n_6]) && g1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@370.73--370.79) [5968]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g1[n_6] && NoPerm < 1 / 2 ==> qpRange12(n_6) && invRecv12(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv12(o_9) }
                g1[invRecv12(o_9)] && (NoPerm < 1 / 2 && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@370.102--370.117) [5969]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                Set#Union(g1, g0)[n_7] && dummyFunction(Heap[n_7, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@370.102--370.117) [5970]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered13(n_7), neverTriggered13(n_7_1) }
                (((n_7 != n_7_1 && Set#Union(g1, g0)[n_7]) && Set#Union(g1, g0)[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@370.102--370.117) [5971]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                Set#Union(g1, g0)[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                Set#Union(g1, g0)[n_7] && NoPerm < 1 / 2 ==> qpRange13(n_7) && invRecv13(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv13(o_9) }
                Set#Union(g1, g0)[invRecv13(o_9)] && (NoPerm < 1 / 2 && qpRange13(o_9)) ==> invRecv13(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_5_2: Ref, v_5_2: Ref ::
      { g1[u_5_2], g1[v_5_2] } { g1[u_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_5_2, v_5_2): bool) } { g1[u_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_5_2, v_5_2): bool) } { g1[v_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_5_2, v_5_2): bool) } { g1[v_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_5_2, v_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_5_2, v_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_5_2, v_5_2): bool) }
      g1[u_5_2] && g1[v_5_2] ==> (exists_path($$(Heap, g1), u_5_2, v_5_2): bool) == (exists_path($$(Heap, Set#Union(g1, g0)), u_5_2, v_5_2): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_graph
// ==================================================

procedure test_graph(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_17: Ref;
  var n$2_10: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var e_2: EdgeDomainType;
  var e_1_1: EdgeDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@338.14--338.36) [5972]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange14(n_1) && invRecv14(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (g0[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> invRecv14(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@338.14--338.36) [5973]"}
            HasDirectPerm(Mask, n$0_17, next);
        }
        if (g0[n$0_17] && Heap[n$0_17, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@338.14--338.36) [5974]"}
            HasDirectPerm(Mask, n$0_17, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@338.14--338.36) [5975]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange15(n$1_1) && invRecv15(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (g1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> invRecv15(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@338.14--338.36) [5976]"}
            HasDirectPerm(Mask, n$2_10, next);
        }
        if (g1[n$2_10] && Heap[n$2_10, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@338.14--338.36) [5977]"}
            HasDirectPerm(Mask, n$2_10, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g1[Heap[n$2_1, next]] } { g1[n$2_1], Heap[n$2_1, next] }
      g1[n$2_1] && Heap[n$2_1, next] != null ==> g1[Heap[n$2_1, next]]
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall e: Edge ::
  //     { (e in $$(g0)) }
  //     { (e in ($$(g0) union $$(g1))) }
  //     (e in $$(g0)) ==> (e in ($$(g0) union $$(g1)))) -- framing2.vpr@342.5--342.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall e: Edge :: { (e in $$(g0)) } { (e in ($$(g0) union $$(g1))) } (e in $$(g0)) ==> (e in ($$(g0) union $$(g1))))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@342.34--342.40) [5978]"}
              (forall n_2: Ref ::
              { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
              g0[n_2] && dummyFunction(ExhaleWellDef0Heap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@342.34--342.40) [5979]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered16(n_2), neverTriggered16(n_2_1) }
              (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@342.34--342.40) [5980]"}
              (forall n_2: Ref ::
              { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
              g0[n_2] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
              g0[n_2] && NoPerm < 1 / 2 ==> qpRange16(n_2) && invRecv16(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv16(o_9) }
              g0[invRecv16(o_9)] && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if ($$(Heap, g0)[e_2]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@342.51--342.57) [5981]"}
                (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] && dummyFunction(ExhaleWellDef0Heap[n_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@342.51--342.57) [5982]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered17(n_3), neverTriggered17(n_3_1) }
                (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@342.51--342.57) [5983]"}
                (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] && NoPerm < 1 / 2 ==> qpRange17(n_3) && invRecv17(n_3) == n_3
              );
              assume (forall o_9: Ref ::
                { invRecv17(o_9) }
                g0[invRecv17(o_9)] && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@342.64--342.70) [5984]"}
                (forall n_4: Ref ::
                { ExhaleWellDef0Heap[n_4, next] } { QPMask[n_4, next] } { ExhaleWellDef0Heap[n_4, next] }
                g1[n_4] && dummyFunction(ExhaleWellDef0Heap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@342.64--342.70) [5985]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered18(n_4), neverTriggered18(n_4_1) }
                (((n_4 != n_4_1 && g1[n_4]) && g1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@342.64--342.70) [5986]"}
                (forall n_4: Ref ::
                { ExhaleWellDef0Heap[n_4, next] } { QPMask[n_4, next] } { ExhaleWellDef0Heap[n_4, next] }
                g1[n_4] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { ExhaleWellDef0Heap[n_4, next] } { QPMask[n_4, next] } { ExhaleWellDef0Heap[n_4, next] }
                g1[n_4] && NoPerm < 1 / 2 ==> qpRange18(n_4) && invRecv18(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv18(o_9) }
                g1[invRecv18(o_9)] && (NoPerm < 1 / 2 && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if ($$(Heap, g0)[e_1_1]) {
        assert {:msg "  Assert might fail. Assertion (e in ($$(g0) union $$(g1))) might not hold. (framing2.vpr@342.12--342.71) [5987]"}
          Set#Union($$(Heap, g0), $$(Heap, g1))[e_1_1];
      }
      assume false;
    }
    assume (forall e_2_1: EdgeDomainType ::
      { $$#frame(FrameFragment($$#condqp1(Heap, g0)), g0)[e_2_1] } { Set#Union($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), $$#frame(FrameFragment($$#condqp1(Heap, g1)), g1))[e_2_1] }
      $$(Heap, g0)[e_2_1] ==> Set#Union($$(Heap, g0), $$(Heap, g1))[e_2_1]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ($$(g0) union $$(g1)) == $$((g0 union g1)) -- framing2.vpr@343.5--343.50
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of ($$(g0) union $$(g1)) == $$((g0 union g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@343.12--343.18) [5988]"}
            (forall n_5: Ref ::
            { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
            g0[n_5] && dummyFunction(ExhaleWellDef0Heap[n_5, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@343.12--343.18) [5989]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered19(n_5), neverTriggered19(n_5_1) }
            (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@343.12--343.18) [5990]"}
            (forall n_5: Ref ::
            { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
            g0[n_5] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
            g0[n_5] && NoPerm < 1 / 2 ==> qpRange19(n_5) && invRecv19(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv19(o_9) }
            g0[invRecv19(o_9)] && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@343.25--343.31) [5991]"}
            (forall n_6: Ref ::
            { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
            g1[n_6] && dummyFunction(ExhaleWellDef0Heap[n_6, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@343.25--343.31) [5992]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered20(n_6), neverTriggered20(n_6_1) }
            (((n_6 != n_6_1 && g1[n_6]) && g1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@343.25--343.31) [5993]"}
            (forall n_6: Ref ::
            { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
            g1[n_6] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
            g1[n_6] && NoPerm < 1 / 2 ==> qpRange20(n_6) && invRecv20(n_6) == n_6
          );
          assume (forall o_9: Ref ::
            { invRecv20(o_9) }
            g1[invRecv20(o_9)] && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> invRecv20(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@343.35--343.50) [5994]"}
            (forall n_7: Ref ::
            { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && dummyFunction(ExhaleWellDef0Heap[n_7, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@343.35--343.50) [5995]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered21(n_7), neverTriggered21(n_7_1) }
            (((n_7 != n_7_1 && Set#Union(g0, g1)[n_7]) && Set#Union(g0, g1)[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@343.35--343.50) [5996]"}
            (forall n_7: Ref ::
            { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && NoPerm < 1 / 2 ==> qpRange21(n_7) && invRecv21(n_7) == n_7
          );
          assume (forall o_9: Ref ::
            { invRecv21(o_9) }
            Set#Union(g0, g1)[invRecv21(o_9)] && (NoPerm < 1 / 2 && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion ($$(g0) union $$(g1)) == $$((g0 union g1)) might not hold. (framing2.vpr@343.12--343.50) [5997]"}
      Set#Equal(Set#Union($$(Heap, g0), $$(Heap, g1)), $$(Heap, Set#Union(g0, g1)));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_intersection
// ==================================================

procedure test_intersection(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_18: Ref;
  var n$2_11: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_1_1: Ref;
  var r$0_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@349.14--349.36) [5998]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange22(n_1) && invRecv22(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (g0[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> invRecv22(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> invRecv22(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@349.14--349.36) [5999]"}
            HasDirectPerm(Mask, n$0_18, next);
        }
        if (g0[n$0_18] && Heap[n$0_18, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@349.14--349.36) [6000]"}
            HasDirectPerm(Mask, n$0_18, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@349.14--349.36) [6001]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange23(n$1_1) && invRecv23(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        (g1[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> invRecv23(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_11]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@349.14--349.36) [6002]"}
            HasDirectPerm(Mask, n$2_11, next);
        }
        if (g1[n$2_11] && Heap[n$2_11, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@349.14--349.36) [6003]"}
            HasDirectPerm(Mask, n$2_11, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g1[Heap[n$2_1, next]] } { g1[n$2_1], Heap[n$2_1, next] }
      g1[n$2_1] && Heap[n$2_1, next] != null ==> g1[Heap[n$2_1, next]]
    );
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g0, g1), (Set#Empty(): Set Ref));
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in g0), (r in g1) }
  //     (r in g0) ==> !((r in g1))) &&
  //   (forall r$0: Ref ::
  //     { (r$0 in g0), (r$0 in g1) }
  //     (r$0 in g1) ==> !((r$0 in g0))) -- framing2.vpr@355.5--355.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    if (*) {
      if (g0[r_1_1]) {
        assert {:msg "  Assert might fail. Assertion !((r in g1)) might not hold. (framing2.vpr@355.12--355.32) [6004]"}
          !g1[r_1_1];
      }
      assume false;
    }
    assume (forall r_2_1: Ref ::
      { g0[r_2_1], g1[r_2_1] }
      g0[r_2_1] ==> !g1[r_2_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    if (*) {
      if (g1[r$0_1]) {
        assert {:msg "  Assert might fail. Assertion !((r$0 in g0)) might not hold. (framing2.vpr@355.12--355.32) [6005]"}
          !g0[r$0_1];
      }
      assume false;
    }
    assume (forall r$0_2_1: Ref ::
      { g0[r$0_2_1], g1[r$0_2_1] }
      g1[r$0_2_1] ==> !g0[r$0_2_1]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_disjoint
// ==================================================

procedure test_disjoint(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_19: Ref;
  var n$2_12: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4: Ref;
  var u_3: Ref;
  var v_4: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var u_8: Ref;
  var v_8: Ref;
  var u_9: Ref;
  var v_9: Ref;
  var n$0_2: Ref;
  var n$2_2: Ref;
  var n$4_2: Ref;
  var u_6_1: Ref;
  var v_6_1: Ref;
  var u_8_2: Ref;
  var v_8_2: Ref;
  var u_10: Ref;
  var v_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@373.14--373.36) [6006]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange24(n_1) && invRecv24(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        (g0[invRecv24(o_9)] && NoPerm < FullPerm) && qpRange24(o_9) ==> invRecv24(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv24(o_9)] && NoPerm < FullPerm) && qpRange24(o_9) ==> (NoPerm < FullPerm ==> invRecv24(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv24(o_9)] && NoPerm < FullPerm) && qpRange24(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@373.14--373.36) [6007]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        if (g0[n$0_19] && Heap[n$0_19, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@373.14--373.36) [6008]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@373.14--373.36) [6009]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange25(n$1_1) && invRecv25(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        (g1[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> invRecv25(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@373.14--373.36) [6010]"}
            HasDirectPerm(Mask, n$2_12, next);
        }
        if (g1[n$2_12] && Heap[n$2_12, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@373.14--373.36) [6011]"}
            HasDirectPerm(Mask, n$2_12, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g1[Heap[n$2_1, next]] } { g1[n$2_1], Heap[n$2_1, next] }
      g1[n$2_1] && Heap[n$2_1, next] != null ==> g1[Heap[n$2_1, next]]
    );
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g0, g1), (Set#Empty(): Set Ref));
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
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in (g0 union g1)) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing2.vpr@378.13--378.31) [6012]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && Set#Union(g0, g1)[n$3_1]) && Set#Union(g0, g1)[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        Set#Union(g0, g1)[n$3_1] && NoPerm < FullPerm ==> qpRange26(n$3_1) && invRecv26(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        (Set#Union(g0, g1)[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> invRecv26(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        Set#Union(g0, g1)[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Set#Union(g0, g1)[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> (NoPerm < FullPerm ==> invRecv26(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in (g0 union g1)) } { (n$4 in (g0 union g1)), n$4.next } (n$4 in (g0 union g1)) && n$4.next != null ==> (n$4.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing2.vpr@378.13--378.31) [6013]"}
            HasDirectPerm(PostMask, n$4, next);
        }
        if (Set#Union(g0, g1)[n$4] && PostHeap[n$4, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing2.vpr@378.13--378.31) [6014]"}
            HasDirectPerm(PostMask, n$4, next);
        }
        assume false;
      }
    assume (forall n$4_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$4_1, next]] } { Set#Union(g0, g1)[n$4_1], PostHeap[n$4_1, next] }
      Set#Union(g0, g1)[n$4_1] && PostHeap[n$4_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$4_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g1) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g1), exists_path($$((g0 union g1)), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && (v in g1) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_3] && g1[v_4]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@379.71--379.86) [6015]"}
                (forall n_2: Ref ::
                { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
                Set#Union(g0, g1)[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@379.71--379.86) [6016]"}
                (forall n_2: Ref, n_2_1: Ref ::
                { neverTriggered27(n_2), neverTriggered27(n_2_1) }
                (((n_2 != n_2_1 && Set#Union(g0, g1)[n_2]) && Set#Union(g0, g1)[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@379.71--379.86) [6017]"}
                (forall n_2: Ref ::
                { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
                Set#Union(g0, g1)[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_2: Ref ::
                { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
                Set#Union(g0, g1)[n_2] && NoPerm < 1 / 2 ==> qpRange27(n_2) && invRecv27(n_2) == n_2
              );
              assume (forall o_9: Ref ::
                { invRecv27(o_9) }
                Set#Union(g0, g1)[invRecv27(o_9)] && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_1_1: Ref, v_1_1: Ref ::
      { g0[u_1_1], g1[v_1_1] } { g0[u_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1_1, v_1_1): bool) } { g1[v_1_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1_1, v_1_1): bool) }
      g0[u_1_1] && g1[v_1_1] ==> !(exists_path($$(PostHeap, Set#Union(g0, g1)), u_1_1, v_1_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), exists_path($$(g0), u, v) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g0), exists_path($$(g0), u, v) } { (v in g0), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_8]) {
          if (g0[v_8]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := PostMask;
              ExhaleWellDef0Heap := PostHeap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@380.69--380.75) [6018]"}
                  (forall n_3: Ref ::
                  { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
                  g0[n_3] && dummyFunction(PostHeap[n_3, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@380.69--380.75) [6019]"}
                  (forall n_3: Ref, n_3_1: Ref ::
                  { neverTriggered28(n_3), neverTriggered28(n_3_1) }
                  (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@380.69--380.75) [6020]"}
                  (forall n_3: Ref ::
                  { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
                  g0[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_3: Ref ::
                  { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
                  g0[n_3] && NoPerm < 1 / 2 ==> qpRange28(n_3) && invRecv28(n_3) == n_3
                );
                assume (forall o_9: Ref ::
                  { invRecv28(o_9) }
                  g0[invRecv28(o_9)] && (NoPerm < 1 / 2 && qpRange28(o_9)) ==> invRecv28(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g0[u_8] && (g0[v_8] && (exists_path($$(PostHeap, g0), u_8, v_8): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@380.97--380.112) [6021]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                Set#Union(g0, g1)[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@380.97--380.112) [6022]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered29(n_4), neverTriggered29(n_4_1) }
                (((n_4 != n_4_1 && Set#Union(g0, g1)[n_4]) && Set#Union(g0, g1)[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@380.97--380.112) [6023]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                Set#Union(g0, g1)[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                Set#Union(g0, g1)[n_4] && NoPerm < 1 / 2 ==> qpRange29(n_4) && invRecv29(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv29(o_9) }
                Set#Union(g0, g1)[invRecv29(o_9)] && (NoPerm < 1 / 2 && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_3_1: Ref, v_3_1: Ref ::
      { g0[u_3_1], g0[v_3_1] } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
      g0[u_3_1] && (g0[v_3_1] && (exists_path($$(PostHeap, g0), u_3_1, v_3_1): bool)) ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), u_3_1, v_3_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g1), (v in g1) } { (u in g1), exists_path($$(g0), u, v) } { (u in g1), exists_path($$((g0 union g1)), u, v) } { (v in g1), exists_path($$(g0), u, v) } { (v in g1), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g1[u_9]) {
          if (g1[v_9]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := PostMask;
              ExhaleWellDef0Heap := PostHeap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@381.69--381.75) [6024]"}
                  (forall n_5: Ref ::
                  { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                  g0[n_5] && dummyFunction(PostHeap[n_5, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@381.69--381.75) [6025]"}
                  (forall n_5: Ref, n_5_1: Ref ::
                  { neverTriggered30(n_5), neverTriggered30(n_5_1) }
                  (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@381.69--381.75) [6026]"}
                  (forall n_5: Ref ::
                  { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                  g0[n_5] ==> 1 / 2 > NoPerm ==> PostMask[n_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_5: Ref ::
                  { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                  g0[n_5] && NoPerm < 1 / 2 ==> qpRange30(n_5) && invRecv30(n_5) == n_5
                );
                assume (forall o_9: Ref ::
                  { invRecv30(o_9) }
                  g0[invRecv30(o_9)] && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> invRecv30(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g1[u_9] && (g1[v_9] && (exists_path($$(PostHeap, g0), u_9, v_9): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@381.97--381.112) [6027]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                Set#Union(g0, g1)[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@381.97--381.112) [6028]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered31(n_6), neverTriggered31(n_6_1) }
                (((n_6 != n_6_1 && Set#Union(g0, g1)[n_6]) && Set#Union(g0, g1)[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@381.97--381.112) [6029]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                Set#Union(g0, g1)[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                Set#Union(g0, g1)[n_6] && NoPerm < 1 / 2 ==> qpRange31(n_6) && invRecv31(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv31(o_9) }
                Set#Union(g0, g1)[invRecv31(o_9)] && (NoPerm < 1 / 2 && qpRange31(o_9)) ==> invRecv31(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_5_2: Ref, v_5_2: Ref ::
      { g1[u_5_2], g1[v_5_2] } { g1[u_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_5_2, v_5_2): bool) } { g1[u_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5_2, v_5_2): bool) } { g1[v_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_5_2, v_5_2): bool) } { g1[v_5_2], (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5_2, v_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g0)), g0), u_5_2, v_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5_2, v_5_2): bool) }
      g1[u_5_2] && (g1[v_5_2] && (exists_path($$(PostHeap, g0), u_5_2, v_5_2): bool)) ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), u_5_2, v_5_2): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_noExit($$((g0 union g1)), (g0 union g1), g0) -- framing2.vpr@386.12--386.58
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_noExit($$((g0 union g1)), (g0 union g1), g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@386.25--386.40) [6030]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && dummyFunction(Heap[n_7, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@386.25--386.40) [6031]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered33(n_7), neverTriggered33(n_7_1) }
            (((n_7 != n_7_1 && Set#Union(g0, g1)[n_7]) && Set#Union(g0, g1)[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@386.25--386.40) [6032]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && NoPerm < 1 / 2 ==> qpRange33(n_7) && invRecv33(n_7) == n_7
          );
          assume (forall o_9: Ref ::
            { invRecv33(o_9) }
            Set#Union(g0, g1)[invRecv33(o_9)] && (NoPerm < 1 / 2 && qpRange33(o_9)) ==> invRecv33(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_noExit($$(Heap, Set#Union(g0, g1)), Set#Union(g0, g1), g0): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing2.vpr@389.12--389.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g0)) might not hold. (framing2.vpr@389.12--389.34) [6033]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing2.vpr@389.12--389.34) [6034]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered34(n_8), neverTriggered34(n_8_1) }
            (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing2.vpr@389.12--389.34) [6035]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g0[n_8] ==> FullPerm > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g0[n_8] && NoPerm < FullPerm ==> qpRange34(n_8) && invRecv34(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv34(o_9) }
            g0[invRecv34(o_9)] && (NoPerm < FullPerm && qpRange34(o_9)) ==> invRecv34(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_2] && Heap[n$0_2, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$0.next in g0) might not hold. (framing2.vpr@389.12--389.34) [6036]"}
              g0[Heap[n$0_2, next]];
          }
          assume false;
        }
        assume (forall n$0_3_1_1: Ref ::
          { g0[Heap[n$0_3_1_1, next]] } { g0[n$0_3_1_1], Heap[n$0_3_1_1, next] }
          g0[n$0_3_1_1] && Heap[n$0_3_1_1, next] != null ==> g0[Heap[n$0_3_1_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g1)) might not hold. (framing2.vpr@389.12--389.34) [6037]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$1 is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n$1.next might not be injective. (framing2.vpr@389.12--389.34) [6038]"}
            (forall n$1_2: Ref, n$1_2_1: Ref ::
            { neverTriggered35(n$1_2), neverTriggered35(n$1_2_1) }
            (((n$1_2 != n$1_2_1 && g1[n$1_2]) && g1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n$1.next (framing2.vpr@389.12--389.34) [6039]"}
            (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g1[n$1_2] ==> FullPerm > NoPerm ==> Mask[n$1_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$1
          assume (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g1[n$1_2] && NoPerm < FullPerm ==> qpRange35(n$1_2) && invRecv35(n$1_2) == n$1_2
          );
          assume (forall o_9: Ref ::
            { invRecv35(o_9) }
            g1[invRecv35(o_9)] && (NoPerm < FullPerm && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
          );
        if (*) {
          if (g1[n$2_2] && Heap[n$2_2, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$2.next in g1) might not hold. (framing2.vpr@389.12--389.34) [6040]"}
              g1[Heap[n$2_2, next]];
          }
          assume false;
        }
        assume (forall n$2_3_1: Ref ::
          { g1[Heap[n$2_3_1, next]] } { g1[n$2_3_1], Heap[n$2_3_1, next] }
          g1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g1[Heap[n$2_3_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing2.vpr@389.12--389.34) [6041]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of test_disjoint might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing2.vpr@378.13--378.31) [6042]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing2.vpr@378.13--378.31) [6043]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered32(n$3_2), neverTriggered32(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && Set#Union(g0, g1)[n$3_2]) && Set#Union(g0, g1)[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_disjoint might not hold. There might be insufficient permission to access n$3.next (framing2.vpr@378.13--378.31) [6044]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] && NoPerm < FullPerm ==> qpRange32(n$3_2) && invRecv32(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv32(o_9) }
        Set#Union(g0, g1)[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9)) ==> invRecv32(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (Set#Union(g0, g1)[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9)) ==> invRecv32(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(Set#Union(g0, g1)[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$4_2] && Heap[n$4_2, next] != null) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion (n$4.next in (g0 union g1)) might not hold. (framing2.vpr@378.13--378.31) [6045]"}
          Set#Union(g0, g1)[Heap[n$4_2, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$4_3_1, next]] } { Set#Union(g0, g1)[n$4_3_1], Heap[n$4_3_1, next] }
      Set#Union(g0, g1)[n$4_3_1] && Heap[n$4_3_1, next] != null ==> Set#Union(g0, g1)[Heap[n$4_3_1, next]]
    );
    if (*) {
      if (g0[u_6_1] && g1[v_6_1]) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion !exists_path($$((g0 union g1)), u, v) might not hold. (framing2.vpr@379.13--379.91) [6046]"}
          !(exists_path($$(Heap, Set#Union(g0, g1)), u_6_1, v_6_1): bool);
      }
      assume false;
    }
    assume (forall u_7_1: Ref, v_7_1: Ref ::
      { g0[u_7_1], g1[v_7_1] } { g0[u_7_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) } { g1[v_7_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) }
      g0[u_7_1] && g1[v_7_1] ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_7_1, v_7_1): bool)
    );
    if (*) {
      if (g0[u_8_2] && (g0[v_8_2] && (exists_path($$(Heap, g0), u_8_2, v_8_2): bool))) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion exists_path($$((g0 union g1)), u, v) might not hold. (framing2.vpr@380.13--380.117) [6047]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), u_8_2, v_8_2): bool);
      }
      assume false;
    }
    assume (forall u_9_1: Ref, v_9_1: Ref ::
      { g0[u_9_1], g0[v_9_1] } { g0[u_9_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_9_1, v_9_1): bool) } { g0[u_9_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) } { g0[v_9_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_9_1, v_9_1): bool) } { g0[v_9_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_9_1, v_9_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) }
      g0[u_9_1] && (g0[v_9_1] && (exists_path($$(Heap, g0), u_9_1, v_9_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_9_1, v_9_1): bool)
    );
    if (*) {
      if (g1[u_10] && (g1[v_10] && (exists_path($$(Heap, g0), u_10, v_10): bool))) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion exists_path($$((g0 union g1)), u, v) might not hold. (framing2.vpr@381.13--381.117) [6048]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), u_10, v_10): bool);
      }
      assume false;
    }
    assume (forall u_11_1: Ref, v_11_1: Ref ::
      { g1[u_11_1], g1[v_11_1] } { g1[u_11_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_11_1, v_11_1): bool) } { g1[u_11_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) } { g1[v_11_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_11_1, v_11_1): bool) } { g1[v_11_1], (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_11_1, v_11_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) }
      g1[u_11_1] && (g1[v_11_1] && (exists_path($$(Heap, g0), u_11_1, v_11_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_11_1, v_11_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_framing_sets
// ==================================================

procedure test_framing_sets(g0: (Set Ref), g1: (Set Ref), x0: Ref, y0: Ref, x1: Ref, y1: Ref) returns (x: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_20: Ref;
  var n$2_13: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_3: Ref;
  var n$0_2: Ref;
  var n$2_2: Ref;
  var n$4_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[y0, $allocated];
    assume Heap[x1, $allocated];
    assume Heap[y1, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@395.14--395.23) [6049]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange36(n_1) && invRecv36(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv36(o_9) }
        (g0[invRecv36(o_9)] && NoPerm < FullPerm) && qpRange36(o_9) ==> invRecv36(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv36(o_9)] && NoPerm < FullPerm) && qpRange36(o_9) ==> (NoPerm < FullPerm ==> invRecv36(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv36(o_9)] && NoPerm < FullPerm) && qpRange36(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_20]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@395.14--395.23) [6050]"}
            HasDirectPerm(Mask, n$0_20, next);
        }
        if (g0[n$0_20] && Heap[n$0_20, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@395.14--395.23) [6051]"}
            HasDirectPerm(Mask, n$0_20, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@396.14--396.23) [6052]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange37(n$1_1) && invRecv37(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv37(o_9) }
        (g1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9) ==> invRecv37(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9) ==> (NoPerm < FullPerm ==> invRecv37(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@396.14--396.23) [6053]"}
            HasDirectPerm(Mask, n$2_13, next);
        }
        if (g1[n$2_13] && Heap[n$2_13, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@396.14--396.23) [6054]"}
            HasDirectPerm(Mask, n$2_13, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g1[Heap[n$2_1, next]] } { g1[n$2_1], Heap[n$2_1, next] }
      g1[n$2_1] && Heap[n$2_1, next] != null ==> g1[Heap[n$2_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume g0[y0];
    assume state(Heap, Mask);
    assume g1[x1];
    assume g1[y1];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { g0[r_1_1], g1[r_1_1] }
      g0[r_1_1] ==> !g1[r_1_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$0_1: Ref ::
      { g0[r$0_1], g1[r$0_1] }
      g1[r$0_1] ==> !g0[r$0_1]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g0), x0, y0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@400.26--400.32) [6055]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@400.26--400.32) [6056]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered38(n_2), neverTriggered38(n_2_1) }
            (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@400.26--400.32) [6057]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] && NoPerm < 1 / 2 ==> qpRange38(n_2) && invRecv38(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv38(o_9) }
            g0[invRecv38(o_9)] && (NoPerm < 1 / 2 && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g0), x0, y0): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g1), x1, y1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@401.26--401.32) [6058]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@401.26--401.32) [6059]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered39(n_3), neverTriggered39(n_3_1) }
            (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@401.26--401.32) [6060]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] && NoPerm < 1 / 2 ==> qpRange39(n_3) && invRecv39(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv39(o_9) }
            g1[invRecv39(o_9)] && (NoPerm < 1 / 2 && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g1), x1, y1): bool);
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
    assume !Set#Union(g1, g0)[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in (g1 union g0)) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing2.vpr@403.13--403.31) [6061]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && Set#Union(g1, g0)[n$3_1]) && Set#Union(g1, g0)[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        Set#Union(g1, g0)[n$3_1] && NoPerm < FullPerm ==> qpRange40(n$3_1) && invRecv40(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv40(o_9) }
        (Set#Union(g1, g0)[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9) ==> invRecv40(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        Set#Union(g1, g0)[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Set#Union(g1, g0)[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9) ==> (NoPerm < FullPerm ==> invRecv40(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((Set#Union(g1, g0)[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in (g1 union g0)) } { (n$4 in (g1 union g0)), n$4.next } (n$4 in (g1 union g0)) && n$4.next != null ==> (n$4.next in (g1 union g0)))
      if (*) {
        if (Set#Union(g1, g0)[n$4_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing2.vpr@403.13--403.31) [6062]"}
            HasDirectPerm(PostMask, n$4_3, next);
        }
        if (Set#Union(g1, g0)[n$4_3] && PostHeap[n$4_3, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing2.vpr@403.13--403.31) [6063]"}
            HasDirectPerm(PostMask, n$4_3, next);
        }
        assume false;
      }
    assume (forall n$4_1: Ref ::
      { Set#Union(g1, g0)[PostHeap[n$4_1, next]] } { Set#Union(g1, g0)[n$4_1], PostHeap[n$4_1, next] }
      Set#Union(g1, g0)[n$4_1] && PostHeap[n$4_1, next] != null ==> Set#Union(g1, g0)[PostHeap[n$4_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$((g0 union g1)), x1, y1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@404.25--404.40) [6064]"}
            (forall n_4: Ref ::
            { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
            Set#Union(g0, g1)[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@404.25--404.40) [6065]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered41(n_4), neverTriggered41(n_4_1) }
            (((n_4 != n_4_1 && Set#Union(g0, g1)[n_4]) && Set#Union(g0, g1)[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@404.25--404.40) [6066]"}
            (forall n_4: Ref ::
            { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
            Set#Union(g0, g1)[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
            Set#Union(g0, g1)[n_4] && NoPerm < 1 / 2 ==> qpRange41(n_4) && invRecv41(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv41(o_9) }
            Set#Union(g0, g1)[invRecv41(o_9)] && (NoPerm < 1 / 2 && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, Set#Union(g0, g1)), x1, y1): bool);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$((g0 union g1)), x0, y0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@405.25--405.40) [6067]"}
            (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] && dummyFunction(PostHeap[n_5, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@405.25--405.40) [6068]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered42(n_5), neverTriggered42(n_5_1) }
            (((n_5 != n_5_1 && Set#Union(g0, g1)[n_5]) && Set#Union(g0, g1)[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@405.25--405.40) [6069]"}
            (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] ==> 1 / 2 > NoPerm ==> PostMask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] && NoPerm < 1 / 2 ==> qpRange42(n_5) && invRecv42(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv42(o_9) }
            Set#Union(g0, g1)[invRecv42(o_9)] && (NoPerm < 1 / 2 && qpRange42(o_9)) ==> invRecv42(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, Set#Union(g0, g1)), x0, y0): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing2.vpr@407.12--407.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g0)) might not hold. (framing2.vpr@407.12--407.34) [6070]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing2.vpr@407.12--407.34) [6071]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered44(n_6), neverTriggered44(n_6_1) }
            (((n_6 != n_6_1 && g0[n_6]) && g0[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing2.vpr@407.12--407.34) [6072]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] && NoPerm < FullPerm ==> qpRange44(n_6) && invRecv44(n_6) == n_6
          );
          assume (forall o_9: Ref ::
            { invRecv44(o_9) }
            g0[invRecv44(o_9)] && (NoPerm < FullPerm && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_2] && Heap[n$0_2, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$0.next in g0) might not hold. (framing2.vpr@407.12--407.34) [6073]"}
              g0[Heap[n$0_2, next]];
          }
          assume false;
        }
        assume (forall n$0_3_1_1: Ref ::
          { g0[Heap[n$0_3_1_1, next]] } { g0[n$0_3_1_1], Heap[n$0_3_1_1, next] }
          g0[n$0_3_1_1] && Heap[n$0_3_1_1, next] != null ==> g0[Heap[n$0_3_1_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g1)) might not hold. (framing2.vpr@407.12--407.34) [6074]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$1 is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n$1.next might not be injective. (framing2.vpr@407.12--407.34) [6075]"}
            (forall n$1_2: Ref, n$1_2_1: Ref ::
            { neverTriggered45(n$1_2), neverTriggered45(n$1_2_1) }
            (((n$1_2 != n$1_2_1 && g1[n$1_2]) && g1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n$1.next (framing2.vpr@407.12--407.34) [6076]"}
            (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g1[n$1_2] ==> FullPerm > NoPerm ==> Mask[n$1_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$1
          assume (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g1[n$1_2] && NoPerm < FullPerm ==> qpRange45(n$1_2) && invRecv45(n$1_2) == n$1_2
          );
          assume (forall o_9: Ref ::
            { invRecv45(o_9) }
            g1[invRecv45(o_9)] && (NoPerm < FullPerm && qpRange45(o_9)) ==> invRecv45(o_9) == o_9
          );
        if (*) {
          if (g1[n$2_2] && Heap[n$2_2, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$2.next in g1) might not hold. (framing2.vpr@407.12--407.34) [6077]"}
              g1[Heap[n$2_2, next]];
          }
          assume false;
        }
        assume (forall n$2_3_1: Ref ::
          { g1[Heap[n$2_3_1, next]] } { g1[n$2_3_1], Heap[n$2_3_1, next] }
          g1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g1[Heap[n$2_3_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing2.vpr@407.12--407.34) [6078]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion !((null in (g1 union g0))) might not hold. (framing2.vpr@403.13--403.31) [6079]"}
      !Set#Union(g1, g0)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing2.vpr@403.13--403.31) [6080]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered43(n$3_2), neverTriggered43(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && Set#Union(g1, g0)[n$3_2]) && Set#Union(g1, g0)[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_framing_sets might not hold. There might be insufficient permission to access n$3.next (framing2.vpr@403.13--403.31) [6081]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g1, g0)[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g1, g0)[n$3_2] && NoPerm < FullPerm ==> qpRange43(n$3_2) && invRecv43(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv43(o_9) }
        Set#Union(g1, g0)[invRecv43(o_9)] && (NoPerm < FullPerm && qpRange43(o_9)) ==> invRecv43(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (Set#Union(g1, g0)[invRecv43(o_9)] && (NoPerm < FullPerm && qpRange43(o_9)) ==> invRecv43(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(Set#Union(g1, g0)[invRecv43(o_9)] && (NoPerm < FullPerm && qpRange43(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g1, g0)[n$4_2] && Heap[n$4_2, next] != null) {
        assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion (n$4.next in (g1 union g0)) might not hold. (framing2.vpr@403.13--403.31) [6082]"}
          Set#Union(g1, g0)[Heap[n$4_2, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { Set#Union(g1, g0)[Heap[n$4_3_1, next]] } { Set#Union(g1, g0)[n$4_3_1], Heap[n$4_3_1, next] }
      Set#Union(g1, g0)[n$4_3_1] && Heap[n$4_3_1, next] != null ==> Set#Union(g1, g0)[Heap[n$4_3_1, next]]
    );
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion exists_path($$((g0 union g1)), x1, y1) might not hold. (framing2.vpr@404.13--404.47) [6083]"}
      (exists_path($$(Heap, Set#Union(g0, g1)), x1, y1): bool);
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion exists_path($$((g0 union g1)), x0, y0) might not hold. (framing2.vpr@405.13--405.47) [6084]"}
      (exists_path($$(Heap, Set#Union(g0, g1)), x0, y0): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_union
// ==================================================

procedure test_union(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1: Ref) returns (x: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_21: Ref;
  var n$2_14: Ref;
  var n$3: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var n$4_4: Ref;
  var n$0_2: Ref;
  var n$0_4: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$6: Ref;
  var n$1_2: Ref;
  var n$0_7: Ref;
  var n$0_9: Ref;
  var n$2_2: Ref;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var n$6_2: Ref;
  var r$1_2: Ref;
  var r$2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing2.vpr@411.14--411.36) [6085]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange46(n_1) && invRecv46(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv46(o_9) }
        (g0[invRecv46(o_9)] && NoPerm < FullPerm) && qpRange46(o_9) ==> invRecv46(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv46(o_9)] && NoPerm < FullPerm) && qpRange46(o_9) ==> (NoPerm < FullPerm ==> invRecv46(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv46(o_9)] && NoPerm < FullPerm) && qpRange46(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_21]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@411.14--411.36) [6086]"}
            HasDirectPerm(Mask, n$0_21, next);
        }
        if (g0[n$0_21] && Heap[n$0_21, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing2.vpr@411.14--411.36) [6087]"}
            HasDirectPerm(Mask, n$0_21, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing2.vpr@411.14--411.36) [6088]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange47(n$1_1) && invRecv47(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv47(o_9) }
        (g1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9) ==> invRecv47(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9) ==> (NoPerm < FullPerm ==> invRecv47(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@411.14--411.36) [6089]"}
            HasDirectPerm(Mask, n$2_14, next);
        }
        if (g1[n$2_14] && Heap[n$2_14, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing2.vpr@411.14--411.36) [6090]"}
            HasDirectPerm(Mask, n$2_14, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g1[Heap[n$2_1, next]] } { g1[n$2_1], Heap[n$2_1, next] }
      g1[n$2_1] && Heap[n$2_1, next] != null ==> g1[Heap[n$2_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume state(Heap, Mask);
    assume g1[x1];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { g0[r_1_1], g1[r_1_1] }
      g0[r_1_1] ==> !g1[r_1_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$0_1: Ref ::
      { g0[r$0_1], g1[r$0_1] }
      g1[r$0_1] ==> !g0[r$0_1]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$3: Ref :: { (n$3 in g0) } { exists_path($$(g0), x0, n$3) } (n$3 in g0) ==> exists_path($$(g0), x0, n$3))
      if (*) {
        if (g0[n$3]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@301.44--301.49) [6091]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@301.44--301.49) [6092]"}
                (forall n_2: Ref, n_2_1: Ref ::
                { neverTriggered48(n_2), neverTriggered48(n_2_1) }
                (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@301.44--301.49) [6093]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && NoPerm < 1 / 2 ==> qpRange48(n_2) && invRecv48(n_2) == n_2
              );
              assume (forall o_9: Ref ::
                { invRecv48(o_9) }
                g0[invRecv48(o_9)] && (NoPerm < 1 / 2 && qpRange48(o_9)) ==> invRecv48(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall n$3_1: Ref ::
      { g0[n$3_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), x0, n$3_1): bool) }
      g0[n$3_1] ==> (exists_path($$(Heap, g0), x0, n$3_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4 in g1) } { exists_path($$(g1), x1, n$4) } (n$4 in g1) ==> exists_path($$(g1), x1, n$4))
      if (*) {
        if (g1[n$4_4]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@301.44--301.49) [6094]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@301.44--301.49) [6095]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered49(n_3), neverTriggered49(n_3_1) }
                (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@301.44--301.49) [6096]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && NoPerm < 1 / 2 ==> qpRange49(n_3) && invRecv49(n_3) == n_3
              );
              assume (forall o_9: Ref ::
                { invRecv49(o_9) }
                g1[invRecv49(o_9)] && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall n$4_1: Ref ::
      { g1[n$4_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), x1, n$4_1): bool) }
      g1[n$4_1] ==> (exists_path($$(Heap, g1), x1, n$4_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_list_segment(g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in g0)) might not hold. (framing2.vpr@418.14--418.38) [6097]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing2.vpr@418.14--418.38) [6098]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered50(n_4), neverTriggered50(n_4_1) }
            (((n_4 != n_4_1 && g0[n_4]) && g0[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing2.vpr@418.14--418.38) [6099]"}
            (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g0[n_4] ==> FullPerm > NoPerm ==> Mask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g0[n_4] && NoPerm < FullPerm ==> qpRange50(n_4) && invRecv50(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv50(o_9) }
            g0[invRecv50(o_9)] && (NoPerm < FullPerm && qpRange50(o_9)) ==> invRecv50(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_2] && Heap[n$0_2, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in g0) might not hold. (framing2.vpr@418.14--418.38) [6100]"}
              g0[Heap[n$0_2, next]];
          }
          assume false;
        }
        assume (forall n$0_3_1_1: Ref ::
          { g0[Heap[n$0_3_1_1, next]] } { g0[n$0_3_1_1], Heap[n$0_3_1_1, next] }
          g0[n$0_3_1_1] && Heap[n$0_3_1_1, next] != null ==> g0[Heap[n$0_3_1_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(Heap, g0);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_list_segment(g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in g1)) might not hold. (framing2.vpr@419.14--419.38) [6101]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing2.vpr@419.14--419.38) [6102]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered51(n_5), neverTriggered51(n_5_1) }
            (((n_5 != n_5_1 && g1[n_5]) && g1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing2.vpr@419.14--419.38) [6103]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g1[n_5] ==> FullPerm > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g1[n_5] && NoPerm < FullPerm ==> qpRange51(n_5) && invRecv51(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv51(o_9) }
            g1[invRecv51(o_9)] && (NoPerm < FullPerm && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
          );
        if (*) {
          if (g1[n$0_4] && Heap[n$0_4, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in g1) might not hold. (framing2.vpr@419.14--419.38) [6104]"}
              g1[Heap[n$0_4, next]];
          }
          assume false;
        }
        assume (forall n$0_5_1_1: Ref ::
          { g1[Heap[n$0_5_1_1, next]] } { g1[n$0_5_1_1], Heap[n$0_5_1_1, next] }
          g1[n$0_5_1_1] && Heap[n$0_5_1_1, next] != null ==> g1[Heap[n$0_5_1_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(Heap, g1);
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
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n$5: Ref :: { n$5.next } (n$5 in (g0 union g1)) ==> acc(n$5.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (framing2.vpr@421.13--421.31) [6105]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && Set#Union(g0, g1)[n$5_1]) && Set#Union(g0, g1)[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        Set#Union(g0, g1)[n$5_1] && NoPerm < FullPerm ==> qpRange52(n$5_1) && invRecv52(n$5_1) == n$5_1
      );
      assume (forall o_9: Ref ::
        { invRecv52(o_9) }
        (Set#Union(g0, g1)[invRecv52(o_9)] && NoPerm < FullPerm) && qpRange52(o_9) ==> invRecv52(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        Set#Union(g0, g1)[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Set#Union(g0, g1)[invRecv52(o_9)] && NoPerm < FullPerm) && qpRange52(o_9) ==> (NoPerm < FullPerm ==> invRecv52(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv52(o_9)] && NoPerm < FullPerm) && qpRange52(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.next in (g0 union g1)) } { (n$6 in (g0 union g1)), n$6.next } (n$6 in (g0 union g1)) && n$6.next != null ==> (n$6.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (framing2.vpr@421.13--421.31) [6106]"}
            HasDirectPerm(PostMask, n$6, next);
        }
        if (Set#Union(g0, g1)[n$6] && PostHeap[n$6, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (framing2.vpr@421.13--421.31) [6107]"}
            HasDirectPerm(PostMask, n$6, next);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$6_1, next]] } { Set#Union(g0, g1)[n$6_1], PostHeap[n$6_1, next] }
      Set#Union(g0, g1)[n$6_1] && PostHeap[n$6_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$6_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of is_global_sroot((g0 union g1), Set(x0, x1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing2.vpr@422.13--422.52) [6108]"}
          !Set#Union(g0, g1)[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_sroot might not hold. Quantified resource n$0.next might not be injective. (framing2.vpr@422.13--422.52) [6109]"}
            (forall n$0_6: Ref, n$0_6_1: Ref ::
            { neverTriggered53(n$0_6), neverTriggered53(n$0_6_1) }
            (((n$0_6 != n$0_6_1 && Set#Union(g0, g1)[n$0_6]) && Set#Union(g0, g1)[n$0_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_6 != n$0_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_sroot might not hold. There might be insufficient permission to access n$0.next (framing2.vpr@422.13--422.52) [6110]"}
            (forall n$0_6: Ref ::
            { PostHeap[n$0_6, next] } { QPMask[n$0_6, next] } { PostHeap[n$0_6, next] }
            Set#Union(g0, g1)[n$0_6] ==> FullPerm > NoPerm ==> PostMask[n$0_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_6: Ref ::
            { PostHeap[n$0_6, next] } { QPMask[n$0_6, next] } { PostHeap[n$0_6, next] }
            Set#Union(g0, g1)[n$0_6] && NoPerm < FullPerm ==> qpRange53(n$0_6) && invRecv53(n$0_6) == n$0_6
          );
          assume (forall o_9: Ref ::
            { invRecv53(o_9) }
            Set#Union(g0, g1)[invRecv53(o_9)] && (NoPerm < FullPerm && qpRange53(o_9)) ==> invRecv53(o_9) == o_9
          );
        if (*) {
          if (Set#Union(g0, g1)[n$1_2] && PostHeap[n$1_2, next] != null) {
            assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion (n$1.next in (g0 union g1)) might not hold. (framing2.vpr@422.13--422.52) [6111]"}
              Set#Union(g0, g1)[PostHeap[n$1_2, next]];
          }
          assume false;
        }
        assume (forall n$1_3_1_1: Ref ::
          { Set#Union(g0, g1)[PostHeap[n$1_3_1_1, next]] } { Set#Union(g0, g1)[n$1_3_1_1], PostHeap[n$1_3_1_1, next] }
          Set#Union(g0, g1)[n$1_3_1_1] && PostHeap[n$1_3_1_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$1_3_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion (Set(x0, x1) subset (g0 union g1)) might not hold. (framing2.vpr@422.13--422.52) [6112]"}
          Set#Subset(Set#UnionOne(Set#Singleton(x1), x0), Set#Union(g0, g1));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_sroot(PostHeap, Set#Union(g0, g1), Set#UnionOne(Set#Singleton(x1), x0));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acyclic_list_segment((g0 union g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing2.vpr@424.13--424.46) [6113]"}
          !Set#Union(g0, g1)[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing2.vpr@424.13--424.46) [6114]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered54(n_6), neverTriggered54(n_6_1) }
            (((n_6 != n_6_1 && Set#Union(g0, g1)[n_6]) && Set#Union(g0, g1)[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing2.vpr@424.13--424.46) [6115]"}
            (forall n_6: Ref ::
            { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
            Set#Union(g0, g1)[n_6] ==> FullPerm > NoPerm ==> PostMask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
            Set#Union(g0, g1)[n_6] && NoPerm < FullPerm ==> qpRange54(n_6) && invRecv54(n_6) == n_6
          );
          assume (forall o_9: Ref ::
            { invRecv54(o_9) }
            Set#Union(g0, g1)[invRecv54(o_9)] && (NoPerm < FullPerm && qpRange54(o_9)) ==> invRecv54(o_9) == o_9
          );
        if (*) {
          if (Set#Union(g0, g1)[n$0_7] && PostHeap[n$0_7, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in (g0 union g1)) might not hold. (framing2.vpr@424.13--424.46) [6116]"}
              Set#Union(g0, g1)[PostHeap[n$0_7, next]];
          }
          assume false;
        }
        assume (forall n$0_8_1_1: Ref ::
          { Set#Union(g0, g1)[PostHeap[n$0_8_1_1, next]] } { Set#Union(g0, g1)[n$0_8_1_1], PostHeap[n$0_8_1_1, next] }
          Set#Union(g0, g1)[n$0_8_1_1] && PostHeap[n$0_8_1_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$0_8_1_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(PostHeap, Set#Union(g0, g1));
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall r$1: Ref :: { (r$1 in g0), (r$1 in g1) } (r$1 in g0) ==> !((r$1 in g1)))
      if (*) {
        assume false;
      }
    assume (forall r$1_1: Ref ::
      { g0[r$1_1], g1[r$1_1] }
      g0[r$1_1] ==> !g1[r$1_1]
    );
    
    // -- Check definedness of (forall r$2: Ref :: { (r$2 in g0), (r$2 in g1) } (r$2 in g1) ==> !((r$2 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$2_1: Ref ::
      { g0[r$2_1], g1[r$2_1] }
      g1[r$2_1] ==> !g0[r$2_1]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing2.vpr@429.12--429.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g0)) might not hold. (framing2.vpr@429.12--429.34) [6117]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing2.vpr@429.12--429.34) [6118]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered56(n_7), neverTriggered56(n_7_1) }
            (((n_7 != n_7_1 && g0[n_7]) && g0[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing2.vpr@429.12--429.34) [6119]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g0[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g0[n_7] && NoPerm < FullPerm ==> qpRange56(n_7) && invRecv56(n_7) == n_7
          );
          assume (forall o_9: Ref ::
            { invRecv56(o_9) }
            g0[invRecv56(o_9)] && (NoPerm < FullPerm && qpRange56(o_9)) ==> invRecv56(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_9] && Heap[n$0_9, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$0.next in g0) might not hold. (framing2.vpr@429.12--429.34) [6120]"}
              g0[Heap[n$0_9, next]];
          }
          assume false;
        }
        assume (forall n$0_10_1_1: Ref ::
          { g0[Heap[n$0_10_1_1, next]] } { g0[n$0_10_1_1], Heap[n$0_10_1_1, next] }
          g0[n$0_10_1_1] && Heap[n$0_10_1_1, next] != null ==> g0[Heap[n$0_10_1_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((null in g1)) might not hold. (framing2.vpr@429.12--429.34) [6121]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$1 is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n$1.next might not be injective. (framing2.vpr@429.12--429.34) [6122]"}
            (forall n$1_4: Ref, n$1_4_1: Ref ::
            { neverTriggered57(n$1_4), neverTriggered57(n$1_4_1) }
            (((n$1_4 != n$1_4_1 && g1[n$1_4]) && g1[n$1_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_4 != n$1_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n$1.next (framing2.vpr@429.12--429.34) [6123]"}
            (forall n$1_4: Ref ::
            { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
            g1[n$1_4] ==> FullPerm > NoPerm ==> Mask[n$1_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$1
          assume (forall n$1_4: Ref ::
            { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
            g1[n$1_4] && NoPerm < FullPerm ==> qpRange57(n$1_4) && invRecv57(n$1_4) == n$1_4
          );
          assume (forall o_9: Ref ::
            { invRecv57(o_9) }
            g1[invRecv57(o_9)] && (NoPerm < FullPerm && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
          );
        if (*) {
          if (g1[n$2_2] && Heap[n$2_2, next] != null) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (n$2.next in g1) might not hold. (framing2.vpr@429.12--429.34) [6124]"}
              g1[Heap[n$2_2, next]];
          }
          assume false;
        }
        assume (forall n$2_3_1: Ref ::
          { g1[Heap[n$2_3_1, next]] } { g1[n$2_3_1], Heap[n$2_3_1, next] }
          g1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g1[Heap[n$2_3_1, next]]
        );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing2.vpr@429.12--429.34) [6125]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acyclic_graph($$((g0 union g1))) -- framing2.vpr@436.5--436.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acyclic_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@436.26--436.41) [6126]"}
            (forall n_8: Ref ::
            { ExhaleWellDef0Heap[n_8, next] } { QPMask[n_8, next] } { ExhaleWellDef0Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && dummyFunction(ExhaleWellDef0Heap[n_8, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@436.26--436.41) [6127]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered58(n_8), neverTriggered58(n_8_1) }
            (((n_8 != n_8_1 && Set#Union(g0, g1)[n_8]) && Set#Union(g0, g1)[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@436.26--436.41) [6128]"}
            (forall n_8: Ref ::
            { ExhaleWellDef0Heap[n_8, next] } { QPMask[n_8, next] } { ExhaleWellDef0Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { ExhaleWellDef0Heap[n_8, next] } { QPMask[n_8, next] } { ExhaleWellDef0Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && NoPerm < 1 / 2 ==> qpRange58(n_8) && invRecv58(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv58(o_9) }
            Set#Union(g0, g1)[invRecv58(o_9)] && (NoPerm < 1 / 2 && qpRange58(o_9)) ==> invRecv58(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion acyclic_graph($$((g0 union g1))) might not hold. (framing2.vpr@436.12--436.42) [6129]"}
      (acyclic_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert func_graph($$((g0 union g1))) -- framing2.vpr@437.5--437.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of func_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@437.23--437.38) [6130]"}
            (forall n_9: Ref ::
            { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] && dummyFunction(ExhaleWellDef0Heap[n_9, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@437.23--437.38) [6131]"}
            (forall n_9: Ref, n_9_1: Ref ::
            { neverTriggered59(n_9), neverTriggered59(n_9_1) }
            (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@437.23--437.38) [6132]"}
            (forall n_9: Ref ::
            { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_9, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_9: Ref ::
            { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] && NoPerm < 1 / 2 ==> qpRange59(n_9) && invRecv59(n_9) == n_9
          );
          assume (forall o_9: Ref ::
            { invRecv59(o_9) }
            Set#Union(g0, g1)[invRecv59(o_9)] && (NoPerm < 1 / 2 && qpRange59(o_9)) ==> invRecv59(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion func_graph($$((g0 union g1))) might not hold. (framing2.vpr@437.12--437.39) [6133]"}
      (func_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert unshared_graph($$((g0 union g1))) -- framing2.vpr@438.5--438.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of unshared_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (framing2.vpr@438.27--438.42) [6134]"}
            (forall n_10_1: Ref ::
            { ExhaleWellDef0Heap[n_10_1, next] } { QPMask[n_10_1, next] } { ExhaleWellDef0Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] && dummyFunction(ExhaleWellDef0Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing2.vpr@438.27--438.42) [6135]"}
            (forall n_10_1: Ref, n_10_2: Ref ::
            { neverTriggered60(n_10_1), neverTriggered60(n_10_2) }
            (((n_10_1 != n_10_2 && Set#Union(g0, g1)[n_10_1]) && Set#Union(g0, g1)[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing2.vpr@438.27--438.42) [6136]"}
            (forall n_10_1: Ref ::
            { ExhaleWellDef0Heap[n_10_1, next] } { QPMask[n_10_1, next] } { ExhaleWellDef0Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_10_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_10_1: Ref ::
            { ExhaleWellDef0Heap[n_10_1, next] } { QPMask[n_10_1, next] } { ExhaleWellDef0Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] && NoPerm < 1 / 2 ==> qpRange60(n_10_1) && invRecv60(n_10_1) == n_10_1
          );
          assume (forall o_9: Ref ::
            { invRecv60(o_9) }
            Set#Union(g0, g1)[invRecv60(o_9)] && (NoPerm < 1 / 2 && qpRange60(o_9)) ==> invRecv60(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion unshared_graph($$((g0 union g1))) might not hold. (framing2.vpr@438.12--438.43) [6137]"}
      (unshared_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of test_union might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing2.vpr@421.13--421.31) [6138]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (framing2.vpr@421.13--421.31) [6139]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered55(n$5_2), neverTriggered55(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && Set#Union(g0, g1)[n$5_2]) && Set#Union(g0, g1)[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_union might not hold. There might be insufficient permission to access n$5.next (framing2.vpr@421.13--421.31) [6140]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        Set#Union(g0, g1)[n$5_2] ==> Mask[n$5_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        Set#Union(g0, g1)[n$5_2] && NoPerm < FullPerm ==> qpRange55(n$5_2) && invRecv55(n$5_2) == n$5_2
      );
      assume (forall o_9: Ref ::
        { invRecv55(o_9) }
        Set#Union(g0, g1)[invRecv55(o_9)] && (NoPerm < FullPerm && qpRange55(o_9)) ==> invRecv55(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (Set#Union(g0, g1)[invRecv55(o_9)] && (NoPerm < FullPerm && qpRange55(o_9)) ==> invRecv55(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(Set#Union(g0, g1)[invRecv55(o_9)] && (NoPerm < FullPerm && qpRange55(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$6_2] && Heap[n$6_2, next] != null) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion (n$6.next in (g0 union g1)) might not hold. (framing2.vpr@421.13--421.31) [6141]"}
          Set#Union(g0, g1)[Heap[n$6_2, next]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$6_3_1, next]] } { Set#Union(g0, g1)[n$6_3_1], Heap[n$6_3_1, next] }
      Set#Union(g0, g1)[n$6_3_1] && Heap[n$6_3_1, next] != null ==> Set#Union(g0, g1)[Heap[n$6_3_1, next]]
    );
    assert {:msg "  Postcondition of test_union might not hold. Assertion is_global_sroot((g0 union g1), Set(x0, x1)) might not hold. (framing2.vpr@422.13--422.52) [6142]"}
      is_global_sroot(Heap, Set#Union(g0, g1), Set#UnionOne(Set#Singleton(x1), x0));
    assert {:msg "  Postcondition of test_union might not hold. Assertion acyclic_list_segment((g0 union g1)) might not hold. (framing2.vpr@424.13--424.46) [6143]"}
      acyclic_list_segment(Heap, Set#Union(g0, g1));
    if (*) {
      if (g0[r$1_2]) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion !((r$1 in g1)) might not hold. (framing2.vpr@427.13--427.33) [6144]"}
          !g1[r$1_2];
      }
      assume false;
    }
    assume (forall r$1_3_1: Ref ::
      { g0[r$1_3_1], g1[r$1_3_1] }
      g0[r$1_3_1] ==> !g1[r$1_3_1]
    );
    if (*) {
      if (g1[r$2_2]) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion !((r$2 in g0)) might not hold. (framing2.vpr@427.13--427.33) [6145]"}
          !g0[r$2_2];
      }
      assume false;
    }
    assume (forall r$2_3_1: Ref ::
      { g0[r$2_3_1], g1[r$2_3_1] }
      g1[r$2_3_1] ==> !g0[r$2_3_1]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}