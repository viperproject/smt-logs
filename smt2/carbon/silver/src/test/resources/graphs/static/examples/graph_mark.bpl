// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:01:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/graph_mark.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/graph_mark-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  neverTriggered2(n$0_3_2: Ref): bool;
function  neverTriggered3(n$1_1: Ref): bool;
function  neverTriggered4(n$2_1_1: Ref): bool;
function  neverTriggered5(n$5_1: Ref): bool;
function  neverTriggered6(n$6_1: Ref): bool;
function  neverTriggered7(n_2: Ref): bool;
function  neverTriggered8(n$0_2_1: Ref): bool;
function  neverTriggered9(n_3: Ref): bool;
function  neverTriggered10(n$0_3_2: Ref): bool;
function  neverTriggered11(n$5_2: Ref): bool;
function  neverTriggered12(n$6_2: Ref): bool;
function  neverTriggered13(n$9: Ref): bool;
function  neverTriggered14(n$10: Ref): bool;
function  neverTriggered15(n$9_2: Ref): bool;
function  neverTriggered16(n$10_2: Ref): bool;
function  neverTriggered17(n_9: Ref): bool;
function  neverTriggered18(n$0_4: Ref): bool;
function  neverTriggered19(n_10_1: Ref): bool;
function  neverTriggered20(n$0_5: Ref): bool;
function  neverTriggered21(n_11_1: Ref): bool;
function  neverTriggered22(n$0_6: Ref): bool;
function  neverTriggered23(n_12_1: Ref): bool;
function  neverTriggered24(n$0_7: Ref): bool;
function  neverTriggered25(n_13: Ref): bool;
function  neverTriggered26(n$0_8: Ref): bool;
function  neverTriggered27(n_14: Ref): bool;
function  neverTriggered28(n$0_9: Ref): bool;
function  neverTriggered29(n_15: Ref): bool;
function  neverTriggered30(n$0_10: Ref): bool;
function  neverTriggered31(n$0_11: Ref): bool;
function  neverTriggered32(n$0_12: Ref): bool;
function  neverTriggered33(n_27_1: Ref): bool;
function  neverTriggered34(n$0_13_2: Ref): bool;
function  neverTriggered35(n$9_3: Ref): bool;
function  neverTriggered36(n$10_3: Ref): bool;
function  neverTriggered37(n$9_4: Ref): bool;
function  neverTriggered38(n$10_4: Ref): bool;
function  neverTriggered39(n$9_5: Ref): bool;
function  neverTriggered40(n$10_5: Ref): bool;
function  neverTriggered41(n_48: Ref): bool;
function  neverTriggered42(n$0_14: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: get
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

// Translation of domain function exists_spath
function  exists_spath(EG: (Set EdgeDomainType), from_1: (Set Ref), to_1: Ref): bool;

// Translation of domain function is_on_path
function  is_on_path(EG: (Set EdgeDomainType), start_1: Ref, w_4: Ref, end_1: Ref): bool;

// Translation of domain function apply_IND
function  apply_IND(EG: (Set EdgeDomainType), Z: (Set Ref), P_2: (Set Ref)): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M_1: (Set Ref)): bool;

// Translation of domain function apply_goOut
function  apply_goOut(EG: (Set EdgeDomainType), U: (Set Ref), A: (Set Ref), B: (Set Ref)): bool;

// Translation of domain function apply_newStart
function  apply_newStart(U: (Set Ref), A: (Set Ref), EG1: (Set EdgeDomainType), EG2: (Set EdgeDomainType)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_8: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain axiom ax_NoExit
axiom (forall EG_1: (Set EdgeDomainType), U_1: (Set Ref), M: (Set Ref) ::
  { (apply_noExit(EG_1, U_1, M): bool) }
  (apply_noExit(EG_1, U_1, M): bool) ==> (forall u_3: Ref, v_2: Ref ::
    { EG_1[(create_edge(u_3, v_2): EdgeDomainType)] } { M[u_3], M[v_2] }
    M[u_3] && (U_1[v_2] && !M[v_2]) ==> !EG_1[(create_edge(u_3, v_2): EdgeDomainType)]
  ) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path(EG_1, u_1, v_1_1): bool) } { M[u_1], M[v_1_1] }
    M[u_1] && (U_1[v_1_1] && !M[v_1_1]) ==> !(exists_path(EG_1, u_1, v_1_1): bool)
  )
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

// Translation of domain axiom ax_IsOnPath
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, mid: Ref, end: Ref ::
  { (is_on_path(EG_1, start, mid, end): bool) } { EG_1[(create_edge(start, mid): EdgeDomainType)], (exists_path_(EG_1, mid, end): bool) }
  (is_on_path(EG_1, start, mid, end): bool) == (EG_1[(create_edge(start, mid): EdgeDomainType)] && (exists_path_(EG_1, mid, end): bool))
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) } { EG_1[(create_edge(start, end): EdgeDomainType)] }
  (exists_path_(EG_1, start, end): bool) == (start == end || (exists w_2: Ref ::
    { EG_1[(create_edge(start, w_2): EdgeDomainType)] } { (exists_path_(EG_1, w_2, end): bool) }
    EG_1[(create_edge(start, w_2): EdgeDomainType)] && (exists_path_(EG_1, w_2, end): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_3: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_3, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_3, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_3, v_2): bool)
);

// Translation of domain axiom ax_ExistsSetPath
axiom (forall EG_1: (Set EdgeDomainType), from: (Set Ref), to: Ref ::
  { (exists_spath(EG_1, from, to): bool) }
  (exists_spath(EG_1, from, to): bool) == (exists f_69: Ref ::
    { from[f_69] } { (exists_path(EG_1, f_69, to): bool) }
    from[f_69] && (exists_path(EG_1, f_69, to): bool)
  )
);

// ==================================================
// Translation of all fields
// ==================================================

const unique car: Field NormalField Ref;
axiom !IsPredicateField(car);
axiom !IsWandField(car);
const unique cdr: Field NormalField Ref;
axiom !IsPredicateField(cdr);
axiom !IsWandField(cdr);

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
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.car } (n in refs) ==> acc(n.car, write)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), car] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), car]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n$0: Ref :: { n$0.cdr } (n$0 in refs) ==> acc(n$0.cdr, write)) in function $$
// ==================================================

