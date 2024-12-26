// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:54:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/list_reverse.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/list_reverse-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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
function  neverTriggered2(n_1: Ref): bool;
function  neverTriggered3(n$1_1: Ref): bool;
function  neverTriggered4(n_2: Ref): bool;
function  neverTriggered5(n_3: Ref): bool;
function  neverTriggered6(n_4_1: Ref): bool;
function  neverTriggered7(n_5: Ref): bool;
function  neverTriggered8(n_6: Ref): bool;
function  neverTriggered9(n_7: Ref): bool;
function  neverTriggered10(n_8: Ref): bool;
function  neverTriggered11(n_9: Ref): bool;
function  neverTriggered12(n$1_2: Ref): bool;
function  neverTriggered13(n_1: Ref): bool;
function  neverTriggered14(n$1_1: Ref): bool;
function  neverTriggered15(n_2: Ref): bool;
function  neverTriggered16(n_3: Ref): bool;
function  neverTriggered17(n_4_1: Ref): bool;
function  neverTriggered18(n_5: Ref): bool;
function  neverTriggered19(n_6: Ref): bool;
function  neverTriggered20(n_7: Ref): bool;
function  neverTriggered21(n_8: Ref): bool;
function  neverTriggered22(n_9: Ref): bool;
function  neverTriggered23(n$1_2: Ref): bool;
function  neverTriggered24(n_1: Ref): bool;
function  neverTriggered25(n_2: Ref): bool;
function  neverTriggered26(n_3: Ref): bool;
function  neverTriggered27(n_4_1: Ref): bool;
function  neverTriggered28(n_5: Ref): bool;
function  neverTriggered29(n_6: Ref): bool;
function  neverTriggered30(n$1_12: Ref): bool;
function  neverTriggered31(n$1_2: Ref): bool;
function  neverTriggered32(n$0_2_1: Ref): bool;
function  neverTriggered33(n$0_3_2: Ref): bool;
function  neverTriggered34(n_11_1: Ref): bool;
function  neverTriggered35(n_12_1: Ref): bool;
function  neverTriggered36(n_13: Ref): bool;
function  neverTriggered37(n_14: Ref): bool;
function  neverTriggered38(n_15: Ref): bool;
function  neverTriggered39(n_16: Ref): bool;
function  neverTriggered40(n_17: Ref): bool;
function  neverTriggered41(n_18: Ref): bool;
function  neverTriggered42(n_19: Ref): bool;
function  neverTriggered43(n$1_3: Ref): bool;
function  neverTriggered44(n_21: Ref): bool;
function  neverTriggered45(n_22: Ref): bool;
function  neverTriggered46(n$1_4: Ref): bool;
function  neverTriggered47(n_23: Ref): bool;
function  neverTriggered48(n$1_5: Ref): bool;
function  neverTriggered49(n_24: Ref): bool;
function  neverTriggered50(n$1_6: Ref): bool;
function  neverTriggered51(n$1_7: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: $$
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
function  create_edge(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain function create_edge_
function  create_edge_(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain axiom edge_injectivity
axiom (forall p_1: Ref, s_2: Ref ::
  { (create_edge(p_1, s_2): EdgeDomainType) }
  (edge_pred((create_edge(p_1, s_2): EdgeDomainType)): Ref) == p_1 && (edge_succ((create_edge(p_1, s_2): EdgeDomainType)): Ref) == s_2
);

// ==================================================
// Translation of domain TrClo
// ==================================================

// The type for domain TrClo
type TrCloDomainType;

// Translation of domain function exists_path
function  exists_path(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function exists_path_
function  exists_path_(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_8: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function edge
function  edge(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain function edge_
function  edge_(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain axiom ax_EdgeSynonim
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { (edge(EG_1, p_1, s_2): bool) }
  (edge(EG_1, p_1, s_2): bool) == (edge_(EG_1, p_1, s_2): bool)
);

// Translation of domain axiom ax_Edge
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { EG_1[(create_edge(p_1, s_2): EdgeDomainType)] } { (edge(EG_1, p_1, s_2): bool) }
  (edge_(EG_1, p_1, s_2): bool) == EG_1[(create_edge(p_1, s_2): EdgeDomainType)]
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) }
  (exists_path(EG_1, start, end): bool) == (exists_path_(EG_1, start, end): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) } { (edge(EG_1, start, end): bool) }
  (exists_path_(EG_1, start, end): bool) == (start == end || (exists w_2: Ref ::
    { (edge(EG_1, start, w_2): bool) } { (exists_path_(EG_1, w_2, end): bool) }
    (edge(EG_1, start, w_2): bool) && (exists_path_(EG_1, w_2, end): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_3: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_3, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_3, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_3, v_2): bool)
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
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1: Ref, s_2: Ref ::
    { (create_edge(p_1, s_2): EdgeDomainType) }
    (refs[p_1] && (refs[s_2] && Heap[p_1, next] == s_2)) == $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)]
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
  var p_9: Ref;
  var s_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_reverse.vpr@248.14--248.68) [88787]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < 1 / 2 ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list_reverse.vpr@248.14--248.68) [88788]"}
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
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_9]) {
          if (refs[s_5]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (list_reverse.vpr@249.13--253.44) [88789]"}
              HasDirectPerm(Mask, p_9, next);
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
// Translation of method link
// ==================================================

procedure link(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_33: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_35: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v1_27: Ref;
  var v2_27: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    if (y != null) {
      assume g_1[y];
    }
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_reverse.vpr@276.14--276.34) [88790]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange2(n_1) && invRecv2(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((g_1[invRecv2(o_4)] && invRecv2(o_4) != x) && NoPerm < 1 / 2) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list_reverse.vpr@276.14--276.34) [88791]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv2(o_4)] && invRecv2(o_4) != x) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> invRecv2(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv2(o_4)] && invRecv2(o_4) != x) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_33]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@276.14--276.34) [88792]"}
            HasDirectPerm(Mask, n$0_33, next);
        }
        if (g_1[n$0_33] && Heap[n$0_33, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@276.14--276.34) [88793]"}
            HasDirectPerm(Mask, n$0_33, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@277.14--277.28) [88794]"}
        HasDirectPerm(Mask, x, next);
    assume Heap[x, next] == null;
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_reverse.vpr@278.13--278.33) [88795]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((g_1[invRecv3(o_4)] && invRecv3(o_4) != x) && NoPerm < 1 / 2) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list_reverse.vpr@278.13--278.33) [88796]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv3(o_4)] && invRecv3(o_4) != x) && NoPerm < 1 / 2) && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> invRecv3(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + 1 / 2) && (!(((g_1[invRecv3(o_4)] && invRecv3(o_4) != x) && NoPerm < 1 / 2) && qpRange3(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_35]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@278.13--278.33) [88797]"}
            HasDirectPerm(PostMask, n$2_35, next);
        }
        if (g_1[n$2_35] && PostHeap[n$2_35, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@278.13--278.33) [88798]"}
            HasDirectPerm(PostMask, n$2_35, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[PostHeap[n$2_1_1, next]] } { g_1[n$2_1_1], PostHeap[n$2_1_1, next] }
      g_1[n$2_1_1] && PostHeap[n$2_1_1, next] != null ==> g_1[PostHeap[n$2_1_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@279.13--279.24) [88799]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == y;
    assume state(PostHeap, PostMask);
    if (y == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@280.27--280.32) [88800]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@280.27--280.32) [88801]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered4(n_2), neverTriggered4(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@280.27--280.32) [88802]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange4(n_2) && invRecv4(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              g_1[invRecv4(o_4)] && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
            );
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
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@280.40--280.45) [88803]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@280.40--280.45) [88804]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered5(n_3), neverTriggered5(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@280.40--280.45) [88805]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange5(n_3) && invRecv5(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv5(o_4) }
              g_1[invRecv5(o_4)] && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@283.18--283.23) [88806]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && dummyFunction(PostHeap[n_4_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@283.18--283.23) [88807]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered6(n_4_1), neverTriggered6(n_4_2) }
                (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@283.18--283.23) [88808]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] ==> 1 / 2 > NoPerm ==> PostMask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange6(n_4_1) && invRecv6(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                g_1[invRecv6(o_4)] && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@283.45--283.50) [88809]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@283.45--283.50) [88810]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered7(n_5), neverTriggered7(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@283.45--283.50) [88811]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange7(n_5) && invRecv7(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv7(o_4) }
                g_1[invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == x && v2_1 == y))
      );
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (v1_27 != v2_27) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := PostMask;
              ExhaleWellDef0Heap := PostHeap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@287.29--287.34) [88812]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@287.29--287.34) [88813]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered8(n_6), neverTriggered8(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@287.29--287.34) [88814]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange8(n_6) && invRecv8(n_6) == n_6
                );
                assume (forall o_4: Ref ::
                  { invRecv8(o_4) }
                  g_1[invRecv8(o_4)] && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
                );
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
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@288.37--288.42) [88815]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@288.37--288.42) [88816]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered9(n_7), neverTriggered9(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@288.37--288.42) [88817]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange9(n_7) && invRecv9(n_7) == n_7
                );
                assume (forall o_4: Ref ::
                  { invRecv9(o_4) }
                  g_1[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_27, v2_27): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@288.71--288.76) [88818]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@288.71--288.76) [88819]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered10(n_8), neverTriggered10(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@288.71--288.76) [88820]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange10(n_8) && invRecv10(n_8) == n_8
                  );
                  assume (forall o_4: Ref ::
                    { invRecv10(o_4) }
                    g_1[invRecv10(o_4)] && (NoPerm < 1 / 2 && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_27, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@288.103--288.108) [88821]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@288.103--288.108) [88822]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered11(n_9), neverTriggered11(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@288.103--288.108) [88823]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange11(n_9) && invRecv11(n_9) == n_9
                    );
                    assume (forall o_4: Ref ::
                      { invRecv11(o_4) }
                      g_1[invRecv11(o_4)] && (NoPerm < 1 / 2 && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of link might not hold. Assertion !((null in g)) might not hold. (list_reverse.vpr@278.13--278.33) [88824]"}
      !g_1[null];
    assert {:msg "  Postcondition of link might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@278.13--278.33) [88825]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access x.next (list_reverse.vpr@278.13--278.33) [88826]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@278.13--278.33) [88827]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_reverse.vpr@278.13--278.33) [88828]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered12(n$1_2), neverTriggered12(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access n$1.next (list_reverse.vpr@278.13--278.33) [88829]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange12(n$1_2) && invRecv12(n$1_2) == n$1_2
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && (NoPerm < 1 / 2 && qpRange12(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of link might not hold. Assertion (n$2.next in g) might not hold. (list_reverse.vpr@278.13--278.33) [88830]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link might not hold. Assertion x.next == y might not hold. (list_reverse.vpr@279.13--279.24) [88831]"}
      Heap[x, next] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link might not hold. Assertion $$(g) == old($$(g)) might not hold. (list_reverse.vpr@280.13--280.46) [88832]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (list_reverse.vpr@281.13--283.78) [88833]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) || (v1_4 == x && v2_4 == y));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) || (v1_5_1 == x && v2_5_1 == y))
      );
    }
    if (y != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of link might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (list_reverse.vpr@284.13--288.118) [88834]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink
// ==================================================

procedure unlink(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_34: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_36: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v1_28: Ref;
  var v2_28: Ref;
  var v1_29: Ref;
  var v2_29: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_reverse.vpr@292.14--292.34) [88835]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange13(n_1) && invRecv13(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list_reverse.vpr@292.14--292.34) [88836]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> invRecv13(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_34]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@292.14--292.34) [88837]"}
            HasDirectPerm(Mask, n$0_34, next);
        }
        if (g_1[n$0_34] && Heap[n$0_34, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@292.14--292.34) [88838]"}
            HasDirectPerm(Mask, n$0_34, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_reverse.vpr@293.13--293.33) [88839]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange14(n$1_1) && invRecv14(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((g_1[invRecv14(o_4)] && invRecv14(o_4) != x) && NoPerm < 1 / 2) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list_reverse.vpr@293.13--293.33) [88840]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv14(o_4)] && invRecv14(o_4) != x) && NoPerm < 1 / 2) && qpRange14(o_4) ==> (NoPerm < 1 / 2 ==> invRecv14(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + 1 / 2) && (!(((g_1[invRecv14(o_4)] && invRecv14(o_4) != x) && NoPerm < 1 / 2) && qpRange14(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_36]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@293.13--293.33) [88841]"}
            HasDirectPerm(PostMask, n$2_36, next);
        }
        if (g_1[n$2_36] && PostHeap[n$2_36, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@293.13--293.33) [88842]"}
            HasDirectPerm(PostMask, n$2_36, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[PostHeap[n$2_1_1, next]] } { g_1[n$2_1_1], PostHeap[n$2_1_1, next] }
      g_1[n$2_1_1] && PostHeap[n$2_1_1, next] != null ==> g_1[PostHeap[n$2_1_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@294.13--294.27) [88843]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@295.13--295.56) [88844]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@295.37--295.42) [88845]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@295.37--295.42) [88846]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered15(n_2), neverTriggered15(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@295.37--295.42) [88847]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange15(n_2) && invRecv15(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv15(o_4) }
              g_1[invRecv15(o_4)] && (NoPerm < 1 / 2 && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
            );
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
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@295.50--295.55) [88848]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@295.50--295.55) [88849]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered16(n_3), neverTriggered16(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@295.50--295.55) [88850]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange16(n_3) && invRecv16(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv16(o_4) }
              g_1[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@296.13--298.89) [88851]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@298.18--298.23) [88852]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && dummyFunction(PostHeap[n_4_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@298.18--298.23) [88853]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered17(n_4_1), neverTriggered17(n_4_2) }
                (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@298.18--298.23) [88854]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] ==> 1 / 2 > NoPerm ==> PostMask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange17(n_4_1) && invRecv17(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv17(o_4) }
                g_1[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@298.45--298.50) [88855]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@298.45--298.50) [88856]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered18(n_5), neverTriggered18(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@298.45--298.50) [88857]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange18(n_5) && invRecv18(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv18(o_4) }
                g_1[invRecv18(o_4)] && (NoPerm < 1 / 2 && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_28, v2_28): bool)) {
            if (v1_28 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@296.13--298.89) [88858]"}
                HasDirectPerm(oldMask, x, next);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, next]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@299.13--303.129) [88859]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
        if (*) {
          if (v1_29 != v2_29) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := PostMask;
              ExhaleWellDef0Heap := PostHeap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@302.29--302.34) [88860]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@302.29--302.34) [88861]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered19(n_6), neverTriggered19(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@302.29--302.34) [88862]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange19(n_6) && invRecv19(n_6) == n_6
                );
                assume (forall o_4: Ref ::
                  { invRecv19(o_4) }
                  g_1[invRecv19(o_4)] && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
                );
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
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@303.37--303.42) [88863]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@303.37--303.42) [88864]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered20(n_7), neverTriggered20(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@303.37--303.42) [88865]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange20(n_7) && invRecv20(n_7) == n_7
                );
                assume (forall o_4: Ref ::
                  { invRecv20(o_4) }
                  g_1[invRecv20(o_4)] && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_29, v2_29): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@303.72--303.77) [88866]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@303.72--303.77) [88867]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered21(n_8), neverTriggered21(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@303.72--303.77) [88868]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange21(n_8) && invRecv21(n_8) == n_8
                  );
                  assume (forall o_4: Ref ::
                    { invRecv21(o_4) }
                    g_1[invRecv21(o_4)] && (NoPerm < 1 / 2 && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_29, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@303.104--303.109) [88869]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@303.104--303.109) [88870]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered22(n_9), neverTriggered22(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@303.104--303.109) [88871]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange22(n_9) && invRecv22(n_9) == n_9
                    );
                    assume (forall o_4: Ref ::
                      { invRecv22(o_4) }
                      g_1[invRecv22(o_4)] && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_reverse.vpr@299.13--303.129) [88872]"}
                  HasDirectPerm(oldMask, x, next);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of unlink might not hold. Assertion !((null in g)) might not hold. (list_reverse.vpr@293.13--293.33) [88873]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@293.13--293.33) [88874]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access x.next (list_reverse.vpr@293.13--293.33) [88875]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@293.13--293.33) [88876]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_reverse.vpr@293.13--293.33) [88877]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered23(n$1_2), neverTriggered23(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access n$1.next (list_reverse.vpr@293.13--293.33) [88878]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange23(n$1_2) && invRecv23(n$1_2) == n$1_2
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        (g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && (NoPerm < 1 / 2 && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && (NoPerm < 1 / 2 && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && (NoPerm < 1 / 2 && qpRange23(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion (n$2.next in g) might not hold. (list_reverse.vpr@293.13--293.33) [88879]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink might not hold. Assertion x.next == null might not hold. (list_reverse.vpr@294.13--294.27) [88880]"}
      Heap[x, next] == null;
    if (oldHeap[x, next] == null) {
      assert {:msg "  Postcondition of unlink might not hold. Assertion $$(g) == old($$(g)) might not hold. (list_reverse.vpr@295.13--295.56) [88881]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))) might not hold. (list_reverse.vpr@296.13--298.89) [88882]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, next]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, next]))
      );
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))) might not hold. (list_reverse.vpr@299.13--303.129) [88883]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method reverse
// ==================================================

procedure reverse(g_1: (Set Ref), xe: Ref) returns (y: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_35: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_30: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var t_2: Ref;
  var x: Ref;
  var old_g: (Set EdgeDomainType);
  var n$2: Ref;
  var n_7: Ref;
  var v1: Ref;
  var v2: Ref;
  var v2_2_1: Ref;
  var v1_2_1: Ref;
  var n$2_30: Ref;
  var n_49: Ref;
  var v1_5: Ref;
  var v2_7: Ref;
  var v1_7: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var save_y: Ref;
  var save_x: Ref;
  var save_g: (Set EdgeDomainType);
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var v1_30: Ref;
  var v2_30: Ref;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var v1_15: Ref;
  var v2_15: Ref;
  var n$2_7: Ref;
  var n_25_1: Ref;
  var v1_17: Ref;
  var v2_17: Ref;
  var v2_19: Ref;
  var v1_19: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xe, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_reverse.vpr@384.14--384.22) [88884]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange24(n_1) && invRecv24(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        (g_1[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4) ==> (NoPerm < FullPerm ==> invRecv24(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv24(o_4)] && NoPerm < FullPerm) && qpRange24(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_35]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@384.14--384.22) [88885]"}
            HasDirectPerm(Mask, n$0_35, next);
        }
        if (g_1[n$0_35] && Heap[n$0_35, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_reverse.vpr@384.14--384.22) [88886]"}
            HasDirectPerm(Mask, n$0_35, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g_1[xe];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@387.28--387.33) [88887]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@387.28--387.33) [88888]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered25(n_2), neverTriggered25(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@387.28--387.33) [88889]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < 1 / 2 ==> qpRange25(n_2) && invRecv25(n_2) == n_2
          );
          assume (forall o_4: Ref ::
            { invRecv25(o_4) }
            g_1[invRecv25(o_4)] && (NoPerm < 1 / 2 && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of unshared_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@388.29--388.34) [88890]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@388.29--388.34) [88891]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered26(n_3), neverTriggered26(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@388.29--388.34) [88892]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && NoPerm < 1 / 2 ==> qpRange26(n_3) && invRecv26(n_3) == n_3
          );
          assume (forall o_4: Ref ::
            { invRecv26(o_4) }
            g_1[invRecv26(o_4)] && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (unshared_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of func_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@389.25--389.30) [88893]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] && dummyFunction(Heap[n_4_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@389.25--389.30) [88894]"}
            (forall n_4_1: Ref, n_4_2: Ref ::
            { neverTriggered27(n_4_1), neverTriggered27(n_4_2) }
            (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@389.25--389.30) [88895]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] ==> 1 / 2 > NoPerm ==> Mask[n_4_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange27(n_4_1) && invRecv27(n_4_1) == n_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            g_1[invRecv27(o_4)] && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (func_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v: Ref :: { exists_path($$(g), xe, v) } (v in g) ==> exists_path($$(g), xe, v))
      if (*) {
        if (g_1[v_30]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@392.79--392.84) [88896]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && dummyFunction(Heap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@392.79--392.84) [88897]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered28(n_5), neverTriggered28(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@392.79--392.84) [88898]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange28(n_5) && invRecv28(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv28(o_4) }
                g_1[invRecv28(o_4)] && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
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
    assume (forall v_1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), xe, v_1_1): bool) }
      g_1[v_1_1] ==> (exists_path($$(Heap, g_1), xe, v_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[t_2, $allocated];
    assume Heap[x, $allocated];
  
  // -- Translating statement: old_g := $$(g) -- list_reverse.vpr@396.5--396.33
    
    // -- Check definedness of $$(g)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@396.28--396.33) [88899]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] && dummyFunction(Heap[n_6, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@396.28--396.33) [88900]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered29(n_6), neverTriggered29(n_6_1) }
            (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@396.28--396.33) [88901]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] && NoPerm < 1 / 2 ==> qpRange29(n_6) && invRecv29(n_6) == n_6
          );
          assume (forall o_4: Ref ::
            { invRecv29(o_4) }
            g_1[invRecv29(o_4)] && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> invRecv29(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    old_g := $$(Heap, g_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: t := null -- list_reverse.vpr@398.5--398.22
    t_2 := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: x := xe -- list_reverse.vpr@399.5--399.20
    x := xe;
    assume state(Heap, Mask);
  
  // -- Translating statement: y := null -- list_reverse.vpr@400.5--400.14
    y := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (x != null) -- list_reverse.vpr@402.5--470.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Assertion !((null in g)) might not hold. (list_reverse.vpr@405.19--405.27) [88902]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$1 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Quantified resource n$1.next might not be injective. (list_reverse.vpr@405.19--405.27) [88903]"}
            (forall n$1_12: Ref, n$1_24: Ref ::
            { neverTriggered30(n$1_12), neverTriggered30(n$1_24) }
            (((n$1_12 != n$1_24 && g_1[n$1_12]) && g_1[n$1_24]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_12 != n$1_24
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. There might be insufficient permission to access n$1.next (list_reverse.vpr@405.19--405.27) [88904]"}
            (forall n$1_12: Ref ::
            { Heap[n$1_12, next] } { QPMask[n$1_12, next] } { Heap[n$1_12, next] }
            g_1[n$1_12] ==> Mask[n$1_12, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$1
          assume (forall n$1_12: Ref ::
            { Heap[n$1_12, next] } { QPMask[n$1_12, next] } { Heap[n$1_12, next] }
            g_1[n$1_12] && NoPerm < FullPerm ==> qpRange30(n$1_12) && invRecv30(n$1_12) == n$1_12
          );
          assume (forall o_4: Ref ::
            { invRecv30(o_4) }
            g_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (g_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$2] && Heap[n$2, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Assertion (n$2.next in g) might not hold. (list_reverse.vpr@405.19--405.27) [88905]"}
              g_1[Heap[n$2, next]];
          }
          assume false;
        }
        assume (forall n$2_1_1_1: Ref ::
          { g_1[Heap[n$2_1_1_1, next]] } { g_1[n$2_1_1_1], Heap[n$2_1_1_1, next] }
          g_1[n$2_1_1_1] && Heap[n$2_1_1_1, next] != null ==> g_1[Heap[n$2_1_1_1, next]]
        );
        if (x != null) {
          assert {:msg "  Loop invariant x != null ==> (x in g) might not hold on entry. Assertion (x in g) might not hold. (list_reverse.vpr@406.19--406.39) [88906]"}
            g_1[x];
        }
        if (y != null) {
          assert {:msg "  Loop invariant y != null ==> (y in g) might not hold on entry. Assertion (y in g) might not hold. (list_reverse.vpr@407.19--407.39) [88907]"}
            g_1[y];
        }
        if (*) {
          if (g_1[n_7]) {
            assert {:msg "  Loop invariant (forall n: Ref :: { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)) might not hold on entry. Assertion exists_path($$(g), x, n) || exists_path($$(g), y, n) might not hold. (list_reverse.vpr@411.19--411.147) [88908]"}
              (exists_path($$(Heap, g_1), x, n_7): bool) || (exists_path($$(Heap, g_1), y, n_7): bool);
          }
          assume false;
        }
        assume (forall n_8_1_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_8_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_8_1_1): bool) }
          g_1[n_8_1_1] ==> (exists_path($$(Heap, g_1), x, n_8_1_1): bool) || (exists_path($$(Heap, g_1), y, n_8_1_1): bool)
        );
        assert {:msg "  Loop invariant acyclic_graph($$(g)) might not hold on entry. Assertion acyclic_graph($$(g)) might not hold. (list_reverse.vpr@413.19--413.39) [88909]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant unshared_graph($$(g)) might not hold on entry. Assertion unshared_graph($$(g)) might not hold. (list_reverse.vpr@414.19--414.40) [88910]"}
          (unshared_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant func_graph($$(g)) might not hold on entry. Assertion func_graph($$(g)) might not hold. (list_reverse.vpr@415.19--415.36) [88911]"}
          (func_graph($$(Heap, g_1)): bool);
        if (x != xe && x != null) {
          assert {:msg "  Loop invariant x != xe && x != null ==> !exists_path($$(g), x, xe) might not hold on entry. Assertion !exists_path($$(g), x, xe) might not hold. (list_reverse.vpr@419.19--419.68) [88912]"}
            !(exists_path($$(Heap, g_1), x, xe): bool);
        }
        if (x != null) {
          assert {:msg "  Loop invariant x != null ==> !edge($$(g), x, y) might not hold on entry. Assertion !edge($$(g), x, y) might not hold. (list_reverse.vpr@421.19--421.49) [88913]"}
            !(edge($$(Heap, g_1), x, y): bool);
        }
        if (*) {
          if ((exists_path($$(Heap, g_1), x, v1): bool)) {
            assert {:msg "  Loop invariant (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), x, v1) ==> edge(old_g, v1, v2) == edge($$(g), v1, v2)) might not hold on entry. Assertion edge(old_g, v1, v2) == edge($$(g), v1, v2) might not hold. (list_reverse.vpr@425.19--425.166) [88914]"}
              (edge(old_g, v1, v2): bool) == (edge($$(Heap, g_1), v1, v2): bool);
          }
          assume false;
        }
        assume (forall v1_1_1: Ref, v2_1_1: Ref ::
          { (edge(old_g, v1_1_1, v2_1_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_1_1, v2_1_1): bool) }
          (exists_path($$(Heap, g_1), x, v1_1_1): bool) ==> (edge(old_g, v1_1_1, v2_1_1): bool) == (edge($$(Heap, g_1), v1_1_1, v2_1_1): bool)
        );
        if (*) {
          if ((exists_path($$(Heap, g_1), y, v2_2_1): bool) && v1_2_1 != y) {
            assert {:msg "  Loop invariant (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), y, v2) && v1 != y ==> edge(old_g, v1, v2) == edge($$(g), v2, v1)) might not hold on entry. Assertion edge(old_g, v1, v2) == edge($$(g), v2, v1) might not hold. (list_reverse.vpr@428.19--428.166) [88915]"}
              (edge(old_g, v1_2_1, v2_2_1): bool) == (edge($$(Heap, g_1), v2_2_1, v1_2_1): bool);
          }
          assume false;
        }
        assume (forall v1_3_1: Ref, v2_3_1: Ref ::
          { (edge(old_g, v1_3_1, v2_3_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3_1, v2_3_1): bool) }
          (exists_path($$(Heap, g_1), y, v2_3_1): bool) && v1_3_1 != y ==> (edge(old_g, v1_3_1, v2_3_1): bool) == (edge($$(Heap, g_1), v2_3_1, v1_3_1): bool)
        );
        if (y != null && x != null) {
          assert {:msg "  Loop invariant y != null && x != null ==> edge(old_g, y, x) might not hold on entry. Assertion edge(old_g, y, x) might not hold. (list_reverse.vpr@431.19--431.61) [88916]"}
            (edge(old_g, y, x): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc x, y, t_2;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
      assume Heap[t_2, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume !g_1[null];
        
        // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_reverse.vpr@405.19--405.27) [88917]"}
          (forall n$1_2: Ref, n$1_2_1: Ref ::
          
          (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g_1[n$1_2] && NoPerm < FullPerm ==> qpRange31(n$1_2) && invRecv31(n$1_2) == n$1_2
          );
          assume (forall o_4: Ref ::
            { invRecv31(o_4) }
            (g_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$1_2: Ref ::
            { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
            g_1[n$1_2] ==> n$1_2 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((g_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
          if (*) {
            if (g_1[n$2_30]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@405.19--405.27) [88918]"}
                HasDirectPerm(Mask, n$2_30, next);
            }
            if (g_1[n$2_30] && Heap[n$2_30, next] != null) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_reverse.vpr@405.19--405.27) [88919]"}
                HasDirectPerm(Mask, n$2_30, next);
            }
            assume false;
          }
        assume (forall n$2_3: Ref ::
          { g_1[Heap[n$2_3, next]] } { g_1[n$2_3], Heap[n$2_3, next] }
          g_1[n$2_3] && Heap[n$2_3, next] != null ==> g_1[Heap[n$2_3, next]]
        );
        assume state(Heap, Mask);
        if (x != null) {
          assume g_1[x];
        }
        assume state(Heap, Mask);
        if (y != null) {
          assume g_1[y];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref :: { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
          if (*) {
            if (g_1[n_49]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@411.109--411.114) [88920]"}
                    (forall n$0_2_1: Ref ::
                    { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
                    g_1[n$0_2_1] && dummyFunction(Heap[n$0_2_1, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_reverse.vpr@411.109--411.114) [88921]"}
                    (forall n$0_2_1: Ref, n$0_2_2: Ref ::
                    { neverTriggered32(n$0_2_1), neverTriggered32(n$0_2_2) }
                    (((n$0_2_1 != n$0_2_2 && g_1[n$0_2_1]) && g_1[n$0_2_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2_1 != n$0_2_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_reverse.vpr@411.109--411.114) [88922]"}
                    (forall n$0_2_1: Ref ::
                    { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
                    g_1[n$0_2_1] ==> 1 / 2 > NoPerm ==> Mask[n$0_2_1, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_2_1: Ref ::
                    { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
                    g_1[n$0_2_1] && NoPerm < 1 / 2 ==> qpRange32(n$0_2_1) && invRecv32(n$0_2_1) == n$0_2_1
                  );
                  assume (forall o_4: Ref ::
                    { invRecv32(o_4) }
                    g_1[invRecv32(o_4)] && (NoPerm < 1 / 2 && qpRange32(o_4)) ==> invRecv32(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (!(exists_path($$(Heap, g_1), x, n_49): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@411.136--411.141) [88923]"}
                      (forall n$0_3_2: Ref ::
                      { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
                      g_1[n$0_3_2] && dummyFunction(Heap[n$0_3_2, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n$0 is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_reverse.vpr@411.136--411.141) [88924]"}
                      (forall n$0_3_2: Ref, n$0_3_3: Ref ::
                      { neverTriggered33(n$0_3_2), neverTriggered33(n$0_3_3) }
                      (((n$0_3_2 != n$0_3_3 && g_1[n$0_3_2]) && g_1[n$0_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3_2 != n$0_3_3
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_reverse.vpr@411.136--411.141) [88925]"}
                      (forall n$0_3_2: Ref ::
                      { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
                      g_1[n$0_3_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_3_2, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n$0
                    assume (forall n$0_3_2: Ref ::
                      { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
                      g_1[n$0_3_2] && NoPerm < 1 / 2 ==> qpRange33(n$0_3_2) && invRecv33(n$0_3_2) == n$0_3_2
                    );
                    assume (forall o_4: Ref ::
                      { invRecv33(o_4) }
                      g_1[invRecv33(o_4)] && (NoPerm < 1 / 2 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
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
            assume false;
          }
        assume (forall n_10_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_10_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_10_1): bool) }
          g_1[n_10_1] ==> (exists_path($$(Heap, g_1), x, n_10_1): bool) || (exists_path($$(Heap, g_1), y, n_10_1): bool)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of acyclic_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@413.33--413.38) [88926]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                g_1[n_11_1] && dummyFunction(Heap[n_11_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@413.33--413.38) [88927]"}
                (forall n_11_1: Ref, n_11_2: Ref ::
                { neverTriggered34(n_11_1), neverTriggered34(n_11_2) }
                (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@413.33--413.38) [88928]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                g_1[n_11_1] ==> 1 / 2 > NoPerm ==> Mask[n_11_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange34(n_11_1) && invRecv34(n_11_1) == n_11_1
              );
              assume (forall o_4: Ref ::
                { invRecv34(o_4) }
                g_1[invRecv34(o_4)] && (NoPerm < 1 / 2 && qpRange34(o_4)) ==> invRecv34(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of unshared_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@414.34--414.39) [88929]"}
                (forall n_12_1: Ref ::
                { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                g_1[n_12_1] && dummyFunction(Heap[n_12_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@414.34--414.39) [88930]"}
                (forall n_12_1: Ref, n_12_2: Ref ::
                { neverTriggered35(n_12_1), neverTriggered35(n_12_2) }
                (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@414.34--414.39) [88931]"}
                (forall n_12_1: Ref ::
                { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                g_1[n_12_1] ==> 1 / 2 > NoPerm ==> Mask[n_12_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_12_1: Ref ::
                { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange35(n_12_1) && invRecv35(n_12_1) == n_12_1
              );
              assume (forall o_4: Ref ::
                { invRecv35(o_4) }
                g_1[invRecv35(o_4)] && (NoPerm < 1 / 2 && qpRange35(o_4)) ==> invRecv35(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of func_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@415.30--415.35) [88932]"}
                (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                g_1[n_13] && dummyFunction(Heap[n_13, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@415.30--415.35) [88933]"}
                (forall n_13: Ref, n_13_1: Ref ::
                { neverTriggered36(n_13), neverTriggered36(n_13_1) }
                (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@415.30--415.35) [88934]"}
                (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                g_1[n_13] ==> 1 / 2 > NoPerm ==> Mask[n_13, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                g_1[n_13] && NoPerm < 1 / 2 ==> qpRange36(n_13) && invRecv36(n_13) == n_13
              );
              assume (forall o_4: Ref ::
                { invRecv36(o_4) }
                g_1[invRecv36(o_4)] && (NoPerm < 1 / 2 && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (func_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        if (x != xe && x != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of !exists_path($$(g), x, xe)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@419.57--419.62) [88935]"}
                  (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g_1[n_14] && dummyFunction(Heap[n_14, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@419.57--419.62) [88936]"}
                  (forall n_14: Ref, n_14_1: Ref ::
                  { neverTriggered37(n_14), neverTriggered37(n_14_1) }
                  (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@419.57--419.62) [88937]"}
                  (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g_1[n_14] ==> 1 / 2 > NoPerm ==> Mask[n_14, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g_1[n_14] && NoPerm < 1 / 2 ==> qpRange37(n_14) && invRecv37(n_14) == n_14
                );
                assume (forall o_4: Ref ::
                  { invRecv37(o_4) }
                  g_1[invRecv37(o_4)] && (NoPerm < 1 / 2 && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume !(exists_path($$(Heap, g_1), x, xe): bool);
        }
        assume state(Heap, Mask);
        if (x != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of !edge($$(g), x, y)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@421.39--421.44) [88938]"}
                  (forall n_15: Ref ::
                  { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                  g_1[n_15] && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@421.39--421.44) [88939]"}
                  (forall n_15: Ref, n_15_1: Ref ::
                  { neverTriggered38(n_15), neverTriggered38(n_15_1) }
                  (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@421.39--421.44) [88940]"}
                  (forall n_15: Ref ::
                  { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                  g_1[n_15] ==> 1 / 2 > NoPerm ==> Mask[n_15, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_15: Ref ::
                  { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                  g_1[n_15] && NoPerm < 1 / 2 ==> qpRange38(n_15) && invRecv38(n_15) == n_15
                );
                assume (forall o_4: Ref ::
                  { invRecv38(o_4) }
                  g_1[invRecv38(o_4)] && (NoPerm < 1 / 2 && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume !(edge($$(Heap, g_1), x, y): bool);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), x, v1) ==> edge(old_g, v1, v2) == edge($$(g), v1, v2))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@425.95--425.100) [88941]"}
                  (forall n_16: Ref ::
                  { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                  g_1[n_16] && dummyFunction(Heap[n_16, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@425.95--425.100) [88942]"}
                  (forall n_16: Ref, n_16_1: Ref ::
                  { neverTriggered39(n_16), neverTriggered39(n_16_1) }
                  (((n_16 != n_16_1 && g_1[n_16]) && g_1[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@425.95--425.100) [88943]"}
                  (forall n_16: Ref ::
                  { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                  g_1[n_16] ==> 1 / 2 > NoPerm ==> Mask[n_16, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_16: Ref ::
                  { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                  g_1[n_16] && NoPerm < 1 / 2 ==> qpRange39(n_16) && invRecv39(n_16) == n_16
                );
                assume (forall o_4: Ref ::
                  { invRecv39(o_4) }
                  g_1[invRecv39(o_4)] && (NoPerm < 1 / 2 && qpRange39(o_4)) ==> invRecv39(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if ((exists_path($$(Heap, g_1), x, v1_5): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@425.152--425.157) [88944]"}
                    (forall n_17: Ref ::
                    { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                    g_1[n_17] && dummyFunction(Heap[n_17, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@425.152--425.157) [88945]"}
                    (forall n_17: Ref, n_17_1: Ref ::
                    { neverTriggered40(n_17), neverTriggered40(n_17_1) }
                    (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@425.152--425.157) [88946]"}
                    (forall n_17: Ref ::
                    { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                    g_1[n_17] ==> 1 / 2 > NoPerm ==> Mask[n_17, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_17: Ref ::
                    { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                    g_1[n_17] && NoPerm < 1 / 2 ==> qpRange40(n_17) && invRecv40(n_17) == n_17
                  );
                  assume (forall o_4: Ref ::
                    { invRecv40(o_4) }
                    g_1[invRecv40(o_4)] && (NoPerm < 1 / 2 && qpRange40(o_4)) ==> invRecv40(o_4) == o_4
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
        assume (forall v1_5_2: Ref, v2_5_2: Ref ::
          { (edge(old_g, v1_5_2, v2_5_2): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_2, v2_5_2): bool) }
          (exists_path($$(Heap, g_1), x, v1_5_2): bool) ==> (edge(old_g, v1_5_2, v2_5_2): bool) == (edge($$(Heap, g_1), v1_5_2, v2_5_2): bool)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), y, v2) && v1 != y ==> edge(old_g, v1, v2) == edge($$(g), v2, v1))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@428.95--428.100) [88947]"}
                  (forall n_18: Ref ::
                  { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                  g_1[n_18] && dummyFunction(Heap[n_18, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@428.95--428.100) [88948]"}
                  (forall n_18: Ref, n_18_1: Ref ::
                  { neverTriggered41(n_18), neverTriggered41(n_18_1) }
                  (((n_18 != n_18_1 && g_1[n_18]) && g_1[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@428.95--428.100) [88949]"}
                  (forall n_18: Ref ::
                  { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                  g_1[n_18] ==> 1 / 2 > NoPerm ==> Mask[n_18, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_18: Ref ::
                  { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                  g_1[n_18] && NoPerm < 1 / 2 ==> qpRange41(n_18) && invRecv41(n_18) == n_18
                );
                assume (forall o_4: Ref ::
                  { invRecv41(o_4) }
                  g_1[invRecv41(o_4)] && (NoPerm < 1 / 2 && qpRange41(o_4)) ==> invRecv41(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if ((exists_path($$(Heap, g_1), y, v2_7): bool) && v1_7 != y) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@428.152--428.157) [88950]"}
                    (forall n_19: Ref ::
                    { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                    g_1[n_19] && dummyFunction(Heap[n_19, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@428.152--428.157) [88951]"}
                    (forall n_19: Ref, n_19_1: Ref ::
                    { neverTriggered42(n_19), neverTriggered42(n_19_1) }
                    (((n_19 != n_19_1 && g_1[n_19]) && g_1[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@428.152--428.157) [88952]"}
                    (forall n_19: Ref ::
                    { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                    g_1[n_19] ==> 1 / 2 > NoPerm ==> Mask[n_19, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_19: Ref ::
                    { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                    g_1[n_19] && NoPerm < 1 / 2 ==> qpRange42(n_19) && invRecv42(n_19) == n_19
                  );
                  assume (forall o_4: Ref ::
                    { invRecv42(o_4) }
                    g_1[invRecv42(o_4)] && (NoPerm < 1 / 2 && qpRange42(o_4)) ==> invRecv42(o_4) == o_4
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
        assume (forall v1_7_2: Ref, v2_7_2: Ref ::
          { (edge(old_g, v1_7_2, v2_7_2): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_2, v2_7_2): bool) }
          (exists_path($$(Heap, g_1), y, v2_7_2): bool) && v1_7_2 != y ==> (edge(old_g, v1_7_2, v2_7_2): bool) == (edge($$(Heap, g_1), v2_7_2, v1_7_2): bool)
        );
        assume state(Heap, Mask);
        if (y != null && x != null) {
          assume (edge(old_g, y, x): bool);
        }
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
        assume !g_1[null];
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n$1.next might not be injective. (list_reverse.vpr@405.19--405.27) [88953]"}
          (forall n$1_3: Ref, n$1_3_1: Ref ::
          
          (((n$1_3 != n$1_3_1 && g_1[n$1_3]) && g_1[n$1_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_3 != n$1_3_1
        );
        
        // -- Define Inverse Function
          assume (forall n$1_3: Ref ::
            { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
            g_1[n$1_3] && NoPerm < FullPerm ==> qpRange43(n$1_3) && invRecv43(n$1_3) == n$1_3
          );
          assume (forall o_4: Ref ::
            { invRecv43(o_4) }
            (g_1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> invRecv43(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$1_3: Ref ::
            { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
            g_1[n$1_3] ==> n$1_3 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((g_1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> invRecv43(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n$2_4_1: Ref ::
          { g_1[Heap[n$2_4_1, next]] } { g_1[n$2_4_1], Heap[n$2_4_1, next] }
          g_1[n$2_4_1] && Heap[n$2_4_1, next] != null ==> g_1[Heap[n$2_4_1, next]]
        );
        if (x != null) {
          assume g_1[x];
        }
        if (y != null) {
          assume g_1[y];
        }
        assume state(Heap, Mask);
        assume (forall n_20: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_20): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_20): bool) }
          g_1[n_20] ==> (exists_path($$(Heap, g_1), x, n_20): bool) || (exists_path($$(Heap, g_1), y, n_20): bool)
        );
        assume state(Heap, Mask);
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (func_graph($$(Heap, g_1)): bool);
        if (x != xe && x != null) {
          assume state(Heap, Mask);
          assume !(exists_path($$(Heap, g_1), x, xe): bool);
        }
        if (x != null) {
          assume state(Heap, Mask);
          assume !(edge($$(Heap, g_1), x, y): bool);
        }
        assume state(Heap, Mask);
        assume (forall v1_8: Ref, v2_8: Ref ::
          { (edge(old_g, v1_8, v2_8): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_8, v2_8): bool) }
          (exists_path($$(Heap, g_1), x, v1_8): bool) ==> (edge(old_g, v1_8, v2_8): bool) == (edge($$(Heap, g_1), v1_8, v2_8): bool)
        );
        assume state(Heap, Mask);
        assume (forall v1_9: Ref, v2_9: Ref ::
          { (edge(old_g, v1_9, v2_9): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_9, v2_9): bool) }
          (exists_path($$(Heap, g_1), y, v2_9): bool) && v1_9 != y ==> (edge(old_g, v1_9, v2_9): bool) == (edge($$(Heap, g_1), v2_9, v1_9): bool)
        );
        if (y != null && x != null) {
          assume (edge(old_g, y, x): bool);
        }
        assume state(Heap, Mask);
        // Check and assume guard
        assume x != null;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[save_y, $allocated];
            assume Heap[save_x, $allocated];
          
          // -- Translating statement: save_g := $$(g) -- list_reverse.vpr@435.9--435.38
            
            // -- Check definedness of $$(g)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@435.33--435.38) [88954]"}
                    (forall n_21: Ref ::
                    { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                    g_1[n_21] && dummyFunction(Heap[n_21, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@435.33--435.38) [88955]"}
                    (forall n_21: Ref, n_21_1: Ref ::
                    { neverTriggered44(n_21), neverTriggered44(n_21_1) }
                    (((n_21 != n_21_1 && g_1[n_21]) && g_1[n_21_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@435.33--435.38) [88956]"}
                    (forall n_21: Ref ::
                    { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                    g_1[n_21] ==> 1 / 2 > NoPerm ==> Mask[n_21, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_21: Ref ::
                    { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                    g_1[n_21] && NoPerm < 1 / 2 ==> qpRange44(n_21) && invRecv44(n_21) == n_21
                  );
                  assume (forall o_4: Ref ::
                    { invRecv44(o_4) }
                    g_1[invRecv44(o_4)] && (NoPerm < 1 / 2 && qpRange44(o_4)) ==> invRecv44(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            save_g := $$(Heap, g_1);
            assume state(Heap, Mask);
          
          // -- Translating statement: save_y := y -- list_reverse.vpr@436.9--436.29
            save_y := y;
            assume state(Heap, Mask);
          
          // -- Translating statement: save_x := x -- list_reverse.vpr@437.9--437.29
            save_x := x;
            assume state(Heap, Mask);
          
          // -- Translating statement: t := x.next -- list_reverse.vpr@439.9--439.20
            
            // -- Check definedness of x.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (list_reverse.vpr@439.9--439.20) [88957]"}
                HasDirectPerm(Mask, x, next);
            t_2 := Heap[x, next];
            assume state(Heap, Mask);
          
          // -- Translating statement: unlink(g, x) -- list_reverse.vpr@442.9--442.20
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method unlink might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@442.9--442.20) [88958]"}
                g_1[x];
              assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list_reverse.vpr@442.9--442.20) [88959]"}
                !g_1[null];
              assert {:msg "  The precondition of method unlink might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@442.9--442.20) [88960]"}
                g_1[x];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access x.next (list_reverse.vpr@442.9--442.20) [88961]"}
                  perm <= Mask[x, next];
              }
              Mask := Mask[x, next:=Mask[x, next] - perm];
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@442.9--442.20) [88962]"}
                  (forall n_22: Ref ::
                  { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                  (g_1[n_22] && n_22 != x) && dummyFunction(Heap[n_22, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@442.9--442.20) [88963]"}
                  (forall n_22: Ref, n_22_1: Ref ::
                  { neverTriggered45(n_22), neverTriggered45(n_22_1) }
                  (((n_22 != n_22_1 && (g_1[n_22] && n_22 != x)) && (g_1[n_22_1] && n_22_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@442.9--442.20) [88964]"}
                  (forall n_22: Ref ::
                  { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                  g_1[n_22] && n_22 != x ==> Mask[n_22, next] >= 1 / 2
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_22: Ref ::
                  { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                  (g_1[n_22] && n_22 != x) && NoPerm < 1 / 2 ==> qpRange45(n_22) && invRecv45(n_22) == n_22
                );
                assume (forall o_4: Ref ::
                  { invRecv45(o_4) }
                  (g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && (NoPerm < 1 / 2 && qpRange45(o_4)) ==> invRecv45(o_4) == o_4
                );
              
              // -- assume permission updates for field next
                assume (forall o_4: Ref ::
                  { QPMask[o_4, next] }
                  ((g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && (NoPerm < 1 / 2 && qpRange45(o_4)) ==> invRecv45(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && (NoPerm < 1 / 2 && qpRange45(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                );
              
              // -- assume permission updates for independent locations
                assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                  { QPMask[o_4, f_5] }
                  f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                );
              Mask := QPMask;
              if (*) {
                if (g_1[n$0_4] && Heap[n$0_4, next] != null) {
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list_reverse.vpr@442.9--442.20) [88965]"}
                    g_1[Heap[n$0_4, next]];
                }
                assume false;
              }
              assume (forall n$0_5_1: Ref ::
                { g_1[Heap[n$0_5_1, next]] } { g_1[n$0_5_1], Heap[n$0_5_1, next] }
                g_1[n$0_5_1] && Heap[n$0_5_1, next] != null ==> g_1[Heap[n$0_5_1, next]]
              );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              assume !g_1[null];
              assume g_1[x];
              perm := FullPerm;
              assume x != null;
              Mask := Mask[x, next:=Mask[x, next] + perm];
              assume state(Heap, Mask);
              havoc QPMask;
              assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list_reverse.vpr@442.9--442.20) [88966]"}
                (forall n$1_4: Ref, n$1_4_1: Ref ::
                
                (((n$1_4 != n$1_4_1 && (g_1[n$1_4] && n$1_4 != x)) && (g_1[n$1_4_1] && n$1_4_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_4 != n$1_4_1
              );
              
              // -- Define Inverse Function
                assume (forall n$1_4: Ref ::
                  { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                  (g_1[n$1_4] && n$1_4 != x) && NoPerm < 1 / 2 ==> qpRange46(n$1_4) && invRecv46(n$1_4) == n$1_4
                );
                assume (forall o_4: Ref ::
                  { invRecv46(o_4) }
                  ((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4) ==> invRecv46(o_4) == o_4
                );
              // Check that permission expression is non-negative for all fields
              assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list_reverse.vpr@442.9--442.20) [88967]"}
                (forall n$1_4: Ref ::
                { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                g_1[n$1_4] && n$1_4 != x ==> 1 / 2 >= NoPerm
              );
              
              // -- Assume set of fields is nonNull
                assume (forall n$1_4: Ref ::
                  { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                  (g_1[n$1_4] && n$1_4 != x) && 1 / 2 > NoPerm ==> n$1_4 != null
                );
              
              // -- Define permissions
                assume (forall o_4: Ref ::
                  { QPMask[o_4, next] }
                  (((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4) ==> (NoPerm < 1 / 2 ==> invRecv46(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                );
                assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                  { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                  f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                );
              Mask := QPMask;
              assume state(Heap, Mask);
              assume (forall n$2_5_1: Ref ::
                { g_1[Heap[n$2_5_1, next]] } { g_1[n$2_5_1], Heap[n$2_5_1, next] }
                g_1[n$2_5_1] && Heap[n$2_5_1, next] != null ==> g_1[Heap[n$2_5_1, next]]
              );
              assume Heap[x, next] == null;
              if (PreCallHeap[x, next] == null) {
                assume state(Heap, Mask);
                assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
              }
              if (PreCallHeap[x, next] != null) {
                assume state(Heap, Mask);
                assume (forall v1_10: Ref, v2_10: Ref ::
                  { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_10, v2_10): bool) }
                  (edge($$(Heap, g_1), v1_10, v2_10): bool) == ((edge($$(PreCallHeap, g_1), v1_10, v2_10): bool) && !(v1_10 == x && v2_10 == PreCallHeap[x, next]))
                );
              }
              if (PreCallHeap[x, next] != null) {
                assume state(Heap, Mask);
                assume (forall v1_11: Ref, v2_11: Ref ::
                  { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_11, v2_11): bool) }
                  v1_11 != v2_11 ==> (exists_path($$(Heap, g_1), v1_11, v2_11): bool) == ((exists_path($$(PreCallHeap, g_1), v1_11, v2_11): bool) && !((exists_path($$(PreCallHeap, g_1), v1_11, x): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[x, next], v2_11): bool)))
                );
              }
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: link(g, x, y) -- list_reverse.vpr@443.9--443.20
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method link might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@443.9--443.20) [88968]"}
                g_1[x];
              if (y != null) {
                assert {:msg "  The precondition of method link might not hold. Assertion (y in g) might not hold. (list_reverse.vpr@443.9--443.20) [88969]"}
                  g_1[y];
              }
              assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list_reverse.vpr@443.9--443.20) [88970]"}
                !g_1[null];
              assert {:msg "  The precondition of method link might not hold. Assertion (x in g) might not hold. (list_reverse.vpr@443.9--443.20) [88971]"}
                g_1[x];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access x.next (list_reverse.vpr@443.9--443.20) [88972]"}
                  perm <= Mask[x, next];
              }
              Mask := Mask[x, next:=Mask[x, next] - perm];
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@443.9--443.20) [88973]"}
                  (forall n_23: Ref ::
                  { Heap[n_23, next] } { QPMask[n_23, next] } { Heap[n_23, next] }
                  (g_1[n_23] && n_23 != x) && dummyFunction(Heap[n_23, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@443.9--443.20) [88974]"}
                  (forall n_23: Ref, n_23_1: Ref ::
                  { neverTriggered47(n_23), neverTriggered47(n_23_1) }
                  (((n_23 != n_23_1 && (g_1[n_23] && n_23 != x)) && (g_1[n_23_1] && n_23_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@443.9--443.20) [88975]"}
                  (forall n_23: Ref ::
                  { Heap[n_23, next] } { QPMask[n_23, next] } { Heap[n_23, next] }
                  g_1[n_23] && n_23 != x ==> Mask[n_23, next] >= 1 / 2
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_23: Ref ::
                  { Heap[n_23, next] } { QPMask[n_23, next] } { Heap[n_23, next] }
                  (g_1[n_23] && n_23 != x) && NoPerm < 1 / 2 ==> qpRange47(n_23) && invRecv47(n_23) == n_23
                );
                assume (forall o_4: Ref ::
                  { invRecv47(o_4) }
                  (g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && (NoPerm < 1 / 2 && qpRange47(o_4)) ==> invRecv47(o_4) == o_4
                );
              
              // -- assume permission updates for field next
                assume (forall o_4: Ref ::
                  { QPMask[o_4, next] }
                  ((g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && (NoPerm < 1 / 2 && qpRange47(o_4)) ==> invRecv47(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && (NoPerm < 1 / 2 && qpRange47(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                );
              
              // -- assume permission updates for independent locations
                assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                  { QPMask[o_4, f_5] }
                  f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                );
              Mask := QPMask;
              if (*) {
                if (g_1[n$0_6] && Heap[n$0_6, next] != null) {
                  assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list_reverse.vpr@443.9--443.20) [88976]"}
                    g_1[Heap[n$0_6, next]];
                }
                assume false;
              }
              assume (forall n$0_7_1: Ref ::
                { g_1[Heap[n$0_7_1, next]] } { g_1[n$0_7_1], Heap[n$0_7_1, next] }
                g_1[n$0_7_1] && Heap[n$0_7_1, next] != null ==> g_1[Heap[n$0_7_1, next]]
              );
              assert {:msg "  The precondition of method link might not hold. Assertion x.next == null might not hold. (list_reverse.vpr@443.9--443.20) [88977]"}
                Heap[x, next] == null;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              assume !g_1[null];
              assume g_1[x];
              perm := FullPerm;
              assume x != null;
              Mask := Mask[x, next:=Mask[x, next] + perm];
              assume state(Heap, Mask);
              havoc QPMask;
              assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list_reverse.vpr@443.9--443.20) [88978]"}
                (forall n$1_5: Ref, n$1_5_1: Ref ::
                
                (((n$1_5 != n$1_5_1 && (g_1[n$1_5] && n$1_5 != x)) && (g_1[n$1_5_1] && n$1_5_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_5 != n$1_5_1
              );
              
              // -- Define Inverse Function
                assume (forall n$1_5: Ref ::
                  { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                  (g_1[n$1_5] && n$1_5 != x) && NoPerm < 1 / 2 ==> qpRange48(n$1_5) && invRecv48(n$1_5) == n$1_5
                );
                assume (forall o_4: Ref ::
                  { invRecv48(o_4) }
                  ((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4) ==> invRecv48(o_4) == o_4
                );
              // Check that permission expression is non-negative for all fields
              assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list_reverse.vpr@443.9--443.20) [88979]"}
                (forall n$1_5: Ref ::
                { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                g_1[n$1_5] && n$1_5 != x ==> 1 / 2 >= NoPerm
              );
              
              // -- Assume set of fields is nonNull
                assume (forall n$1_5: Ref ::
                  { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                  (g_1[n$1_5] && n$1_5 != x) && 1 / 2 > NoPerm ==> n$1_5 != null
                );
              
              // -- Define permissions
                assume (forall o_4: Ref ::
                  { QPMask[o_4, next] }
                  (((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4) ==> (NoPerm < 1 / 2 ==> invRecv48(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                );
                assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                  { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                  f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                );
              Mask := QPMask;
              assume state(Heap, Mask);
              assume (forall n$2_6: Ref ::
                { g_1[Heap[n$2_6, next]] } { g_1[n$2_6], Heap[n$2_6, next] }
                g_1[n$2_6] && Heap[n$2_6, next] != null ==> g_1[Heap[n$2_6, next]]
              );
              assume Heap[x, next] == y;
              if (y == null) {
                assume state(Heap, Mask);
                assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
              }
              if (y != null) {
                assume state(Heap, Mask);
                assume (forall v1_12: Ref, v2_12: Ref ::
                  { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_12, v2_12): bool) }
                  (edge($$(Heap, g_1), v1_12, v2_12): bool) == ((edge($$(PreCallHeap, g_1), v1_12, v2_12): bool) || (v1_12 == x && v2_12 == y))
                );
              }
              if (y != null) {
                assume state(Heap, Mask);
                assume (forall v1_13: Ref, v2_13: Ref ::
                  { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_13, v2_13): bool) }
                  v1_13 != v2_13 ==> (exists_path($$(Heap, g_1), v1_13, v2_13): bool) == ((exists_path($$(PreCallHeap, g_1), v1_13, v2_13): bool) || ((exists_path($$(PreCallHeap, g_1), v1_13, x): bool) && (exists_path($$(PreCallHeap, g_1), y, v2_13): bool)))
                );
              }
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: y := x -- list_reverse.vpr@445.9--445.15
            y := x;
            assume state(Heap, Mask);
          
          // -- Translating statement: x := t -- list_reverse.vpr@446.9--446.15
            x := t_2;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert save_y != null ==>
  //   (forall v1: Ref, v2: Ref ::
  //     { (v1 in g), (v2 in g) }
  //     (v1 in g) && (v2 in g) ==>
  //     edge($$(g), v1, v2) ==
  //     (edge(save_g, v1, v2) && v1 != save_x || v1 == save_x && v2 == save_y)) -- list_reverse.vpr@454.9--457.14
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (save_y != null) {
              
              // -- Check definedness of (forall v1: Ref, v2: Ref :: { (v1 in g), (v2 in g) } (v1 in g) && (v2 in g) ==> edge($$(g), v1, v2) == (edge(save_g, v1, v2) && v1 != save_x || v1 == save_x && v2 == save_y))
                if (*) {
                  if (g_1[v1_30] && g_1[v2_30]) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                      ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list_reverse.vpr@456.22--456.27) [88980]"}
                          (forall n_24: Ref ::
                          { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                          g_1[n_24] && dummyFunction(ExhaleWellDef0Heap[n_24, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_reverse.vpr@456.22--456.27) [88981]"}
                          (forall n_24: Ref, n_24_1: Ref ::
                          { neverTriggered49(n_24), neverTriggered49(n_24_1) }
                          (((n_24 != n_24_1 && g_1[n_24]) && g_1[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_reverse.vpr@456.22--456.27) [88982]"}
                          (forall n_24: Ref ::
                          { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                          g_1[n_24] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_24, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_24: Ref ::
                          { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                          g_1[n_24] && NoPerm < 1 / 2 ==> qpRange49(n_24) && invRecv49(n_24) == n_24
                        );
                        assume (forall o_4: Ref ::
                          { invRecv49(o_4) }
                          g_1[invRecv49(o_4)] && (NoPerm < 1 / 2 && qpRange49(o_4)) ==> invRecv49(o_4) == o_4
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
                if (g_1[v1_15] && g_1[v2_15]) {
                  assert {:msg "  Assert might fail. Assertion edge($$(g), v1, v2) == (edge(save_g, v1, v2) && v1 != save_x || v1 == save_x && v2 == save_y) might not hold. (list_reverse.vpr@454.16--457.14) [88983]"}
                    (edge($$(Heap, g_1), v1_15, v2_15): bool) == (((edge(save_g, v1_15, v2_15): bool) && v1_15 != save_x) || (v1_15 == save_x && v2_15 == save_y));
                }
                assume false;
              }
              assume (forall v1_16_1: Ref, v2_16_1: Ref ::
                { g_1[v1_16_1], g_1[v2_16_1] }
                g_1[v1_16_1] && g_1[v2_16_1] ==> (edge($$(Heap, g_1), v1_16_1, v2_16_1): bool) == (((edge(save_g, v1_16_1, v2_16_1): bool) && v1_16_1 != save_x) || (v1_16_1 == save_x && v2_16_1 == save_y))
              );
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Assertion !((null in g)) might not hold. (list_reverse.vpr@405.19--405.27) [88984]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$1 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Quantified resource n$1.next might not be injective. (list_reverse.vpr@405.19--405.27) [88985]"}
            (forall n$1_6: Ref, n$1_6_1: Ref ::
            { neverTriggered50(n$1_6), neverTriggered50(n$1_6_1) }
            (((n$1_6 != n$1_6_1 && g_1[n$1_6]) && g_1[n$1_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_6 != n$1_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. There might be insufficient permission to access n$1.next (list_reverse.vpr@405.19--405.27) [88986]"}
            (forall n$1_6: Ref ::
            { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
            g_1[n$1_6] ==> Mask[n$1_6, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$1
          assume (forall n$1_6: Ref ::
            { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
            g_1[n$1_6] && NoPerm < FullPerm ==> qpRange50(n$1_6) && invRecv50(n$1_6) == n$1_6
          );
          assume (forall o_4: Ref ::
            { invRecv50(o_4) }
            g_1[invRecv50(o_4)] && (NoPerm < FullPerm && qpRange50(o_4)) ==> invRecv50(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (g_1[invRecv50(o_4)] && (NoPerm < FullPerm && qpRange50(o_4)) ==> invRecv50(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv50(o_4)] && (NoPerm < FullPerm && qpRange50(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$2_7] && Heap[n$2_7, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Assertion (n$2.next in g) might not hold. (list_reverse.vpr@405.19--405.27) [88987]"}
              g_1[Heap[n$2_7, next]];
          }
          assume false;
        }
        assume (forall n$2_8_1: Ref ::
          { g_1[Heap[n$2_8_1, next]] } { g_1[n$2_8_1], Heap[n$2_8_1, next] }
          g_1[n$2_8_1] && Heap[n$2_8_1, next] != null ==> g_1[Heap[n$2_8_1, next]]
        );
        if (x != null) {
          assert {:msg "  Loop invariant x != null ==> (x in g) might not be preserved. Assertion (x in g) might not hold. (list_reverse.vpr@406.19--406.39) [88988]"}
            g_1[x];
        }
        if (y != null) {
          assert {:msg "  Loop invariant y != null ==> (y in g) might not be preserved. Assertion (y in g) might not hold. (list_reverse.vpr@407.19--407.39) [88989]"}
            g_1[y];
        }
        if (*) {
          if (g_1[n_25_1]) {
            assert {:msg "  Loop invariant (forall n: Ref :: { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)) might not be preserved. Assertion exists_path($$(g), x, n) || exists_path($$(g), y, n) might not hold. (list_reverse.vpr@411.19--411.147) [88990]"}
              (exists_path($$(Heap, g_1), x, n_25_1): bool) || (exists_path($$(Heap, g_1), y, n_25_1): bool);
          }
          assume false;
        }
        assume (forall n_26_1_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_26_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_26_1_1): bool) }
          g_1[n_26_1_1] ==> (exists_path($$(Heap, g_1), x, n_26_1_1): bool) || (exists_path($$(Heap, g_1), y, n_26_1_1): bool)
        );
        assert {:msg "  Loop invariant acyclic_graph($$(g)) might not be preserved. Assertion acyclic_graph($$(g)) might not hold. (list_reverse.vpr@413.19--413.39) [88991]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant unshared_graph($$(g)) might not be preserved. Assertion unshared_graph($$(g)) might not hold. (list_reverse.vpr@414.19--414.40) [88992]"}
          (unshared_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant func_graph($$(g)) might not be preserved. Assertion func_graph($$(g)) might not hold. (list_reverse.vpr@415.19--415.36) [88993]"}
          (func_graph($$(Heap, g_1)): bool);
        if (x != xe && x != null) {
          assert {:msg "  Loop invariant x != xe && x != null ==> !exists_path($$(g), x, xe) might not be preserved. Assertion !exists_path($$(g), x, xe) might not hold. (list_reverse.vpr@419.19--419.68) [88994]"}
            !(exists_path($$(Heap, g_1), x, xe): bool);
        }
        if (x != null) {
          assert {:msg "  Loop invariant x != null ==> !edge($$(g), x, y) might not be preserved. Assertion !edge($$(g), x, y) might not hold. (list_reverse.vpr@421.19--421.49) [88995]"}
            !(edge($$(Heap, g_1), x, y): bool);
        }
        if (*) {
          if ((exists_path($$(Heap, g_1), x, v1_17): bool)) {
            assert {:msg "  Loop invariant (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), x, v1) ==> edge(old_g, v1, v2) == edge($$(g), v1, v2)) might not be preserved. Assertion edge(old_g, v1, v2) == edge($$(g), v1, v2) might not hold. (list_reverse.vpr@425.19--425.166) [88996]"}
              (edge(old_g, v1_17, v2_17): bool) == (edge($$(Heap, g_1), v1_17, v2_17): bool);
          }
          assume false;
        }
        assume (forall v1_18_1: Ref, v2_18_1: Ref ::
          { (edge(old_g, v1_18_1, v2_18_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_18_1, v2_18_1): bool) }
          (exists_path($$(Heap, g_1), x, v1_18_1): bool) ==> (edge(old_g, v1_18_1, v2_18_1): bool) == (edge($$(Heap, g_1), v1_18_1, v2_18_1): bool)
        );
        if (*) {
          if ((exists_path($$(Heap, g_1), y, v2_19): bool) && v1_19 != y) {
            assert {:msg "  Loop invariant (forall v1: Ref, v2: Ref :: { edge(old_g, v1, v2) } { edge($$(g), v1, v2) } exists_path($$(g), y, v2) && v1 != y ==> edge(old_g, v1, v2) == edge($$(g), v2, v1)) might not be preserved. Assertion edge(old_g, v1, v2) == edge($$(g), v2, v1) might not hold. (list_reverse.vpr@428.19--428.166) [88997]"}
              (edge(old_g, v1_19, v2_19): bool) == (edge($$(Heap, g_1), v2_19, v1_19): bool);
          }
          assume false;
        }
        assume (forall v1_20_1: Ref, v2_20_1: Ref ::
          { (edge(old_g, v1_20_1, v2_20_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_20_1, v2_20_1): bool) }
          (exists_path($$(Heap, g_1), y, v2_20_1): bool) && v1_20_1 != y ==> (edge(old_g, v1_20_1, v2_20_1): bool) == (edge($$(Heap, g_1), v2_20_1, v1_20_1): bool)
        );
        if (y != null && x != null) {
          assert {:msg "  Loop invariant y != null && x != null ==> edge(old_g, y, x) might not be preserved. Assertion edge(old_g, y, x) might not hold. (list_reverse.vpr@431.19--431.61) [88998]"}
            (edge(old_g, y, x): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(x != null);
      assume state(Heap, Mask);
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$1.next might not be injective. (list_reverse.vpr@405.19--405.27) [88999]"}
        (forall n$1_7: Ref, n$1_7_1: Ref ::
        
        (((n$1_7 != n$1_7_1 && g_1[n$1_7]) && g_1[n$1_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_7 != n$1_7_1
      );
      
      // -- Define Inverse Function
        assume (forall n$1_7: Ref ::
          { Heap[n$1_7, next] } { QPMask[n$1_7, next] } { Heap[n$1_7, next] }
          g_1[n$1_7] && NoPerm < FullPerm ==> qpRange51(n$1_7) && invRecv51(n$1_7) == n$1_7
        );
        assume (forall o_4: Ref ::
          { invRecv51(o_4) }
          (g_1[invRecv51(o_4)] && NoPerm < FullPerm) && qpRange51(o_4) ==> invRecv51(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_7: Ref ::
          { Heap[n$1_7, next] } { QPMask[n$1_7, next] } { Heap[n$1_7, next] }
          g_1[n$1_7] ==> n$1_7 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv51(o_4)] && NoPerm < FullPerm) && qpRange51(o_4) ==> (NoPerm < FullPerm ==> invRecv51(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv51(o_4)] && NoPerm < FullPerm) && qpRange51(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2_9: Ref ::
        { g_1[Heap[n$2_9, next]] } { g_1[n$2_9], Heap[n$2_9, next] }
        g_1[n$2_9] && Heap[n$2_9, next] != null ==> g_1[Heap[n$2_9, next]]
      );
      if (x != null) {
        assume g_1[x];
      }
      if (y != null) {
        assume g_1[y];
      }
      assume state(Heap, Mask);
      assume (forall n_27_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_27_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_27_1): bool) }
        g_1[n_27_1] ==> (exists_path($$(Heap, g_1), x, n_27_1): bool) || (exists_path($$(Heap, g_1), y, n_27_1): bool)
      );
      assume state(Heap, Mask);
      assume (acyclic_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (unshared_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (func_graph($$(Heap, g_1)): bool);
      if (x != xe && x != null) {
        assume state(Heap, Mask);
        assume !(exists_path($$(Heap, g_1), x, xe): bool);
      }
      if (x != null) {
        assume state(Heap, Mask);
        assume !(edge($$(Heap, g_1), x, y): bool);
      }
      assume state(Heap, Mask);
      assume (forall v1_21_1: Ref, v2_21_1: Ref ::
        { (edge(old_g, v1_21_1, v2_21_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_21_1, v2_21_1): bool) }
        (exists_path($$(Heap, g_1), x, v1_21_1): bool) ==> (edge(old_g, v1_21_1, v2_21_1): bool) == (edge($$(Heap, g_1), v1_21_1, v2_21_1): bool)
      );
      assume state(Heap, Mask);
      assume (forall v1_22_1: Ref, v2_22_1: Ref ::
        { (edge(old_g, v1_22_1, v2_22_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_22_1, v2_22_1): bool) }
        (exists_path($$(Heap, g_1), y, v2_22_1): bool) && v1_22_1 != y ==> (edge(old_g, v1_22_1, v2_22_1): bool) == (edge($$(Heap, g_1), v2_22_1, v1_22_1): bool)
      );
      if (y != null && x != null) {
        assume (edge(old_g, y, x): bool);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}