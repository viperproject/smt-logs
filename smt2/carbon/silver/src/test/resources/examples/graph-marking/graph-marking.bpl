// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:03:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/graph-marking/graph-marking.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/graph-marking/graph-marking-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_31: Ref, f_36: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_31, f_36] }
  Heap[o_31, $allocated] ==> Heap[Heap[o_31, f_36], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_9: Ref, f_13: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_9, f_13] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_9, f_13) ==> Heap[o_9, f_13] == ExhaleHeap[o_9, f_13]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27), ExhaleHeap[null, PredicateMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> Heap[null, PredicateMaskField(pm_f_27)] == ExhaleHeap[null, PredicateMaskField(pm_f_27)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_27, f_13] }
    Heap[null, PredicateMaskField(pm_f_27)][o2_27, f_13] ==> Heap[o2_27, f_13] == ExhaleHeap[o2_27, f_13]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27), ExhaleHeap[null, WandMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> Heap[null, WandMaskField(pm_f_27)] == ExhaleHeap[null, WandMaskField(pm_f_27)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_13: (Field A B) ::
    { ExhaleHeap[o2_27, f_13] }
    Heap[null, WandMaskField(pm_f_27)][o2_27, f_13] ==> Heap[o2_27, f_13] == ExhaleHeap[o2_27, f_13]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_9: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_9, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_9, $allocated] ==> ExhaleHeap[o_9, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_31: Ref, f_54: (Field A B), v: B ::
  { Heap[o_31, f_54:=v] }
  succHeap(Heap, Heap[o_31, f_54:=v])
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

function  neverTriggered1(n_1: Ref): bool;
function  neverTriggered2(n$0_1: Ref): bool;
function  neverTriggered3(n$1_1: Ref): bool;
function  neverTriggered4(n$4_1_2: Ref): bool;
function  neverTriggered5(n$5_1: Ref): bool;
function  neverTriggered6(n$6_1: Ref): bool;
function  neverTriggered7(n$4_2_1: Ref): bool;
function  neverTriggered8(n$5_2: Ref): bool;
function  neverTriggered9(n$6_2: Ref): bool;
function  neverTriggered10(n_22: Ref): bool;
function  neverTriggered11(n$0_2_1: Ref): bool;
function  neverTriggered12(n$1_2: Ref): bool;
function  neverTriggered13(n$4_3: Ref): bool;
function  neverTriggered14(n$5_3_2: Ref): bool;
function  neverTriggered15(n$6_3_2: Ref): bool;
function  neverTriggered16(n_28_1: Ref): bool;
function  neverTriggered17(n$0_3_2: Ref): bool;
function  neverTriggered18(n$1_3: Ref): bool;
function  neverTriggered19(n$4_4: Ref): bool;
function  neverTriggered20(n$5_4_1: Ref): bool;
function  neverTriggered21(n$6_4_1: Ref): bool;
function  neverTriggered22(n_3: Ref): bool;
function  neverTriggered23(n$0_13: Ref): bool;
function  neverTriggered24(n$1_12: Ref): bool;
function  neverTriggered25(n$4: Ref): bool;
function  neverTriggered26(n$5_8: Ref): bool;
function  neverTriggered27(n$6_11: Ref): bool;
function  neverTriggered28(n_3: Ref): bool;
function  neverTriggered29(n$0_13: Ref): bool;
function  neverTriggered30(n$1_12: Ref): bool;
function  neverTriggered31(n$4: Ref): bool;
function  neverTriggered32(n$5_8: Ref): bool;
function  neverTriggered33(n$6_11: Ref): bool;
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

const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);
const unique is_marked: Field NormalField bool;
axiom !IsPredicateField(is_marked);
axiom !IsWandField(is_marked);

// ==================================================
// Translation of method trav_rec
// ==================================================

procedure trav_rec(nodes_1: (Set Ref), node: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$2_42: Ref;
  var n$3_10: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$7_6: Ref;
  var n$8_6: Ref;
  var n_77: Ref;
  var n_78: Ref;
  var n_25: Ref;
  var n_79: Ref;
  var n_80: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_node: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n$2_2: Ref;
  var n$3_2: Ref;
  var ExhaleHeap: HeapType;
  var arg_node_1: Ref;
  var n$2_4_1: Ref;
  var n$3_4: Ref;
  var n$7_2: Ref;
  var n$8_2_1: Ref;
  var n_12_1: Ref;
  var n_14: Ref;
  var n_16: Ref;
  var n_18: Ref;
  var n_20: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[node, $allocated];
  
  // -- Checked inhaling of precondition
    assume nodes_1[node];
    assume !nodes_1[null];
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> acc(n.left, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.left might not be injective. (graph-marking.vpr@23.11--23.38) [119098]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && nodes_1[n_1]) && nodes_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, left] } { QPMask[n_1, left] } { nodes_1[n_1] }
        nodes_1[n_1] && NoPerm < FullPerm ==> qpRange1(n_1) && invRecv1(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, left] } { QPMask[n_1, left] } { nodes_1[n_1] }
        nodes_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        ((nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + FullPerm) && (!((nodes_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0 in nodes) } (n$0 in nodes) ==> acc(n$0.right, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.right might not be injective. (graph-marking.vpr@23.11--23.38) [119099]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && nodes_1[n$0_1]) && nodes_1[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, right_1] } { QPMask[n$0_1, right_1] } { nodes_1[n$0_1] }
        nodes_1[n$0_1] && NoPerm < FullPerm ==> qpRange2(n$0_1) && invRecv2(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (nodes_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, right_1] } { QPMask[n$0_1, right_1] } { nodes_1[n$0_1] }
        nodes_1[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, right_1] }
        ((nodes_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, right_1] == Mask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1 in nodes) } (n$1 in nodes) ==> acc(n$1.is_marked, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@23.11--23.38) [119100]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && nodes_1[n$1_1]) && nodes_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, is_marked] } { QPMask[n$1_1, is_marked] } { nodes_1[n$1_1] }
        nodes_1[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (nodes_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, is_marked] } { QPMask[n$1_1, is_marked] } { nodes_1[n$1_1] }
        nodes_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, is_marked] }
        ((nodes_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, is_marked] == Mask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.left in nodes) } { (n$2 in nodes), n$2.left } (n$2 in nodes) && n$2.left != null ==> (n$2.left in nodes))
      if (*) {
        if (nodes_1[n$2_42]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.left (graph-marking.vpr@23.11--23.38) [119101]"}
            HasDirectPerm(Mask, n$2_42, left);
        }
        if (nodes_1[n$2_42] && Heap[n$2_42, left] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.left (graph-marking.vpr@23.11--23.38) [119102]"}
            HasDirectPerm(Mask, n$2_42, left);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { nodes_1[Heap[n$2_1_1, left]] } { nodes_1[n$2_1_1], Heap[n$2_1_1, left] }
      nodes_1[n$2_1_1] && Heap[n$2_1_1, left] != null ==> nodes_1[Heap[n$2_1_1, left]]
    );
    
    // -- Check definedness of (forall n$3: Ref :: { (n$3.right in nodes) } { (n$3 in nodes), n$3.right } (n$3 in nodes) && n$3.right != null ==> (n$3.right in nodes))
      if (*) {
        if (nodes_1[n$3_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.right (graph-marking.vpr@23.11--23.38) [119103]"}
            HasDirectPerm(Mask, n$3_10, right_1);
        }
        if (nodes_1[n$3_10] && Heap[n$3_10, right_1] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.right (graph-marking.vpr@23.11--23.38) [119104]"}
            HasDirectPerm(Mask, n$3_10, right_1);
        }
        assume false;
      }
    assume (forall n$3_1_2: Ref ::
      { nodes_1[Heap[n$3_1_2, right_1]] } { nodes_1[n$3_1_2], Heap[n$3_1_2, right_1] }
      nodes_1[n$3_1_2] && Heap[n$3_1_2, right_1] != null ==> nodes_1[Heap[n$3_1_2, right_1]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of !node.is_marked
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.is_marked (graph-marking.vpr@24.11--24.26) [119105]"}
        HasDirectPerm(Mask, node, is_marked);
    assume !Heap[node, is_marked];
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
    assume nodes_1[node];
    assume !nodes_1[null];
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4 in nodes) } (n$4 in nodes) ==> acc(n$4.left, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.left might not be injective. (graph-marking.vpr@26.10--26.37) [119106]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && nodes_1[n$4_1_2]) && nodes_1[n$4_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, left] } { QPMask[n$4_1_2, left] } { nodes_1[n$4_1_2] }
        nodes_1[n$4_1_2] && NoPerm < FullPerm ==> qpRange4(n$4_1_2) && invRecv4(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (nodes_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, left] } { QPMask[n$4_1_2, left] } { nodes_1[n$4_1_2] }
        nodes_1[n$4_1_2] ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        ((nodes_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, left] == PostMask[o_4, left] + FullPerm) && (!((nodes_1[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, left] == PostMask[o_4, left])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != left ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5 in nodes) } (n$5 in nodes) ==> acc(n$5.right, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.right might not be injective. (graph-marking.vpr@26.10--26.37) [119107]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && nodes_1[n$5_1]) && nodes_1[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, right_1] } { QPMask[n$5_1, right_1] } { nodes_1[n$5_1] }
        nodes_1[n$5_1] && NoPerm < FullPerm ==> qpRange5(n$5_1) && invRecv5(n$5_1) == n$5_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (nodes_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, right_1] } { QPMask[n$5_1, right_1] } { nodes_1[n$5_1] }
        nodes_1[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, right_1] }
        ((nodes_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, right_1] == PostMask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, right_1] == PostMask[o_4, right_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != right_1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6 in nodes) } (n$6 in nodes) ==> acc(n$6.is_marked, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@26.10--26.37) [119108]"}
      (forall n$6_1: Ref, n$6_1_1: Ref ::
      
      (((n$6_1 != n$6_1_1 && nodes_1[n$6_1]) && nodes_1[n$6_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_1 != n$6_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, is_marked] } { QPMask[n$6_1, is_marked] } { nodes_1[n$6_1] }
        nodes_1[n$6_1] && NoPerm < FullPerm ==> qpRange6(n$6_1) && invRecv6(n$6_1) == n$6_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (nodes_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, is_marked] } { QPMask[n$6_1, is_marked] } { nodes_1[n$6_1] }
        nodes_1[n$6_1] ==> n$6_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, is_marked] }
        ((nodes_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, is_marked] == PostMask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, is_marked] == PostMask[o_4, is_marked])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != is_marked ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$7: Ref :: { (n$7.left in nodes) } { (n$7 in nodes), n$7.left } (n$7 in nodes) && n$7.left != null ==> (n$7.left in nodes))
      if (*) {
        if (nodes_1[n$7_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$7.left (graph-marking.vpr@26.10--26.37) [119109]"}
            HasDirectPerm(PostMask, n$7_6, left);
        }
        if (nodes_1[n$7_6] && PostHeap[n$7_6, left] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$7.left (graph-marking.vpr@26.10--26.37) [119110]"}
            HasDirectPerm(PostMask, n$7_6, left);
        }
        assume false;
      }
    assume (forall n$7_1: Ref ::
      { nodes_1[PostHeap[n$7_1, left]] } { nodes_1[n$7_1], PostHeap[n$7_1, left] }
      nodes_1[n$7_1] && PostHeap[n$7_1, left] != null ==> nodes_1[PostHeap[n$7_1, left]]
    );
    
    // -- Check definedness of (forall n$8: Ref :: { (n$8.right in nodes) } { (n$8 in nodes), n$8.right } (n$8 in nodes) && n$8.right != null ==> (n$8.right in nodes))
      if (*) {
        if (nodes_1[n$8_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$8.right (graph-marking.vpr@26.10--26.37) [119111]"}
            HasDirectPerm(PostMask, n$8_6, right_1);
        }
        if (nodes_1[n$8_6] && PostHeap[n$8_6, right_1] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$8.right (graph-marking.vpr@26.10--26.37) [119112]"}
            HasDirectPerm(PostMask, n$8_6, right_1);
        }
        assume false;
      }
    assume (forall n$8_1: Ref ::
      { nodes_1[PostHeap[n$8_1, right_1]] } { nodes_1[n$8_1], PostHeap[n$8_1, right_1] }
      nodes_1[n$8_1] && PostHeap[n$8_1, right_1] != null ==> nodes_1[PostHeap[n$8_1, right_1]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } (n in nodes) ==> old(n.is_marked) ==> n.is_marked)
      if (*) {
        if (nodes_1[n_77]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@30.10--30.102) [119113]"}
            HasDirectPerm(oldMask, n_77, is_marked);
          if (oldHeap[n_77, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@30.10--30.102) [119114]"}
              HasDirectPerm(PostMask, n_77, is_marked);
          }
        }
        assume false;
      }
    assume (forall n_3: Ref ::
      { nodes_1[n_3], PostHeap[n_3, is_marked] }
      nodes_1[n_3] ==> oldHeap[n_3, is_marked] ==> PostHeap[n_3, is_marked]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of node.is_marked
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.is_marked (graph-marking.vpr@31.10--31.24) [119115]"}
        HasDirectPerm(PostMask, node, is_marked);
    assume PostHeap[node, is_marked];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.left } (n in nodes) ==> n.left == old(n.left))
      if (*) {
        if (nodes_1[n_78]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@34.10--34.86) [119116]"}
            HasDirectPerm(PostMask, n_78, left);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@34.10--34.86) [119117]"}
            HasDirectPerm(oldMask, n_78, left);
        }
        assume false;
      }
    assume (forall n_5: Ref ::
      { nodes_1[n_5], PostHeap[n_5, left] }
      nodes_1[n_5] ==> PostHeap[n_5, left] == oldHeap[n_5, left]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.right } (n in nodes) ==> n.right == old(n.right))
      if (*) {
        if (nodes_1[n_25]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@35.10--35.89) [119118]"}
            HasDirectPerm(PostMask, n_25, right_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@35.10--35.89) [119119]"}
            HasDirectPerm(oldMask, n_25, right_1);
        }
        assume false;
      }
    assume (forall n_7: Ref ::
      { nodes_1[n_7], PostHeap[n_7, right_1] }
      nodes_1[n_7] ==> PostHeap[n_7, right_1] == oldHeap[n_7, right_1]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } { (n in nodes), n.left.is_marked } (n in nodes) ==> old(!n.is_marked) && n.is_marked ==> n.left == null || n.left.is_marked)
      if (*) {
        if (nodes_1[n_79]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@38.10--39.103) [119120]"}
            HasDirectPerm(oldMask, n_79, is_marked);
          if (!oldHeap[n_79, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@38.10--39.103) [119121]"}
              HasDirectPerm(PostMask, n_79, is_marked);
          }
          if (!oldHeap[n_79, is_marked] && PostHeap[n_79, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@38.10--39.103) [119122]"}
              HasDirectPerm(PostMask, n_79, left);
            if (!(PostHeap[n_79, left] == null)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@38.10--39.103) [119123]"}
                HasDirectPerm(PostMask, n_79, left);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left.is_marked (graph-marking.vpr@38.10--39.103) [119124]"}
                HasDirectPerm(PostMask, PostHeap[n_79, left], is_marked);
            }
          }
        }
        assume false;
      }
    assume (forall n_9: Ref ::
      { nodes_1[n_9], PostHeap[n_9, is_marked] } { nodes_1[n_9], PostHeap[PostHeap[n_9, left], is_marked] }
      nodes_1[n_9] ==> !oldHeap[n_9, is_marked] && PostHeap[n_9, is_marked] ==> PostHeap[n_9, left] == null || PostHeap[PostHeap[n_9, left], is_marked]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } { (n in nodes), n.right.is_marked } (n in nodes) ==> old(!n.is_marked) && n.is_marked ==> n.right == null || n.right.is_marked)
      if (*) {
        if (nodes_1[n_80]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@40.10--41.104) [119125]"}
            HasDirectPerm(oldMask, n_80, is_marked);
          if (!oldHeap[n_80, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@40.10--41.104) [119126]"}
              HasDirectPerm(PostMask, n_80, is_marked);
          }
          if (!oldHeap[n_80, is_marked] && PostHeap[n_80, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@40.10--41.104) [119127]"}
              HasDirectPerm(PostMask, n_80, right_1);
            if (!(PostHeap[n_80, right_1] == null)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@40.10--41.104) [119128]"}
                HasDirectPerm(PostMask, n_80, right_1);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right.is_marked (graph-marking.vpr@40.10--41.104) [119129]"}
                HasDirectPerm(PostMask, PostHeap[n_80, right_1], is_marked);
            }
          }
        }
        assume false;
      }
    assume (forall n_11_1: Ref ::
      { nodes_1[n_11_1], PostHeap[n_11_1, is_marked] } { nodes_1[n_11_1], PostHeap[PostHeap[n_11_1, right_1], is_marked] }
      nodes_1[n_11_1] ==> !oldHeap[n_11_1, is_marked] && PostHeap[n_11_1, is_marked] ==> PostHeap[n_11_1, right_1] == null || PostHeap[PostHeap[n_11_1, right_1], is_marked]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: node.is_marked := true -- graph-marking.vpr@43.2--43.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access node.is_marked (graph-marking.vpr@43.2--43.24) [119130]"}
      FullPerm == Mask[node, is_marked];
    Heap := Heap[node, is_marked:=true];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.left != null && !node.left.is_marked) -- graph-marking.vpr@45.2--47.3
    
    // -- Check definedness of node.left != null && !node.left.is_marked
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left (graph-marking.vpr@45.6--45.47) [119131]"}
        HasDirectPerm(Mask, node, left);
      if (Heap[node, left] != null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left (graph-marking.vpr@45.6--45.47) [119132]"}
          HasDirectPerm(Mask, node, left);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left.is_marked (graph-marking.vpr@45.6--45.47) [119133]"}
          HasDirectPerm(Mask, Heap[node, left], is_marked);
      }
    if (Heap[node, left] != null && !Heap[Heap[node, left], is_marked]) {
      
      // -- Translating statement: trav_rec(nodes, node.left) -- graph-marking.vpr@46.3--46.29
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of node.left
          assert {:msg "  Method call might fail. There might be insufficient permission to access node.left (graph-marking.vpr@46.3--46.29) [119134]"}
            HasDirectPerm(Mask, node, left);
        arg_node := Heap[node, left];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (node.left in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [119135]"}
            nodes_1[arg_node];
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@46.3--46.29) [119136]"}
            !nodes_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@46.3--46.29) [119137]"}
              (forall n_22: Ref, n_22_1: Ref ::
              { neverTriggered10(n_22), neverTriggered10(n_22_1) }
              (((n_22 != n_22_1 && nodes_1[n_22]) && nodes_1[n_22_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_22 != n_22_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@46.3--46.29) [119138]"}
              (forall n_22: Ref ::
              { Heap[n_22, left] } { QPMask[n_22, left] } { nodes_1[n_22] }
              nodes_1[n_22] ==> Mask[n_22, left] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_22: Ref ::
              { Heap[n_22, left] } { QPMask[n_22, left] } { nodes_1[n_22] }
              nodes_1[n_22] && NoPerm < FullPerm ==> qpRange10(n_22) && invRecv10(n_22) == n_22
            );
            assume (forall o_4: Ref ::
              { invRecv10(o_4) }
              nodes_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
            );
          
          // -- assume permission updates for field left
            assume (forall o_4: Ref ::
              { QPMask[o_4, left] }
              (nodes_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - FullPerm) && (!(nodes_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@46.3--46.29) [119139]"}
              (forall n$0_2_1: Ref, n$0_2_2: Ref ::
              { neverTriggered11(n$0_2_1), neverTriggered11(n$0_2_2) }
              (((n$0_2_1 != n$0_2_2 && nodes_1[n$0_2_1]) && nodes_1[n$0_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2_1 != n$0_2_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@46.3--46.29) [119140]"}
              (forall n$0_2_1: Ref ::
              { Heap[n$0_2_1, right_1] } { QPMask[n$0_2_1, right_1] } { nodes_1[n$0_2_1] }
              nodes_1[n$0_2_1] ==> Mask[n$0_2_1, right_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_2_1: Ref ::
              { Heap[n$0_2_1, right_1] } { QPMask[n$0_2_1, right_1] } { nodes_1[n$0_2_1] }
              nodes_1[n$0_2_1] && NoPerm < FullPerm ==> qpRange11(n$0_2_1) && invRecv11(n$0_2_1) == n$0_2_1
            );
            assume (forall o_4: Ref ::
              { invRecv11(o_4) }
              nodes_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
            );
          
          // -- assume permission updates for field right
            assume (forall o_4: Ref ::
              { QPMask[o_4, right_1] }
              (nodes_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, right_1] == Mask[o_4, right_1] - FullPerm) && (!(nodes_1[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$1 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@46.3--46.29) [119141]"}
              (forall n$1_2: Ref, n$1_2_1: Ref ::
              { neverTriggered12(n$1_2), neverTriggered12(n$1_2_1) }
              (((n$1_2 != n$1_2_1 && nodes_1[n$1_2]) && nodes_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@46.3--46.29) [119142]"}
              (forall n$1_2: Ref ::
              { Heap[n$1_2, is_marked] } { QPMask[n$1_2, is_marked] } { nodes_1[n$1_2] }
              nodes_1[n$1_2] ==> Mask[n$1_2, is_marked] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$1
            assume (forall n$1_2: Ref ::
              { Heap[n$1_2, is_marked] } { QPMask[n$1_2, is_marked] } { nodes_1[n$1_2] }
              nodes_1[n$1_2] && NoPerm < FullPerm ==> qpRange12(n$1_2) && invRecv12(n$1_2) == n$1_2
            );
            assume (forall o_4: Ref ::
              { invRecv12(o_4) }
              nodes_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
            );
          
          // -- assume permission updates for field is_marked
            assume (forall o_4: Ref ::
              { QPMask[o_4, is_marked] }
              (nodes_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, is_marked] == Mask[o_4, is_marked] - FullPerm) && (!(nodes_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (nodes_1[n$2_2] && Heap[n$2_2, left] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [119143]"}
                nodes_1[Heap[n$2_2, left]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { nodes_1[Heap[n$2_3_1, left]] } { nodes_1[n$2_3_1], Heap[n$2_3_1, left] }
            nodes_1[n$2_3_1] && Heap[n$2_3_1, left] != null ==> nodes_1[Heap[n$2_3_1, left]]
          );
          if (*) {
            if (nodes_1[n$3_2] && Heap[n$3_2, right_1] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [119144]"}
                nodes_1[Heap[n$3_2, right_1]];
            }
            assume false;
          }
          assume (forall n$3_3_1_1: Ref ::
            { nodes_1[Heap[n$3_3_1_1, right_1]] } { nodes_1[n$3_3_1_1], Heap[n$3_3_1_1, right_1] }
            nodes_1[n$3_3_1_1] && Heap[n$3_3_1_1, right_1] != null ==> nodes_1[Heap[n$3_3_1_1, right_1]]
          );
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !node.left.is_marked might not hold. (graph-marking.vpr@46.3--46.29) [119145]"}
            !Heap[arg_node, is_marked];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume nodes_1[arg_node];
          assume !nodes_1[null];
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@46.3--46.29) [119146]"}
            (forall n$4_3: Ref, n$4_3_2: Ref ::
            
            (((n$4_3 != n$4_3_2 && nodes_1[n$4_3]) && nodes_1[n$4_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_3 != n$4_3_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, left] } { QPMask[n$4_3, left] } { nodes_1[n$4_3] }
              nodes_1[n$4_3] && NoPerm < FullPerm ==> qpRange13(n$4_3) && invRecv13(n$4_3) == n$4_3
            );
            assume (forall o_4: Ref ::
              { invRecv13(o_4) }
              (nodes_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, left] } { QPMask[n$4_3, left] } { nodes_1[n$4_3] }
              nodes_1[n$4_3] ==> n$4_3 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, left] }
              ((nodes_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> invRecv13(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + FullPerm) && (!((nodes_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@46.3--46.29) [119147]"}
            (forall n$5_3_2: Ref, n$5_3_3: Ref ::
            
            (((n$5_3_2 != n$5_3_3 && nodes_1[n$5_3_2]) && nodes_1[n$5_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_3_2 != n$5_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$5_3_2: Ref ::
              { Heap[n$5_3_2, right_1] } { QPMask[n$5_3_2, right_1] } { nodes_1[n$5_3_2] }
              nodes_1[n$5_3_2] && NoPerm < FullPerm ==> qpRange14(n$5_3_2) && invRecv14(n$5_3_2) == n$5_3_2
            );
            assume (forall o_4: Ref ::
              { invRecv14(o_4) }
              (nodes_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$5_3_2: Ref ::
              { Heap[n$5_3_2, right_1] } { QPMask[n$5_3_2, right_1] } { nodes_1[n$5_3_2] }
              nodes_1[n$5_3_2] ==> n$5_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, right_1] }
              ((nodes_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> invRecv14(o_4) == o_4) && QPMask[o_4, right_1] == Mask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@46.3--46.29) [119148]"}
            (forall n$6_3_2: Ref, n$6_3_3: Ref ::
            
            (((n$6_3_2 != n$6_3_3 && nodes_1[n$6_3_2]) && nodes_1[n$6_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_3_2 != n$6_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$6_3_2: Ref ::
              { Heap[n$6_3_2, is_marked] } { QPMask[n$6_3_2, is_marked] } { nodes_1[n$6_3_2] }
              nodes_1[n$6_3_2] && NoPerm < FullPerm ==> qpRange15(n$6_3_2) && invRecv15(n$6_3_2) == n$6_3_2
            );
            assume (forall o_4: Ref ::
              { invRecv15(o_4) }
              (nodes_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> invRecv15(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$6_3_2: Ref ::
              { Heap[n$6_3_2, is_marked] } { QPMask[n$6_3_2, is_marked] } { nodes_1[n$6_3_2] }
              nodes_1[n$6_3_2] ==> n$6_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, is_marked] }
              ((nodes_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> invRecv15(o_4) == o_4) && QPMask[o_4, is_marked] == Mask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$7_4_1: Ref ::
            { nodes_1[Heap[n$7_4_1, left]] } { nodes_1[n$7_4_1], Heap[n$7_4_1, left] }
            nodes_1[n$7_4_1] && Heap[n$7_4_1, left] != null ==> nodes_1[Heap[n$7_4_1, left]]
          );
          assume (forall n$8_4: Ref ::
            { nodes_1[Heap[n$8_4, right_1]] } { nodes_1[n$8_4], Heap[n$8_4, right_1] }
            nodes_1[n$8_4] && Heap[n$8_4, right_1] != null ==> nodes_1[Heap[n$8_4, right_1]]
          );
          assume (forall n_23: Ref ::
            { nodes_1[n_23], Heap[n_23, is_marked] }
            nodes_1[n_23] ==> PreCallHeap[n_23, is_marked] ==> Heap[n_23, is_marked]
          );
          assume Heap[arg_node, is_marked];
          assume (forall n_24: Ref ::
            { nodes_1[n_24], Heap[n_24, left] }
            nodes_1[n_24] ==> Heap[n_24, left] == PreCallHeap[n_24, left]
          );
          assume (forall n_25_1: Ref ::
            { nodes_1[n_25_1], Heap[n_25_1, right_1] }
            nodes_1[n_25_1] ==> Heap[n_25_1, right_1] == PreCallHeap[n_25_1, right_1]
          );
          assume (forall n_26_1: Ref ::
            { nodes_1[n_26_1], Heap[n_26_1, is_marked] } { nodes_1[n_26_1], Heap[Heap[n_26_1, left], is_marked] }
            nodes_1[n_26_1] ==> !PreCallHeap[n_26_1, is_marked] && Heap[n_26_1, is_marked] ==> Heap[n_26_1, left] == null || Heap[Heap[n_26_1, left], is_marked]
          );
          assume (forall n_27_1: Ref ::
            { nodes_1[n_27_1], Heap[n_27_1, is_marked] } { nodes_1[n_27_1], Heap[Heap[n_27_1, right_1], is_marked] }
            nodes_1[n_27_1] ==> !PreCallHeap[n_27_1, is_marked] && Heap[n_27_1, is_marked] ==> Heap[n_27_1, right_1] == null || Heap[Heap[n_27_1, right_1], is_marked]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.right != null && !node.right.is_marked) -- graph-marking.vpr@49.2--51.3
    
    // -- Check definedness of node.right != null && !node.right.is_marked
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right (graph-marking.vpr@49.6--49.49) [119149]"}
        HasDirectPerm(Mask, node, right_1);
      if (Heap[node, right_1] != null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right (graph-marking.vpr@49.6--49.49) [119150]"}
          HasDirectPerm(Mask, node, right_1);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right.is_marked (graph-marking.vpr@49.6--49.49) [119151]"}
          HasDirectPerm(Mask, Heap[node, right_1], is_marked);
      }
    if (Heap[node, right_1] != null && !Heap[Heap[node, right_1], is_marked]) {
      
      // -- Translating statement: trav_rec(nodes, node.right) -- graph-marking.vpr@50.3--50.30
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of node.right
          assert {:msg "  Method call might fail. There might be insufficient permission to access node.right (graph-marking.vpr@50.3--50.30) [119152]"}
            HasDirectPerm(Mask, node, right_1);
        arg_node_1 := Heap[node, right_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (node.right in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [119153]"}
            nodes_1[arg_node_1];
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@50.3--50.30) [119154]"}
            !nodes_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@50.3--50.30) [119155]"}
              (forall n_28_1: Ref, n_28_2: Ref ::
              { neverTriggered16(n_28_1), neverTriggered16(n_28_2) }
              (((n_28_1 != n_28_2 && nodes_1[n_28_1]) && nodes_1[n_28_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_28_1 != n_28_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@50.3--50.30) [119156]"}
              (forall n_28_1: Ref ::
              { Heap[n_28_1, left] } { QPMask[n_28_1, left] } { nodes_1[n_28_1] }
              nodes_1[n_28_1] ==> Mask[n_28_1, left] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_28_1: Ref ::
              { Heap[n_28_1, left] } { QPMask[n_28_1, left] } { nodes_1[n_28_1] }
              nodes_1[n_28_1] && NoPerm < FullPerm ==> qpRange16(n_28_1) && invRecv16(n_28_1) == n_28_1
            );
            assume (forall o_4: Ref ::
              { invRecv16(o_4) }
              nodes_1[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
            );
          
          // -- assume permission updates for field left
            assume (forall o_4: Ref ::
              { QPMask[o_4, left] }
              (nodes_1[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - FullPerm) && (!(nodes_1[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@50.3--50.30) [119157]"}
              (forall n$0_3_2: Ref, n$0_3_3: Ref ::
              { neverTriggered17(n$0_3_2), neverTriggered17(n$0_3_3) }
              (((n$0_3_2 != n$0_3_3 && nodes_1[n$0_3_2]) && nodes_1[n$0_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3_2 != n$0_3_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@50.3--50.30) [119158]"}
              (forall n$0_3_2: Ref ::
              { Heap[n$0_3_2, right_1] } { QPMask[n$0_3_2, right_1] } { nodes_1[n$0_3_2] }
              nodes_1[n$0_3_2] ==> Mask[n$0_3_2, right_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_3_2: Ref ::
              { Heap[n$0_3_2, right_1] } { QPMask[n$0_3_2, right_1] } { nodes_1[n$0_3_2] }
              nodes_1[n$0_3_2] && NoPerm < FullPerm ==> qpRange17(n$0_3_2) && invRecv17(n$0_3_2) == n$0_3_2
            );
            assume (forall o_4: Ref ::
              { invRecv17(o_4) }
              nodes_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
            );
          
          // -- assume permission updates for field right
            assume (forall o_4: Ref ::
              { QPMask[o_4, right_1] }
              (nodes_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4 && QPMask[o_4, right_1] == Mask[o_4, right_1] - FullPerm) && (!(nodes_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4))) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$1 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@50.3--50.30) [119159]"}
              (forall n$1_3: Ref, n$1_3_1: Ref ::
              { neverTriggered18(n$1_3), neverTriggered18(n$1_3_1) }
              (((n$1_3 != n$1_3_1 && nodes_1[n$1_3]) && nodes_1[n$1_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_3 != n$1_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@50.3--50.30) [119160]"}
              (forall n$1_3: Ref ::
              { Heap[n$1_3, is_marked] } { QPMask[n$1_3, is_marked] } { nodes_1[n$1_3] }
              nodes_1[n$1_3] ==> Mask[n$1_3, is_marked] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$1
            assume (forall n$1_3: Ref ::
              { Heap[n$1_3, is_marked] } { QPMask[n$1_3, is_marked] } { nodes_1[n$1_3] }
              nodes_1[n$1_3] && NoPerm < FullPerm ==> qpRange18(n$1_3) && invRecv18(n$1_3) == n$1_3
            );
            assume (forall o_4: Ref ::
              { invRecv18(o_4) }
              nodes_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
            );
          
          // -- assume permission updates for field is_marked
            assume (forall o_4: Ref ::
              { QPMask[o_4, is_marked] }
              (nodes_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4 && QPMask[o_4, is_marked] == Mask[o_4, is_marked] - FullPerm) && (!(nodes_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (nodes_1[n$2_4_1] && Heap[n$2_4_1, left] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [119161]"}
                nodes_1[Heap[n$2_4_1, left]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { nodes_1[Heap[n$2_5_1_1, left]] } { nodes_1[n$2_5_1_1], Heap[n$2_5_1_1, left] }
            nodes_1[n$2_5_1_1] && Heap[n$2_5_1_1, left] != null ==> nodes_1[Heap[n$2_5_1_1, left]]
          );
          if (*) {
            if (nodes_1[n$3_4] && Heap[n$3_4, right_1] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [119162]"}
                nodes_1[Heap[n$3_4, right_1]];
            }
            assume false;
          }
          assume (forall n$3_5_1_1: Ref ::
            { nodes_1[Heap[n$3_5_1_1, right_1]] } { nodes_1[n$3_5_1_1], Heap[n$3_5_1_1, right_1] }
            nodes_1[n$3_5_1_1] && Heap[n$3_5_1_1, right_1] != null ==> nodes_1[Heap[n$3_5_1_1, right_1]]
          );
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !node.right.is_marked might not hold. (graph-marking.vpr@50.3--50.30) [119163]"}
            !Heap[arg_node_1, is_marked];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume nodes_1[arg_node_1];
          assume !nodes_1[null];
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@50.3--50.30) [119164]"}
            (forall n$4_4: Ref, n$4_4_1: Ref ::
            
            (((n$4_4 != n$4_4_1 && nodes_1[n$4_4]) && nodes_1[n$4_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_4 != n$4_4_1
          );
          
          // -- Define Inverse Function
            assume (forall n$4_4: Ref ::
              { Heap[n$4_4, left] } { QPMask[n$4_4, left] } { nodes_1[n$4_4] }
              nodes_1[n$4_4] && NoPerm < FullPerm ==> qpRange19(n$4_4) && invRecv19(n$4_4) == n$4_4
            );
            assume (forall o_4: Ref ::
              { invRecv19(o_4) }
              (nodes_1[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4) ==> invRecv19(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_4: Ref ::
              { Heap[n$4_4, left] } { QPMask[n$4_4, left] } { nodes_1[n$4_4] }
              nodes_1[n$4_4] ==> n$4_4 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, left] }
              ((nodes_1[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4) ==> (NoPerm < FullPerm ==> invRecv19(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + FullPerm) && (!((nodes_1[invRecv19(o_4)] && NoPerm < FullPerm) && qpRange19(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@50.3--50.30) [119165]"}
            (forall n$5_4_1: Ref, n$5_4_2: Ref ::
            
            (((n$5_4_1 != n$5_4_2 && nodes_1[n$5_4_1]) && nodes_1[n$5_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_4_1 != n$5_4_2
          );
          
          // -- Define Inverse Function
            assume (forall n$5_4_1: Ref ::
              { Heap[n$5_4_1, right_1] } { QPMask[n$5_4_1, right_1] } { nodes_1[n$5_4_1] }
              nodes_1[n$5_4_1] && NoPerm < FullPerm ==> qpRange20(n$5_4_1) && invRecv20(n$5_4_1) == n$5_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv20(o_4) }
              (nodes_1[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> invRecv20(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$5_4_1: Ref ::
              { Heap[n$5_4_1, right_1] } { QPMask[n$5_4_1, right_1] } { nodes_1[n$5_4_1] }
              nodes_1[n$5_4_1] ==> n$5_4_1 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, right_1] }
              ((nodes_1[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> invRecv20(o_4) == o_4) && QPMask[o_4, right_1] == Mask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@50.3--50.30) [119166]"}
            (forall n$6_4_1: Ref, n$6_4_2: Ref ::
            
            (((n$6_4_1 != n$6_4_2 && nodes_1[n$6_4_1]) && nodes_1[n$6_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_4_1 != n$6_4_2
          );
          
          // -- Define Inverse Function
            assume (forall n$6_4_1: Ref ::
              { Heap[n$6_4_1, is_marked] } { QPMask[n$6_4_1, is_marked] } { nodes_1[n$6_4_1] }
              nodes_1[n$6_4_1] && NoPerm < FullPerm ==> qpRange21(n$6_4_1) && invRecv21(n$6_4_1) == n$6_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv21(o_4) }
              (nodes_1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$6_4_1: Ref ::
              { Heap[n$6_4_1, is_marked] } { QPMask[n$6_4_1, is_marked] } { nodes_1[n$6_4_1] }
              nodes_1[n$6_4_1] ==> n$6_4_1 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, is_marked] }
              ((nodes_1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> invRecv21(o_4) == o_4) && QPMask[o_4, is_marked] == Mask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$7_5_1: Ref ::
            { nodes_1[Heap[n$7_5_1, left]] } { nodes_1[n$7_5_1], Heap[n$7_5_1, left] }
            nodes_1[n$7_5_1] && Heap[n$7_5_1, left] != null ==> nodes_1[Heap[n$7_5_1, left]]
          );
          assume (forall n$8_5: Ref ::
            { nodes_1[Heap[n$8_5, right_1]] } { nodes_1[n$8_5], Heap[n$8_5, right_1] }
            nodes_1[n$8_5] && Heap[n$8_5, right_1] != null ==> nodes_1[Heap[n$8_5, right_1]]
          );
          assume (forall n_29_1: Ref ::
            { nodes_1[n_29_1], Heap[n_29_1, is_marked] }
            nodes_1[n_29_1] ==> PreCallHeap[n_29_1, is_marked] ==> Heap[n_29_1, is_marked]
          );
          assume Heap[arg_node_1, is_marked];
          assume (forall n_30_1: Ref ::
            { nodes_1[n_30_1], Heap[n_30_1, left] }
            nodes_1[n_30_1] ==> Heap[n_30_1, left] == PreCallHeap[n_30_1, left]
          );
          assume (forall n_31_1: Ref ::
            { nodes_1[n_31_1], Heap[n_31_1, right_1] }
            nodes_1[n_31_1] ==> Heap[n_31_1, right_1] == PreCallHeap[n_31_1, right_1]
          );
          assume (forall n_32_1: Ref ::
            { nodes_1[n_32_1], Heap[n_32_1, is_marked] } { nodes_1[n_32_1], Heap[Heap[n_32_1, left], is_marked] }
            nodes_1[n_32_1] ==> !PreCallHeap[n_32_1, is_marked] && Heap[n_32_1, is_marked] ==> Heap[n_32_1, left] == null || Heap[Heap[n_32_1, left], is_marked]
          );
          assume (forall n_33_1: Ref ::
            { nodes_1[n_33_1], Heap[n_33_1, is_marked] } { nodes_1[n_33_1], Heap[Heap[n_33_1, right_1], is_marked] }
            nodes_1[n_33_1] ==> !PreCallHeap[n_33_1, is_marked] && Heap[n_33_1, is_marked] ==> Heap[n_33_1, right_1] == null || Heap[Heap[n_33_1, right_1], is_marked]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion (node in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [119167]"}
      nodes_1[node];
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@26.10--26.37) [119168]"}
      !nodes_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.left might not be injective. (graph-marking.vpr@26.27--26.37) [119169]"}
        (forall n$4_2_1: Ref, n$4_2_2: Ref ::
        { neverTriggered7(n$4_2_1), neverTriggered7(n$4_2_2) }
        (((n$4_2_1 != n$4_2_2 && nodes_1[n$4_2_1]) && nodes_1[n$4_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_2_1 != n$4_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$4.left (graph-marking.vpr@26.10--26.37) [119170]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, left] } { QPMask[n$4_2_1, left] } { nodes_1[n$4_2_1] }
        nodes_1[n$4_2_1] ==> Mask[n$4_2_1, left] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, left] } { QPMask[n$4_2_1, left] } { nodes_1[n$4_2_1] }
        nodes_1[n$4_2_1] && NoPerm < FullPerm ==> qpRange7(n$4_2_1) && invRecv7(n$4_2_1) == n$4_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        nodes_1[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
      );
    
    // -- assume permission updates for field left
      assume (forall o_4: Ref ::
        { QPMask[o_4, left] }
        (nodes_1[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - FullPerm) && (!(nodes_1[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.right might not be injective. (graph-marking.vpr@26.27--26.37) [119171]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered8(n$5_2), neverTriggered8(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && nodes_1[n$5_2]) && nodes_1[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$5.right (graph-marking.vpr@26.10--26.37) [119172]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, right_1] } { QPMask[n$5_2, right_1] } { nodes_1[n$5_2] }
        nodes_1[n$5_2] ==> Mask[n$5_2, right_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, right_1] } { QPMask[n$5_2, right_1] } { nodes_1[n$5_2] }
        nodes_1[n$5_2] && NoPerm < FullPerm ==> qpRange8(n$5_2) && invRecv8(n$5_2) == n$5_2
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        nodes_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
      );
    
    // -- assume permission updates for field right
      assume (forall o_4: Ref ::
        { QPMask[o_4, right_1] }
        (nodes_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4 && QPMask[o_4, right_1] == Mask[o_4, right_1] - FullPerm) && (!(nodes_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$6 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@26.27--26.37) [119173]"}
        (forall n$6_2: Ref, n$6_2_1: Ref ::
        { neverTriggered9(n$6_2), neverTriggered9(n$6_2_1) }
        (((n$6_2 != n$6_2_1 && nodes_1[n$6_2]) && nodes_1[n$6_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_2 != n$6_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$6.is_marked (graph-marking.vpr@26.10--26.37) [119174]"}
        (forall n$6_2: Ref ::
        { Heap[n$6_2, is_marked] } { QPMask[n$6_2, is_marked] } { nodes_1[n$6_2] }
        nodes_1[n$6_2] ==> Mask[n$6_2, is_marked] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$6
      assume (forall n$6_2: Ref ::
        { Heap[n$6_2, is_marked] } { QPMask[n$6_2, is_marked] } { nodes_1[n$6_2] }
        nodes_1[n$6_2] && NoPerm < FullPerm ==> qpRange9(n$6_2) && invRecv9(n$6_2) == n$6_2
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        nodes_1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field is_marked
      assume (forall o_4: Ref ::
        { QPMask[o_4, is_marked] }
        (nodes_1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, is_marked] == Mask[o_4, is_marked] - FullPerm) && (!(nodes_1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (nodes_1[n$7_2] && Heap[n$7_2, left] != null) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion (n$7.left in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [119175]"}
          nodes_1[Heap[n$7_2, left]];
      }
      assume false;
    }
    assume (forall n$7_3_1: Ref ::
      { nodes_1[Heap[n$7_3_1, left]] } { nodes_1[n$7_3_1], Heap[n$7_3_1, left] }
      nodes_1[n$7_3_1] && Heap[n$7_3_1, left] != null ==> nodes_1[Heap[n$7_3_1, left]]
    );
    if (*) {
      if (nodes_1[n$8_2_1] && Heap[n$8_2_1, right_1] != null) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion (n$8.right in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [119176]"}
          nodes_1[Heap[n$8_2_1, right_1]];
      }
      assume false;
    }
    assume (forall n$8_3_1: Ref ::
      { nodes_1[Heap[n$8_3_1, right_1]] } { nodes_1[n$8_3_1], Heap[n$8_3_1, right_1] }
      nodes_1[n$8_3_1] && Heap[n$8_3_1, right_1] != null ==> nodes_1[Heap[n$8_3_1, right_1]]
    );
    if (*) {
      if (nodes_1[n_12_1]) {
        if (oldHeap[n_12_1, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.is_marked might not hold. (graph-marking.vpr@30.10--30.102) [119177]"}
            Heap[n_12_1, is_marked];
        }
      }
      assume false;
    }
    assume (forall n_13_1_1: Ref ::
      { nodes_1[n_13_1_1], Heap[n_13_1_1, is_marked] }
      nodes_1[n_13_1_1] ==> oldHeap[n_13_1_1, is_marked] ==> Heap[n_13_1_1, is_marked]
    );
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion node.is_marked might not hold. (graph-marking.vpr@31.10--31.24) [119178]"}
      Heap[node, is_marked];
    if (*) {
      if (nodes_1[n_14]) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.left == old(n.left) might not hold. (graph-marking.vpr@34.10--34.86) [119179]"}
          Heap[n_14, left] == oldHeap[n_14, left];
      }
      assume false;
    }
    assume (forall n_15_1_1: Ref ::
      { nodes_1[n_15_1_1], Heap[n_15_1_1, left] }
      nodes_1[n_15_1_1] ==> Heap[n_15_1_1, left] == oldHeap[n_15_1_1, left]
    );
    if (*) {
      if (nodes_1[n_16]) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.right == old(n.right) might not hold. (graph-marking.vpr@35.10--35.89) [119180]"}
          Heap[n_16, right_1] == oldHeap[n_16, right_1];
      }
      assume false;
    }
    assume (forall n_17_1_1: Ref ::
      { nodes_1[n_17_1_1], Heap[n_17_1_1, right_1] }
      nodes_1[n_17_1_1] ==> Heap[n_17_1_1, right_1] == oldHeap[n_17_1_1, right_1]
    );
    if (*) {
      if (nodes_1[n_18]) {
        if (!oldHeap[n_18, is_marked] && Heap[n_18, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.left == null || n.left.is_marked might not hold. (graph-marking.vpr@38.10--39.103) [119181]"}
            Heap[n_18, left] == null || Heap[Heap[n_18, left], is_marked];
        }
      }
      assume false;
    }
    assume (forall n_19_1_1: Ref ::
      { nodes_1[n_19_1_1], Heap[n_19_1_1, is_marked] } { nodes_1[n_19_1_1], Heap[Heap[n_19_1_1, left], is_marked] }
      nodes_1[n_19_1_1] ==> !oldHeap[n_19_1_1, is_marked] && Heap[n_19_1_1, is_marked] ==> Heap[n_19_1_1, left] == null || Heap[Heap[n_19_1_1, left], is_marked]
    );
    if (*) {
      if (nodes_1[n_20]) {
        if (!oldHeap[n_20, is_marked] && Heap[n_20, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.right == null || n.right.is_marked might not hold. (graph-marking.vpr@40.10--41.104) [119182]"}
            Heap[n_20, right_1] == null || Heap[Heap[n_20, right_1], is_marked];
        }
      }
      assume false;
    }
    assume (forall n_21_1_1: Ref ::
      { nodes_1[n_21_1_1], Heap[n_21_1_1, is_marked] } { nodes_1[n_21_1_1], Heap[Heap[n_21_1_1, right_1], is_marked] }
      nodes_1[n_21_1_1] ==> !oldHeap[n_21_1_1, is_marked] && Heap[n_21_1_1, is_marked] ==> Heap[n_21_1_1, right_1] == null || Heap[Heap[n_21_1_1, right_1], is_marked]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method client_success
// ==================================================

procedure client_success() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: Ref;
  var b_24: Ref;
  var freshObj: Ref;
  var nodes_1: (Set Ref);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n_26: Ref;
  var n_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var QPMask: MaskType;
  var n$2: Ref;
  var n$3: Ref;
  var ExhaleHeap: HeapType;
  var n_81: Ref;
  var n_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: a := new(left, right, is_marked) -- graph-marking.vpr@55.14--55.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    a_2 := freshObj;
    Mask := Mask[a_2, left:=Mask[a_2, left] + FullPerm];
    Mask := Mask[a_2, right_1:=Mask[a_2, right_1] + FullPerm];
    Mask := Mask[a_2, is_marked:=Mask[a_2, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.is_marked := false -- graph-marking.vpr@55.27--55.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.is_marked (graph-marking.vpr@55.27--55.47) [119183]"}
      FullPerm == Mask[a_2, is_marked];
    Heap := Heap[a_2, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := new(left, right, is_marked) -- graph-marking.vpr@56.14--56.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    b_24 := freshObj;
    Mask := Mask[b_24, left:=Mask[b_24, left] + FullPerm];
    Mask := Mask[b_24, right_1:=Mask[b_24, right_1] + FullPerm];
    Mask := Mask[b_24, is_marked:=Mask[b_24, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.is_marked := false -- graph-marking.vpr@56.27--56.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.is_marked (graph-marking.vpr@56.27--56.47) [119184]"}
      FullPerm == Mask[b_24, is_marked];
    Heap := Heap[b_24, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.left := b -- graph-marking.vpr@58.2--58.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.left (graph-marking.vpr@58.2--58.13) [119185]"}
      FullPerm == Mask[a_2, left];
    Heap := Heap[a_2, left:=b_24];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.right := null -- graph-marking.vpr@58.18--58.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.right (graph-marking.vpr@58.18--58.33) [119186]"}
      FullPerm == Mask[a_2, right_1];
    Heap := Heap[a_2, right_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.left := null -- graph-marking.vpr@59.2--59.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.left (graph-marking.vpr@59.2--59.16) [119187]"}
      FullPerm == Mask[b_24, left];
    Heap := Heap[b_24, left:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.right := a -- graph-marking.vpr@59.18--59.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.right (graph-marking.vpr@59.18--59.30) [119188]"}
      FullPerm == Mask[b_24, right_1];
    Heap := Heap[b_24, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: nodes := Set(a, b) -- graph-marking.vpr@61.2--61.34
    nodes_1 := Set#UnionOne(Set#Singleton(b_24), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked) -- graph-marking.vpr@63.2--63.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked)
      if (*) {
        if (nodes_1[n_26]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@63.9--63.53) [119189]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_26, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes_1[n_1]) {
        assert {:msg "  Assert might fail. Assertion !n.is_marked might not hold. (graph-marking.vpr@63.9--63.53) [119190]"}
          !Heap[n_1, is_marked];
      }
      assume false;
    }
    assume (forall n_2_1_1: Ref ::
      { nodes_1[n_2_1_1] }
      nodes_1[n_2_1_1] ==> !Heap[n_2_1_1, is_marked]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: trav_rec(nodes, a) -- graph-marking.vpr@65.2--65.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion (a in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [119191]"}
        nodes_1[a_2];
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@65.2--65.20) [119192]"}
        !nodes_1[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@65.2--65.20) [119193]"}
          (forall n_3: Ref, n_3_1: Ref ::
          { neverTriggered22(n_3), neverTriggered22(n_3_1) }
          (((n_3 != n_3_1 && nodes_1[n_3]) && nodes_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@65.2--65.20) [119194]"}
          (forall n_3: Ref ::
          { Heap[n_3, left] } { QPMask[n_3, left] } { nodes_1[n_3] }
          nodes_1[n_3] ==> Mask[n_3, left] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_3: Ref ::
          { Heap[n_3, left] } { QPMask[n_3, left] } { nodes_1[n_3] }
          nodes_1[n_3] && NoPerm < FullPerm ==> qpRange22(n_3) && invRecv22(n_3) == n_3
        );
        assume (forall o_4: Ref ::
          { invRecv22(o_4) }
          nodes_1[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
        );
      
      // -- assume permission updates for field left
        assume (forall o_4: Ref ::
          { QPMask[o_4, left] }
          (nodes_1[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - FullPerm) && (!(nodes_1[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$0 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@65.2--65.20) [119195]"}
          (forall n$0_13: Ref, n$0_42: Ref ::
          { neverTriggered23(n$0_13), neverTriggered23(n$0_42) }
          (((n$0_13 != n$0_42 && nodes_1[n$0_13]) && nodes_1[n$0_42]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_13 != n$0_42
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@65.2--65.20) [119196]"}
          (forall n$0_13: Ref ::
          { Heap[n$0_13, right_1] } { QPMask[n$0_13, right_1] } { nodes_1[n$0_13] }
          nodes_1[n$0_13] ==> Mask[n$0_13, right_1] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$0
        assume (forall n$0_13: Ref ::
          { Heap[n$0_13, right_1] } { QPMask[n$0_13, right_1] } { nodes_1[n$0_13] }
          nodes_1[n$0_13] && NoPerm < FullPerm ==> qpRange23(n$0_13) && invRecv23(n$0_13) == n$0_13
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          nodes_1[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
        );
      
      // -- assume permission updates for field right
        assume (forall o_4: Ref ::
          { QPMask[o_4, right_1] }
          (nodes_1[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, right_1] == Mask[o_4, right_1] - FullPerm) && (!(nodes_1[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$1 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@65.2--65.20) [119197]"}
          (forall n$1_12: Ref, n$1_24: Ref ::
          { neverTriggered24(n$1_12), neverTriggered24(n$1_24) }
          (((n$1_12 != n$1_24 && nodes_1[n$1_12]) && nodes_1[n$1_24]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_12 != n$1_24
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@65.2--65.20) [119198]"}
          (forall n$1_12: Ref ::
          { Heap[n$1_12, is_marked] } { QPMask[n$1_12, is_marked] } { nodes_1[n$1_12] }
          nodes_1[n$1_12] ==> Mask[n$1_12, is_marked] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$1
        assume (forall n$1_12: Ref ::
          { Heap[n$1_12, is_marked] } { QPMask[n$1_12, is_marked] } { nodes_1[n$1_12] }
          nodes_1[n$1_12] && NoPerm < FullPerm ==> qpRange24(n$1_12) && invRecv24(n$1_12) == n$1_12
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          nodes_1[invRecv24(o_4)] && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4
        );
      
      // -- assume permission updates for field is_marked
        assume (forall o_4: Ref ::
          { QPMask[o_4, is_marked] }
          (nodes_1[invRecv24(o_4)] && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4 && QPMask[o_4, is_marked] == Mask[o_4, is_marked] - FullPerm) && (!(nodes_1[invRecv24(o_4)] && (NoPerm < FullPerm && qpRange24(o_4))) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (nodes_1[n$2] && Heap[n$2, left] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [119199]"}
            nodes_1[Heap[n$2, left]];
        }
        assume false;
      }
      assume (forall n$2_1_1_1: Ref ::
        { nodes_1[Heap[n$2_1_1_1, left]] } { nodes_1[n$2_1_1_1], Heap[n$2_1_1_1, left] }
        nodes_1[n$2_1_1_1] && Heap[n$2_1_1_1, left] != null ==> nodes_1[Heap[n$2_1_1_1, left]]
      );
      if (*) {
        if (nodes_1[n$3] && Heap[n$3, right_1] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [119200]"}
            nodes_1[Heap[n$3, right_1]];
        }
        assume false;
      }
      assume (forall n$3_1_1: Ref ::
        { nodes_1[Heap[n$3_1_1, right_1]] } { nodes_1[n$3_1_1], Heap[n$3_1_1, right_1] }
        nodes_1[n$3_1_1] && Heap[n$3_1_1, right_1] != null ==> nodes_1[Heap[n$3_1_1, right_1]]
      );
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !a.is_marked might not hold. (graph-marking.vpr@65.2--65.20) [119201]"}
        !Heap[a_2, is_marked];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume nodes_1[a_2];
      assume !nodes_1[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@65.2--65.20) [119202]"}
        (forall n$4: Ref, n$4_16: Ref ::
        
        (((n$4 != n$4_16 && nodes_1[n$4]) && nodes_1[n$4_16]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4 != n$4_16
      );
      
      // -- Define Inverse Function
        assume (forall n$4: Ref ::
          { Heap[n$4, left] } { QPMask[n$4, left] } { nodes_1[n$4] }
          nodes_1[n$4] && NoPerm < FullPerm ==> qpRange25(n$4) && invRecv25(n$4) == n$4
        );
        assume (forall o_4: Ref ::
          { invRecv25(o_4) }
          (nodes_1[invRecv25(o_4)] && NoPerm < FullPerm) && qpRange25(o_4) ==> invRecv25(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$4: Ref ::
          { Heap[n$4, left] } { QPMask[n$4, left] } { nodes_1[n$4] }
          nodes_1[n$4] ==> n$4 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, left] }
          ((nodes_1[invRecv25(o_4)] && NoPerm < FullPerm) && qpRange25(o_4) ==> (NoPerm < FullPerm ==> invRecv25(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + FullPerm) && (!((nodes_1[invRecv25(o_4)] && NoPerm < FullPerm) && qpRange25(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@65.2--65.20) [119203]"}
        (forall n$5_8: Ref, n$5_9: Ref ::
        
        (((n$5_8 != n$5_9 && nodes_1[n$5_8]) && nodes_1[n$5_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_8 != n$5_9
      );
      
      // -- Define Inverse Function
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes_1[n$5_8] }
          nodes_1[n$5_8] && NoPerm < FullPerm ==> qpRange26(n$5_8) && invRecv26(n$5_8) == n$5_8
        );
        assume (forall o_4: Ref ::
          { invRecv26(o_4) }
          (nodes_1[invRecv26(o_4)] && NoPerm < FullPerm) && qpRange26(o_4) ==> invRecv26(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes_1[n$5_8] }
          nodes_1[n$5_8] ==> n$5_8 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, right_1] }
          ((nodes_1[invRecv26(o_4)] && NoPerm < FullPerm) && qpRange26(o_4) ==> (NoPerm < FullPerm ==> invRecv26(o_4) == o_4) && QPMask[o_4, right_1] == Mask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv26(o_4)] && NoPerm < FullPerm) && qpRange26(o_4)) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@65.2--65.20) [119204]"}
        (forall n$6_11: Ref, n$6_12: Ref ::
        
        (((n$6_11 != n$6_12 && nodes_1[n$6_11]) && nodes_1[n$6_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_11 != n$6_12
      );
      
      // -- Define Inverse Function
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes_1[n$6_11] }
          nodes_1[n$6_11] && NoPerm < FullPerm ==> qpRange27(n$6_11) && invRecv27(n$6_11) == n$6_11
        );
        assume (forall o_4: Ref ::
          { invRecv27(o_4) }
          (nodes_1[invRecv27(o_4)] && NoPerm < FullPerm) && qpRange27(o_4) ==> invRecv27(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes_1[n$6_11] }
          nodes_1[n$6_11] ==> n$6_11 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, is_marked] }
          ((nodes_1[invRecv27(o_4)] && NoPerm < FullPerm) && qpRange27(o_4) ==> (NoPerm < FullPerm ==> invRecv27(o_4) == o_4) && QPMask[o_4, is_marked] == Mask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv27(o_4)] && NoPerm < FullPerm) && qpRange27(o_4)) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$7_4: Ref ::
        { nodes_1[Heap[n$7_4, left]] } { nodes_1[n$7_4], Heap[n$7_4, left] }
        nodes_1[n$7_4] && Heap[n$7_4, left] != null ==> nodes_1[Heap[n$7_4, left]]
      );
      assume (forall n$8: Ref ::
        { nodes_1[Heap[n$8, right_1]] } { nodes_1[n$8], Heap[n$8, right_1] }
        nodes_1[n$8] && Heap[n$8, right_1] != null ==> nodes_1[Heap[n$8, right_1]]
      );
      assume (forall n_4_1: Ref ::
        { nodes_1[n_4_1], Heap[n_4_1, is_marked] }
        nodes_1[n_4_1] ==> PreCallHeap[n_4_1, is_marked] ==> Heap[n_4_1, is_marked]
      );
      assume Heap[a_2, is_marked];
      assume (forall n_5: Ref ::
        { nodes_1[n_5], Heap[n_5, left] }
        nodes_1[n_5] ==> Heap[n_5, left] == PreCallHeap[n_5, left]
      );
      assume (forall n_6: Ref ::
        { nodes_1[n_6], Heap[n_6, right_1] }
        nodes_1[n_6] ==> Heap[n_6, right_1] == PreCallHeap[n_6, right_1]
      );
      assume (forall n_7: Ref ::
        { nodes_1[n_7], Heap[n_7, is_marked] } { nodes_1[n_7], Heap[Heap[n_7, left], is_marked] }
        nodes_1[n_7] ==> !PreCallHeap[n_7, is_marked] && Heap[n_7, is_marked] ==> Heap[n_7, left] == null || Heap[Heap[n_7, left], is_marked]
      );
      assume (forall n_8: Ref ::
        { nodes_1[n_8], Heap[n_8, is_marked] } { nodes_1[n_8], Heap[Heap[n_8, right_1], is_marked] }
        nodes_1[n_8] ==> !PreCallHeap[n_8, is_marked] && Heap[n_8, is_marked] ==> Heap[n_8, right_1] == null || Heap[Heap[n_8, right_1], is_marked]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked) -- graph-marking.vpr@67.2--67.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked)
      if (*) {
        if (nodes_1[n_81]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@67.9--67.52) [119205]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_81, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes_1[n_10_1]) {
        assert {:msg "  Assert might fail. Assertion n.is_marked might not hold. (graph-marking.vpr@67.9--67.52) [119206]"}
          Heap[n_10_1, is_marked];
      }
      assume false;
    }
    assume (forall n_11_1_1: Ref ::
      { nodes_1[n_11_1_1] }
      nodes_1[n_11_1_1] ==> Heap[n_11_1_1, is_marked]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method client_failure
// ==================================================

procedure client_failure() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: Ref;
  var b_24: Ref;
  var freshObj: Ref;
  var nodes_1: (Set Ref);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n_82: Ref;
  var n_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var QPMask: MaskType;
  var n$2: Ref;
  var n$3: Ref;
  var ExhaleHeap: HeapType;
  var n_83: Ref;
  var n_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: a := new(left, right, is_marked) -- graph-marking.vpr@71.14--71.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    a_2 := freshObj;
    Mask := Mask[a_2, left:=Mask[a_2, left] + FullPerm];
    Mask := Mask[a_2, right_1:=Mask[a_2, right_1] + FullPerm];
    Mask := Mask[a_2, is_marked:=Mask[a_2, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.is_marked := false -- graph-marking.vpr@71.27--71.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.is_marked (graph-marking.vpr@71.27--71.47) [119207]"}
      FullPerm == Mask[a_2, is_marked];
    Heap := Heap[a_2, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := new(left, right, is_marked) -- graph-marking.vpr@72.14--72.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    b_24 := freshObj;
    Mask := Mask[b_24, left:=Mask[b_24, left] + FullPerm];
    Mask := Mask[b_24, right_1:=Mask[b_24, right_1] + FullPerm];
    Mask := Mask[b_24, is_marked:=Mask[b_24, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.is_marked := false -- graph-marking.vpr@72.27--72.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.is_marked (graph-marking.vpr@72.27--72.47) [119208]"}
      FullPerm == Mask[b_24, is_marked];
    Heap := Heap[b_24, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.left := a -- graph-marking.vpr@74.2--74.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.left (graph-marking.vpr@74.2--74.13) [119209]"}
      FullPerm == Mask[a_2, left];
    Heap := Heap[a_2, left:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.right := a -- graph-marking.vpr@74.15--74.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.right (graph-marking.vpr@74.15--74.27) [119210]"}
      FullPerm == Mask[a_2, right_1];
    Heap := Heap[a_2, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.left := a -- graph-marking.vpr@75.2--75.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.left (graph-marking.vpr@75.2--75.13) [119211]"}
      FullPerm == Mask[b_24, left];
    Heap := Heap[b_24, left:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.right := a -- graph-marking.vpr@75.15--75.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.right (graph-marking.vpr@75.15--75.27) [119212]"}
      FullPerm == Mask[b_24, right_1];
    Heap := Heap[b_24, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: nodes := Set(a, b) -- graph-marking.vpr@77.2--77.34
    nodes_1 := Set#UnionOne(Set#Singleton(b_24), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked) -- graph-marking.vpr@79.2--79.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked)
      if (*) {
        if (nodes_1[n_82]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@79.9--79.53) [119213]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_82, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes_1[n_1]) {
        assert {:msg "  Assert might fail. Assertion !n.is_marked might not hold. (graph-marking.vpr@79.9--79.53) [119214]"}
          !Heap[n_1, is_marked];
      }
      assume false;
    }
    assume (forall n_2_1_1: Ref ::
      { nodes_1[n_2_1_1] }
      nodes_1[n_2_1_1] ==> !Heap[n_2_1_1, is_marked]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: trav_rec(nodes, a) -- graph-marking.vpr@81.2--81.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion (a in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [119215]"}
        nodes_1[a_2];
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@81.2--81.20) [119216]"}
        !nodes_1[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@81.2--81.20) [119217]"}
          (forall n_3: Ref, n_3_1: Ref ::
          { neverTriggered28(n_3), neverTriggered28(n_3_1) }
          (((n_3 != n_3_1 && nodes_1[n_3]) && nodes_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@81.2--81.20) [119218]"}
          (forall n_3: Ref ::
          { Heap[n_3, left] } { QPMask[n_3, left] } { nodes_1[n_3] }
          nodes_1[n_3] ==> Mask[n_3, left] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_3: Ref ::
          { Heap[n_3, left] } { QPMask[n_3, left] } { nodes_1[n_3] }
          nodes_1[n_3] && NoPerm < FullPerm ==> qpRange28(n_3) && invRecv28(n_3) == n_3
        );
        assume (forall o_4: Ref ::
          { invRecv28(o_4) }
          nodes_1[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
        );
      
      // -- assume permission updates for field left
        assume (forall o_4: Ref ::
          { QPMask[o_4, left] }
          (nodes_1[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4 && QPMask[o_4, left] == Mask[o_4, left] - FullPerm) && (!(nodes_1[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4))) ==> QPMask[o_4, left] == Mask[o_4, left])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$0 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@81.2--81.20) [119219]"}
          (forall n$0_13: Ref, n$0_42: Ref ::
          { neverTriggered29(n$0_13), neverTriggered29(n$0_42) }
          (((n$0_13 != n$0_42 && nodes_1[n$0_13]) && nodes_1[n$0_42]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_13 != n$0_42
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@81.2--81.20) [119220]"}
          (forall n$0_13: Ref ::
          { Heap[n$0_13, right_1] } { QPMask[n$0_13, right_1] } { nodes_1[n$0_13] }
          nodes_1[n$0_13] ==> Mask[n$0_13, right_1] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$0
        assume (forall n$0_13: Ref ::
          { Heap[n$0_13, right_1] } { QPMask[n$0_13, right_1] } { nodes_1[n$0_13] }
          nodes_1[n$0_13] && NoPerm < FullPerm ==> qpRange29(n$0_13) && invRecv29(n$0_13) == n$0_13
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          nodes_1[invRecv29(o_4)] && (NoPerm < FullPerm && qpRange29(o_4)) ==> invRecv29(o_4) == o_4
        );
      
      // -- assume permission updates for field right
        assume (forall o_4: Ref ::
          { QPMask[o_4, right_1] }
          (nodes_1[invRecv29(o_4)] && (NoPerm < FullPerm && qpRange29(o_4)) ==> invRecv29(o_4) == o_4 && QPMask[o_4, right_1] == Mask[o_4, right_1] - FullPerm) && (!(nodes_1[invRecv29(o_4)] && (NoPerm < FullPerm && qpRange29(o_4))) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$1 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@81.2--81.20) [119221]"}
          (forall n$1_12: Ref, n$1_24: Ref ::
          { neverTriggered30(n$1_12), neverTriggered30(n$1_24) }
          (((n$1_12 != n$1_24 && nodes_1[n$1_12]) && nodes_1[n$1_24]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_12 != n$1_24
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@81.2--81.20) [119222]"}
          (forall n$1_12: Ref ::
          { Heap[n$1_12, is_marked] } { QPMask[n$1_12, is_marked] } { nodes_1[n$1_12] }
          nodes_1[n$1_12] ==> Mask[n$1_12, is_marked] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$1
        assume (forall n$1_12: Ref ::
          { Heap[n$1_12, is_marked] } { QPMask[n$1_12, is_marked] } { nodes_1[n$1_12] }
          nodes_1[n$1_12] && NoPerm < FullPerm ==> qpRange30(n$1_12) && invRecv30(n$1_12) == n$1_12
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          nodes_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
        );
      
      // -- assume permission updates for field is_marked
        assume (forall o_4: Ref ::
          { QPMask[o_4, is_marked] }
          (nodes_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4)) ==> invRecv30(o_4) == o_4 && QPMask[o_4, is_marked] == Mask[o_4, is_marked] - FullPerm) && (!(nodes_1[invRecv30(o_4)] && (NoPerm < FullPerm && qpRange30(o_4))) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (nodes_1[n$2] && Heap[n$2, left] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [119223]"}
            nodes_1[Heap[n$2, left]];
        }
        assume false;
      }
      assume (forall n$2_1_1_1: Ref ::
        { nodes_1[Heap[n$2_1_1_1, left]] } { nodes_1[n$2_1_1_1], Heap[n$2_1_1_1, left] }
        nodes_1[n$2_1_1_1] && Heap[n$2_1_1_1, left] != null ==> nodes_1[Heap[n$2_1_1_1, left]]
      );
      if (*) {
        if (nodes_1[n$3] && Heap[n$3, right_1] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [119224]"}
            nodes_1[Heap[n$3, right_1]];
        }
        assume false;
      }
      assume (forall n$3_1_1: Ref ::
        { nodes_1[Heap[n$3_1_1, right_1]] } { nodes_1[n$3_1_1], Heap[n$3_1_1, right_1] }
        nodes_1[n$3_1_1] && Heap[n$3_1_1, right_1] != null ==> nodes_1[Heap[n$3_1_1, right_1]]
      );
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !a.is_marked might not hold. (graph-marking.vpr@81.2--81.20) [119225]"}
        !Heap[a_2, is_marked];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume nodes_1[a_2];
      assume !nodes_1[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@81.2--81.20) [119226]"}
        (forall n$4: Ref, n$4_16: Ref ::
        
        (((n$4 != n$4_16 && nodes_1[n$4]) && nodes_1[n$4_16]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4 != n$4_16
      );
      
      // -- Define Inverse Function
        assume (forall n$4: Ref ::
          { Heap[n$4, left] } { QPMask[n$4, left] } { nodes_1[n$4] }
          nodes_1[n$4] && NoPerm < FullPerm ==> qpRange31(n$4) && invRecv31(n$4) == n$4
        );
        assume (forall o_4: Ref ::
          { invRecv31(o_4) }
          (nodes_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$4: Ref ::
          { Heap[n$4, left] } { QPMask[n$4, left] } { nodes_1[n$4] }
          nodes_1[n$4] ==> n$4 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, left] }
          ((nodes_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, left] == Mask[o_4, left] + FullPerm) && (!((nodes_1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, left] == Mask[o_4, left])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != left ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@81.2--81.20) [119227]"}
        (forall n$5_8: Ref, n$5_9: Ref ::
        
        (((n$5_8 != n$5_9 && nodes_1[n$5_8]) && nodes_1[n$5_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_8 != n$5_9
      );
      
      // -- Define Inverse Function
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes_1[n$5_8] }
          nodes_1[n$5_8] && NoPerm < FullPerm ==> qpRange32(n$5_8) && invRecv32(n$5_8) == n$5_8
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          (nodes_1[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes_1[n$5_8] }
          nodes_1[n$5_8] ==> n$5_8 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, right_1] }
          ((nodes_1[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, right_1] == Mask[o_4, right_1] + FullPerm) && (!((nodes_1[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, right_1] == Mask[o_4, right_1])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != right_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@81.2--81.20) [119228]"}
        (forall n$6_11: Ref, n$6_12: Ref ::
        
        (((n$6_11 != n$6_12 && nodes_1[n$6_11]) && nodes_1[n$6_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_11 != n$6_12
      );
      
      // -- Define Inverse Function
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes_1[n$6_11] }
          nodes_1[n$6_11] && NoPerm < FullPerm ==> qpRange33(n$6_11) && invRecv33(n$6_11) == n$6_11
        );
        assume (forall o_4: Ref ::
          { invRecv33(o_4) }
          (nodes_1[invRecv33(o_4)] && NoPerm < FullPerm) && qpRange33(o_4) ==> invRecv33(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes_1[n$6_11] }
          nodes_1[n$6_11] ==> n$6_11 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, is_marked] }
          ((nodes_1[invRecv33(o_4)] && NoPerm < FullPerm) && qpRange33(o_4) ==> (NoPerm < FullPerm ==> invRecv33(o_4) == o_4) && QPMask[o_4, is_marked] == Mask[o_4, is_marked] + FullPerm) && (!((nodes_1[invRecv33(o_4)] && NoPerm < FullPerm) && qpRange33(o_4)) ==> QPMask[o_4, is_marked] == Mask[o_4, is_marked])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != is_marked ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$7_4: Ref ::
        { nodes_1[Heap[n$7_4, left]] } { nodes_1[n$7_4], Heap[n$7_4, left] }
        nodes_1[n$7_4] && Heap[n$7_4, left] != null ==> nodes_1[Heap[n$7_4, left]]
      );
      assume (forall n$8: Ref ::
        { nodes_1[Heap[n$8, right_1]] } { nodes_1[n$8], Heap[n$8, right_1] }
        nodes_1[n$8] && Heap[n$8, right_1] != null ==> nodes_1[Heap[n$8, right_1]]
      );
      assume (forall n_4_1: Ref ::
        { nodes_1[n_4_1], Heap[n_4_1, is_marked] }
        nodes_1[n_4_1] ==> PreCallHeap[n_4_1, is_marked] ==> Heap[n_4_1, is_marked]
      );
      assume Heap[a_2, is_marked];
      assume (forall n_5: Ref ::
        { nodes_1[n_5], Heap[n_5, left] }
        nodes_1[n_5] ==> Heap[n_5, left] == PreCallHeap[n_5, left]
      );
      assume (forall n_6: Ref ::
        { nodes_1[n_6], Heap[n_6, right_1] }
        nodes_1[n_6] ==> Heap[n_6, right_1] == PreCallHeap[n_6, right_1]
      );
      assume (forall n_7: Ref ::
        { nodes_1[n_7], Heap[n_7, is_marked] } { nodes_1[n_7], Heap[Heap[n_7, left], is_marked] }
        nodes_1[n_7] ==> !PreCallHeap[n_7, is_marked] && Heap[n_7, is_marked] ==> Heap[n_7, left] == null || Heap[Heap[n_7, left], is_marked]
      );
      assume (forall n_8: Ref ::
        { nodes_1[n_8], Heap[n_8, is_marked] } { nodes_1[n_8], Heap[Heap[n_8, right_1], is_marked] }
        nodes_1[n_8] ==> !PreCallHeap[n_8, is_marked] && Heap[n_8, is_marked] ==> Heap[n_8, right_1] == null || Heap[Heap[n_8, right_1], is_marked]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked) -- graph-marking.vpr@85.2--85.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked)
      if (*) {
        if (nodes_1[n_83]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@85.9--85.52) [119229]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_83, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes_1[n_10_1]) {
        assert {:msg "  Assert might fail. Assertion n.is_marked might not hold. (graph-marking.vpr@85.9--85.52) [119230]"}
          Heap[n_10_1, is_marked];
      }
      assume false;
    }
    assume (forall n_11_1_1: Ref ::
      { nodes_1[n_11_1_1] }
      nodes_1[n_11_1_1] ==> Heap[n_11_1_1, is_marked]
    );
    assume state(Heap, Mask);
}