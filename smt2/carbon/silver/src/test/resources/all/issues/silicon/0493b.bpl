// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0493b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0493b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_23: Ref, f_15: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_23, f_15] }
  Heap[o_23, $allocated] ==> Heap[Heap[o_23, f_15], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref, f_63: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, f_63] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_52, f_63) ==> Heap[o_52, f_63] == ExhaleHeap[o_52, f_63]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24), ExhaleHeap[null, PredicateMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> Heap[null, PredicateMaskField(pm_f_24)] == ExhaleHeap[null, PredicateMaskField(pm_f_24)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsPredicateField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, PredicateMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24), ExhaleHeap[null, WandMaskField(pm_f_24)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> Heap[null, WandMaskField(pm_f_24)] == ExhaleHeap[null, WandMaskField(pm_f_24)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_24: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_24) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_24) && IsWandField(pm_f_24) ==> (forall <A, B> o2_24: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_24, f_63] }
    Heap[null, WandMaskField(pm_f_24)][o2_24, f_63] ==> Heap[o2_24, f_63] == ExhaleHeap[o2_24, f_63]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_52: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_52, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_52, $allocated] ==> ExhaleHeap[o_52, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_23: Ref, f_65: (Field A B), v: B ::
  { Heap[o_23, f_65:=v] }
  succHeap(Heap, Heap[o_23, f_65:=v])
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

function  neverTriggered1(a_3_1: Ref): bool;
function  neverTriggered2(a_3_1: Ref): bool;
function  neverTriggered4(a_3_1: Ref, i_3_2: int): bool;
function  neverTriggered5(a_1_1: Ref): bool;
function  neverTriggered6(a_2_2: Ref): bool;
function  neverTriggered7(a_3_1: Ref): bool;
function  neverTriggered8(a_1_1: Ref): bool;
function  neverTriggered9(a$0_1: Ref): bool;
function  neverTriggered10(a_2_2: Ref): bool;
function  neverTriggered11(a$1_1: Ref): bool;
function  neverTriggered12(a_3_1: Ref): bool;
function  neverTriggered13(a_1_1: Ref): bool;
function  neverTriggered14(a_4: Ref): bool;
function  neverTriggered15(a_6_1: Ref): bool;
function  neverTriggered16(a_1_1: Ref): bool;
function  neverTriggered17(a$0_1: Ref): bool;
function  neverTriggered18(a_5_1: Ref): bool;
function  neverTriggered19(a$1_1: Ref): bool;
function  neverTriggered20(a_8_1: Ref): bool;
function  neverTriggered22(a_1_1: Ref, i_1: int): bool;
function  neverTriggered24(a_4: Ref, i_4_1: int): bool;
function  neverTriggered26(a_6_1: Ref, i_6_2: int): bool;
function  neverTriggered28(a_1_1: Ref, i_1: int): bool;
function  neverTriggered30(a_4: Ref, i_4_1: int): bool;
function  neverTriggered32(a_6_1: Ref, i_6_2: int): bool;
function  neverTriggered34(a_1_1: Ref, i_1: int): bool;
function  neverTriggered36(a$0_1: Ref, i$0_1: int): bool;
function  neverTriggered38(a_5_1: Ref, i_5_1: int): bool;
function  neverTriggered40(a$1_1: Ref, i$1_1: int): bool;
function  neverTriggered42(a_8_1: Ref, i_8_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(a_4_1_1: Ref): Ref;
function  invRecv3(a_4_1_1: Ref, i_4_1_1: int): Ref;
function  invRecv4(a_4_1_1: Ref, i_4_1_1: int): int;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(a_2_1: Ref): Ref;
function  invRecv14(a_5_1_1: Ref): Ref;
function  invRecv15(a_7_1_1: Ref): Ref;
function  invRecv16(a_2_1: Ref): Ref;
function  invRecv17(a_4: Ref): Ref;
function  invRecv18(a_6_1_1: Ref): Ref;
function  invRecv19(a_7: Ref): Ref;
function  invRecv20(a_9_1_1: Ref): Ref;
function  invRecv21(a_2_1: Ref, i_2_1: int): Ref;
function  invRecv22(a_2_1: Ref, i_2_1: int): int;
function  invRecv23(a_5_1_1: Ref, i_5_1_1: int): Ref;
function  invRecv24(a_5_1_1: Ref, i_5_1_1: int): int;
function  invRecv25(a_7_1_1: Ref, i_7_1_1: int): Ref;
function  invRecv26(a_7_1_1: Ref, i_7_1_1: int): int;
function  invRecv27(a_2_1: Ref, i_2_1: int): Ref;
function  invRecv28(a_2_1: Ref, i_2_1: int): int;
function  invRecv29(a_5_1_1: Ref, i_5_1_1: int): Ref;
function  invRecv30(a_5_1_1: Ref, i_5_1_1: int): int;
function  invRecv31(a_7_1_1: Ref, i_7_1_1: int): Ref;
function  invRecv32(a_7_1_1: Ref, i_7_1_1: int): int;
function  invRecv33(a_2_1: Ref, i_2_1: int): Ref;
function  invRecv34(a_2_1: Ref, i_2_1: int): int;
function  invRecv35(a_4: Ref, i_4_1: int): Ref;
function  invRecv36(a_4: Ref, i_4_1: int): int;
function  invRecv37(a_6_1_1: Ref, i_6_1: int): Ref;
function  invRecv38(a_6_1_1: Ref, i_6_1: int): int;
function  invRecv39(a_7: Ref, i_7_1: int): Ref;
function  invRecv40(a_7: Ref, i_7_1: int): int;
function  invRecv41(a_9_1_1: Ref, i_9_1_1: int): Ref;
function  invRecv42(a_9_1_1: Ref, i_9_1_1: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(a_4_1_1: Ref): bool;
function  qpRange4(a_4_1_1: Ref, i_4_1_1: int): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(a_2_1: Ref): bool;
function  qpRange14(a_5_1_1: Ref): bool;
function  qpRange15(a_7_1_1: Ref): bool;
function  qpRange16(a_2_1: Ref): bool;
function  qpRange17(a_4: Ref): bool;
function  qpRange18(a_6_1_1: Ref): bool;
function  qpRange19(a_7: Ref): bool;
function  qpRange20(a_9_1_1: Ref): bool;
function  qpRange22(a_2_1: Ref, i_2_1: int): bool;
function  qpRange24(a_5_1_1: Ref, i_5_1_1: int): bool;
function  qpRange26(a_7_1_1: Ref, i_7_1_1: int): bool;
function  qpRange28(a_2_1: Ref, i_2_1: int): bool;
function  qpRange30(a_5_1_1: Ref, i_5_1_1: int): bool;
function  qpRange32(a_7_1_1: Ref, i_7_1_1: int): bool;
function  qpRange34(a_2_1: Ref, i_2_1: int): bool;
function  qpRange36(a_4: Ref, i_4_1: int): bool;
function  qpRange38(a_6_1_1: Ref, i_6_1: int): bool;
function  qpRange40(a_7: Ref, i_7_1: int): bool;
function  qpRange42(a_9_1_1: Ref, i_9_1_1: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: foo_vals
// - height 1: foo_twos
// - height 0: foo_ones
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
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function foo_vals
// ==================================================

// Uninterpreted function definitions
function  foo_vals(Heap: HeapType, vas: (Set Ref)): int;
function  foo_vals'(Heap: HeapType, vas: (Set Ref)): int;
axiom (forall Heap: HeapType, vas: (Set Ref) ::
  { foo_vals(Heap, vas) }
  foo_vals(Heap, vas) == foo_vals'(Heap, vas) && dummyFunction(foo_vals#triggerStateless(vas))
);
axiom (forall Heap: HeapType, vas: (Set Ref) ::
  { foo_vals'(Heap, vas) }
  dummyFunction(foo_vals#triggerStateless(vas))
);

// Framing axioms
function  foo_vals#frame(frame: FrameType, vas: (Set Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, vas: (Set Ref) ::
  { state(Heap, Mask), foo_vals'(Heap, vas) }
  state(Heap, Mask) ==> foo_vals'(Heap, vas) == foo_vals#frame(FrameFragment(foo_vals#condqp1(Heap, vas)), vas)
);
// ==================================================
// Function used for framing of quantified permission (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write)) in function foo_vals
// ==================================================

function  foo_vals#condqp1(Heap: HeapType, vas_1_1: (Set Ref)): int;
function  sk_foo_vals#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, vas: (Set Ref) ::
  { foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vas[sk_foo_vals#condqp1(foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas))] && NoPerm < FullPerm <==> vas[sk_foo_vals#condqp1(foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas))] && NoPerm < FullPerm) && (vas[sk_foo_vals#condqp1(foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas))] && NoPerm < FullPerm ==> Heap2Heap[sk_foo_vals#condqp1(foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas)), val] == Heap1Heap[sk_foo_vals#condqp1(foo_vals#condqp1(Heap2Heap, vas), foo_vals#condqp1(Heap1Heap, vas)), val]) ==> foo_vals#condqp1(Heap2Heap, vas) == foo_vals#condqp1(Heap1Heap, vas)
);

// Trigger function (controlling recursive postconditions)
function  foo_vals#trigger(frame: FrameType, vas: (Set Ref)): bool;

// State-independent trigger function
function  foo_vals#triggerStateless(vas: (Set Ref)): int;

// Check contract well-formedness and postcondition
procedure foo_vals#definedness(vas: (Set Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a.val might not be injective. (0493b.vpr@19.12--19.27) [60646]"}
      (forall a_3_1: Ref, a_3_2: Ref ::
      
      (((a_3_1 != a_3_2 && vas[a_3_1]) && vas[a_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_3_1 != a_3_2
    );
    
    // -- Define Inverse Function
      assume (forall a_3_1: Ref ::
        { Heap[a_3_1, val] } { QPMask[a_3_1, val] } { Heap[a_3_1, val] }
        vas[a_3_1] && NoPerm < FullPerm ==> qpRange1(a_3_1) && invRecv1(a_3_1) == a_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (vas[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_3_1: Ref ::
        { Heap[a_3_1, val] } { QPMask[a_3_1, val] } { Heap[a_3_1, val] }
        vas[a_3_1] ==> a_3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((vas[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((vas[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
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
// Translation of function foo_ones
// ==================================================

// Uninterpreted function definitions
function  foo_ones(Heap: HeapType, vas: (Set Ref)): int;
function  foo_ones'(Heap: HeapType, vas: (Set Ref)): int;
axiom (forall Heap: HeapType, vas: (Set Ref) ::
  { foo_ones(Heap, vas) }
  foo_ones(Heap, vas) == foo_ones'(Heap, vas) && dummyFunction(foo_ones#triggerStateless(vas))
);
axiom (forall Heap: HeapType, vas: (Set Ref) ::
  { foo_ones'(Heap, vas) }
  dummyFunction(foo_ones#triggerStateless(vas))
);

// Framing axioms
function  foo_ones#frame(frame: FrameType, vas: (Set Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, vas: (Set Ref) ::
  { state(Heap, Mask), foo_ones'(Heap, vas) }
  state(Heap, Mask) ==> foo_ones'(Heap, vas) == foo_ones#frame(FrameFragment(foo_ones#condqp2(Heap, vas)), vas)
);
// ==================================================
// Function used for framing of quantified permission (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write)) in function foo_ones
// ==================================================

function  foo_ones#condqp2(Heap: HeapType, vas_1_1: (Set Ref)): int;
function  sk_foo_ones#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, vas: (Set Ref) ::
  { foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vas[sk_foo_ones#condqp2(foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas))] && NoPerm < FullPerm <==> vas[sk_foo_ones#condqp2(foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas))] && NoPerm < FullPerm) && (vas[sk_foo_ones#condqp2(foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas))] && NoPerm < FullPerm ==> Heap2Heap[null, one(sk_foo_ones#condqp2(foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas)))] == Heap1Heap[null, one(sk_foo_ones#condqp2(foo_ones#condqp2(Heap2Heap, vas), foo_ones#condqp2(Heap1Heap, vas)))]) ==> foo_ones#condqp2(Heap2Heap, vas) == foo_ones#condqp2(Heap1Heap, vas)
);

// Trigger function (controlling recursive postconditions)
function  foo_ones#trigger(frame: FrameType, vas: (Set Ref)): bool;

// State-independent trigger function
function  foo_ones#triggerStateless(vas: (Set Ref)): int;

// Check contract well-formedness and postcondition
procedure foo_ones#definedness(vas: (Set Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(one(a), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource one(a) might not be injective. (0493b.vpr@22.12--22.26) [60647]"}
        (forall a_3_1: Ref, a_3_2: Ref ::
        { neverTriggered2(a_3_1), neverTriggered2(a_3_2) }
        (((a_3_1 != a_3_2 && vas[a_3_1]) && vas[a_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_3_1 != a_3_2
      );
    
    // -- Define Inverse Function
      assume (forall a_3_1: Ref ::
        { Heap[null, one(a_3_1)] } { Mask[null, one(a_3_1)] } { Heap[null, one(a_3_1)] }
        vas[a_3_1] && NoPerm < FullPerm ==> invRecv2(a_3_1) == a_3_1 && qpRange2(a_3_1)
      );
      assume (forall a_4_1_1: Ref ::
        { invRecv2(a_4_1_1) }
        (vas[invRecv2(a_4_1_1)] && NoPerm < FullPerm) && qpRange2(a_4_1_1) ==> invRecv2(a_4_1_1) == a_4_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_4_1_1: Ref ::
        { QPMask[null, one(a_4_1_1)] }
        (vas[invRecv2(a_4_1_1)] && NoPerm < FullPerm) && qpRange2(a_4_1_1) ==> (NoPerm < FullPerm ==> invRecv2(a_4_1_1) == a_4_1_1) && QPMask[null, one(a_4_1_1)] == Mask[null, one(a_4_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_4_1_1: Ref ::
        { QPMask[null, one(a_4_1_1)] }
        !((vas[invRecv2(a_4_1_1)] && NoPerm < FullPerm) && qpRange2(a_4_1_1)) ==> QPMask[null, one(a_4_1_1)] == Mask[null, one(a_4_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function foo_twos
// ==================================================

// Uninterpreted function definitions
function  foo_twos(Heap: HeapType, vas: (Set Ref), vis: (Set int)): int;
function  foo_twos'(Heap: HeapType, vas: (Set Ref), vis: (Set int)): int;
axiom (forall Heap: HeapType, vas: (Set Ref), vis: (Set int) ::
  { foo_twos(Heap, vas, vis) }
  foo_twos(Heap, vas, vis) == foo_twos'(Heap, vas, vis) && dummyFunction(foo_twos#triggerStateless(vas, vis))
);
axiom (forall Heap: HeapType, vas: (Set Ref), vis: (Set int) ::
  { foo_twos'(Heap, vas, vis) }
  dummyFunction(foo_twos#triggerStateless(vas, vis))
);

// Framing axioms
function  foo_twos#frame(frame: FrameType, vas: (Set Ref), vis: (Set int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, vas: (Set Ref), vis: (Set int) ::
  { state(Heap, Mask), foo_twos'(Heap, vas, vis) }
  state(Heap, Mask) ==> foo_twos'(Heap, vas, vis) == foo_twos#frame(FrameFragment(foo_twos#condqp3(Heap, vas, vis)), vas, vis)
);
// ==================================================
// Function used for framing of quantified permission (forall a: Ref, i: Int :: { two(a, i) } (a in as) && (i in is) ==> acc(two(a, i), write)) in function foo_twos
// ==================================================

function  foo_twos#condqp3(Heap: HeapType, vas_1_1: (Set Ref), vis_1_1: (Set int)): int;
function  sk_foo_twos#condqp3(fnAppH1: int, fnAppH2: int): Ref;
function  sk_foo_twos#condqp3_1(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, vas: (Set Ref), vis: (Set int) ::
  { foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((vas[sk_foo_twos#condqp3(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))] && vis[sk_foo_twos#condqp3_1(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))]) && NoPerm < FullPerm <==> (vas[sk_foo_twos#condqp3(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))] && vis[sk_foo_twos#condqp3_1(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))]) && NoPerm < FullPerm) && ((vas[sk_foo_twos#condqp3(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))] && vis[sk_foo_twos#condqp3_1(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis))]) && NoPerm < FullPerm ==> Heap2Heap[null, two(sk_foo_twos#condqp3(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis)), sk_foo_twos#condqp3_1(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis)))] == Heap1Heap[null, two(sk_foo_twos#condqp3(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis)), sk_foo_twos#condqp3_1(foo_twos#condqp3(Heap2Heap, vas, vis), foo_twos#condqp3(Heap1Heap, vas, vis)))]) ==> foo_twos#condqp3(Heap2Heap, vas, vis) == foo_twos#condqp3(Heap1Heap, vas, vis)
);

// Trigger function (controlling recursive postconditions)
function  foo_twos#trigger(frame: FrameType, vas: (Set Ref), vis: (Set int)): bool;

// State-independent trigger function
function  foo_twos#triggerStateless(vas: (Set Ref), vis: (Set int)): int;

// Check contract well-formedness and postcondition
procedure foo_twos#definedness(vas: (Set Ref), vis: (Set int)) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall a: Ref, i: Int :: { two(a, i) } (a in as) && (i in is) ==> acc(two(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(two(a, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource two(a, i) might not be injective. (0493b.vpr@25.12--25.30) [60648]"}
        (forall a_3_1: Ref, i_3_2: int, a_3_2: Ref, i_3_3: int ::
        { neverTriggered4(a_3_1, i_3_2), neverTriggered4(a_3_2, i_3_3) }
        ((((a_3_1 != a_3_2 && i_3_2 != i_3_3) && (vas[a_3_1] && vis[i_3_2])) && (vas[a_3_2] && vis[i_3_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_3_1 != a_3_2 || i_3_2 != i_3_3
      );
    
    // -- Define Inverse Function
      assume (forall a_3_1: Ref, i_3_2: int ::
        { Heap[null, two(a_3_1, i_3_2)] } { Mask[null, two(a_3_1, i_3_2)] } { Heap[null, two(a_3_1, i_3_2)] }
        (vas[a_3_1] && vis[i_3_2]) && NoPerm < FullPerm ==> (invRecv3(a_3_1, i_3_2) == a_3_1 && invRecv4(a_3_1, i_3_2) == i_3_2) && qpRange4(a_3_1, i_3_2)
      );
      assume (forall a_4_1_1: Ref, i_4_1_1: int ::
        { invRecv3(a_4_1_1, i_4_1_1), invRecv4(a_4_1_1, i_4_1_1) }
        ((vas[invRecv3(a_4_1_1, i_4_1_1)] && vis[invRecv4(a_4_1_1, i_4_1_1)]) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1) ==> invRecv3(a_4_1_1, i_4_1_1) == a_4_1_1 && invRecv4(a_4_1_1, i_4_1_1) == i_4_1_1
      );
    
    // -- Define updated permissions
      assume (forall a_4_1_1: Ref, i_4_1_1: int ::
        { QPMask[null, two(a_4_1_1, i_4_1_1)] }
        ((vas[invRecv3(a_4_1_1, i_4_1_1)] && vis[invRecv4(a_4_1_1, i_4_1_1)]) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1) ==> (NoPerm < FullPerm ==> invRecv3(a_4_1_1, i_4_1_1) == a_4_1_1 && invRecv4(a_4_1_1, i_4_1_1) == i_4_1_1) && QPMask[null, two(a_4_1_1, i_4_1_1)] == Mask[null, two(a_4_1_1, i_4_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_4_1_1: Ref, i_4_1_1: int ::
        { QPMask[null, two(a_4_1_1, i_4_1_1)] }
        !(((vas[invRecv3(a_4_1_1, i_4_1_1)] && vis[invRecv4(a_4_1_1, i_4_1_1)]) && NoPerm < FullPerm) && qpRange4(a_4_1_1, i_4_1_1)) ==> QPMask[null, two(a_4_1_1, i_4_1_1)] == Mask[null, two(a_4_1_1, i_4_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate one
// ==================================================

type PredicateType_one;
function  one(a_2: Ref): Field PredicateType_one FrameType;
function  one#sm(a_2: Ref): Field PredicateType_one PMaskType;
axiom (forall a_2: Ref ::
  { PredicateMaskField(one(a_2)) }
  PredicateMaskField(one(a_2)) == one#sm(a_2)
);
axiom (forall a_2: Ref ::
  { one(a_2) }
  IsPredicateField(one(a_2))
);
axiom (forall a_2: Ref ::
  { one(a_2) }
  getPredWandId(one(a_2)) == 0
);
function  one#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  one#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, a2: Ref ::
  { one(a_2), one(a2) }
  one(a_2) == one(a2) ==> a_2 == a2
);
axiom (forall a_2: Ref, a2: Ref ::
  { one#sm(a_2), one#sm(a2) }
  one#sm(a_2) == one#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: Ref ::
  { one#trigger(Heap, one(a_2)) }
  one#everUsed(one(a_2))
);

procedure one#definedness(a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of one
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, val:=Mask[a_2, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate two
// ==================================================

type PredicateType_two;
function  two(a_2: Ref, i: int): Field PredicateType_two FrameType;
function  two#sm(a_2: Ref, i: int): Field PredicateType_two PMaskType;
axiom (forall a_2: Ref, i: int ::
  { PredicateMaskField(two(a_2, i)) }
  PredicateMaskField(two(a_2, i)) == two#sm(a_2, i)
);
axiom (forall a_2: Ref, i: int ::
  { two(a_2, i) }
  IsPredicateField(two(a_2, i))
);
axiom (forall a_2: Ref, i: int ::
  { two(a_2, i) }
  getPredWandId(two(a_2, i)) == 1
);
function  two#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  two#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, i: int, a2: Ref, i2: int ::
  { two(a_2, i), two(a2, i2) }
  two(a_2, i) == two(a2, i2) ==> a_2 == a2 && i == i2
);
axiom (forall a_2: Ref, i: int, a2: Ref, i2: int ::
  { two#sm(a_2, i), two#sm(a2, i2) }
  two#sm(a_2, i) == two#sm(a2, i2) ==> a_2 == a2 && i == i2
);

axiom (forall Heap: HeapType, a_2: Ref, i: int ::
  { two#trigger(Heap, two(a_2, i)) }
  two#everUsed(two(a_2, i))
);

procedure two#definedness(a_2: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of two
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, val:=Mask[a_2, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_vals
// ==================================================

procedure test_vals(vas: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write)) -- 0493b.vpr@28.3--28.25
    
    // -- Check definedness of (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a.val might not be injective. (0493b.vpr@28.10--28.25) [60649]"}
      (forall a_1_1: Ref, a_1_2: Ref ::
      
      (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
    );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, val] } { QPMask[a_1_1, val] } { Heap[a_1_1, val] }
        vas[a_1_1] && NoPerm < FullPerm ==> qpRange5(a_1_1) && invRecv5(a_1_1) == a_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (vas[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, val] } { QPMask[a_1_1, val] } { Heap[a_1_1, val] }
        vas[a_1_1] ==> a_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((vas[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((vas[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_vals(as) == 0 -- 0493b.vpr@29.3--29.27
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_vals(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a is injective
          assert {:msg "  Precondition of function foo_vals might not hold. Quantified resource a.val might not be injective. (0493b.vpr@29.10--29.22) [60650]"}
            (forall a_2_2: Ref, a_2_3: Ref ::
            { neverTriggered6(a_2_2), neverTriggered6(a_2_3) }
            (((a_2_2 != a_2_3 && vas[a_2_2]) && vas[a_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2_2 != a_2_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_vals might not hold. There might be insufficient permission to access a.val (0493b.vpr@29.10--29.22) [60651]"}
            (forall a_2_2: Ref ::
            { Heap[a_2_2, val] } { QPMask[a_2_2, val] } { Heap[a_2_2, val] }
            vas[a_2_2] ==> FullPerm > NoPerm ==> Mask[a_2_2, val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver a
          assume (forall a_2_2: Ref ::
            { Heap[a_2_2, val] } { QPMask[a_2_2, val] } { Heap[a_2_2, val] }
            vas[a_2_2] && NoPerm < FullPerm ==> qpRange6(a_2_2) && invRecv6(a_2_2) == a_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            vas[invRecv6(o_9)] && (NoPerm < FullPerm && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_vals(Heap, vas) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_vals(as) == 0 -- 0493b.vpr@30.3--30.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_vals(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a is injective
          assert {:msg "  Precondition of function foo_vals might not hold. Quantified resource a.val might not be injective. (0493b.vpr@30.10--30.22) [60652]"}
            (forall a_3_1: Ref, a_3_2: Ref ::
            { neverTriggered7(a_3_1), neverTriggered7(a_3_2) }
            (((a_3_1 != a_3_2 && vas[a_3_1]) && vas[a_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_3_1 != a_3_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_vals might not hold. There might be insufficient permission to access a.val (0493b.vpr@30.10--30.22) [60653]"}
            (forall a_3_1: Ref ::
            { ExhaleWellDef0Heap[a_3_1, val] } { QPMask[a_3_1, val] } { ExhaleWellDef0Heap[a_3_1, val] }
            vas[a_3_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[a_3_1, val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver a
          assume (forall a_3_1: Ref ::
            { ExhaleWellDef0Heap[a_3_1, val] } { QPMask[a_3_1, val] } { ExhaleWellDef0Heap[a_3_1, val] }
            vas[a_3_1] && NoPerm < FullPerm ==> qpRange7(a_3_1) && invRecv7(a_3_1) == a_3_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            vas[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_vals(as) == 0 might not hold. (0493b.vpr@30.10--30.27) [60654]"}
      foo_vals(Heap, vas) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_vals_2
// ==================================================

procedure test_vals_2(vas: (Set Ref), bs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a1: Ref;
  var b1: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a1, $allocated];
    assume Heap[b1, $allocated];
  
  // -- Translating statement: inhale (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write)) &&
  //   (forall a$0: Ref :: { a$0.val } (a$0 in bs) ==> acc(a$0.val, write)) -- 0493b.vpr@34.3--34.44
    
    // -- Check definedness of (forall a: Ref :: { a.val } (a in as) ==> acc(a.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a.val might not be injective. (0493b.vpr@34.10--34.44) [60655]"}
      (forall a_1_1: Ref, a_1_2: Ref ::
      
      (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
    );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, val] } { QPMask[a_1_1, val] } { Heap[a_1_1, val] }
        vas[a_1_1] && NoPerm < FullPerm ==> qpRange8(a_1_1) && invRecv8(a_1_1) == a_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (vas[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, val] } { QPMask[a_1_1, val] } { Heap[a_1_1, val] }
        vas[a_1_1] ==> a_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((vas[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((vas[invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a$0: Ref :: { a$0.val } (a$0 in bs) ==> acc(a$0.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource a$0.val might not be injective. (0493b.vpr@34.10--34.44) [60656]"}
      (forall a$0_1: Ref, a$0_1_1: Ref ::
      
      (((a$0_1 != a$0_1_1 && bs[a$0_1]) && bs[a$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$0_1 != a$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall a$0_1: Ref ::
        { Heap[a$0_1, val] } { QPMask[a$0_1, val] } { Heap[a$0_1, val] }
        bs[a$0_1] && NoPerm < FullPerm ==> qpRange9(a$0_1) && invRecv9(a$0_1) == a$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (bs[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall a$0_1: Ref ::
        { Heap[a$0_1, val] } { QPMask[a$0_1, val] } { Heap[a$0_1, val] }
        bs[a$0_1] ==> a$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((bs[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((bs[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_vals(as) == 0 -- 0493b.vpr@35.3--35.27
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_vals(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a is injective
          assert {:msg "  Precondition of function foo_vals might not hold. Quantified resource a.val might not be injective. (0493b.vpr@35.10--35.22) [60657]"}
            (forall a_2_2: Ref, a_2_3: Ref ::
            { neverTriggered10(a_2_2), neverTriggered10(a_2_3) }
            (((a_2_2 != a_2_3 && vas[a_2_2]) && vas[a_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_2_2 != a_2_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_vals might not hold. There might be insufficient permission to access a.val (0493b.vpr@35.10--35.22) [60658]"}
            (forall a_2_2: Ref ::
            { Heap[a_2_2, val] } { QPMask[a_2_2, val] } { Heap[a_2_2, val] }
            vas[a_2_2] ==> FullPerm > NoPerm ==> Mask[a_2_2, val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver a
          assume (forall a_2_2: Ref ::
            { Heap[a_2_2, val] } { QPMask[a_2_2, val] } { Heap[a_2_2, val] }
            vas[a_2_2] && NoPerm < FullPerm ==> qpRange10(a_2_2) && invRecv10(a_2_2) == a_2_2
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            vas[invRecv10(o_9)] && (NoPerm < FullPerm && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_vals(Heap, vas) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a1 in as) -- 0493b.vpr@38.10--38.18
    assume vas[a1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a1.val := 1 + a1.val - 1 -- 0493b.vpr@39.3--39.27
    
    // -- Check definedness of 1 + a1.val - 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@39.3--39.27) [60659]"}
        HasDirectPerm(Mask, a1, val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@39.3--39.27) [60660]"}
      FullPerm == Mask[a1, val];
    Heap := Heap[a1, val:=1 + Heap[a1, val] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b1 in bs) -- 0493b.vpr@42.10--42.18
    assume bs[b1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b1.val := 1 -- 0493b.vpr@43.3--43.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b1.val (0493b.vpr@43.3--43.14) [60661]"}
      FullPerm == Mask[b1, val];
    Heap := Heap[b1, val:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall a$1: Ref :: { a$1.val } (a$1 in bs) ==> acc(a$1.val, write)) -- 0493b.vpr@44.3--44.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a$1: Ref :: { a$1.val } (a$1 in bs) ==> acc(a$1.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a$1 is injective
      assert {:msg "  Exhale might fail. Quantified resource a$1.val might not be injective. (0493b.vpr@44.10--44.25) [60663]"}
        (forall a$1_1: Ref, a$1_1_1: Ref ::
        { neverTriggered11(a$1_1), neverTriggered11(a$1_1_1) }
        (((a$1_1 != a$1_1_1 && bs[a$1_1]) && bs[a$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$1_1 != a$1_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a$1.val (0493b.vpr@44.10--44.25) [60664]"}
        (forall a$1_1: Ref ::
        { Heap[a$1_1, val] } { QPMask[a$1_1, val] } { Heap[a$1_1, val] }
        bs[a$1_1] ==> Mask[a$1_1, val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a$1
      assume (forall a$1_1: Ref ::
        { Heap[a$1_1, val] } { QPMask[a$1_1, val] } { Heap[a$1_1, val] }
        bs[a$1_1] && NoPerm < FullPerm ==> qpRange11(a$1_1) && invRecv11(a$1_1) == a$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        bs[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (bs[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(bs[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
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
  
  // -- Translating statement: exhale foo_vals(as) == 0 -- 0493b.vpr@46.3--46.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_vals(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver a is injective
          assert {:msg "  Precondition of function foo_vals might not hold. Quantified resource a.val might not be injective. (0493b.vpr@46.10--46.22) [60665]"}
            (forall a_3_1: Ref, a_3_2: Ref ::
            { neverTriggered12(a_3_1), neverTriggered12(a_3_2) }
            (((a_3_1 != a_3_2 && vas[a_3_1]) && vas[a_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_3_1 != a_3_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_vals might not hold. There might be insufficient permission to access a.val (0493b.vpr@46.10--46.22) [60666]"}
            (forall a_3_1: Ref ::
            { ExhaleWellDef0Heap[a_3_1, val] } { QPMask[a_3_1, val] } { ExhaleWellDef0Heap[a_3_1, val] }
            vas[a_3_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[a_3_1, val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver a
          assume (forall a_3_1: Ref ::
            { ExhaleWellDef0Heap[a_3_1, val] } { QPMask[a_3_1, val] } { ExhaleWellDef0Heap[a_3_1, val] }
            vas[a_3_1] && NoPerm < FullPerm ==> qpRange12(a_3_1) && invRecv12(a_3_1) == a_3_1
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            vas[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_vals(as) == 0 might not hold. (0493b.vpr@46.10--46.27) [60667]"}
      foo_vals(Heap, vas) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_ones
// ==================================================

procedure test_ones(vas: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write)) -- 0493b.vpr@50.3--50.24
    
    // -- Check definedness of (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(one(a), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource one(a) might not be injective. (0493b.vpr@50.10--50.24) [60668]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered13(a_1_1), neverTriggered13(a_1_2) }
        (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[null, one(a_1_1)] } { Mask[null, one(a_1_1)] } { Heap[null, one(a_1_1)] }
        vas[a_1_1] && NoPerm < FullPerm ==> invRecv13(a_1_1) == a_1_1 && qpRange13(a_1_1)
      );
      assume (forall a_2_1: Ref ::
        { invRecv13(a_2_1) }
        (vas[invRecv13(a_2_1)] && NoPerm < FullPerm) && qpRange13(a_2_1) ==> invRecv13(a_2_1) == a_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: Ref ::
        { QPMask[null, one(a_2_1)] }
        (vas[invRecv13(a_2_1)] && NoPerm < FullPerm) && qpRange13(a_2_1) ==> (NoPerm < FullPerm ==> invRecv13(a_2_1) == a_2_1) && QPMask[null, one(a_2_1)] == Mask[null, one(a_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: Ref ::
        { QPMask[null, one(a_2_1)] }
        !((vas[invRecv13(a_2_1)] && NoPerm < FullPerm) && qpRange13(a_2_1)) ==> QPMask[null, one(a_2_1)] == Mask[null, one(a_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_ones(as) == 0 -- 0493b.vpr@51.3--51.27
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_ones(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(one(a), write) is injective
          assert {:msg "  Precondition of function foo_ones might not hold. Quantified resource one(a) might not be injective. (0493b.vpr@51.10--51.22) [60669]"}
            (forall a_4: Ref, a_4_1: Ref ::
            { neverTriggered14(a_4), neverTriggered14(a_4_1) }
            (((a_4 != a_4_1 && vas[a_4]) && vas[a_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_4 != a_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_ones might not hold. There might be insufficient permission to access one(a) (0493b.vpr@51.10--51.22) [60670]"}
            (forall a_4: Ref ::
            { Heap[null, one(a_4)] } { Mask[null, one(a_4)] } { Heap[null, one(a_4)] }
            vas[a_4] ==> FullPerm > NoPerm ==> Mask[null, one(a_4)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(one(a), write)
          assume (forall a_4: Ref ::
            { Heap[null, one(a_4)] } { Mask[null, one(a_4)] } { Heap[null, one(a_4)] }
            vas[a_4] && NoPerm < FullPerm ==> invRecv14(a_4) == a_4 && qpRange14(a_4)
          );
          assume (forall a_5_1_1: Ref ::
            { invRecv14(a_5_1_1) }
            (vas[invRecv14(a_5_1_1)] && NoPerm < FullPerm) && qpRange14(a_5_1_1) ==> invRecv14(a_5_1_1) == a_5_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_ones(Heap, vas) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_ones(as) == 0 -- 0493b.vpr@52.3--52.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_ones(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(one(a), write) is injective
          assert {:msg "  Precondition of function foo_ones might not hold. Quantified resource one(a) might not be injective. (0493b.vpr@52.10--52.22) [60671]"}
            (forall a_6_1: Ref, a_6_2: Ref ::
            { neverTriggered15(a_6_1), neverTriggered15(a_6_2) }
            (((a_6_1 != a_6_2 && vas[a_6_1]) && vas[a_6_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_6_1 != a_6_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_ones might not hold. There might be insufficient permission to access one(a) (0493b.vpr@52.10--52.22) [60672]"}
            (forall a_6_1: Ref ::
            { ExhaleWellDef0Heap[null, one(a_6_1)] } { ExhaleWellDef0Mask[null, one(a_6_1)] } { ExhaleWellDef0Heap[null, one(a_6_1)] }
            vas[a_6_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, one(a_6_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(one(a), write)
          assume (forall a_6_1: Ref ::
            { ExhaleWellDef0Heap[null, one(a_6_1)] } { ExhaleWellDef0Mask[null, one(a_6_1)] } { ExhaleWellDef0Heap[null, one(a_6_1)] }
            vas[a_6_1] && NoPerm < FullPerm ==> invRecv15(a_6_1) == a_6_1 && qpRange15(a_6_1)
          );
          assume (forall a_7_1_1: Ref ::
            { invRecv15(a_7_1_1) }
            (vas[invRecv15(a_7_1_1)] && NoPerm < FullPerm) && qpRange15(a_7_1_1) ==> invRecv15(a_7_1_1) == a_7_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_ones(as) == 0 might not hold. (0493b.vpr@52.10--52.27) [60673]"}
      foo_ones(Heap, vas) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_ones_2
// ==================================================

procedure test_ones_2(vas: (Set Ref), bs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a1: Ref;
  var b1: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a1, $allocated];
    assume Heap[b1, $allocated];
  
  // -- Translating statement: inhale (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write)) &&
  //   (forall a$0: Ref :: { one(a$0) } (a$0 in bs) ==> acc(one(a$0), write)) -- 0493b.vpr@56.3--56.42
    
    // -- Check definedness of (forall a: Ref :: { one(a) } (a in as) ==> acc(one(a), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(one(a), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource one(a) might not be injective. (0493b.vpr@56.10--56.42) [60674]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered16(a_1_1), neverTriggered16(a_1_2) }
        (((a_1_1 != a_1_2 && vas[a_1_1]) && vas[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref ::
        { Heap[null, one(a_1_1)] } { Mask[null, one(a_1_1)] } { Heap[null, one(a_1_1)] }
        vas[a_1_1] && NoPerm < FullPerm ==> invRecv16(a_1_1) == a_1_1 && qpRange16(a_1_1)
      );
      assume (forall a_2_1: Ref ::
        { invRecv16(a_2_1) }
        (vas[invRecv16(a_2_1)] && NoPerm < FullPerm) && qpRange16(a_2_1) ==> invRecv16(a_2_1) == a_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: Ref ::
        { QPMask[null, one(a_2_1)] }
        (vas[invRecv16(a_2_1)] && NoPerm < FullPerm) && qpRange16(a_2_1) ==> (NoPerm < FullPerm ==> invRecv16(a_2_1) == a_2_1) && QPMask[null, one(a_2_1)] == Mask[null, one(a_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: Ref ::
        { QPMask[null, one(a_2_1)] }
        !((vas[invRecv16(a_2_1)] && NoPerm < FullPerm) && qpRange16(a_2_1)) ==> QPMask[null, one(a_2_1)] == Mask[null, one(a_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a$0: Ref :: { one(a$0) } (a$0 in bs) ==> acc(one(a$0), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(one(a$0), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource one(a$0) might not be injective. (0493b.vpr@56.10--56.42) [60675]"}
        (forall a$0_1: Ref, a$0_1_1: Ref ::
        { neverTriggered17(a$0_1), neverTriggered17(a$0_1_1) }
        (((a$0_1 != a$0_1_1 && bs[a$0_1]) && bs[a$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$0_1 != a$0_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a$0_1: Ref ::
        { Heap[null, one(a$0_1)] } { Mask[null, one(a$0_1)] } { Heap[null, one(a$0_1)] }
        bs[a$0_1] && NoPerm < FullPerm ==> invRecv17(a$0_1) == a$0_1 && qpRange17(a$0_1)
      );
      assume (forall a_4: Ref ::
        { invRecv17(a_4) }
        (bs[invRecv17(a_4)] && NoPerm < FullPerm) && qpRange17(a_4) ==> invRecv17(a_4) == a_4
      );
    
    // -- Define updated permissions
      assume (forall a_4: Ref ::
        { QPMask[null, one(a_4)] }
        (bs[invRecv17(a_4)] && NoPerm < FullPerm) && qpRange17(a_4) ==> (NoPerm < FullPerm ==> invRecv17(a_4) == a_4) && QPMask[null, one(a_4)] == Mask[null, one(a_4)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_4: Ref ::
        { QPMask[null, one(a_4)] }
        !((bs[invRecv17(a_4)] && NoPerm < FullPerm) && qpRange17(a_4)) ==> QPMask[null, one(a_4)] == Mask[null, one(a_4)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_ones(as) == 0 -- 0493b.vpr@57.3--57.27
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_ones(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(one(a), write) is injective
          assert {:msg "  Precondition of function foo_ones might not hold. Quantified resource one(a) might not be injective. (0493b.vpr@57.10--57.22) [60676]"}
            (forall a_5_1: Ref, a_5_2: Ref ::
            { neverTriggered18(a_5_1), neverTriggered18(a_5_2) }
            (((a_5_1 != a_5_2 && vas[a_5_1]) && vas[a_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_5_1 != a_5_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_ones might not hold. There might be insufficient permission to access one(a) (0493b.vpr@57.10--57.22) [60677]"}
            (forall a_5_1: Ref ::
            { Heap[null, one(a_5_1)] } { Mask[null, one(a_5_1)] } { Heap[null, one(a_5_1)] }
            vas[a_5_1] ==> FullPerm > NoPerm ==> Mask[null, one(a_5_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(one(a), write)
          assume (forall a_5_1: Ref ::
            { Heap[null, one(a_5_1)] } { Mask[null, one(a_5_1)] } { Heap[null, one(a_5_1)] }
            vas[a_5_1] && NoPerm < FullPerm ==> invRecv18(a_5_1) == a_5_1 && qpRange18(a_5_1)
          );
          assume (forall a_6_1_1: Ref ::
            { invRecv18(a_6_1_1) }
            (vas[invRecv18(a_6_1_1)] && NoPerm < FullPerm) && qpRange18(a_6_1_1) ==> invRecv18(a_6_1_1) == a_6_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_ones(Heap, vas) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a1 in as) -- 0493b.vpr@60.10--60.18
    assume vas[a1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(one(a1), write) -- 0493b.vpr@61.3--61.17
    assume one#trigger(Heap, one(a1));
    assume Heap[null, one(a1)] == FrameFragment(Heap[a1, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding one(a1) might fail. There might be insufficient permission to access one(a1) (0493b.vpr@61.3--61.17) [60680]"}
        perm <= Mask[null, one(a1)];
    }
    Mask := Mask[null, one(a1):=Mask[null, one(a1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, one(a1))) {
        havoc newVersion;
        Heap := Heap[null, one(a1):=newVersion];
      }
    perm := FullPerm;
    assume a1 != null;
    Mask := Mask[a1, val:=Mask[a1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a1.val := 1 + a1.val - 1 -- 0493b.vpr@62.3--62.27
    
    // -- Check definedness of 1 + a1.val - 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@62.3--62.27) [60682]"}
        HasDirectPerm(Mask, a1, val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@62.3--62.27) [60683]"}
      FullPerm == Mask[a1, val];
    Heap := Heap[a1, val:=1 + Heap[a1, val] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(one(a1), write) -- 0493b.vpr@63.3--63.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding one(a1) might fail. There might be insufficient permission to access a1.val (0493b.vpr@63.3--63.15) [60686]"}
        perm <= Mask[a1, val];
    }
    Mask := Mask[a1, val:=Mask[a1, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, one(a1):=Mask[null, one(a1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume one#trigger(Heap, one(a1));
    assume Heap[null, one(a1)] == FrameFragment(Heap[a1, val]);
    if (!HasDirectPerm(Mask, null, one(a1))) {
      Heap := Heap[null, one#sm(a1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, one(a1):=freshVersion];
    }
    Heap := Heap[null, one#sm(a1):=Heap[null, one#sm(a1)][a1, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b1 in bs) -- 0493b.vpr@66.10--66.18
    assume bs[b1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(one(b1), write) -- 0493b.vpr@67.3--67.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access one(b1) (0493b.vpr@67.10--67.17) [60689]"}
        perm <= Mask[null, one(b1)];
    }
    Mask := Mask[null, one(b1):=Mask[null, one(b1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall a$1: Ref ::
  //     { one(a$1) }
  //     (a$1 in (bs setminus Set(b1))) ==> acc(one(a$1), write)) -- 0493b.vpr@68.3--68.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a$1: Ref :: { one(a$1) } (a$1 in (bs setminus Set(b1))) ==> acc(one(a$1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(one(a$1), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource one(a$1) might not be injective. (0493b.vpr@68.10--68.41) [60691]"}
        (forall a$1_1: Ref, a$1_1_1: Ref ::
        { neverTriggered19(a$1_1), neverTriggered19(a$1_1_1) }
        (((a$1_1 != a$1_1_1 && Set#Difference(bs, Set#Singleton(b1))[a$1_1]) && Set#Difference(bs, Set#Singleton(b1))[a$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$1_1 != a$1_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access one(a$1) (0493b.vpr@68.10--68.41) [60692]"}
        (forall a$1_1: Ref ::
        { Heap[null, one(a$1_1)] } { Mask[null, one(a$1_1)] } { Heap[null, one(a$1_1)] }
        Set#Difference(bs, Set#Singleton(b1))[a$1_1] ==> Mask[null, one(a$1_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(one(a$1), write)
      assume (forall a$1_1: Ref ::
        { Heap[null, one(a$1_1)] } { Mask[null, one(a$1_1)] } { Heap[null, one(a$1_1)] }
        Set#Difference(bs, Set#Singleton(b1))[a$1_1] && NoPerm < FullPerm ==> invRecv19(a$1_1) == a$1_1 && qpRange19(a$1_1)
      );
      assume (forall a_7: Ref ::
        { invRecv19(a_7) }
        (Set#Difference(bs, Set#Singleton(b1))[invRecv19(a_7)] && NoPerm < FullPerm) && qpRange19(a_7) ==> invRecv19(a_7) == a_7
      );
    
    // -- assume permission updates
      assume (forall a_7: Ref ::
        { QPMask[null, one(a_7)] }
        (Set#Difference(bs, Set#Singleton(b1))[invRecv19(a_7)] && NoPerm < FullPerm) && qpRange19(a_7) ==> invRecv19(a_7) == a_7 && QPMask[null, one(a_7)] == Mask[null, one(a_7)] - FullPerm
      );
      assume (forall a_7: Ref ::
        { QPMask[null, one(a_7)] }
        !((Set#Difference(bs, Set#Singleton(b1))[invRecv19(a_7)] && NoPerm < FullPerm) && qpRange19(a_7)) ==> QPMask[null, one(a_7)] == Mask[null, one(a_7)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_ones(as) == 0 -- 0493b.vpr@70.3--70.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_ones(as) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(one(a), write) is injective
          assert {:msg "  Precondition of function foo_ones might not hold. Quantified resource one(a) might not be injective. (0493b.vpr@70.10--70.22) [60693]"}
            (forall a_8_1: Ref, a_8_2: Ref ::
            { neverTriggered20(a_8_1), neverTriggered20(a_8_2) }
            (((a_8_1 != a_8_2 && vas[a_8_1]) && vas[a_8_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_8_1 != a_8_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_ones might not hold. There might be insufficient permission to access one(a) (0493b.vpr@70.10--70.22) [60694]"}
            (forall a_8_1: Ref ::
            { ExhaleWellDef0Heap[null, one(a_8_1)] } { ExhaleWellDef0Mask[null, one(a_8_1)] } { ExhaleWellDef0Heap[null, one(a_8_1)] }
            vas[a_8_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, one(a_8_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(one(a), write)
          assume (forall a_8_1: Ref ::
            { ExhaleWellDef0Heap[null, one(a_8_1)] } { ExhaleWellDef0Mask[null, one(a_8_1)] } { ExhaleWellDef0Heap[null, one(a_8_1)] }
            vas[a_8_1] && NoPerm < FullPerm ==> invRecv20(a_8_1) == a_8_1 && qpRange20(a_8_1)
          );
          assume (forall a_9_1_1: Ref ::
            { invRecv20(a_9_1_1) }
            (vas[invRecv20(a_9_1_1)] && NoPerm < FullPerm) && qpRange20(a_9_1_1) ==> invRecv20(a_9_1_1) == a_9_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_ones(as) == 0 might not hold. (0493b.vpr@70.10--70.27) [60695]"}
      foo_ones(Heap, vas) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_twos
// ==================================================

procedure test_twos(vas: (Set Ref), vis: (Set int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Ref, i: Int ::
  //     { two(a, i) }
  //     (a in as) && (i in is) ==> acc(two(a, i), write)) -- 0493b.vpr@74.3--74.28
    
    // -- Check definedness of (forall a: Ref, i: Int :: { two(a, i) } (a in as) && (i in is) ==> acc(two(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(two(a, i), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource two(a, i) might not be injective. (0493b.vpr@74.10--74.28) [60696]"}
        (forall a_1_1: Ref, i_1: int, a_1_2: Ref, i_1_1: int ::
        { neverTriggered22(a_1_1, i_1), neverTriggered22(a_1_2, i_1_1) }
        ((((a_1_1 != a_1_2 && i_1 != i_1_1) && (vas[a_1_1] && vis[i_1])) && (vas[a_1_2] && vis[i_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref, i_1: int ::
        { Heap[null, two(a_1_1, i_1)] } { Mask[null, two(a_1_1, i_1)] } { Heap[null, two(a_1_1, i_1)] }
        (vas[a_1_1] && vis[i_1]) && NoPerm < FullPerm ==> (invRecv21(a_1_1, i_1) == a_1_1 && invRecv22(a_1_1, i_1) == i_1) && qpRange22(a_1_1, i_1)
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { invRecv21(a_2_1, i_2_1), invRecv22(a_2_1, i_2_1) }
        ((vas[invRecv21(a_2_1, i_2_1)] && vis[invRecv22(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange22(a_2_1, i_2_1) ==> invRecv21(a_2_1, i_2_1) == a_2_1 && invRecv22(a_2_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        ((vas[invRecv21(a_2_1, i_2_1)] && vis[invRecv22(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange22(a_2_1, i_2_1) ==> (NoPerm < FullPerm ==> invRecv21(a_2_1, i_2_1) == a_2_1 && invRecv22(a_2_1, i_2_1) == i_2_1) && QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        !(((vas[invRecv21(a_2_1, i_2_1)] && vis[invRecv22(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange22(a_2_1, i_2_1)) ==> QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_twos(as, is) == 0 -- 0493b.vpr@75.3--75.31
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@75.10--75.26) [60697]"}
            (forall a_4: Ref, i_4_1: int, a_4_1: Ref, i_4_2: int ::
            { neverTriggered24(a_4, i_4_1), neverTriggered24(a_4_1, i_4_2) }
            ((((a_4 != a_4_1 && i_4_1 != i_4_2) && (vas[a_4] && vis[i_4_1])) && (vas[a_4_1] && vis[i_4_2])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_4 != a_4_1 || i_4_1 != i_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@75.10--75.26) [60698]"}
            (forall a_4: Ref, i_4_1: int ::
            { Heap[null, two(a_4, i_4_1)] } { Mask[null, two(a_4, i_4_1)] } { Heap[null, two(a_4, i_4_1)] }
            vas[a_4] && vis[i_4_1] ==> FullPerm > NoPerm ==> Mask[null, two(a_4, i_4_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_4: Ref, i_4_1: int ::
            { Heap[null, two(a_4, i_4_1)] } { Mask[null, two(a_4, i_4_1)] } { Heap[null, two(a_4, i_4_1)] }
            (vas[a_4] && vis[i_4_1]) && NoPerm < FullPerm ==> (invRecv23(a_4, i_4_1) == a_4 && invRecv24(a_4, i_4_1) == i_4_1) && qpRange24(a_4, i_4_1)
          );
          assume (forall a_5_1_1: Ref, i_5_1_1: int ::
            { invRecv23(a_5_1_1, i_5_1_1), invRecv24(a_5_1_1, i_5_1_1) }
            ((vas[invRecv23(a_5_1_1, i_5_1_1)] && vis[invRecv24(a_5_1_1, i_5_1_1)]) && NoPerm < FullPerm) && qpRange24(a_5_1_1, i_5_1_1) ==> invRecv23(a_5_1_1, i_5_1_1) == a_5_1_1 && invRecv24(a_5_1_1, i_5_1_1) == i_5_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_twos(as, is) == 0 -- 0493b.vpr@76.3--76.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@76.10--76.26) [60699]"}
            (forall a_6_1: Ref, i_6_2: int, a_6_2: Ref, i_6_3: int ::
            { neverTriggered26(a_6_1, i_6_2), neverTriggered26(a_6_2, i_6_3) }
            ((((a_6_1 != a_6_2 && i_6_2 != i_6_3) && (vas[a_6_1] && vis[i_6_2])) && (vas[a_6_2] && vis[i_6_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_6_1 != a_6_2 || i_6_2 != i_6_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@76.10--76.26) [60700]"}
            (forall a_6_1: Ref, i_6_2: int ::
            { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] }
            vas[a_6_1] && vis[i_6_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_6_1: Ref, i_6_2: int ::
            { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] }
            (vas[a_6_1] && vis[i_6_2]) && NoPerm < FullPerm ==> (invRecv25(a_6_1, i_6_2) == a_6_1 && invRecv26(a_6_1, i_6_2) == i_6_2) && qpRange26(a_6_1, i_6_2)
          );
          assume (forall a_7_1_1: Ref, i_7_1_1: int ::
            { invRecv25(a_7_1_1, i_7_1_1), invRecv26(a_7_1_1, i_7_1_1) }
            ((vas[invRecv25(a_7_1_1, i_7_1_1)] && vis[invRecv26(a_7_1_1, i_7_1_1)]) && NoPerm < FullPerm) && qpRange26(a_7_1_1, i_7_1_1) ==> invRecv25(a_7_1_1, i_7_1_1) == a_7_1_1 && invRecv26(a_7_1_1, i_7_1_1) == i_7_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_twos(as, is) == 0 might not hold. (0493b.vpr@76.10--76.31) [60701]"}
      foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_twos_2
// ==================================================

procedure test_twos_2(vas: (Set Ref), vis: (Set int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a1: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i1_9: int;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a1, $allocated];
  
  // -- Translating statement: inhale (forall a: Ref, i: Int ::
  //     { two(a, i) }
  //     (a in as) && (i in is) ==> acc(two(a, i), write)) -- 0493b.vpr@80.3--80.28
    
    // -- Check definedness of (forall a: Ref, i: Int :: { two(a, i) } (a in as) && (i in is) ==> acc(two(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(two(a, i), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource two(a, i) might not be injective. (0493b.vpr@80.10--80.28) [60702]"}
        (forall a_1_1: Ref, i_1: int, a_1_2: Ref, i_1_1: int ::
        { neverTriggered28(a_1_1, i_1), neverTriggered28(a_1_2, i_1_1) }
        ((((a_1_1 != a_1_2 && i_1 != i_1_1) && (vas[a_1_1] && vis[i_1])) && (vas[a_1_2] && vis[i_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref, i_1: int ::
        { Heap[null, two(a_1_1, i_1)] } { Mask[null, two(a_1_1, i_1)] } { Heap[null, two(a_1_1, i_1)] }
        (vas[a_1_1] && vis[i_1]) && NoPerm < FullPerm ==> (invRecv27(a_1_1, i_1) == a_1_1 && invRecv28(a_1_1, i_1) == i_1) && qpRange28(a_1_1, i_1)
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { invRecv27(a_2_1, i_2_1), invRecv28(a_2_1, i_2_1) }
        ((vas[invRecv27(a_2_1, i_2_1)] && vis[invRecv28(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange28(a_2_1, i_2_1) ==> invRecv27(a_2_1, i_2_1) == a_2_1 && invRecv28(a_2_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        ((vas[invRecv27(a_2_1, i_2_1)] && vis[invRecv28(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange28(a_2_1, i_2_1) ==> (NoPerm < FullPerm ==> invRecv27(a_2_1, i_2_1) == a_2_1 && invRecv28(a_2_1, i_2_1) == i_2_1) && QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        !(((vas[invRecv27(a_2_1, i_2_1)] && vis[invRecv28(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange28(a_2_1, i_2_1)) ==> QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_twos(as, is) == 0 -- 0493b.vpr@81.3--81.31
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@81.10--81.26) [60703]"}
            (forall a_4: Ref, i_4_1: int, a_4_1: Ref, i_4_2: int ::
            { neverTriggered30(a_4, i_4_1), neverTriggered30(a_4_1, i_4_2) }
            ((((a_4 != a_4_1 && i_4_1 != i_4_2) && (vas[a_4] && vis[i_4_1])) && (vas[a_4_1] && vis[i_4_2])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_4 != a_4_1 || i_4_1 != i_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@81.10--81.26) [60704]"}
            (forall a_4: Ref, i_4_1: int ::
            { Heap[null, two(a_4, i_4_1)] } { Mask[null, two(a_4, i_4_1)] } { Heap[null, two(a_4, i_4_1)] }
            vas[a_4] && vis[i_4_1] ==> FullPerm > NoPerm ==> Mask[null, two(a_4, i_4_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_4: Ref, i_4_1: int ::
            { Heap[null, two(a_4, i_4_1)] } { Mask[null, two(a_4, i_4_1)] } { Heap[null, two(a_4, i_4_1)] }
            (vas[a_4] && vis[i_4_1]) && NoPerm < FullPerm ==> (invRecv29(a_4, i_4_1) == a_4 && invRecv30(a_4, i_4_1) == i_4_1) && qpRange30(a_4, i_4_1)
          );
          assume (forall a_5_1_1: Ref, i_5_1_1: int ::
            { invRecv29(a_5_1_1, i_5_1_1), invRecv30(a_5_1_1, i_5_1_1) }
            ((vas[invRecv29(a_5_1_1, i_5_1_1)] && vis[invRecv30(a_5_1_1, i_5_1_1)]) && NoPerm < FullPerm) && qpRange30(a_5_1_1, i_5_1_1) ==> invRecv29(a_5_1_1, i_5_1_1) == a_5_1_1 && invRecv30(a_5_1_1, i_5_1_1) == i_5_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a1 in as) -- 0493b.vpr@84.10--84.18
    assume vas[a1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (i1 in is) -- 0493b.vpr@84.22--84.30
    assume vis[i1_9];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(two(a1, i1), write) -- 0493b.vpr@85.3--85.21
    assume two#trigger(Heap, two(a1, i1_9));
    assume Heap[null, two(a1, i1_9)] == FrameFragment(Heap[a1, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding two(a1, i1) might fail. There might be insufficient permission to access two(a1, i1) (0493b.vpr@85.3--85.21) [60707]"}
        perm <= Mask[null, two(a1, i1_9)];
    }
    Mask := Mask[null, two(a1, i1_9):=Mask[null, two(a1, i1_9)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, two(a1, i1_9))) {
        havoc newVersion;
        Heap := Heap[null, two(a1, i1_9):=newVersion];
      }
    perm := FullPerm;
    assume a1 != null;
    Mask := Mask[a1, val:=Mask[a1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(two(a1, i1), write) -- 0493b.vpr@86.3--86.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding two(a1, i1) might fail. There might be insufficient permission to access a1.val (0493b.vpr@86.3--86.19) [60711]"}
        perm <= Mask[a1, val];
    }
    Mask := Mask[a1, val:=Mask[a1, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, two(a1, i1_9):=Mask[null, two(a1, i1_9)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume two#trigger(Heap, two(a1, i1_9));
    assume Heap[null, two(a1, i1_9)] == FrameFragment(Heap[a1, val]);
    if (!HasDirectPerm(Mask, null, two(a1, i1_9))) {
      Heap := Heap[null, two#sm(a1, i1_9):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, two(a1, i1_9):=freshVersion];
    }
    Heap := Heap[null, two#sm(a1, i1_9):=Heap[null, two#sm(a1, i1_9)][a1, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_twos(as, is) == 0 -- 0493b.vpr@88.3--88.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@88.10--88.26) [60713]"}
            (forall a_6_1: Ref, i_6_2: int, a_6_2: Ref, i_6_3: int ::
            { neverTriggered32(a_6_1, i_6_2), neverTriggered32(a_6_2, i_6_3) }
            ((((a_6_1 != a_6_2 && i_6_2 != i_6_3) && (vas[a_6_1] && vis[i_6_2])) && (vas[a_6_2] && vis[i_6_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_6_1 != a_6_2 || i_6_2 != i_6_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@88.10--88.26) [60714]"}
            (forall a_6_1: Ref, i_6_2: int ::
            { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] }
            vas[a_6_1] && vis[i_6_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_6_1: Ref, i_6_2: int ::
            { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Mask[null, two(a_6_1, i_6_2)] } { ExhaleWellDef0Heap[null, two(a_6_1, i_6_2)] }
            (vas[a_6_1] && vis[i_6_2]) && NoPerm < FullPerm ==> (invRecv31(a_6_1, i_6_2) == a_6_1 && invRecv32(a_6_1, i_6_2) == i_6_2) && qpRange32(a_6_1, i_6_2)
          );
          assume (forall a_7_1_1: Ref, i_7_1_1: int ::
            { invRecv31(a_7_1_1, i_7_1_1), invRecv32(a_7_1_1, i_7_1_1) }
            ((vas[invRecv31(a_7_1_1, i_7_1_1)] && vis[invRecv32(a_7_1_1, i_7_1_1)]) && NoPerm < FullPerm) && qpRange32(a_7_1_1, i_7_1_1) ==> invRecv31(a_7_1_1, i_7_1_1) == a_7_1_1 && invRecv32(a_7_1_1, i_7_1_1) == i_7_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_twos(as, is) == 0 might not hold. (0493b.vpr@88.10--88.31) [60715]"}
      foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_twos_3
// ==================================================

procedure test_twos_3(vas: (Set Ref), vis: (Set int), bs: (Set Ref), js: (Set int)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b1: Ref;
  var a1: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var j1_2: int;
  var perm: Perm;
  var i1_9: int;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[b1, $allocated];
    assume Heap[a1, $allocated];
  
  // -- Translating statement: inhale (forall a: Ref, i: Int ::
  //     { two(a, i) }
  //     (a in as) && (i in is) ==> acc(two(a, i), write)) &&
  //   (forall a$0: Ref, i$0: Int ::
  //     { two(a$0, i$0) }
  //     (a$0 in bs) && (i$0 in js) ==> acc(two(a$0, i$0), write)) -- 0493b.vpr@92.3--92.50
    
    // -- Check definedness of (forall a: Ref, i: Int :: { two(a, i) } (a in as) && (i in is) ==> acc(two(a, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(two(a, i), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource two(a, i) might not be injective. (0493b.vpr@92.10--92.50) [60716]"}
        (forall a_1_1: Ref, i_1: int, a_1_2: Ref, i_1_1: int ::
        { neverTriggered34(a_1_1, i_1), neverTriggered34(a_1_2, i_1_1) }
        ((((a_1_1 != a_1_2 && i_1 != i_1_1) && (vas[a_1_1] && vis[i_1])) && (vas[a_1_2] && vis[i_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2 || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: Ref, i_1: int ::
        { Heap[null, two(a_1_1, i_1)] } { Mask[null, two(a_1_1, i_1)] } { Heap[null, two(a_1_1, i_1)] }
        (vas[a_1_1] && vis[i_1]) && NoPerm < FullPerm ==> (invRecv33(a_1_1, i_1) == a_1_1 && invRecv34(a_1_1, i_1) == i_1) && qpRange34(a_1_1, i_1)
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { invRecv33(a_2_1, i_2_1), invRecv34(a_2_1, i_2_1) }
        ((vas[invRecv33(a_2_1, i_2_1)] && vis[invRecv34(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange34(a_2_1, i_2_1) ==> invRecv33(a_2_1, i_2_1) == a_2_1 && invRecv34(a_2_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        ((vas[invRecv33(a_2_1, i_2_1)] && vis[invRecv34(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange34(a_2_1, i_2_1) ==> (NoPerm < FullPerm ==> invRecv33(a_2_1, i_2_1) == a_2_1 && invRecv34(a_2_1, i_2_1) == i_2_1) && QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_2_1: Ref, i_2_1: int ::
        { QPMask[null, two(a_2_1, i_2_1)] }
        !(((vas[invRecv33(a_2_1, i_2_1)] && vis[invRecv34(a_2_1, i_2_1)]) && NoPerm < FullPerm) && qpRange34(a_2_1, i_2_1)) ==> QPMask[null, two(a_2_1, i_2_1)] == Mask[null, two(a_2_1, i_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a$0: Ref, i$0: Int :: { two(a$0, i$0) } (a$0 in bs) && (i$0 in js) ==> acc(two(a$0, i$0), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(two(a$0, i$0), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource two(a$0, i$0) might not be injective. (0493b.vpr@92.10--92.50) [60717]"}
        (forall a$0_1: Ref, i$0_1: int, a$0_1_1: Ref, i$0_1_2: int ::
        { neverTriggered36(a$0_1, i$0_1), neverTriggered36(a$0_1_1, i$0_1_2) }
        ((((a$0_1 != a$0_1_1 && i$0_1 != i$0_1_2) && (bs[a$0_1] && js[i$0_1])) && (bs[a$0_1_1] && js[i$0_1_2])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$0_1 != a$0_1_1 || i$0_1 != i$0_1_2
      );
    
    // -- Define Inverse Function
      assume (forall a$0_1: Ref, i$0_1: int ::
        { Heap[null, two(a$0_1, i$0_1)] } { Mask[null, two(a$0_1, i$0_1)] } { Heap[null, two(a$0_1, i$0_1)] }
        (bs[a$0_1] && js[i$0_1]) && NoPerm < FullPerm ==> (invRecv35(a$0_1, i$0_1) == a$0_1 && invRecv36(a$0_1, i$0_1) == i$0_1) && qpRange36(a$0_1, i$0_1)
      );
      assume (forall a_4: Ref, i_4_1: int ::
        { invRecv35(a_4, i_4_1), invRecv36(a_4, i_4_1) }
        ((bs[invRecv35(a_4, i_4_1)] && js[invRecv36(a_4, i_4_1)]) && NoPerm < FullPerm) && qpRange36(a_4, i_4_1) ==> invRecv35(a_4, i_4_1) == a_4 && invRecv36(a_4, i_4_1) == i_4_1
      );
    
    // -- Define updated permissions
      assume (forall a_4: Ref, i_4_1: int ::
        { QPMask[null, two(a_4, i_4_1)] }
        ((bs[invRecv35(a_4, i_4_1)] && js[invRecv36(a_4, i_4_1)]) && NoPerm < FullPerm) && qpRange36(a_4, i_4_1) ==> (NoPerm < FullPerm ==> invRecv35(a_4, i_4_1) == a_4 && invRecv36(a_4, i_4_1) == i_4_1) && QPMask[null, two(a_4, i_4_1)] == Mask[null, two(a_4, i_4_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall a_4: Ref, i_4_1: int ::
        { QPMask[null, two(a_4, i_4_1)] }
        !(((bs[invRecv35(a_4, i_4_1)] && js[invRecv36(a_4, i_4_1)]) && NoPerm < FullPerm) && qpRange36(a_4, i_4_1)) ==> QPMask[null, two(a_4, i_4_1)] == Mask[null, two(a_4, i_4_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale foo_twos(as, is) == 0 -- 0493b.vpr@93.3--93.31
    assume state(Heap, Mask);
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@93.10--93.26) [60718]"}
            (forall a_5_1: Ref, i_5_1: int, a_5_2: Ref, i_5_2: int ::
            { neverTriggered38(a_5_1, i_5_1), neverTriggered38(a_5_2, i_5_2) }
            ((((a_5_1 != a_5_2 && i_5_1 != i_5_2) && (vas[a_5_1] && vis[i_5_1])) && (vas[a_5_2] && vis[i_5_2])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_5_1 != a_5_2 || i_5_1 != i_5_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@93.10--93.26) [60719]"}
            (forall a_5_1: Ref, i_5_1: int ::
            { Heap[null, two(a_5_1, i_5_1)] } { Mask[null, two(a_5_1, i_5_1)] } { Heap[null, two(a_5_1, i_5_1)] }
            vas[a_5_1] && vis[i_5_1] ==> FullPerm > NoPerm ==> Mask[null, two(a_5_1, i_5_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_5_1: Ref, i_5_1: int ::
            { Heap[null, two(a_5_1, i_5_1)] } { Mask[null, two(a_5_1, i_5_1)] } { Heap[null, two(a_5_1, i_5_1)] }
            (vas[a_5_1] && vis[i_5_1]) && NoPerm < FullPerm ==> (invRecv37(a_5_1, i_5_1) == a_5_1 && invRecv38(a_5_1, i_5_1) == i_5_1) && qpRange38(a_5_1, i_5_1)
          );
          assume (forall a_6_1_1: Ref, i_6_1: int ::
            { invRecv37(a_6_1_1, i_6_1), invRecv38(a_6_1_1, i_6_1) }
            ((vas[invRecv37(a_6_1_1, i_6_1)] && vis[invRecv38(a_6_1_1, i_6_1)]) && NoPerm < FullPerm) && qpRange38(a_6_1_1, i_6_1) ==> invRecv37(a_6_1_1, i_6_1) == a_6_1_1 && invRecv38(a_6_1_1, i_6_1) == i_6_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b1 in bs) -- 0493b.vpr@96.10--96.18
    assume bs[b1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (j1 in js) -- 0493b.vpr@96.22--96.30
    assume js[j1_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(two(b1, j1), write) -- 0493b.vpr@97.3--97.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access two(b1, j1) (0493b.vpr@97.10--97.21) [60721]"}
        perm <= Mask[null, two(b1, j1_2)];
    }
    Mask := Mask[null, two(b1, j1_2):=Mask[null, two(b1, j1_2)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a1 in as) -- 0493b.vpr@100.10--100.18
    assume vas[a1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (i1 in is) -- 0493b.vpr@100.22--100.30
    assume vis[i1_9];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(two(a1, i1), write) -- 0493b.vpr@101.3--101.21
    assume two#trigger(Heap, two(a1, i1_9));
    assume Heap[null, two(a1, i1_9)] == FrameFragment(Heap[a1, val]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding two(a1, i1) might fail. There might be insufficient permission to access two(a1, i1) (0493b.vpr@101.3--101.21) [60724]"}
        perm <= Mask[null, two(a1, i1_9)];
    }
    Mask := Mask[null, two(a1, i1_9):=Mask[null, two(a1, i1_9)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, two(a1, i1_9))) {
        havoc newVersion;
        Heap := Heap[null, two(a1, i1_9):=newVersion];
      }
    perm := FullPerm;
    assume a1 != null;
    Mask := Mask[a1, val:=Mask[a1, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a1.val := 1 + a1.val - 1 -- 0493b.vpr@102.3--102.27
    
    // -- Check definedness of 1 + a1.val - 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@102.3--102.27) [60726]"}
        HasDirectPerm(Mask, a1, val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a1.val (0493b.vpr@102.3--102.27) [60727]"}
      FullPerm == Mask[a1, val];
    Heap := Heap[a1, val:=1 + Heap[a1, val] - 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(two(a1, i1), write) -- 0493b.vpr@103.3--103.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding two(a1, i1) might fail. There might be insufficient permission to access a1.val (0493b.vpr@103.3--103.19) [60730]"}
        perm <= Mask[a1, val];
    }
    Mask := Mask[a1, val:=Mask[a1, val] - perm];
    perm := FullPerm;
    Mask := Mask[null, two(a1, i1_9):=Mask[null, two(a1, i1_9)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume two#trigger(Heap, two(a1, i1_9));
    assume Heap[null, two(a1, i1_9)] == FrameFragment(Heap[a1, val]);
    if (!HasDirectPerm(Mask, null, two(a1, i1_9))) {
      Heap := Heap[null, two#sm(a1, i1_9):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, two(a1, i1_9):=freshVersion];
    }
    Heap := Heap[null, two#sm(a1, i1_9):=Heap[null, two#sm(a1, i1_9)][a1, val:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall a$1: Ref, i$1: Int ::
  //     { two(a$1, i$1) }
  //     (a$1 in (bs setminus Set(b1))) && (i$1 in (js setminus Set(j1))) ==>
  //     acc(two(a$1, i$1), write)) -- 0493b.vpr@105.3--105.62
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a$1: Ref, i$1: Int :: { two(a$1, i$1) } (a$1 in (bs setminus Set(b1))) && (i$1 in (js setminus Set(j1))) ==> acc(two(a$1, i$1), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(two(a$1, i$1), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource two(a$1, i$1) might not be injective. (0493b.vpr@105.10--105.62) [60733]"}
        (forall a$1_1: Ref, i$1_1: int, a$1_1_1: Ref, i$1_1_1: int ::
        { neverTriggered40(a$1_1, i$1_1), neverTriggered40(a$1_1_1, i$1_1_1) }
        ((((a$1_1 != a$1_1_1 && i$1_1 != i$1_1_1) && (Set#Difference(bs, Set#Singleton(b1))[a$1_1] && Set#Difference(js, Set#Singleton(j1_2))[i$1_1])) && (Set#Difference(bs, Set#Singleton(b1))[a$1_1_1] && Set#Difference(js, Set#Singleton(j1_2))[i$1_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a$1_1 != a$1_1_1 || i$1_1 != i$1_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access two(a$1, i$1) (0493b.vpr@105.10--105.62) [60734]"}
        (forall a$1_1: Ref, i$1_1: int ::
        { Heap[null, two(a$1_1, i$1_1)] } { Mask[null, two(a$1_1, i$1_1)] } { Heap[null, two(a$1_1, i$1_1)] }
        Set#Difference(bs, Set#Singleton(b1))[a$1_1] && Set#Difference(js, Set#Singleton(j1_2))[i$1_1] ==> Mask[null, two(a$1_1, i$1_1)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(two(a$1, i$1), write)
      assume (forall a$1_1: Ref, i$1_1: int ::
        { Heap[null, two(a$1_1, i$1_1)] } { Mask[null, two(a$1_1, i$1_1)] } { Heap[null, two(a$1_1, i$1_1)] }
        (Set#Difference(bs, Set#Singleton(b1))[a$1_1] && Set#Difference(js, Set#Singleton(j1_2))[i$1_1]) && NoPerm < FullPerm ==> (invRecv39(a$1_1, i$1_1) == a$1_1 && invRecv40(a$1_1, i$1_1) == i$1_1) && qpRange40(a$1_1, i$1_1)
      );
      assume (forall a_7: Ref, i_7_1: int ::
        { invRecv39(a_7, i_7_1), invRecv40(a_7, i_7_1) }
        ((Set#Difference(bs, Set#Singleton(b1))[invRecv39(a_7, i_7_1)] && Set#Difference(js, Set#Singleton(j1_2))[invRecv40(a_7, i_7_1)]) && NoPerm < FullPerm) && qpRange40(a_7, i_7_1) ==> invRecv39(a_7, i_7_1) == a_7 && invRecv40(a_7, i_7_1) == i_7_1
      );
    
    // -- assume permission updates
      assume (forall a_7: Ref, i_7_1: int ::
        { QPMask[null, two(a_7, i_7_1)] }
        ((Set#Difference(bs, Set#Singleton(b1))[invRecv39(a_7, i_7_1)] && Set#Difference(js, Set#Singleton(j1_2))[invRecv40(a_7, i_7_1)]) && NoPerm < FullPerm) && qpRange40(a_7, i_7_1) ==> (invRecv39(a_7, i_7_1) == a_7 && invRecv40(a_7, i_7_1) == i_7_1) && QPMask[null, two(a_7, i_7_1)] == Mask[null, two(a_7, i_7_1)] - FullPerm
      );
      assume (forall a_7: Ref, i_7_1: int ::
        { QPMask[null, two(a_7, i_7_1)] }
        !(((Set#Difference(bs, Set#Singleton(b1))[invRecv39(a_7, i_7_1)] && Set#Difference(js, Set#Singleton(j1_2))[invRecv40(a_7, i_7_1)]) && NoPerm < FullPerm) && qpRange40(a_7, i_7_1)) ==> QPMask[null, two(a_7, i_7_1)] == Mask[null, two(a_7, i_7_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale foo_twos(as, is) == 0 -- 0493b.vpr@107.3--107.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo_twos(as, is) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(two(a, i), write) is injective
          assert {:msg "  Precondition of function foo_twos might not hold. Quantified resource two(a, i) might not be injective. (0493b.vpr@107.10--107.26) [60735]"}
            (forall a_8_1: Ref, i_8_1: int, a_8_2: Ref, i_8_2: int ::
            { neverTriggered42(a_8_1, i_8_1), neverTriggered42(a_8_2, i_8_2) }
            ((((a_8_1 != a_8_2 && i_8_1 != i_8_2) && (vas[a_8_1] && vis[i_8_1])) && (vas[a_8_2] && vis[i_8_2])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_8_1 != a_8_2 || i_8_1 != i_8_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function foo_twos might not hold. There might be insufficient permission to access two(a, i) (0493b.vpr@107.10--107.26) [60736]"}
            (forall a_8_1: Ref, i_8_1: int ::
            { ExhaleWellDef0Heap[null, two(a_8_1, i_8_1)] } { ExhaleWellDef0Mask[null, two(a_8_1, i_8_1)] } { ExhaleWellDef0Heap[null, two(a_8_1, i_8_1)] }
            vas[a_8_1] && vis[i_8_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, two(a_8_1, i_8_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(two(a, i), write)
          assume (forall a_8_1: Ref, i_8_1: int ::
            { ExhaleWellDef0Heap[null, two(a_8_1, i_8_1)] } { ExhaleWellDef0Mask[null, two(a_8_1, i_8_1)] } { ExhaleWellDef0Heap[null, two(a_8_1, i_8_1)] }
            (vas[a_8_1] && vis[i_8_1]) && NoPerm < FullPerm ==> (invRecv41(a_8_1, i_8_1) == a_8_1 && invRecv42(a_8_1, i_8_1) == i_8_1) && qpRange42(a_8_1, i_8_1)
          );
          assume (forall a_9_1_1: Ref, i_9_1_1: int ::
            { invRecv41(a_9_1_1, i_9_1_1), invRecv42(a_9_1_1, i_9_1_1) }
            ((vas[invRecv41(a_9_1_1, i_9_1_1)] && vis[invRecv42(a_9_1_1, i_9_1_1)]) && NoPerm < FullPerm) && qpRange42(a_9_1_1, i_9_1_1) ==> invRecv41(a_9_1_1, i_9_1_1) == a_9_1_1 && invRecv42(a_9_1_1, i_9_1_1) == i_9_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion foo_twos(as, is) == 0 might not hold. (0493b.vpr@107.10--107.31) [60737]"}
      foo_twos(Heap, vas, vis) == 0;
    assume state(Heap, Mask);
}