function  $$#condqp2(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < FullPerm <==> refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < FullPerm) && (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < FullPerm ==> Heap2Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), cdr] == Heap1Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), cdr]) ==> $$#condqp2(Heap2Heap, refs) == $$#condqp2(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_1: Ref, s_2: Ref ::
    { $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)] }
    (refs[p_1] && (refs[s_2] && (Heap[p_1, car] == s_2 || Heap[p_1, cdr] == s_2))) == $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)]
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
  var p_18: Ref;
  var s_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.car } (n in refs) ==> acc(n.car, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.car might not be injective. (graph_mark.vpr@158.14--158.25) [87801]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, car] } { QPMask[n_3, car] } { Heap[n_3, car] }
        refs[n_3] && NoPerm < FullPerm ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (refs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, car] } { QPMask[n_3, car] } { Heap[n_3, car] }
        refs[n_3] ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, car] }
        ((refs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, car] == Mask[o_4, car] + FullPerm) && (!((refs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, car] == Mask[o_4, car])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.cdr } (n$0 in refs) ==> acc(n$0.cdr, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@158.14--158.25) [87802]"}
      (forall n$0_3_2: Ref, n$0_3_3: Ref ::
      
      (((n$0_3_2 != n$0_3_3 && refs[n$0_3_2]) && refs[n$0_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3_2 != n$0_3_3
    );
    
    // -- Define Inverse Function
      assume (forall n$0_3_2: Ref ::
        { Heap[n$0_3_2, cdr] } { QPMask[n$0_3_2, cdr] } { Heap[n$0_3_2, cdr] }
        refs[n$0_3_2] && NoPerm < FullPerm ==> qpRange2(n$0_3_2) && invRecv2(n$0_3_2) == n$0_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (refs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_3_2: Ref ::
        { Heap[n$0_3_2, cdr] } { QPMask[n$0_3_2, cdr] } { Heap[n$0_3_2, cdr] }
        refs[n$0_3_2] ==> n$0_3_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, cdr] }
        ((refs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, cdr] == Mask[o_4, cdr] + FullPerm) && (!((refs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (create_edge(p, s) in result) } ((p in refs) && ((s in refs) && (p.car == s || p.cdr == s))) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_18]) {
          if (refs[s_7]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.car (graph_mark.vpr@159.13--163.34) [87803]"}
              HasDirectPerm(Mask, p_18, car);
            if (!(Heap[p_18, car] == s_7)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.cdr (graph_mark.vpr@159.13--163.34) [87804]"}
                HasDirectPerm(Mask, p_18, cdr);
            }
          }
        }
        assume false;
      }
    assume (forall p_2_1: Ref, s_2_1: Ref ::
      { Result[(create_edge(p_2_1, s_2_1): EdgeDomainType)] }
      (refs[p_2_1] && (refs[s_2_1] && (Heap[p_2_1, car] == s_2_1 || Heap[p_2_1, cdr] == s_2_1))) == Result[(create_edge(p_2_1, s_2_1): EdgeDomainType)]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, s_2: (Set Ref)): Ref;
function  get'(Heap: HeapType, s_2: (Set Ref)): Ref;
axiom (forall Heap: HeapType, s_2: (Set Ref) ::
  { get(Heap, s_2) }
  get(Heap, s_2) == get'(Heap, s_2) && dummyFunction(get#triggerStateless(s_2))
);
axiom (forall Heap: HeapType, s_2: (Set Ref) ::
  { get'(Heap, s_2) }
  dummyFunction(get#triggerStateless(s_2))
);

// Framing axioms
function  get#frame(frame: FrameType, s_2: (Set Ref)): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Set Ref) ::
  { state(Heap, Mask), get'(Heap, s_2) }
  state(Heap, Mask) ==> get'(Heap, s_2) == get#frame(EmptyFrame, s_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (Set Ref) ::
  { state(Heap, Mask), get'(Heap, s_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || get#trigger(EmptyFrame, s_2)) ==> Set#Card(s_2) > 0 ==> s_2[get'(Heap, s_2)]
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, s_2: (Set Ref)): bool;

// State-independent trigger function
function  get#triggerStateless(s_2: (Set Ref)): Ref;

// Check contract well-formedness and postcondition
procedure get#definedness(s_2: (Set Ref)) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume Set#Card(s_2) > 0;
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume s_2[Result];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mark
// ==================================================

procedure mark(g_1: (Set Ref), roots: (Set Ref)) returns (marked: (Set Ref))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n_45: Ref;
  var n$0_25: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$3_8: Ref;
  var n$4_14: Ref;
  var v_21: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v_22: Ref;
  var x: Ref;
  var pending: (Set Ref);
  var n$7_4: Ref;
  var n$8: Ref;
  var n$7_5: Ref;
  var n$8_2: Ref;
  var n_46: Ref;
  var n1_2: Ref;
  var n2_1: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var n$7_5_1: Ref;
  var n$8_5: Ref;
  var n$3_2: Ref;
  var n$4_2_1: Ref;
  var v_4_1: Ref;
  var v_6_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Set#Card(roots) > 0;
    assume state(Heap, Mask);
    assume !g_1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.car } (n$1 in g) ==> acc(n$1.car, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.car might not be injective. (graph_mark.vpr@191.14--191.22) [87805]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, car] } { QPMask[n$1_1, car] } { Heap[n$1_1, car] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, car] } { QPMask[n$1_1, car] } { Heap[n$1_1, car] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, car] }
        ((g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, car] == Mask[o_4, car] + FullPerm) && (!((g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, car] == Mask[o_4, car])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { n$2.cdr } (n$2 in g) ==> acc(n$2.cdr, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$2.cdr might not be injective. (graph_mark.vpr@191.14--191.22) [87806]"}
      (forall n$2_1_1: Ref, n$2_1_2: Ref ::
      
      (((n$2_1_1 != n$2_1_2 && g_1[n$2_1_1]) && g_1[n$2_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_1_1 != n$2_1_2
    );
    
    // -- Define Inverse Function
      assume (forall n$2_1_1: Ref ::
        { Heap[n$2_1_1, cdr] } { QPMask[n$2_1_1, cdr] } { Heap[n$2_1_1, cdr] }
        g_1[n$2_1_1] && NoPerm < FullPerm ==> qpRange4(n$2_1_1) && invRecv4(n$2_1_1) == n$2_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (g_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$2_1_1: Ref ::
        { Heap[n$2_1_1, cdr] } { QPMask[n$2_1_1, cdr] } { Heap[n$2_1_1, cdr] }
        g_1[n$2_1_1] ==> n$2_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, cdr] }
        ((g_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, cdr] == Mask[o_4, cdr] + FullPerm) && (!((g_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { (n.car in g) } { (n in g), n.car } (n in g) ==> (n.car in g))
      if (*) {
        if (g_1[n_45]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.car (graph_mark.vpr@191.14--191.22) [87807]"}
            HasDirectPerm(Mask, n_45, car);
        }
        assume false;
      }
    assume (forall n_1: Ref ::
      { g_1[Heap[n_1, car]] } { g_1[n_1], Heap[n_1, car] }
      g_1[n_1] ==> g_1[Heap[n_1, car]]
    );
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.cdr in g) } { (n$0 in g), n$0.cdr } (n$0 in g) ==> (n$0.cdr in g))
      if (*) {
        if (g_1[n$0_25]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@191.14--191.22) [87808]"}
            HasDirectPerm(Mask, n$0_25, cdr);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, cdr]] } { g_1[n$0_1], Heap[n$0_1, cdr] }
      g_1[n$0_1] ==> g_1[Heap[n$0_1, cdr]]
    );
    assume state(Heap, Mask);
    assume Set#Subset(roots, g_1);
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
    assume Set#Subset(roots, marked);
    assume state(PostHeap, PostMask);
    assume Set#Subset(marked, g_1);
    assume state(PostHeap, PostMask);
    assume !g_1[null];
    
    // -- Check definedness of (forall n$5: Ref :: { n$5.car } (n$5 in g) ==> acc(n$5.car, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.car might not be injective. (graph_mark.vpr@195.13--195.21) [87809]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && g_1[n$5_1]) && g_1[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, car] } { QPMask[n$5_1, car] } { PostHeap[n$5_1, car] }
        g_1[n$5_1] && NoPerm < FullPerm ==> qpRange5(n$5_1) && invRecv5(n$5_1) == n$5_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, car] } { QPMask[n$5_1, car] } { PostHeap[n$5_1, car] }
        g_1[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, car] }
        ((g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, car] == PostMask[o_4, car] + FullPerm) && (!((g_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, car] == PostMask[o_4, car])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != car ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { n$6.cdr } (n$6 in g) ==> acc(n$6.cdr, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$6.cdr might not be injective. (graph_mark.vpr@195.13--195.21) [87810]"}
      (forall n$6_1: Ref, n$6_1_1: Ref ::
      
      (((n$6_1 != n$6_1_1 && g_1[n$6_1]) && g_1[n$6_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_1 != n$6_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, cdr] } { QPMask[n$6_1, cdr] } { PostHeap[n$6_1, cdr] }
        g_1[n$6_1] && NoPerm < FullPerm ==> qpRange6(n$6_1) && invRecv6(n$6_1) == n$6_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, cdr] } { QPMask[n$6_1, cdr] } { PostHeap[n$6_1, cdr] }
        g_1[n$6_1] ==> n$6_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, cdr] }
        ((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, cdr] == PostMask[o_4, cdr] + FullPerm) && (!((g_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, cdr] == PostMask[o_4, cdr])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != cdr ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { (n$3.car in g) } { (n$3 in g), n$3.car } (n$3 in g) ==> (n$3.car in g))
      if (*) {
        if (g_1[n$3_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.car (graph_mark.vpr@195.13--195.21) [87811]"}
            HasDirectPerm(PostMask, n$3_8, car);
        }
        assume false;
      }
    assume (forall n$3_1_2: Ref ::
      { g_1[PostHeap[n$3_1_2, car]] } { g_1[n$3_1_2], PostHeap[n$3_1_2, car] }
      g_1[n$3_1_2] ==> g_1[PostHeap[n$3_1_2, car]]
    );
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.cdr in g) } { (n$4 in g), n$4.cdr } (n$4 in g) ==> (n$4.cdr in g))
      if (*) {
        if (g_1[n$4_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.cdr (graph_mark.vpr@195.13--195.21) [87812]"}
            HasDirectPerm(PostMask, n$4_14, cdr);
        }
        assume false;
      }
    assume (forall n$4_1_2: Ref ::
      { g_1[PostHeap[n$4_1_2, cdr]] } { g_1[n$4_1_2], PostHeap[n$4_1_2, cdr] }
      g_1[n$4_1_2] ==> g_1[PostHeap[n$4_1_2, cdr]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall v: Ref :: { (v in marked) } { exists_spath($$(g), roots, v) } (v in g) ==> (v in marked) ==> exists_spath($$(g), roots, v))
      if (*) {
        if (g_1[v_21]) {
          if (marked[v_21]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@196.114--196.119) [87813]"}
                  (forall n_2: Ref, n_2_1: Ref ::
                  { neverTriggered7(n_2), neverTriggered7(n_2_1) }
                  (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@196.114--196.119) [87814]"}
                  (forall n_2: Ref ::
                  { PostHeap[n_2, car] } { QPMask[n_2, car] } { PostHeap[n_2, car] }
                  g_1[n_2] ==> FullPerm > NoPerm ==> PostMask[n_2, car] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_2: Ref ::
                  { PostHeap[n_2, car] } { QPMask[n_2, car] } { PostHeap[n_2, car] }
                  g_1[n_2] && NoPerm < FullPerm ==> qpRange7(n_2) && invRecv7(n_2) == n_2
                );
                assume (forall o_4: Ref ::
                  { invRecv7(o_4) }
                  g_1[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@196.114--196.119) [87815]"}
                  (forall n$0_2_1: Ref, n$0_2_2: Ref ::
                  { neverTriggered8(n$0_2_1), neverTriggered8(n$0_2_2) }
                  (((n$0_2_1 != n$0_2_2 && g_1[n$0_2_1]) && g_1[n$0_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2_1 != n$0_2_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@196.114--196.119) [87816]"}
                  (forall n$0_2_1: Ref ::
                  { PostHeap[n$0_2_1, cdr] } { QPMask[n$0_2_1, cdr] } { PostHeap[n$0_2_1, cdr] }
                  g_1[n$0_2_1] ==> FullPerm > NoPerm ==> PostMask[n$0_2_1, cdr] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_2_1: Ref ::
                  { PostHeap[n$0_2_1, cdr] } { QPMask[n$0_2_1, cdr] } { PostHeap[n$0_2_1, cdr] }
                  g_1[n$0_2_1] && NoPerm < FullPerm ==> qpRange8(n$0_2_1) && invRecv8(n$0_2_1) == n$0_2_1
                );
                assume (forall o_4: Ref ::
                  { invRecv8(o_4) }
                  g_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
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
        assume false;
      }
    assume (forall v_1_1: Ref ::
      { marked[v_1_1] } { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), roots, v_1_1): bool) }
      g_1[v_1_1] ==> marked[v_1_1] ==> (exists_spath($$(PostHeap, g_1), roots, v_1_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall v: Ref :: { (v in marked) } { exists_spath($$(g), roots, v) } (v in g) ==> exists_spath($$(g), roots, v) ==> (v in marked))
      if (*) {
        if (g_1[v_22]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@197.98--197.103) [87817]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered9(n_3), neverTriggered9(n_3_1) }
                (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@197.98--197.103) [87818]"}
                (forall n_3: Ref ::
                { PostHeap[n_3, car] } { QPMask[n_3, car] } { PostHeap[n_3, car] }
                g_1[n_3] ==> FullPerm > NoPerm ==> PostMask[n_3, car] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { PostHeap[n_3, car] } { QPMask[n_3, car] } { PostHeap[n_3, car] }
                g_1[n_3] && NoPerm < FullPerm ==> qpRange9(n_3) && invRecv9(n_3) == n_3
              );
              assume (forall o_4: Ref ::
                { invRecv9(o_4) }
                g_1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@197.98--197.103) [87819]"}
                (forall n$0_3_2: Ref, n$0_3_3: Ref ::
                { neverTriggered10(n$0_3_2), neverTriggered10(n$0_3_3) }
                (((n$0_3_2 != n$0_3_3 && g_1[n$0_3_2]) && g_1[n$0_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3_2 != n$0_3_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@197.98--197.103) [87820]"}
                (forall n$0_3_2: Ref ::
                { PostHeap[n$0_3_2, cdr] } { QPMask[n$0_3_2, cdr] } { PostHeap[n$0_3_2, cdr] }
                g_1[n$0_3_2] ==> FullPerm > NoPerm ==> PostMask[n$0_3_2, cdr] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3_2: Ref ::
                { PostHeap[n$0_3_2, cdr] } { QPMask[n$0_3_2, cdr] } { PostHeap[n$0_3_2, cdr] }
                g_1[n$0_3_2] && NoPerm < FullPerm ==> qpRange10(n$0_3_2) && invRecv10(n$0_3_2) == n$0_3_2
              );
              assume (forall o_4: Ref ::
                { invRecv10(o_4) }
                g_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
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
    assume (forall v_3_1: Ref ::
      { marked[v_3_1] } { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), roots, v_3_1): bool) }
      g_1[v_3_1] ==> (exists_spath($$(PostHeap, g_1), roots, v_3_1): bool) ==> marked[v_3_1]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := get(roots) -- graph_mark.vpr@199.5--199.28
    
    // -- Check definedness of get(roots)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function get might not hold. Assertion |roots| > 0 might not hold. (graph_mark.vpr@199.18--199.28) [87821]"}
          Set#Card(roots) > 0;
        // Stop execution
        assume false;
      }
    x := get(Heap, roots);
    assume state(Heap, Mask);
  
  // -- Translating statement: pending := roots -- graph_mark.vpr@200.5--200.34
    pending := roots;
    assume state(Heap, Mask);
  
  // -- Translating statement: marked := Set[Ref]() -- graph_mark.vpr@201.5--201.20
    marked := (Set#Empty(): Set Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (|pending| > 0) -- graph_mark.vpr@203.5--238.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. Assertion !((null in g)) might not hold. (graph_mark.vpr@205.19--205.27) [87822]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$9 is injective
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. Quantified resource n$9.car might not be injective. (graph_mark.vpr@205.19--205.27) [87823]"}
            (forall n$9: Ref, n$9_6: Ref ::
            { neverTriggered13(n$9), neverTriggered13(n$9_6) }
            (((n$9 != n$9_6 && g_1[n$9]) && g_1[n$9_6]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9 != n$9_6
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. There might be insufficient permission to access n$9.car (graph_mark.vpr@205.19--205.27) [87824]"}
            (forall n$9: Ref ::
            { Heap[n$9, car] } { QPMask[n$9, car] } { Heap[n$9, car] }
            g_1[n$9] ==> Mask[n$9, car] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$9
          assume (forall n$9: Ref ::
            { Heap[n$9, car] } { QPMask[n$9, car] } { Heap[n$9, car] }
            g_1[n$9] && NoPerm < FullPerm ==> qpRange13(n$9) && invRecv13(n$9) == n$9
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            g_1[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
          );
        
        // -- assume permission updates for field car
          assume (forall o_4: Ref ::
            { QPMask[o_4, car] }
            (g_1[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4 && QPMask[o_4, car] == Mask[o_4, car] - FullPerm) && (!(g_1[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4))) ==> QPMask[o_4, car] == Mask[o_4, car])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$10 is injective
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. Quantified resource n$10.cdr might not be injective. (graph_mark.vpr@205.19--205.27) [87825]"}
            (forall n$10: Ref, n$10_6: Ref ::
            { neverTriggered14(n$10), neverTriggered14(n$10_6) }
            (((n$10 != n$10_6 && g_1[n$10]) && g_1[n$10_6]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10 != n$10_6
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. There might be insufficient permission to access n$10.cdr (graph_mark.vpr@205.19--205.27) [87826]"}
            (forall n$10: Ref ::
            { Heap[n$10, cdr] } { QPMask[n$10, cdr] } { Heap[n$10, cdr] }
            g_1[n$10] ==> Mask[n$10, cdr] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$10
          assume (forall n$10: Ref ::
            { Heap[n$10, cdr] } { QPMask[n$10, cdr] } { Heap[n$10, cdr] }
            g_1[n$10] && NoPerm < FullPerm ==> qpRange14(n$10) && invRecv14(n$10) == n$10
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            g_1[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
          );
        
        // -- assume permission updates for field cdr
          assume (forall o_4: Ref ::
            { QPMask[o_4, cdr] }
            (g_1[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4 && QPMask[o_4, cdr] == Mask[o_4, cdr] - FullPerm) && (!(g_1[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$7_4]) {
            assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. Assertion (n$7.car in g) might not hold. (graph_mark.vpr@205.19--205.27) [87827]"}
              g_1[Heap[n$7_4, car]];
          }
          assume false;
        }
        assume (forall n$7_1_1: Ref ::
          { g_1[Heap[n$7_1_1, car]] } { g_1[n$7_1_1], Heap[n$7_1_1, car] }
          g_1[n$7_1_1] ==> g_1[Heap[n$7_1_1, car]]
        );
        if (*) {
          if (g_1[n$8]) {
            assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not hold on entry. Assertion (n$8.cdr in g) might not hold. (graph_mark.vpr@205.19--205.27) [87828]"}
              g_1[Heap[n$8, cdr]];
          }
          assume false;
        }
        assume (forall n$8_1_1: Ref ::
          { g_1[Heap[n$8_1_1, cdr]] } { g_1[n$8_1_1], Heap[n$8_1_1, cdr] }
          g_1[n$8_1_1] ==> g_1[Heap[n$8_1_1, cdr]]
        );
        assert {:msg "  Loop invariant (x in g) might not hold on entry. Assertion (x in g) might not hold. (graph_mark.vpr@208.19--208.25) [87829]"}
          g_1[x];
        assert {:msg "  Loop invariant (pending subset g) might not hold on entry. Assertion (pending subset g) might not hold. (graph_mark.vpr@209.19--209.35) [87830]"}
          Set#Subset(pending, g_1);
        assert {:msg "  Loop invariant (marked subset g) might not hold on entry. Assertion (marked subset g) might not hold. (graph_mark.vpr@210.19--210.34) [87831]"}
          Set#Subset(marked, g_1);
        assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not hold on entry. Assertion exists_spath($$(g), roots, x) might not hold. (graph_mark.vpr@212.19--214.118) [87832]"}
          (exists_spath($$(Heap, g_1), roots, x): bool);
        if (Heap[x, cdr] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, cdr], Heap[x, cdr]): bool)) {
            assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not hold on entry. Assertion exists_path($$(g), x, x.cdr) might not hold. (graph_mark.vpr@212.19--214.118) [87833]"}
              (exists_path($$(Heap, g_1), x, Heap[x, cdr]): bool);
          }
        }
        if (Heap[x, car] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, car], Heap[x, car]): bool)) {
            assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not hold on entry. Assertion exists_path($$(g), x, x.car) might not hold. (graph_mark.vpr@212.19--214.118) [87834]"}
              (exists_path($$(Heap, g_1), x, Heap[x, car]): bool);
          }
        }
        assert {:msg "  Loop invariant (forall n: Ref :: { (n in pending) } { (n in roots) } (n in roots) == (n in pending)) && (forall n: Ref :: { (n in marked) } (n in g) ==> !((n in marked))) || (forall n: Ref :: { (n in pending) } { (n in marked) } (n in roots) ==> (n in marked) || (n in pending)) && ((forall n: Ref :: { (n in pending) } (n in g) ==> !((n in marked) && (n in pending))) && ((forall n: Ref :: { exists_spath($$(g), roots, n) } (n in pending) || (n in marked) ==> exists_spath($$(g), roots, n)) && (forall n1: Ref, n2: Ref :: { (n1 in marked), (n2 in marked) } (n1 in marked) && ((n2 in g) && (!((n2 in marked)) && !((n2 in pending)))) ==> !((create_edge(n1, n2) in $$(g)))))) might not hold on entry. Assertion (forall n: Ref :: { (n in pending) } { (n in roots) } (n in roots) == (n in pending)) && (forall n: Ref :: { (n in marked) } (n in g) ==> !((n in marked))) || (forall n: Ref :: { (n in pending) } { (n in marked) } (n in roots) ==> (n in marked) || (n in pending)) && ((forall n: Ref :: { (n in pending) } (n in g) ==> !((n in marked) && (n in pending))) && ((forall n: Ref :: { exists_spath($$(g), roots, n) } (n in pending) || (n in marked) ==> exists_spath($$(g), roots, n)) && (forall n1: Ref, n2: Ref :: { (n1 in marked), (n2 in marked) } (n1 in marked) && ((n2 in g) && (!((n2 in marked)) && !((n2 in pending)))) ==> !((create_edge(n1, n2) in $$(g)))))) might not hold. (graph_mark.vpr@217.9--223.152) [87835]"}
          ((forall n_4_1: Ref ::
          { pending[n_4_1] } { roots[n_4_1] }
          roots[n_4_1] == pending[n_4_1]
        ) && (forall n_5: Ref ::
          { marked[n_5] }
          g_1[n_5] ==> !marked[n_5]
        )) || ((forall n_6: Ref ::
          { pending[n_6] } { marked[n_6] }
          roots[n_6] ==> marked[n_6] || pending[n_6]
        ) && ((forall n_7: Ref ::
          { pending[n_7] }
          g_1[n_7] ==> !(marked[n_7] && pending[n_7])
        ) && ((forall n_8: Ref ::
          { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_8): bool) }
          pending[n_8] || marked[n_8] ==> (exists_spath($$(Heap, g_1), roots, n_8): bool)
        ) && (forall n1_1: Ref, n2: Ref ::
          { marked[n1_1], marked[n2] }
          marked[n1_1] && (g_1[n2] && (!marked[n2] && !pending[n2])) ==> !$$(Heap, g_1)[(create_edge(n1_1, n2): EdgeDomainType)]
        ))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc pending, marked, x;
      assume Heap[x, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume !g_1[null];
        
        // -- Check definedness of (forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$9.car might not be injective. (graph_mark.vpr@205.19--205.27) [87836]"}
          (forall n$9_2: Ref, n$9_2_1: Ref ::
          
          (((n$9_2 != n$9_2_1 && g_1[n$9_2]) && g_1[n$9_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_2 != n$9_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$9_2: Ref ::
            { Heap[n$9_2, car] } { QPMask[n$9_2, car] } { Heap[n$9_2, car] }
            g_1[n$9_2] && NoPerm < FullPerm ==> qpRange15(n$9_2) && invRecv15(n$9_2) == n$9_2
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            (g_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> invRecv15(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$9_2: Ref ::
            { Heap[n$9_2, car] } { QPMask[n$9_2, car] } { Heap[n$9_2, car] }
            g_1[n$9_2] ==> n$9_2 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, car] }
            ((g_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> invRecv15(o_4) == o_4) && QPMask[o_4, car] == Mask[o_4, car] + FullPerm) && (!((g_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, car] == Mask[o_4, car])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$10.cdr might not be injective. (graph_mark.vpr@205.19--205.27) [87837]"}
          (forall n$10_2: Ref, n$10_2_1: Ref ::
          
          (((n$10_2 != n$10_2_1 && g_1[n$10_2]) && g_1[n$10_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_2 != n$10_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$10_2: Ref ::
            { Heap[n$10_2, cdr] } { QPMask[n$10_2, cdr] } { Heap[n$10_2, cdr] }
            g_1[n$10_2] && NoPerm < FullPerm ==> qpRange16(n$10_2) && invRecv16(n$10_2) == n$10_2
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            (g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$10_2: Ref ::
            { Heap[n$10_2, cdr] } { QPMask[n$10_2, cdr] } { Heap[n$10_2, cdr] }
            g_1[n$10_2] ==> n$10_2 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, cdr] }
            ((g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> invRecv16(o_4) == o_4) && QPMask[o_4, cdr] == Mask[o_4, cdr] + FullPerm) && (!((g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g))
          if (*) {
            if (g_1[n$7_5]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$7.car (graph_mark.vpr@205.19--205.27) [87838]"}
                HasDirectPerm(Mask, n$7_5, car);
            }
            assume false;
          }
        assume (forall n$7_3_2: Ref ::
          { g_1[Heap[n$7_3_2, car]] } { g_1[n$7_3_2], Heap[n$7_3_2, car] }
          g_1[n$7_3_2] ==> g_1[Heap[n$7_3_2, car]]
        );
        
        // -- Check definedness of (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g))
          if (*) {
            if (g_1[n$8_2]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$8.cdr (graph_mark.vpr@205.19--205.27) [87839]"}
                HasDirectPerm(Mask, n$8_2, cdr);
            }
            assume false;
          }
        assume (forall n$8_3: Ref ::
          { g_1[Heap[n$8_3, cdr]] } { g_1[n$8_3], Heap[n$8_3, cdr] }
          g_1[n$8_3] ==> g_1[Heap[n$8_3, cdr]]
        );
        assume state(Heap, Mask);
        assume g_1[x];
        assume state(Heap, Mask);
        assume Set#Subset(pending, g_1);
        assume state(Heap, Mask);
        assume Set#Subset(marked, g_1);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of exists_spath($$(g), roots, x)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@212.32--212.37) [87840]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered17(n_9), neverTriggered17(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@212.32--212.37) [87841]"}
                (forall n_9: Ref ::
                { Heap[n_9, car] } { QPMask[n_9, car] } { Heap[n_9, car] }
                g_1[n_9] ==> FullPerm > NoPerm ==> Mask[n_9, car] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { Heap[n_9, car] } { QPMask[n_9, car] } { Heap[n_9, car] }
                g_1[n_9] && NoPerm < FullPerm ==> qpRange17(n_9) && invRecv17(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv17(o_4) }
                g_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@212.32--212.37) [87842]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered18(n$0_4), neverTriggered18(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@212.32--212.37) [87843]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, cdr] } { QPMask[n$0_4, cdr] } { Heap[n$0_4, cdr] }
                g_1[n$0_4] ==> FullPerm > NoPerm ==> Mask[n$0_4, cdr] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, cdr] } { QPMask[n$0_4, cdr] } { Heap[n$0_4, cdr] }
                g_1[n$0_4] && NoPerm < FullPerm ==> qpRange18(n$0_4) && invRecv18(n$0_4) == n$0_4
              );
              assume (forall o_4: Ref ::
                { invRecv18(o_4) }
                g_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (exists_spath($$(Heap, g_1), roots, x): bool);
        
        // -- Check definedness of x.cdr != null
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.cdr (graph_mark.vpr@212.19--214.118) [87844]"}
            HasDirectPerm(Mask, x, cdr);
        if (Heap[x, cdr] != null) {
          
          // -- Check definedness of (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.cdr (graph_mark.vpr@212.19--214.118) [87845]"}
              HasDirectPerm(Mask, x, cdr);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@213.32--213.51) [87846]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered19(n_10_1), neverTriggered19(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@213.32--213.51) [87847]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, car] } { QPMask[n_10_1, car] } { Heap[n_10_1, car] }
                  g_1[n_10_1] ==> FullPerm > NoPerm ==> Mask[n_10_1, car] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, car] } { QPMask[n_10_1, car] } { Heap[n_10_1, car] }
                  g_1[n_10_1] && NoPerm < FullPerm ==> qpRange19(n_10_1) && invRecv19(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv19(o_4) }
                  g_1[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@213.32--213.51) [87848]"}
                  (forall n$0_5: Ref, n$0_5_2: Ref ::
                  { neverTriggered20(n$0_5), neverTriggered20(n$0_5_2) }
                  (((n$0_5 != n$0_5_2 && g_1[n$0_5]) && g_1[n$0_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_5 != n$0_5_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@213.32--213.51) [87849]"}
                  (forall n$0_5: Ref ::
                  { Heap[n$0_5, cdr] } { QPMask[n$0_5, cdr] } { Heap[n$0_5, cdr] }
                  g_1[n$0_5] ==> FullPerm > NoPerm ==> Mask[n$0_5, cdr] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_5: Ref ::
                  { Heap[n$0_5, cdr] } { QPMask[n$0_5, cdr] } { Heap[n$0_5, cdr] }
                  g_1[n$0_5] && NoPerm < FullPerm ==> qpRange20(n$0_5) && invRecv20(n$0_5) == n$0_5
                );
                assume (forall o_4: Ref ::
                  { invRecv20(o_4) }
                  g_1[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@213.67--213.72) [87850]"}
                    (forall n_11_1: Ref, n_11_2: Ref ::
                    { neverTriggered21(n_11_1), neverTriggered21(n_11_2) }
                    (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_1 != n_11_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@213.67--213.72) [87851]"}
                    (forall n_11_1: Ref ::
                    { Heap[n_11_1, car] } { QPMask[n_11_1, car] } { Heap[n_11_1, car] }
                    g_1[n_11_1] ==> FullPerm > NoPerm ==> Mask[n_11_1, car] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_11_1: Ref ::
                    { Heap[n_11_1, car] } { QPMask[n_11_1, car] } { Heap[n_11_1, car] }
                    g_1[n_11_1] && NoPerm < FullPerm ==> qpRange21(n_11_1) && invRecv21(n_11_1) == n_11_1
                  );
                  assume (forall o_4: Ref ::
                    { invRecv21(o_4) }
                    g_1[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@213.67--213.72) [87852]"}
                    (forall n$0_6: Ref, n$0_6_1: Ref ::
                    { neverTriggered22(n$0_6), neverTriggered22(n$0_6_1) }
                    (((n$0_6 != n$0_6_1 && g_1[n$0_6]) && g_1[n$0_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_6 != n$0_6_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@213.67--213.72) [87853]"}
                    (forall n$0_6: Ref ::
                    { Heap[n$0_6, cdr] } { QPMask[n$0_6, cdr] } { Heap[n$0_6, cdr] }
                    g_1[n$0_6] ==> FullPerm > NoPerm ==> Mask[n$0_6, cdr] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_6: Ref ::
                    { Heap[n$0_6, cdr] } { QPMask[n$0_6, cdr] } { Heap[n$0_6, cdr] }
                    g_1[n$0_6] && NoPerm < FullPerm ==> qpRange22(n$0_6) && invRecv22(n$0_6) == n$0_6
                  );
                  assume (forall o_4: Ref ::
                    { invRecv22(o_4) }
                    g_1[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.cdr (graph_mark.vpr@212.19--214.118) [87854]"}
                HasDirectPerm(Mask, x, cdr);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.cdr (graph_mark.vpr@212.19--214.118) [87855]"}
                HasDirectPerm(Mask, x, cdr);
            }
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, cdr], Heap[x, cdr]): bool)) {
            assume state(Heap, Mask);
            
            // -- Check definedness of exists_path($$(g), x, x.cdr)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@213.102--213.107) [87856]"}
                    (forall n_12_1: Ref, n_12_2: Ref ::
                    { neverTriggered23(n_12_1), neverTriggered23(n_12_2) }
                    (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12_1 != n_12_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@213.102--213.107) [87857]"}
                    (forall n_12_1: Ref ::
                    { Heap[n_12_1, car] } { QPMask[n_12_1, car] } { Heap[n_12_1, car] }
                    g_1[n_12_1] ==> FullPerm > NoPerm ==> Mask[n_12_1, car] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_12_1: Ref ::
                    { Heap[n_12_1, car] } { QPMask[n_12_1, car] } { Heap[n_12_1, car] }
                    g_1[n_12_1] && NoPerm < FullPerm ==> qpRange23(n_12_1) && invRecv23(n_12_1) == n_12_1
                  );
                  assume (forall o_4: Ref ::
                    { invRecv23(o_4) }
                    g_1[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@213.102--213.107) [87858]"}
                    (forall n$0_7: Ref, n$0_7_2: Ref ::
                    { neverTriggered24(n$0_7), neverTriggered24(n$0_7_2) }
                    (((n$0_7 != n$0_7_2 && g_1[n$0_7]) && g_1[n$0_7_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_7 != n$0_7_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@213.102--213.107) [87859]"}
                    (forall n$0_7: Ref ::
                    { Heap[n$0_7, cdr] } { QPMask[n$0_7, cdr] } { Heap[n$0_7, cdr] }
                    g_1[n$0_7] ==> FullPerm > NoPerm ==> Mask[n$0_7, cdr] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_7: Ref ::
                    { Heap[n$0_7, cdr] } { QPMask[n$0_7, cdr] } { Heap[n$0_7, cdr] }
                    g_1[n$0_7] && NoPerm < FullPerm ==> qpRange24(n$0_7) && invRecv24(n$0_7) == n$0_7
                  );
                  assume (forall o_4: Ref ::
                    { invRecv24(o_4) }
                    g_1[invRecv24(o_4)] && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.cdr (graph_mark.vpr@212.19--214.118) [87860]"}
                HasDirectPerm(Mask, x, cdr);
            assume (exists_path($$(Heap, g_1), x, Heap[x, cdr]): bool);
          }
        }
        
        // -- Check definedness of x.car != null
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.car (graph_mark.vpr@212.19--214.118) [87861]"}
            HasDirectPerm(Mask, x, car);
        if (Heap[x, car] != null) {
          
          // -- Check definedness of (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car)
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.car (graph_mark.vpr@212.19--214.118) [87862]"}
              HasDirectPerm(Mask, x, car);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@214.32--214.51) [87863]"}
                  (forall n_13: Ref, n_13_1: Ref ::
                  { neverTriggered25(n_13), neverTriggered25(n_13_1) }
                  (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13 != n_13_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@214.32--214.51) [87864]"}
                  (forall n_13: Ref ::
                  { Heap[n_13, car] } { QPMask[n_13, car] } { Heap[n_13, car] }
                  g_1[n_13] ==> FullPerm > NoPerm ==> Mask[n_13, car] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13: Ref ::
                  { Heap[n_13, car] } { QPMask[n_13, car] } { Heap[n_13, car] }
                  g_1[n_13] && NoPerm < FullPerm ==> qpRange25(n_13) && invRecv25(n_13) == n_13
                );
                assume (forall o_4: Ref ::
                  { invRecv25(o_4) }
                  g_1[invRecv25(o_4)] && (NoPerm < FullPerm && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@214.32--214.51) [87865]"}
                  (forall n$0_8: Ref, n$0_8_1: Ref ::
                  { neverTriggered26(n$0_8), neverTriggered26(n$0_8_1) }
                  (((n$0_8 != n$0_8_1 && g_1[n$0_8]) && g_1[n$0_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_8 != n$0_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@214.32--214.51) [87866]"}
                  (forall n$0_8: Ref ::
                  { Heap[n$0_8, cdr] } { QPMask[n$0_8, cdr] } { Heap[n$0_8, cdr] }
                  g_1[n$0_8] ==> FullPerm > NoPerm ==> Mask[n$0_8, cdr] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_8: Ref ::
                  { Heap[n$0_8, cdr] } { QPMask[n$0_8, cdr] } { Heap[n$0_8, cdr] }
                  g_1[n$0_8] && NoPerm < FullPerm ==> qpRange26(n$0_8) && invRecv26(n$0_8) == n$0_8
                );
                assume (forall o_4: Ref ::
                  { invRecv26(o_4) }
                  g_1[invRecv26(o_4)] && (NoPerm < FullPerm && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@214.67--214.72) [87867]"}
                    (forall n_14: Ref, n_14_1: Ref ::
                    { neverTriggered27(n_14), neverTriggered27(n_14_1) }
                    (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14 != n_14_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@214.67--214.72) [87868]"}
                    (forall n_14: Ref ::
                    { Heap[n_14, car] } { QPMask[n_14, car] } { Heap[n_14, car] }
                    g_1[n_14] ==> FullPerm > NoPerm ==> Mask[n_14, car] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14: Ref ::
                    { Heap[n_14, car] } { QPMask[n_14, car] } { Heap[n_14, car] }
                    g_1[n_14] && NoPerm < FullPerm ==> qpRange27(n_14) && invRecv27(n_14) == n_14
                  );
                  assume (forall o_4: Ref ::
                    { invRecv27(o_4) }
                    g_1[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@214.67--214.72) [87869]"}
                    (forall n$0_9: Ref, n$0_9_2: Ref ::
                    { neverTriggered28(n$0_9), neverTriggered28(n$0_9_2) }
                    (((n$0_9 != n$0_9_2 && g_1[n$0_9]) && g_1[n$0_9_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_9 != n$0_9_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@214.67--214.72) [87870]"}
                    (forall n$0_9: Ref ::
                    { Heap[n$0_9, cdr] } { QPMask[n$0_9, cdr] } { Heap[n$0_9, cdr] }
                    g_1[n$0_9] ==> FullPerm > NoPerm ==> Mask[n$0_9, cdr] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_9: Ref ::
                    { Heap[n$0_9, cdr] } { QPMask[n$0_9, cdr] } { Heap[n$0_9, cdr] }
                    g_1[n$0_9] && NoPerm < FullPerm ==> qpRange28(n$0_9) && invRecv28(n$0_9) == n$0_9
                  );
                  assume (forall o_4: Ref ::
                    { invRecv28(o_4) }
                    g_1[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.car (graph_mark.vpr@212.19--214.118) [87871]"}
                HasDirectPerm(Mask, x, car);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.car (graph_mark.vpr@212.19--214.118) [87872]"}
                HasDirectPerm(Mask, x, car);
            }
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, car], Heap[x, car]): bool)) {
            assume state(Heap, Mask);
            
            // -- Check definedness of exists_path($$(g), x, x.car)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@214.102--214.107) [87873]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered29(n_15), neverTriggered29(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@214.102--214.107) [87874]"}
                    (forall n_15: Ref ::
                    { Heap[n_15, car] } { QPMask[n_15, car] } { Heap[n_15, car] }
                    g_1[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, car] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { Heap[n_15, car] } { QPMask[n_15, car] } { Heap[n_15, car] }
                    g_1[n_15] && NoPerm < FullPerm ==> qpRange29(n_15) && invRecv29(n_15) == n_15
                  );
                  assume (forall o_4: Ref ::
                    { invRecv29(o_4) }
                    g_1[invRecv29(o_4)] && (NoPerm < FullPerm && qpRange29(o_4)) ==> invRecv29(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@214.102--214.107) [87875]"}
                    (forall n$0_10: Ref, n$0_10_2: Ref ::
                    { neverTriggered30(n$0_10), neverTriggered30(n$0_10_2) }
                    (((n$0_10 != n$0_10_2 && g_1[n$0_10]) && g_1[n$0_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_10 != n$0_10_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@214.102--214.107) [87876]"}
                    (forall n$0_10: Ref ::
                    { Heap[n$0_10, cdr] } { QPMask[n$0_10, cdr] } { Heap[n$0_10, cdr] }
                    g_1[n$0_10] ==> FullPerm > NoPerm ==> Mask[n$0_10, cdr] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_10: Ref ::
                    { Heap[n$0_10, cdr] } { QPMask[n$0_10, cdr] } { Heap[n$0_10, cdr] }
                    g_1[n$0_10] && NoPerm < FullPerm ==> qpRange30(n$0_10) && invRecv30(n$0_10) == n$0_10
                  );
                  assume (forall o_4: Ref ::
                    { invRecv30(o_4) }
                    g_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.car (graph_mark.vpr@212.19--214.118) [87877]"}
                HasDirectPerm(Mask, x, car);
            assume (exists_path($$(Heap, g_1), x, Heap[x, car]): bool);
          }
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref :: { (n in pending) } { (n in roots) } (n in roots) == (n in pending)) && (forall n: Ref :: { (n in marked) } (n in g) ==> !((n in marked))) || (forall n: Ref :: { (n in pending) } { (n in marked) } (n in roots) ==> (n in marked) || (n in pending)) && ((forall n: Ref :: { (n in pending) } (n in g) ==> !((n in marked) && (n in pending))) && ((forall n: Ref :: { exists_spath($$(g), roots, n) } (n in pending) || (n in marked) ==> exists_spath($$(g), roots, n)) && (forall n1: Ref, n2: Ref :: { (n1 in marked), (n2 in marked) } (n1 in marked) && ((n2 in g) && (!((n2 in marked)) && !((n2 in pending)))) ==> !((create_edge(n1, n2) in $$(g))))))
          if (*) {
            assume false;
          }
          if ((forall n_17: Ref ::
            { pending[n_17] } { roots[n_17] }
            roots[n_17] == pending[n_17]
          )) {
            if (*) {
              assume false;
            }
          }
          if (!((forall n_19: Ref ::
            { pending[n_19] } { roots[n_19] }
            roots[n_19] == pending[n_19]
          ) && (forall n_20: Ref ::
            { marked[n_20] }
            g_1[n_20] ==> !marked[n_20]
          ))) {
            if (*) {
              assume false;
            }
            if ((forall n_22: Ref ::
              { pending[n_22] } { marked[n_22] }
              roots[n_22] ==> marked[n_22] || pending[n_22]
            )) {
              if (*) {
                assume false;
              }
              if ((forall n_24: Ref ::
                { pending[n_24] }
                g_1[n_24] ==> !(marked[n_24] && pending[n_24])
              )) {
                if (*) {
                  if (pending[n_46] || marked[n_46]) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n$0 is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.car might not be injective. (graph_mark.vpr@222.102--222.107) [87878]"}
                          (forall n$0_11: Ref, n$0_11_2: Ref ::
                          { neverTriggered31(n$0_11), neverTriggered31(n$0_11_2) }
                          (((n$0_11 != n$0_11_2 && g_1[n$0_11]) && g_1[n$0_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_11 != n$0_11_2
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.car (graph_mark.vpr@222.102--222.107) [87879]"}
                          (forall n$0_11: Ref ::
                          { Heap[n$0_11, car] } { QPMask[n$0_11, car] } { Heap[n$0_11, car] }
                          g_1[n$0_11] ==> FullPerm > NoPerm ==> Mask[n$0_11, car] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n$0
                        assume (forall n$0_11: Ref ::
                          { Heap[n$0_11, car] } { QPMask[n$0_11, car] } { Heap[n$0_11, car] }
                          g_1[n$0_11] && NoPerm < FullPerm ==> qpRange31(n$0_11) && invRecv31(n$0_11) == n$0_11
                        );
                        assume (forall o_4: Ref ::
                          { invRecv31(o_4) }
                          g_1[invRecv31(o_4)] && (NoPerm < FullPerm && qpRange31(o_4)) ==> invRecv31(o_4) == o_4
                        );
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n$0 is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@222.102--222.107) [87880]"}
                          (forall n$0_12: Ref, n$0_12_1: Ref ::
                          { neverTriggered32(n$0_12), neverTriggered32(n$0_12_1) }
                          (((n$0_12 != n$0_12_1 && g_1[n$0_12]) && g_1[n$0_12_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_12 != n$0_12_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@222.102--222.107) [87881]"}
                          (forall n$0_12: Ref ::
                          { Heap[n$0_12, cdr] } { QPMask[n$0_12, cdr] } { Heap[n$0_12, cdr] }
                          g_1[n$0_12] ==> FullPerm > NoPerm ==> Mask[n$0_12, cdr] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n$0
                        assume (forall n$0_12: Ref ::
                          { Heap[n$0_12, cdr] } { QPMask[n$0_12, cdr] } { Heap[n$0_12, cdr] }
                          g_1[n$0_12] && NoPerm < FullPerm ==> qpRange32(n$0_12) && invRecv32(n$0_12) == n$0_12
                        );
                        assume (forall o_4: Ref ::
                          { invRecv32(o_4) }
                          g_1[invRecv32(o_4)] && (NoPerm < FullPerm && qpRange32(o_4)) ==> invRecv32(o_4) == o_4
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
                if ((forall n_26_1: Ref ::
                  { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_26_1): bool) }
                  pending[n_26_1] || marked[n_26_1] ==> (exists_spath($$(Heap, g_1), roots, n_26_1): bool)
                )) {
                  if (*) {
                    if (marked[n1_2] && (g_1[n2_1] && (!marked[n2_1] && !pending[n2_1]))) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := Heap;
                        ExhaleWellDef0Mask := Mask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          
                        
                        // -- check if receiver n is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@223.133--223.150) [87882]"}
                            (forall n_27_1: Ref, n_27_2: Ref ::
                            { neverTriggered33(n_27_1), neverTriggered33(n_27_2) }
                            (((n_27_1 != n_27_2 && g_1[n_27_1]) && g_1[n_27_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_27_1 != n_27_2
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@223.133--223.150) [87883]"}
                            (forall n_27_1: Ref ::
                            { Heap[n_27_1, car] } { QPMask[n_27_1, car] } { Heap[n_27_1, car] }
                            g_1[n_27_1] ==> FullPerm > NoPerm ==> Mask[n_27_1, car] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n
                          assume (forall n_27_1: Ref ::
                            { Heap[n_27_1, car] } { QPMask[n_27_1, car] } { Heap[n_27_1, car] }
                            g_1[n_27_1] && NoPerm < FullPerm ==> qpRange33(n_27_1) && invRecv33(n_27_1) == n_27_1
                          );
                          assume (forall o_4: Ref ::
                            { invRecv33(o_4) }
                            g_1[invRecv33(o_4)] && (NoPerm < FullPerm && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
                          );
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          
                        
                        // -- check if receiver n$0 is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@223.133--223.150) [87884]"}
                            (forall n$0_13_2: Ref, n$0_13_3: Ref ::
                            { neverTriggered34(n$0_13_2), neverTriggered34(n$0_13_3) }
                            (((n$0_13_2 != n$0_13_3 && g_1[n$0_13_2]) && g_1[n$0_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_13_2 != n$0_13_3
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@223.133--223.150) [87885]"}
                            (forall n$0_13_2: Ref ::
                            { Heap[n$0_13_2, cdr] } { QPMask[n$0_13_2, cdr] } { Heap[n$0_13_2, cdr] }
                            g_1[n$0_13_2] ==> FullPerm > NoPerm ==> Mask[n$0_13_2, cdr] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n$0
                          assume (forall n$0_13_2: Ref ::
                            { Heap[n$0_13_2, cdr] } { QPMask[n$0_13_2, cdr] } { Heap[n$0_13_2, cdr] }
                            g_1[n$0_13_2] && NoPerm < FullPerm ==> qpRange34(n$0_13_2) && invRecv34(n$0_13_2) == n$0_13_2
                          );
                          assume (forall o_4: Ref ::
                            { invRecv34(o_4) }
                            g_1[invRecv34(o_4)] && (NoPerm < FullPerm && qpRange34(o_4)) ==> invRecv34(o_4) == o_4
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
                }
              }
            }
          }
        assume ((forall n_28_1: Ref ::
          { pending[n_28_1] } { roots[n_28_1] }
          roots[n_28_1] == pending[n_28_1]
        ) && (forall n_29_1: Ref ::
          { marked[n_29_1] }
          g_1[n_29_1] ==> !marked[n_29_1]
        )) || ((forall n_30_1: Ref ::
          { pending[n_30_1] } { marked[n_30_1] }
          roots[n_30_1] ==> marked[n_30_1] || pending[n_30_1]
        ) && ((forall n_31_1: Ref ::
          { pending[n_31_1] }
          g_1[n_31_1] ==> !(marked[n_31_1] && pending[n_31_1])
        ) && ((forall n_32_1: Ref ::
          { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_32_1): bool) }
          pending[n_32_1] || marked[n_32_1] ==> (exists_spath($$(Heap, g_1), roots, n_32_1): bool)
        ) && (forall n1_2_1: Ref, n2_2: Ref ::
          { marked[n1_2_1], marked[n2_2] }
          marked[n1_2_1] && (g_1[n2_2] && (!marked[n2_2] && !pending[n2_2])) ==> !$$(Heap, g_1)[(create_edge(n1_2_1, n2_2): EdgeDomainType)]
        ))));
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
        assert {:msg "  While statement might fail. Quantified resource n$9.car might not be injective. (graph_mark.vpr@205.19--205.27) [87886]"}
          (forall n$9_3: Ref, n$9_3_1: Ref ::
          
          (((n$9_3 != n$9_3_1 && g_1[n$9_3]) && g_1[n$9_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_3 != n$9_3_1
        );
        
        // -- Define Inverse Function
          assume (forall n$9_3: Ref ::
            { Heap[n$9_3, car] } { QPMask[n$9_3, car] } { Heap[n$9_3, car] }
            g_1[n$9_3] && NoPerm < FullPerm ==> qpRange35(n$9_3) && invRecv35(n$9_3) == n$9_3
          );
          assume (forall o_4: Ref ::
            { invRecv35(o_4) }
            (g_1[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4) ==> invRecv35(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$9_3: Ref ::
            { Heap[n$9_3, car] } { QPMask[n$9_3, car] } { Heap[n$9_3, car] }
            g_1[n$9_3] ==> n$9_3 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, car] }
            ((g_1[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4) ==> (NoPerm < FullPerm ==> invRecv35(o_4) == o_4) && QPMask[o_4, car] == Mask[o_4, car] + FullPerm) && (!((g_1[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4)) ==> QPMask[o_4, car] == Mask[o_4, car])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n$10.cdr might not be injective. (graph_mark.vpr@205.19--205.27) [87887]"}
          (forall n$10_3: Ref, n$10_3_1: Ref ::
          
          (((n$10_3 != n$10_3_1 && g_1[n$10_3]) && g_1[n$10_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_3 != n$10_3_1
        );
        
        // -- Define Inverse Function
          assume (forall n$10_3: Ref ::
            { Heap[n$10_3, cdr] } { QPMask[n$10_3, cdr] } { Heap[n$10_3, cdr] }
            g_1[n$10_3] && NoPerm < FullPerm ==> qpRange36(n$10_3) && invRecv36(n$10_3) == n$10_3
          );
          assume (forall o_4: Ref ::
            { invRecv36(o_4) }
            (g_1[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4) ==> invRecv36(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$10_3: Ref ::
            { Heap[n$10_3, cdr] } { QPMask[n$10_3, cdr] } { Heap[n$10_3, cdr] }
            g_1[n$10_3] ==> n$10_3 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, cdr] }
            ((g_1[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4) ==> (NoPerm < FullPerm ==> invRecv36(o_4) == o_4) && QPMask[o_4, cdr] == Mask[o_4, cdr] + FullPerm) && (!((g_1[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4)) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n$7_4_1: Ref ::
          { g_1[Heap[n$7_4_1, car]] } { g_1[n$7_4_1], Heap[n$7_4_1, car] }
          g_1[n$7_4_1] ==> g_1[Heap[n$7_4_1, car]]
        );
        assume (forall n$8_4: Ref ::
          { g_1[Heap[n$8_4, cdr]] } { g_1[n$8_4], Heap[n$8_4, cdr] }
          g_1[n$8_4] ==> g_1[Heap[n$8_4, cdr]]
        );
        assume g_1[x];
        assume Set#Subset(pending, g_1);
        assume Set#Subset(marked, g_1);
        assume state(Heap, Mask);
        assume (exists_spath($$(Heap, g_1), roots, x): bool);
        if (Heap[x, cdr] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, cdr], Heap[x, cdr]): bool)) {
            assume state(Heap, Mask);
            assume (exists_path($$(Heap, g_1), x, Heap[x, cdr]): bool);
          }
        }
        if (Heap[x, car] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, car], Heap[x, car]): bool)) {
            assume state(Heap, Mask);
            assume (exists_path($$(Heap, g_1), x, Heap[x, car]): bool);
          }
        }
        assume state(Heap, Mask);
        assume ((forall n_33_1: Ref ::
          { pending[n_33_1] } { roots[n_33_1] }
          roots[n_33_1] == pending[n_33_1]
        ) && (forall n_34_1: Ref ::
          { marked[n_34_1] }
          g_1[n_34_1] ==> !marked[n_34_1]
        )) || ((forall n_35_1: Ref ::
          { pending[n_35_1] } { marked[n_35_1] }
          roots[n_35_1] ==> marked[n_35_1] || pending[n_35_1]
        ) && ((forall n_36_1: Ref ::
          { pending[n_36_1] }
          g_1[n_36_1] ==> !(marked[n_36_1] && pending[n_36_1])
        ) && ((forall n_37_1: Ref ::
          { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_37_1): bool) }
          pending[n_37_1] || marked[n_37_1] ==> (exists_spath($$(Heap, g_1), roots, n_37_1): bool)
        ) && (forall n1_3: Ref, n2_3: Ref ::
          { marked[n1_3], marked[n2_3] }
          marked[n1_3] && (g_1[n2_3] && (!marked[n2_3] && !pending[n2_3])) ==> !$$(Heap, g_1)[(create_edge(n1_3, n2_3): EdgeDomainType)]
        ))));
        assume state(Heap, Mask);
        // Check and assume guard
        assume Set#Card(pending) > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: x := get(pending) -- graph_mark.vpr@226.9--226.26
            
            // -- Check definedness of get(pending)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function get might not hold. Assertion |pending| > 0 might not hold. (graph_mark.vpr@226.14--226.26) [87888]"}
                  Set#Card(pending) > 0;
                // Stop execution
                assume false;
              }
            x := get(Heap, pending);
            assume state(Heap, Mask);
          
          // -- Translating statement: pending := (pending setminus Set(x)) -- graph_mark.vpr@227.9--227.43
            pending := Set#Difference(pending, Set#Singleton(x));
            assume state(Heap, Mask);
          
          // -- Translating statement: marked := (marked union Set(x)) -- graph_mark.vpr@230.9--230.38
            marked := Set#Union(marked, Set#Singleton(x));
            assume state(Heap, Mask);
          
          // -- Translating statement: if (x.car != null && !((x.car in marked))) -- graph_mark.vpr@232.9--234.10
            
            // -- Check definedness of x.car != null && !((x.car in marked))
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.car (graph_mark.vpr@232.14--232.49) [87889]"}
                HasDirectPerm(Mask, x, car);
              if (Heap[x, car] != null) {
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.car (graph_mark.vpr@232.14--232.49) [87890]"}
                  HasDirectPerm(Mask, x, car);
              }
            if (Heap[x, car] != null && !marked[Heap[x, car]]) {
              
              // -- Translating statement: pending := (pending union Set(x.car)) -- graph_mark.vpr@233.13--233.48
                
                // -- Check definedness of (pending union Set(x.car))
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access x.car (graph_mark.vpr@233.13--233.48) [87891]"}
                    HasDirectPerm(Mask, x, car);
                pending := Set#Union(pending, Set#Singleton(Heap[x, car]));
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: if (x.cdr != null && !((x.cdr in marked))) -- graph_mark.vpr@235.9--237.10
            
            // -- Check definedness of x.cdr != null && !((x.cdr in marked))
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.cdr (graph_mark.vpr@235.14--235.49) [87892]"}
                HasDirectPerm(Mask, x, cdr);
              if (Heap[x, cdr] != null) {
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.cdr (graph_mark.vpr@235.14--235.49) [87893]"}
                  HasDirectPerm(Mask, x, cdr);
              }
            if (Heap[x, cdr] != null && !marked[Heap[x, cdr]]) {
              
              // -- Translating statement: pending := (pending union Set(x.cdr)) -- graph_mark.vpr@236.13--236.48
                
                // -- Check definedness of (pending union Set(x.cdr))
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access x.cdr (graph_mark.vpr@236.13--236.48) [87894]"}
                    HasDirectPerm(Mask, x, cdr);
                pending := Set#Union(pending, Set#Singleton(Heap[x, cdr]));
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. Assertion !((null in g)) might not hold. (graph_mark.vpr@205.19--205.27) [87895]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$9 is injective
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. Quantified resource n$9.car might not be injective. (graph_mark.vpr@205.19--205.27) [87896]"}
            (forall n$9_4: Ref, n$9_4_1: Ref ::
            { neverTriggered37(n$9_4), neverTriggered37(n$9_4_1) }
            (((n$9_4 != n$9_4_1 && g_1[n$9_4]) && g_1[n$9_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_4 != n$9_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. There might be insufficient permission to access n$9.car (graph_mark.vpr@205.19--205.27) [87897]"}
            (forall n$9_4: Ref ::
            { Heap[n$9_4, car] } { QPMask[n$9_4, car] } { Heap[n$9_4, car] }
            g_1[n$9_4] ==> Mask[n$9_4, car] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$9
          assume (forall n$9_4: Ref ::
            { Heap[n$9_4, car] } { QPMask[n$9_4, car] } { Heap[n$9_4, car] }
            g_1[n$9_4] && NoPerm < FullPerm ==> qpRange37(n$9_4) && invRecv37(n$9_4) == n$9_4
          );
          assume (forall o_4: Ref ::
            { invRecv37(o_4) }
            g_1[invRecv37(o_4)] && (NoPerm < FullPerm && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
          );
        
        // -- assume permission updates for field car
          assume (forall o_4: Ref ::
            { QPMask[o_4, car] }
            (g_1[invRecv37(o_4)] && (NoPerm < FullPerm && qpRange37(o_4)) ==> invRecv37(o_4) == o_4 && QPMask[o_4, car] == Mask[o_4, car] - FullPerm) && (!(g_1[invRecv37(o_4)] && (NoPerm < FullPerm && qpRange37(o_4))) ==> QPMask[o_4, car] == Mask[o_4, car])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$10 is injective
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. Quantified resource n$10.cdr might not be injective. (graph_mark.vpr@205.19--205.27) [87898]"}
            (forall n$10_4: Ref, n$10_4_1: Ref ::
            { neverTriggered38(n$10_4), neverTriggered38(n$10_4_1) }
            (((n$10_4 != n$10_4_1 && g_1[n$10_4]) && g_1[n$10_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_4 != n$10_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. There might be insufficient permission to access n$10.cdr (graph_mark.vpr@205.19--205.27) [87899]"}
            (forall n$10_4: Ref ::
            { Heap[n$10_4, cdr] } { QPMask[n$10_4, cdr] } { Heap[n$10_4, cdr] }
            g_1[n$10_4] ==> Mask[n$10_4, cdr] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$10
          assume (forall n$10_4: Ref ::
            { Heap[n$10_4, cdr] } { QPMask[n$10_4, cdr] } { Heap[n$10_4, cdr] }
            g_1[n$10_4] && NoPerm < FullPerm ==> qpRange38(n$10_4) && invRecv38(n$10_4) == n$10_4
          );
          assume (forall o_4: Ref ::
            { invRecv38(o_4) }
            g_1[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
          );
        
        // -- assume permission updates for field cdr
          assume (forall o_4: Ref ::
            { QPMask[o_4, cdr] }
            (g_1[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4 && QPMask[o_4, cdr] == Mask[o_4, cdr] - FullPerm) && (!(g_1[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4))) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$7_5_1]) {
            assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. Assertion (n$7.car in g) might not hold. (graph_mark.vpr@205.19--205.27) [87900]"}
              g_1[Heap[n$7_5_1, car]];
          }
          assume false;
        }
        assume (forall n$7_6_1: Ref ::
          { g_1[Heap[n$7_6_1, car]] } { g_1[n$7_6_1], Heap[n$7_6_1, car] }
          g_1[n$7_6_1] ==> g_1[Heap[n$7_6_1, car]]
        );
        if (*) {
          if (g_1[n$8_5]) {
            assert {:msg "  Loop invariant !((null in g)) && (true && ((forall n$9: Ref :: { n$9.car } (n$9 in g) ==> acc(n$9.car, write)) && (forall n$10: Ref :: { n$10.cdr } (n$10 in g) ==> acc(n$10.cdr, write))) && ((forall n$7: Ref :: { (n$7.car in g) } { (n$7 in g), n$7.car } (n$7 in g) ==> (n$7.car in g)) && (forall n$8: Ref :: { (n$8.cdr in g) } { (n$8 in g), n$8.cdr } (n$8 in g) ==> (n$8.cdr in g)))) might not be preserved. Assertion (n$8.cdr in g) might not hold. (graph_mark.vpr@205.19--205.27) [87901]"}
              g_1[Heap[n$8_5, cdr]];
          }
          assume false;
        }
        assume (forall n$8_6_1: Ref ::
          { g_1[Heap[n$8_6_1, cdr]] } { g_1[n$8_6_1], Heap[n$8_6_1, cdr] }
          g_1[n$8_6_1] ==> g_1[Heap[n$8_6_1, cdr]]
        );
        assert {:msg "  Loop invariant (x in g) might not be preserved. Assertion (x in g) might not hold. (graph_mark.vpr@208.19--208.25) [87902]"}
          g_1[x];
        assert {:msg "  Loop invariant (pending subset g) might not be preserved. Assertion (pending subset g) might not hold. (graph_mark.vpr@209.19--209.35) [87903]"}
          Set#Subset(pending, g_1);
        assert {:msg "  Loop invariant (marked subset g) might not be preserved. Assertion (marked subset g) might not hold. (graph_mark.vpr@210.19--210.34) [87904]"}
          Set#Subset(marked, g_1);
        assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not be preserved. Assertion exists_spath($$(g), roots, x) might not hold. (graph_mark.vpr@212.19--214.118) [87905]"}
          (exists_spath($$(Heap, g_1), roots, x): bool);
        if (Heap[x, cdr] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, cdr], Heap[x, cdr]): bool)) {
            assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not be preserved. Assertion exists_path($$(g), x, x.cdr) might not hold. (graph_mark.vpr@212.19--214.118) [87906]"}
              (exists_path($$(Heap, g_1), x, Heap[x, cdr]): bool);
          }
        }
        if (Heap[x, car] != null) {
          if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, car], Heap[x, car]): bool)) {
            assert {:msg "  Loop invariant exists_spath($$(g), roots, x) && ((x.cdr != null ==> (create_edge(x, x.cdr) in $$(g)) && exists_path($$(g), x.cdr, x.cdr) ==> exists_path($$(g), x, x.cdr)) && (x.car != null ==> (create_edge(x, x.car) in $$(g)) && exists_path($$(g), x.car, x.car) ==> exists_path($$(g), x, x.car))) might not be preserved. Assertion exists_path($$(g), x, x.car) might not hold. (graph_mark.vpr@212.19--214.118) [87907]"}
              (exists_path($$(Heap, g_1), x, Heap[x, car]): bool);
          }
        }
        assert {:msg "  Loop invariant (forall n: Ref :: { (n in pending) } { (n in roots) } (n in roots) == (n in pending)) && (forall n: Ref :: { (n in marked) } (n in g) ==> !((n in marked))) || (forall n: Ref :: { (n in pending) } { (n in marked) } (n in roots) ==> (n in marked) || (n in pending)) && ((forall n: Ref :: { (n in pending) } (n in g) ==> !((n in marked) && (n in pending))) && ((forall n: Ref :: { exists_spath($$(g), roots, n) } (n in pending) || (n in marked) ==> exists_spath($$(g), roots, n)) && (forall n1: Ref, n2: Ref :: { (n1 in marked), (n2 in marked) } (n1 in marked) && ((n2 in g) && (!((n2 in marked)) && !((n2 in pending)))) ==> !((create_edge(n1, n2) in $$(g)))))) might not be preserved. Assertion (forall n: Ref :: { (n in pending) } { (n in roots) } (n in roots) == (n in pending)) && (forall n: Ref :: { (n in marked) } (n in g) ==> !((n in marked))) || (forall n: Ref :: { (n in pending) } { (n in marked) } (n in roots) ==> (n in marked) || (n in pending)) && ((forall n: Ref :: { (n in pending) } (n in g) ==> !((n in marked) && (n in pending))) && ((forall n: Ref :: { exists_spath($$(g), roots, n) } (n in pending) || (n in marked) ==> exists_spath($$(g), roots, n)) && (forall n1: Ref, n2: Ref :: { (n1 in marked), (n2 in marked) } (n1 in marked) && ((n2 in g) && (!((n2 in marked)) && !((n2 in pending)))) ==> !((create_edge(n1, n2) in $$(g)))))) might not hold. (graph_mark.vpr@217.9--223.152) [87908]"}
          ((forall n_38_1: Ref ::
          { pending[n_38_1] } { roots[n_38_1] }
          roots[n_38_1] == pending[n_38_1]
        ) && (forall n_39_1: Ref ::
          { marked[n_39_1] }
          g_1[n_39_1] ==> !marked[n_39_1]
        )) || ((forall n_40_1: Ref ::
          { pending[n_40_1] } { marked[n_40_1] }
          roots[n_40_1] ==> marked[n_40_1] || pending[n_40_1]
        ) && ((forall n_41_1: Ref ::
          { pending[n_41_1] }
          g_1[n_41_1] ==> !(marked[n_41_1] && pending[n_41_1])
        ) && ((forall n_42_1: Ref ::
          { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_42_1): bool) }
          pending[n_42_1] || marked[n_42_1] ==> (exists_spath($$(Heap, g_1), roots, n_42_1): bool)
        ) && (forall n1_4: Ref, n2_4: Ref ::
          { marked[n1_4], marked[n2_4] }
          marked[n1_4] && (g_1[n2_4] && (!marked[n2_4] && !pending[n2_4])) ==> !$$(Heap, g_1)[(create_edge(n1_4, n2_4): EdgeDomainType)]
        ))));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Set#Card(pending) > 0);
      assume state(Heap, Mask);
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$9.car might not be injective. (graph_mark.vpr@205.19--205.27) [87909]"}
        (forall n$9_5: Ref, n$9_5_1: Ref ::
        
        (((n$9_5 != n$9_5_1 && g_1[n$9_5]) && g_1[n$9_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_5 != n$9_5_1
      );
      
      // -- Define Inverse Function
        assume (forall n$9_5: Ref ::
          { Heap[n$9_5, car] } { QPMask[n$9_5, car] } { Heap[n$9_5, car] }
          g_1[n$9_5] && NoPerm < FullPerm ==> qpRange39(n$9_5) && invRecv39(n$9_5) == n$9_5
        );
        assume (forall o_4: Ref ::
          { invRecv39(o_4) }
          (g_1[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4) ==> invRecv39(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$9_5: Ref ::
          { Heap[n$9_5, car] } { QPMask[n$9_5, car] } { Heap[n$9_5, car] }
          g_1[n$9_5] ==> n$9_5 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, car] }
          ((g_1[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4) ==> (NoPerm < FullPerm ==> invRecv39(o_4) == o_4) && QPMask[o_4, car] == Mask[o_4, car] + FullPerm) && (!((g_1[invRecv39(o_4)] && NoPerm < FullPerm) && qpRange39(o_4)) ==> QPMask[o_4, car] == Mask[o_4, car])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$10.cdr might not be injective. (graph_mark.vpr@205.19--205.27) [87910]"}
        (forall n$10_5: Ref, n$10_5_1: Ref ::
        
        (((n$10_5 != n$10_5_1 && g_1[n$10_5]) && g_1[n$10_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_5 != n$10_5_1
      );
      
      // -- Define Inverse Function
        assume (forall n$10_5: Ref ::
          { Heap[n$10_5, cdr] } { QPMask[n$10_5, cdr] } { Heap[n$10_5, cdr] }
          g_1[n$10_5] && NoPerm < FullPerm ==> qpRange40(n$10_5) && invRecv40(n$10_5) == n$10_5
        );
        assume (forall o_4: Ref ::
          { invRecv40(o_4) }
          (g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> invRecv40(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$10_5: Ref ::
          { Heap[n$10_5, cdr] } { QPMask[n$10_5, cdr] } { Heap[n$10_5, cdr] }
          g_1[n$10_5] ==> n$10_5 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, cdr] }
          ((g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> invRecv40(o_4) == o_4) && QPMask[o_4, cdr] == Mask[o_4, cdr] + FullPerm) && (!((g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$7_7: Ref ::
        { g_1[Heap[n$7_7, car]] } { g_1[n$7_7], Heap[n$7_7, car] }
        g_1[n$7_7] ==> g_1[Heap[n$7_7, car]]
      );
      assume (forall n$8_7: Ref ::
        { g_1[Heap[n$8_7, cdr]] } { g_1[n$8_7], Heap[n$8_7, cdr] }
        g_1[n$8_7] ==> g_1[Heap[n$8_7, cdr]]
      );
      assume g_1[x];
      assume Set#Subset(pending, g_1);
      assume Set#Subset(marked, g_1);
      assume state(Heap, Mask);
      assume (exists_spath($$(Heap, g_1), roots, x): bool);
      if (Heap[x, cdr] != null) {
        if ($$(Heap, g_1)[(create_edge(x, Heap[x, cdr]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, cdr], Heap[x, cdr]): bool)) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), x, Heap[x, cdr]): bool);
        }
      }
      if (Heap[x, car] != null) {
        if ($$(Heap, g_1)[(create_edge(x, Heap[x, car]): EdgeDomainType)] && (exists_path($$(Heap, g_1), Heap[x, car], Heap[x, car]): bool)) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), x, Heap[x, car]): bool);
        }
      }
      assume state(Heap, Mask);
      assume ((forall n_43_1: Ref ::
        { pending[n_43_1] } { roots[n_43_1] }
        roots[n_43_1] == pending[n_43_1]
      ) && (forall n_44_1: Ref ::
        { marked[n_44_1] }
        g_1[n_44_1] ==> !marked[n_44_1]
      )) || ((forall n_45_1: Ref ::
        { pending[n_45_1] } { marked[n_45_1] }
        roots[n_45_1] ==> marked[n_45_1] || pending[n_45_1]
      ) && ((forall n_46_1: Ref ::
        { pending[n_46_1] }
        g_1[n_46_1] ==> !(marked[n_46_1] && pending[n_46_1])
      ) && ((forall n_47: Ref ::
        { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, n_47): bool) }
        pending[n_47] || marked[n_47] ==> (exists_spath($$(Heap, g_1), roots, n_47): bool)
      ) && (forall n1_5: Ref, n2_5: Ref ::
        { marked[n1_5], marked[n2_5] }
        marked[n1_5] && (g_1[n2_5] && (!marked[n2_5] && !pending[n2_5])) ==> !$$(Heap, g_1)[(create_edge(n1_5, n2_5): EdgeDomainType)]
      ))));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_noExit($$(g), g, marked) -- graph_mark.vpr@243.12--243.42
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_noExit($$(g), g, marked)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.car might not be injective. (graph_mark.vpr@243.25--243.30) [87911]"}
            (forall n_48: Ref, n_48_1: Ref ::
            { neverTriggered41(n_48), neverTriggered41(n_48_1) }
            (((n_48 != n_48_1 && g_1[n_48]) && g_1[n_48_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_48 != n_48_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.car (graph_mark.vpr@243.25--243.30) [87912]"}
            (forall n_48: Ref ::
            { Heap[n_48, car] } { QPMask[n_48, car] } { Heap[n_48, car] }
            g_1[n_48] ==> FullPerm > NoPerm ==> Mask[n_48, car] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_48: Ref ::
            { Heap[n_48, car] } { QPMask[n_48, car] } { Heap[n_48, car] }
            g_1[n_48] && NoPerm < FullPerm ==> qpRange41(n_48) && invRecv41(n_48) == n_48
          );
          assume (forall o_4: Ref ::
            { invRecv41(o_4) }
            g_1[invRecv41(o_4)] && (NoPerm < FullPerm && qpRange41(o_4)) ==> invRecv41(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.cdr might not be injective. (graph_mark.vpr@243.25--243.30) [87913]"}
            (forall n$0_14: Ref, n$0_14_1: Ref ::
            { neverTriggered42(n$0_14), neverTriggered42(n$0_14_1) }
            (((n$0_14 != n$0_14_1 && g_1[n$0_14]) && g_1[n$0_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_14 != n$0_14_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.cdr (graph_mark.vpr@243.25--243.30) [87914]"}
            (forall n$0_14: Ref ::
            { Heap[n$0_14, cdr] } { QPMask[n$0_14, cdr] } { Heap[n$0_14, cdr] }
            g_1[n$0_14] ==> FullPerm > NoPerm ==> Mask[n$0_14, cdr] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_14: Ref ::
            { Heap[n$0_14, cdr] } { QPMask[n$0_14, cdr] } { Heap[n$0_14, cdr] }
            g_1[n$0_14] && NoPerm < FullPerm ==> qpRange42(n$0_14) && invRecv42(n$0_14) == n$0_14
          );
          assume (forall o_4: Ref ::
            { invRecv42(o_4) }
            g_1[invRecv42(o_4)] && (NoPerm < FullPerm && qpRange42(o_4)) ==> invRecv42(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_noExit($$(Heap, g_1), g_1, marked): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of mark might not hold. Assertion (roots subset marked) might not hold. (graph_mark.vpr@193.13--193.32) [87915]"}
      Set#Subset(roots, marked);
    assert {:msg "  Postcondition of mark might not hold. Assertion (marked subset g) might not hold. (graph_mark.vpr@194.13--194.28) [87916]"}
      Set#Subset(marked, g_1);
    assert {:msg "  Postcondition of mark might not hold. Assertion !((null in g)) might not hold. (graph_mark.vpr@195.13--195.21) [87917]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.car might not be injective. (graph_mark.vpr@195.13--195.21) [87918]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered11(n$5_2), neverTriggered11(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && g_1[n$5_2]) && g_1[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of mark might not hold. There might be insufficient permission to access n$5.car (graph_mark.vpr@195.13--195.21) [87919]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, car] } { QPMask[n$5_2, car] } { Heap[n$5_2, car] }
        g_1[n$5_2] ==> Mask[n$5_2, car] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, car] } { QPMask[n$5_2, car] } { Heap[n$5_2, car] }
        g_1[n$5_2] && NoPerm < FullPerm ==> qpRange11(n$5_2) && invRecv11(n$5_2) == n$5_2
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        g_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field car
      assume (forall o_4: Ref ::
        { QPMask[o_4, car] }
        (g_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, car] == Mask[o_4, car] - FullPerm) && (!(g_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, car] == Mask[o_4, car])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != car ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$6 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$6.cdr might not be injective. (graph_mark.vpr@195.13--195.21) [87920]"}
        (forall n$6_2: Ref, n$6_2_1: Ref ::
        { neverTriggered12(n$6_2), neverTriggered12(n$6_2_1) }
        (((n$6_2 != n$6_2_1 && g_1[n$6_2]) && g_1[n$6_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_2 != n$6_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of mark might not hold. There might be insufficient permission to access n$6.cdr (graph_mark.vpr@195.13--195.21) [87921]"}
        (forall n$6_2: Ref ::
        { Heap[n$6_2, cdr] } { QPMask[n$6_2, cdr] } { Heap[n$6_2, cdr] }
        g_1[n$6_2] ==> Mask[n$6_2, cdr] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$6
      assume (forall n$6_2: Ref ::
        { Heap[n$6_2, cdr] } { QPMask[n$6_2, cdr] } { Heap[n$6_2, cdr] }
        g_1[n$6_2] && NoPerm < FullPerm ==> qpRange12(n$6_2) && invRecv12(n$6_2) == n$6_2
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
      );
    
    // -- assume permission updates for field cdr
      assume (forall o_4: Ref ::
        { QPMask[o_4, cdr] }
        (g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, cdr] == Mask[o_4, cdr] - FullPerm) && (!(g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, cdr] == Mask[o_4, cdr])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != cdr ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$3_2]) {
        assert {:msg "  Postcondition of mark might not hold. Assertion (n$3.car in g) might not hold. (graph_mark.vpr@195.13--195.21) [87922]"}
          g_1[Heap[n$3_2, car]];
      }
      assume false;
    }
    assume (forall n$3_3_1_1: Ref ::
      { g_1[Heap[n$3_3_1_1, car]] } { g_1[n$3_3_1_1], Heap[n$3_3_1_1, car] }
      g_1[n$3_3_1_1] ==> g_1[Heap[n$3_3_1_1, car]]
    );
    if (*) {
      if (g_1[n$4_2_1]) {
        assert {:msg "  Postcondition of mark might not hold. Assertion (n$4.cdr in g) might not hold. (graph_mark.vpr@195.13--195.21) [87923]"}
          g_1[Heap[n$4_2_1, cdr]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { g_1[Heap[n$4_3_1, cdr]] } { g_1[n$4_3_1], Heap[n$4_3_1, cdr] }
      g_1[n$4_3_1] ==> g_1[Heap[n$4_3_1, cdr]]
    );
    if (*) {
      if (g_1[v_4_1]) {
        if (marked[v_4_1]) {
          assert {:msg "  Postcondition of mark might not hold. Assertion exists_spath($$(g), roots, v) might not hold. (graph_mark.vpr@196.13--196.130) [87924]"}
            (exists_spath($$(Heap, g_1), roots, v_4_1): bool);
        }
      }
      assume false;
    }
    assume (forall v_5_1_1: Ref ::
      { marked[v_5_1_1] } { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, v_5_1_1): bool) }
      g_1[v_5_1_1] ==> marked[v_5_1_1] ==> (exists_spath($$(Heap, g_1), roots, v_5_1_1): bool)
    );
    if (*) {
      if (g_1[v_6_1]) {
        if ((exists_spath($$(Heap, g_1), roots, v_6_1): bool)) {
          assert {:msg "  Postcondition of mark might not hold. Assertion (v in marked) might not hold. (graph_mark.vpr@197.13--197.130) [87925]"}
            marked[v_6_1];
        }
      }
      assume false;
    }
    assume (forall v_7_1: Ref ::
      { marked[v_7_1] } { (exists_spath($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), roots, v_7_1): bool) }
      g_1[v_7_1] ==> (exists_spath($$(Heap, g_1), roots, v_7_1): bool) ==> marked[v_7_1]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}