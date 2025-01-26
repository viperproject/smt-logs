// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:55
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
axiom (forall o_48: Ref, f_66: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_48, f_66] }
  Heap[o_48, $allocated] ==> Heap[Heap[o_48, f_66], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_49: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_49, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_49, f_30) ==> Heap[o_49, f_30] == ExhaleHeap[o_49, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51), ExhaleHeap[null, PredicateMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> Heap[null, PredicateMaskField(pm_f_51)] == ExhaleHeap[null, PredicateMaskField(pm_f_51)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> (forall <A, B> o2_52: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_52, f_30] }
    Heap[null, PredicateMaskField(pm_f_51)][o2_52, f_30] ==> Heap[o2_52, f_30] == ExhaleHeap[o2_52, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51), ExhaleHeap[null, WandMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> Heap[null, WandMaskField(pm_f_51)] == ExhaleHeap[null, WandMaskField(pm_f_51)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> (forall <A, B> o2_52: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_52, f_30] }
    Heap[null, WandMaskField(pm_f_51)][o2_52, f_30] ==> Heap[o2_52, f_30] == ExhaleHeap[o2_52, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_49: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_49, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_49, $allocated] ==> ExhaleHeap[o_49, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_48: Ref, f_62: (Field A B), v: B ::
  { Heap[o_48, f_62:=v] }
  succHeap(Heap, Heap[o_48, f_62:=v])
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
function  neverTriggered4(n$4_1: Ref): bool;
function  neverTriggered5(n$5_1: Ref): bool;
function  neverTriggered6(n$6_1: Ref): bool;
function  neverTriggered7(n$4_2: Ref): bool;
function  neverTriggered8(n$5_2: Ref): bool;
function  neverTriggered9(n$6_2: Ref): bool;
function  neverTriggered10(n_22: Ref): bool;
function  neverTriggered11(n$0_2: Ref): bool;
function  neverTriggered12(n$1_2: Ref): bool;
function  neverTriggered13(n$4_3_2: Ref): bool;
function  neverTriggered14(n$5_3_2: Ref): bool;
function  neverTriggered15(n$6_3_2: Ref): bool;
function  neverTriggered16(n_28: Ref): bool;
function  neverTriggered17(n$0_3: Ref): bool;
function  neverTriggered18(n$1_3: Ref): bool;
function  neverTriggered19(n$4_4_1: Ref): bool;
function  neverTriggered20(n$5_4_1: Ref): bool;
function  neverTriggered21(n$6_4_1: Ref): bool;
function  neverTriggered22(n_3: Ref): bool;
function  neverTriggered23(n$0_14: Ref): bool;
function  neverTriggered24(n$1: Ref): bool;
function  neverTriggered25(n$4_10: Ref): bool;
function  neverTriggered26(n$5_8: Ref): bool;
function  neverTriggered27(n$6_11: Ref): bool;
function  neverTriggered28(n_3: Ref): bool;
function  neverTriggered29(n$0_14: Ref): bool;
function  neverTriggered30(n$1: Ref): bool;
function  neverTriggered31(n$4_10: Ref): bool;
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

const unique left_2: Field NormalField Ref;
axiom !IsPredicateField(left_2);
axiom !IsWandField(left_2);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);
const unique is_marked: Field NormalField bool;
axiom !IsPredicateField(is_marked);
axiom !IsWandField(is_marked);

// ==================================================
// Translation of method trav_rec
// ==================================================

procedure trav_rec(nodes: (Set Ref), node: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$2_33: Ref;
  var n$3_9: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$7_6: Ref;
  var n$8_6: Ref;
  var n_90: Ref;
  var n_91: Ref;
  var n_32: Ref;
  var n_92: Ref;
  var n_93: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_node: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var n$2_2: Ref;
  var n$3_2: Ref;
  var ExhaleHeap: HeapType;
  var arg_node_1: Ref;
  var n$2_4_1: Ref;
  var n$3_4_1: Ref;
  var n$7_2: Ref;
  var n$8_2_1: Ref;
  var n_12: Ref;
  var n_14_1: Ref;
  var n_16_1: Ref;
  var n_18: Ref;
  var n_20: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[node, $allocated];
  
  // -- Checked inhaling of precondition
    assume nodes[node];
    assume !nodes[null];
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> acc(n.left, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.left might not be injective. (graph-marking.vpr@23.11--23.38) [112653]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && nodes[n_1]) && nodes[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, left_2] } { QPMask[n_1, left_2] } { nodes[n_1] }
        nodes[n_1] && NoPerm < FullPerm ==> qpRange1(n_1) && invRecv1(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (nodes[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, left_2] } { QPMask[n_1, left_2] } { nodes[n_1] }
        nodes[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        ((nodes[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + FullPerm) && (!((nodes[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0 in nodes) } (n$0 in nodes) ==> acc(n$0.right, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.right might not be injective. (graph-marking.vpr@23.11--23.38) [112654]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && nodes[n$0_1]) && nodes[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, right_1] } { QPMask[n$0_1, right_1] } { nodes[n$0_1] }
        nodes[n$0_1] && NoPerm < FullPerm ==> qpRange2(n$0_1) && invRecv2(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (nodes[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, right_1] } { QPMask[n$0_1, right_1] } { nodes[n$0_1] }
        nodes[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, right_1] }
        ((nodes[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, right_1] == Mask[o_9, right_1] + FullPerm) && (!((nodes[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1 in nodes) } (n$1 in nodes) ==> acc(n$1.is_marked, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@23.11--23.38) [112655]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && nodes[n$1_1]) && nodes[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, is_marked] } { QPMask[n$1_1, is_marked] } { nodes[n$1_1] }
        nodes[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (nodes[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, is_marked] } { QPMask[n$1_1, is_marked] } { nodes[n$1_1] }
        nodes[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, is_marked] }
        ((nodes[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, is_marked] == Mask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.left in nodes) } { (n$2 in nodes), n$2.left } (n$2 in nodes) && n$2.left != null ==> (n$2.left in nodes))
      if (*) {
        if (nodes[n$2_33]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.left (graph-marking.vpr@23.11--23.38) [112656]"}
            HasDirectPerm(Mask, n$2_33, left_2);
        }
        if (nodes[n$2_33] && Heap[n$2_33, left_2] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.left (graph-marking.vpr@23.11--23.38) [112657]"}
            HasDirectPerm(Mask, n$2_33, left_2);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { nodes[Heap[n$2_1, left_2]] } { nodes[n$2_1], Heap[n$2_1, left_2] }
      nodes[n$2_1] && Heap[n$2_1, left_2] != null ==> nodes[Heap[n$2_1, left_2]]
    );
    
    // -- Check definedness of (forall n$3: Ref :: { (n$3.right in nodes) } { (n$3 in nodes), n$3.right } (n$3 in nodes) && n$3.right != null ==> (n$3.right in nodes))
      if (*) {
        if (nodes[n$3_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.right (graph-marking.vpr@23.11--23.38) [112658]"}
            HasDirectPerm(Mask, n$3_9, right_1);
        }
        if (nodes[n$3_9] && Heap[n$3_9, right_1] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.right (graph-marking.vpr@23.11--23.38) [112659]"}
            HasDirectPerm(Mask, n$3_9, right_1);
        }
        assume false;
      }
    assume (forall n$3_1: Ref ::
      { nodes[Heap[n$3_1, right_1]] } { nodes[n$3_1], Heap[n$3_1, right_1] }
      nodes[n$3_1] && Heap[n$3_1, right_1] != null ==> nodes[Heap[n$3_1, right_1]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of !node.is_marked
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.is_marked (graph-marking.vpr@24.11--24.26) [112660]"}
        HasDirectPerm(Mask, node, is_marked);
    assume !Heap[node, is_marked];
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
    assume nodes[node];
    assume !nodes[null];
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4 in nodes) } (n$4 in nodes) ==> acc(n$4.left, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.left might not be injective. (graph-marking.vpr@26.10--26.37) [112661]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && nodes[n$4_1]) && nodes[n$4_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, left_2] } { QPMask[n$4_1, left_2] } { nodes[n$4_1] }
        nodes[n$4_1] && NoPerm < FullPerm ==> qpRange4(n$4_1) && invRecv4(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (nodes[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, left_2] } { QPMask[n$4_1, left_2] } { nodes[n$4_1] }
        nodes[n$4_1] ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        ((nodes[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, left_2] == PostMask[o_9, left_2] + FullPerm) && (!((nodes[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, left_2] == PostMask[o_9, left_2])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != left_2 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5 in nodes) } (n$5 in nodes) ==> acc(n$5.right, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.right might not be injective. (graph-marking.vpr@26.10--26.37) [112662]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && nodes[n$5_1]) && nodes[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, right_1] } { QPMask[n$5_1, right_1] } { nodes[n$5_1] }
        nodes[n$5_1] && NoPerm < FullPerm ==> qpRange5(n$5_1) && invRecv5(n$5_1) == n$5_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (nodes[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, right_1] } { QPMask[n$5_1, right_1] } { nodes[n$5_1] }
        nodes[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, right_1] }
        ((nodes[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, right_1] == PostMask[o_9, right_1] + FullPerm) && (!((nodes[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, right_1] == PostMask[o_9, right_1])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != right_1 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6 in nodes) } (n$6 in nodes) ==> acc(n$6.is_marked, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@26.10--26.37) [112663]"}
      (forall n$6_1: Ref, n$6_1_1: Ref ::
      
      (((n$6_1 != n$6_1_1 && nodes[n$6_1]) && nodes[n$6_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_1 != n$6_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, is_marked] } { QPMask[n$6_1, is_marked] } { nodes[n$6_1] }
        nodes[n$6_1] && NoPerm < FullPerm ==> qpRange6(n$6_1) && invRecv6(n$6_1) == n$6_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (nodes[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$6_1: Ref ::
        { PostHeap[n$6_1, is_marked] } { QPMask[n$6_1, is_marked] } { nodes[n$6_1] }
        nodes[n$6_1] ==> n$6_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, is_marked] }
        ((nodes[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, is_marked] == PostMask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, is_marked] == PostMask[o_9, is_marked])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != is_marked ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$7: Ref :: { (n$7.left in nodes) } { (n$7 in nodes), n$7.left } (n$7 in nodes) && n$7.left != null ==> (n$7.left in nodes))
      if (*) {
        if (nodes[n$7_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$7.left (graph-marking.vpr@26.10--26.37) [112664]"}
            HasDirectPerm(PostMask, n$7_6, left_2);
        }
        if (nodes[n$7_6] && PostHeap[n$7_6, left_2] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$7.left (graph-marking.vpr@26.10--26.37) [112665]"}
            HasDirectPerm(PostMask, n$7_6, left_2);
        }
        assume false;
      }
    assume (forall n$7_1: Ref ::
      { nodes[PostHeap[n$7_1, left_2]] } { nodes[n$7_1], PostHeap[n$7_1, left_2] }
      nodes[n$7_1] && PostHeap[n$7_1, left_2] != null ==> nodes[PostHeap[n$7_1, left_2]]
    );
    
    // -- Check definedness of (forall n$8: Ref :: { (n$8.right in nodes) } { (n$8 in nodes), n$8.right } (n$8 in nodes) && n$8.right != null ==> (n$8.right in nodes))
      if (*) {
        if (nodes[n$8_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$8.right (graph-marking.vpr@26.10--26.37) [112666]"}
            HasDirectPerm(PostMask, n$8_6, right_1);
        }
        if (nodes[n$8_6] && PostHeap[n$8_6, right_1] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$8.right (graph-marking.vpr@26.10--26.37) [112667]"}
            HasDirectPerm(PostMask, n$8_6, right_1);
        }
        assume false;
      }
    assume (forall n$8_1: Ref ::
      { nodes[PostHeap[n$8_1, right_1]] } { nodes[n$8_1], PostHeap[n$8_1, right_1] }
      nodes[n$8_1] && PostHeap[n$8_1, right_1] != null ==> nodes[PostHeap[n$8_1, right_1]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } (n in nodes) ==> old(n.is_marked) ==> n.is_marked)
      if (*) {
        if (nodes[n_90]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@30.10--30.102) [112668]"}
            HasDirectPerm(oldMask, n_90, is_marked);
          if (oldHeap[n_90, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@30.10--30.102) [112669]"}
              HasDirectPerm(PostMask, n_90, is_marked);
          }
        }
        assume false;
      }
    assume (forall n_3: Ref ::
      { nodes[n_3], PostHeap[n_3, is_marked] }
      nodes[n_3] ==> oldHeap[n_3, is_marked] ==> PostHeap[n_3, is_marked]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of node.is_marked
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.is_marked (graph-marking.vpr@31.10--31.24) [112670]"}
        HasDirectPerm(PostMask, node, is_marked);
    assume PostHeap[node, is_marked];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.left } (n in nodes) ==> n.left == old(n.left))
      if (*) {
        if (nodes[n_91]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@34.10--34.86) [112671]"}
            HasDirectPerm(PostMask, n_91, left_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@34.10--34.86) [112672]"}
            HasDirectPerm(oldMask, n_91, left_2);
        }
        assume false;
      }
    assume (forall n_5: Ref ::
      { nodes[n_5], PostHeap[n_5, left_2] }
      nodes[n_5] ==> PostHeap[n_5, left_2] == oldHeap[n_5, left_2]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.right } (n in nodes) ==> n.right == old(n.right))
      if (*) {
        if (nodes[n_32]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@35.10--35.89) [112673]"}
            HasDirectPerm(PostMask, n_32, right_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@35.10--35.89) [112674]"}
            HasDirectPerm(oldMask, n_32, right_1);
        }
        assume false;
      }
    assume (forall n_7: Ref ::
      { nodes[n_7], PostHeap[n_7, right_1] }
      nodes[n_7] ==> PostHeap[n_7, right_1] == oldHeap[n_7, right_1]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } { (n in nodes), n.left.is_marked } (n in nodes) ==> old(!n.is_marked) && n.is_marked ==> n.left == null || n.left.is_marked)
      if (*) {
        if (nodes[n_92]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@38.10--39.103) [112675]"}
            HasDirectPerm(oldMask, n_92, is_marked);
          if (!oldHeap[n_92, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@38.10--39.103) [112676]"}
              HasDirectPerm(PostMask, n_92, is_marked);
          }
          if (!oldHeap[n_92, is_marked] && PostHeap[n_92, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@38.10--39.103) [112677]"}
              HasDirectPerm(PostMask, n_92, left_2);
            if (!(PostHeap[n_92, left_2] == null)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left (graph-marking.vpr@38.10--39.103) [112678]"}
                HasDirectPerm(PostMask, n_92, left_2);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.left.is_marked (graph-marking.vpr@38.10--39.103) [112679]"}
                HasDirectPerm(PostMask, PostHeap[n_92, left_2], is_marked);
            }
          }
        }
        assume false;
      }
    assume (forall n_9: Ref ::
      { nodes[n_9], PostHeap[n_9, is_marked] } { nodes[n_9], PostHeap[PostHeap[n_9, left_2], is_marked] }
      nodes[n_9] ==> !oldHeap[n_9, is_marked] && PostHeap[n_9, is_marked] ==> PostHeap[n_9, left_2] == null || PostHeap[PostHeap[n_9, left_2], is_marked]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes), n.is_marked } { (n in nodes), n.right.is_marked } (n in nodes) ==> old(!n.is_marked) && n.is_marked ==> n.right == null || n.right.is_marked)
      if (*) {
        if (nodes[n_93]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@40.10--41.104) [112680]"}
            HasDirectPerm(oldMask, n_93, is_marked);
          if (!oldHeap[n_93, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.is_marked (graph-marking.vpr@40.10--41.104) [112681]"}
              HasDirectPerm(PostMask, n_93, is_marked);
          }
          if (!oldHeap[n_93, is_marked] && PostHeap[n_93, is_marked]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@40.10--41.104) [112682]"}
              HasDirectPerm(PostMask, n_93, right_1);
            if (!(PostHeap[n_93, right_1] == null)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right (graph-marking.vpr@40.10--41.104) [112683]"}
                HasDirectPerm(PostMask, n_93, right_1);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.right.is_marked (graph-marking.vpr@40.10--41.104) [112684]"}
                HasDirectPerm(PostMask, PostHeap[n_93, right_1], is_marked);
            }
          }
        }
        assume false;
      }
    assume (forall n_11_2: Ref ::
      { nodes[n_11_2], PostHeap[n_11_2, is_marked] } { nodes[n_11_2], PostHeap[PostHeap[n_11_2, right_1], is_marked] }
      nodes[n_11_2] ==> !oldHeap[n_11_2, is_marked] && PostHeap[n_11_2, is_marked] ==> PostHeap[n_11_2, right_1] == null || PostHeap[PostHeap[n_11_2, right_1], is_marked]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: node.is_marked := true -- graph-marking.vpr@43.2--43.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access node.is_marked (graph-marking.vpr@43.2--43.24) [112685]"}
      FullPerm == Mask[node, is_marked];
    Heap := Heap[node, is_marked:=true];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.left != null && !node.left.is_marked) -- graph-marking.vpr@45.2--47.3
    
    // -- Check definedness of node.left != null && !node.left.is_marked
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left (graph-marking.vpr@45.6--45.47) [112686]"}
        HasDirectPerm(Mask, node, left_2);
      if (Heap[node, left_2] != null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left (graph-marking.vpr@45.6--45.47) [112687]"}
          HasDirectPerm(Mask, node, left_2);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.left.is_marked (graph-marking.vpr@45.6--45.47) [112688]"}
          HasDirectPerm(Mask, Heap[node, left_2], is_marked);
      }
    if (Heap[node, left_2] != null && !Heap[Heap[node, left_2], is_marked]) {
      
      // -- Translating statement: trav_rec(nodes, node.left) -- graph-marking.vpr@46.3--46.29
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of node.left
          assert {:msg "  Method call might fail. There might be insufficient permission to access node.left (graph-marking.vpr@46.3--46.29) [112689]"}
            HasDirectPerm(Mask, node, left_2);
        arg_node := Heap[node, left_2];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (node.left in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [112690]"}
            nodes[arg_node];
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@46.3--46.29) [112691]"}
            !nodes[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@46.3--46.29) [112692]"}
              (forall n_22: Ref, n_22_1: Ref ::
              { neverTriggered10(n_22), neverTriggered10(n_22_1) }
              (((n_22 != n_22_1 && nodes[n_22]) && nodes[n_22_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_22 != n_22_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@46.3--46.29) [112693]"}
              (forall n_22: Ref ::
              { Heap[n_22, left_2] } { QPMask[n_22, left_2] } { nodes[n_22] }
              nodes[n_22] ==> Mask[n_22, left_2] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_22: Ref ::
              { Heap[n_22, left_2] } { QPMask[n_22, left_2] } { nodes[n_22] }
              nodes[n_22] && NoPerm < FullPerm ==> qpRange10(n_22) && invRecv10(n_22) == n_22
            );
            assume (forall o_9: Ref ::
              { invRecv10(o_9) }
              nodes[invRecv10(o_9)] && (NoPerm < FullPerm && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
            );
          
          // -- assume permission updates for field left
            assume (forall o_9: Ref ::
              { QPMask[o_9, left_2] }
              (nodes[invRecv10(o_9)] && (NoPerm < FullPerm && qpRange10(o_9)) ==> invRecv10(o_9) == o_9 && QPMask[o_9, left_2] == Mask[o_9, left_2] - FullPerm) && (!(nodes[invRecv10(o_9)] && (NoPerm < FullPerm && qpRange10(o_9))) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@46.3--46.29) [112694]"}
              (forall n$0_2: Ref, n$0_2_1: Ref ::
              { neverTriggered11(n$0_2), neverTriggered11(n$0_2_1) }
              (((n$0_2 != n$0_2_1 && nodes[n$0_2]) && nodes[n$0_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2 != n$0_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@46.3--46.29) [112695]"}
              (forall n$0_2: Ref ::
              { Heap[n$0_2, right_1] } { QPMask[n$0_2, right_1] } { nodes[n$0_2] }
              nodes[n$0_2] ==> Mask[n$0_2, right_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_2: Ref ::
              { Heap[n$0_2, right_1] } { QPMask[n$0_2, right_1] } { nodes[n$0_2] }
              nodes[n$0_2] && NoPerm < FullPerm ==> qpRange11(n$0_2) && invRecv11(n$0_2) == n$0_2
            );
            assume (forall o_9: Ref ::
              { invRecv11(o_9) }
              nodes[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
            );
          
          // -- assume permission updates for field right
            assume (forall o_9: Ref ::
              { QPMask[o_9, right_1] }
              (nodes[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9 && QPMask[o_9, right_1] == Mask[o_9, right_1] - FullPerm) && (!(nodes[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$1 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@46.3--46.29) [112696]"}
              (forall n$1_2: Ref, n$1_2_1: Ref ::
              { neverTriggered12(n$1_2), neverTriggered12(n$1_2_1) }
              (((n$1_2 != n$1_2_1 && nodes[n$1_2]) && nodes[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@46.3--46.29) [112697]"}
              (forall n$1_2: Ref ::
              { Heap[n$1_2, is_marked] } { QPMask[n$1_2, is_marked] } { nodes[n$1_2] }
              nodes[n$1_2] ==> Mask[n$1_2, is_marked] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$1
            assume (forall n$1_2: Ref ::
              { Heap[n$1_2, is_marked] } { QPMask[n$1_2, is_marked] } { nodes[n$1_2] }
              nodes[n$1_2] && NoPerm < FullPerm ==> qpRange12(n$1_2) && invRecv12(n$1_2) == n$1_2
            );
            assume (forall o_9: Ref ::
              { invRecv12(o_9) }
              nodes[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
            );
          
          // -- assume permission updates for field is_marked
            assume (forall o_9: Ref ::
              { QPMask[o_9, is_marked] }
              (nodes[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9 && QPMask[o_9, is_marked] == Mask[o_9, is_marked] - FullPerm) && (!(nodes[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (nodes[n$2_2] && Heap[n$2_2, left_2] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [112698]"}
                nodes[Heap[n$2_2, left_2]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { nodes[Heap[n$2_3_1, left_2]] } { nodes[n$2_3_1], Heap[n$2_3_1, left_2] }
            nodes[n$2_3_1] && Heap[n$2_3_1, left_2] != null ==> nodes[Heap[n$2_3_1, left_2]]
          );
          if (*) {
            if (nodes[n$3_2] && Heap[n$3_2, right_1] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@46.3--46.29) [112699]"}
                nodes[Heap[n$3_2, right_1]];
            }
            assume false;
          }
          assume (forall n$3_3_1_1: Ref ::
            { nodes[Heap[n$3_3_1_1, right_1]] } { nodes[n$3_3_1_1], Heap[n$3_3_1_1, right_1] }
            nodes[n$3_3_1_1] && Heap[n$3_3_1_1, right_1] != null ==> nodes[Heap[n$3_3_1_1, right_1]]
          );
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !node.left.is_marked might not hold. (graph-marking.vpr@46.3--46.29) [112700]"}
            !Heap[arg_node, is_marked];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume nodes[arg_node];
          assume !nodes[null];
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@46.3--46.29) [112701]"}
            (forall n$4_3_2: Ref, n$4_3_3: Ref ::
            
            (((n$4_3_2 != n$4_3_3 && nodes[n$4_3_2]) && nodes[n$4_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_3_2 != n$4_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, left_2] } { QPMask[n$4_3_2, left_2] } { nodes[n$4_3_2] }
              nodes[n$4_3_2] && NoPerm < FullPerm ==> qpRange13(n$4_3_2) && invRecv13(n$4_3_2) == n$4_3_2
            );
            assume (forall o_9: Ref ::
              { invRecv13(o_9) }
              (nodes[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, left_2] } { QPMask[n$4_3_2, left_2] } { nodes[n$4_3_2] }
              nodes[n$4_3_2] ==> n$4_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, left_2] }
              ((nodes[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + FullPerm) && (!((nodes[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@46.3--46.29) [112702]"}
            (forall n$5_3_2: Ref, n$5_3_3: Ref ::
            
            (((n$5_3_2 != n$5_3_3 && nodes[n$5_3_2]) && nodes[n$5_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_3_2 != n$5_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$5_3_2: Ref ::
              { Heap[n$5_3_2, right_1] } { QPMask[n$5_3_2, right_1] } { nodes[n$5_3_2] }
              nodes[n$5_3_2] && NoPerm < FullPerm ==> qpRange14(n$5_3_2) && invRecv14(n$5_3_2) == n$5_3_2
            );
            assume (forall o_9: Ref ::
              { invRecv14(o_9) }
              (nodes[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$5_3_2: Ref ::
              { Heap[n$5_3_2, right_1] } { QPMask[n$5_3_2, right_1] } { nodes[n$5_3_2] }
              nodes[n$5_3_2] ==> n$5_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, right_1] }
              ((nodes[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> invRecv14(o_9) == o_9) && QPMask[o_9, right_1] == Mask[o_9, right_1] + FullPerm) && (!((nodes[invRecv14(o_9)] && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@46.3--46.29) [112703]"}
            (forall n$6_3_2: Ref, n$6_3_3: Ref ::
            
            (((n$6_3_2 != n$6_3_3 && nodes[n$6_3_2]) && nodes[n$6_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_3_2 != n$6_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$6_3_2: Ref ::
              { Heap[n$6_3_2, is_marked] } { QPMask[n$6_3_2, is_marked] } { nodes[n$6_3_2] }
              nodes[n$6_3_2] && NoPerm < FullPerm ==> qpRange15(n$6_3_2) && invRecv15(n$6_3_2) == n$6_3_2
            );
            assume (forall o_9: Ref ::
              { invRecv15(o_9) }
              (nodes[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$6_3_2: Ref ::
              { Heap[n$6_3_2, is_marked] } { QPMask[n$6_3_2, is_marked] } { nodes[n$6_3_2] }
              nodes[n$6_3_2] ==> n$6_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, is_marked] }
              ((nodes[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> invRecv15(o_9) == o_9) && QPMask[o_9, is_marked] == Mask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$7_4_1: Ref ::
            { nodes[Heap[n$7_4_1, left_2]] } { nodes[n$7_4_1], Heap[n$7_4_1, left_2] }
            nodes[n$7_4_1] && Heap[n$7_4_1, left_2] != null ==> nodes[Heap[n$7_4_1, left_2]]
          );
          assume (forall n$8_4: Ref ::
            { nodes[Heap[n$8_4, right_1]] } { nodes[n$8_4], Heap[n$8_4, right_1] }
            nodes[n$8_4] && Heap[n$8_4, right_1] != null ==> nodes[Heap[n$8_4, right_1]]
          );
          assume (forall n_23: Ref ::
            { nodes[n_23], Heap[n_23, is_marked] }
            nodes[n_23] ==> PreCallHeap[n_23, is_marked] ==> Heap[n_23, is_marked]
          );
          assume Heap[arg_node, is_marked];
          assume (forall n_24: Ref ::
            { nodes[n_24], Heap[n_24, left_2] }
            nodes[n_24] ==> Heap[n_24, left_2] == PreCallHeap[n_24, left_2]
          );
          assume (forall n_25: Ref ::
            { nodes[n_25], Heap[n_25, right_1] }
            nodes[n_25] ==> Heap[n_25, right_1] == PreCallHeap[n_25, right_1]
          );
          assume (forall n_26: Ref ::
            { nodes[n_26], Heap[n_26, is_marked] } { nodes[n_26], Heap[Heap[n_26, left_2], is_marked] }
            nodes[n_26] ==> !PreCallHeap[n_26, is_marked] && Heap[n_26, is_marked] ==> Heap[n_26, left_2] == null || Heap[Heap[n_26, left_2], is_marked]
          );
          assume (forall n_27: Ref ::
            { nodes[n_27], Heap[n_27, is_marked] } { nodes[n_27], Heap[Heap[n_27, right_1], is_marked] }
            nodes[n_27] ==> !PreCallHeap[n_27, is_marked] && Heap[n_27, is_marked] ==> Heap[n_27, right_1] == null || Heap[Heap[n_27, right_1], is_marked]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.right != null && !node.right.is_marked) -- graph-marking.vpr@49.2--51.3
    
    // -- Check definedness of node.right != null && !node.right.is_marked
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right (graph-marking.vpr@49.6--49.49) [112704]"}
        HasDirectPerm(Mask, node, right_1);
      if (Heap[node, right_1] != null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right (graph-marking.vpr@49.6--49.49) [112705]"}
          HasDirectPerm(Mask, node, right_1);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.right.is_marked (graph-marking.vpr@49.6--49.49) [112706]"}
          HasDirectPerm(Mask, Heap[node, right_1], is_marked);
      }
    if (Heap[node, right_1] != null && !Heap[Heap[node, right_1], is_marked]) {
      
      // -- Translating statement: trav_rec(nodes, node.right) -- graph-marking.vpr@50.3--50.30
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of node.right
          assert {:msg "  Method call might fail. There might be insufficient permission to access node.right (graph-marking.vpr@50.3--50.30) [112707]"}
            HasDirectPerm(Mask, node, right_1);
        arg_node_1 := Heap[node, right_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (node.right in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [112708]"}
            nodes[arg_node_1];
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@50.3--50.30) [112709]"}
            !nodes[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@50.3--50.30) [112710]"}
              (forall n_28: Ref, n_28_1: Ref ::
              { neverTriggered16(n_28), neverTriggered16(n_28_1) }
              (((n_28 != n_28_1 && nodes[n_28]) && nodes[n_28_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_28 != n_28_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@50.3--50.30) [112711]"}
              (forall n_28: Ref ::
              { Heap[n_28, left_2] } { QPMask[n_28, left_2] } { nodes[n_28] }
              nodes[n_28] ==> Mask[n_28, left_2] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_28: Ref ::
              { Heap[n_28, left_2] } { QPMask[n_28, left_2] } { nodes[n_28] }
              nodes[n_28] && NoPerm < FullPerm ==> qpRange16(n_28) && invRecv16(n_28) == n_28
            );
            assume (forall o_9: Ref ::
              { invRecv16(o_9) }
              nodes[invRecv16(o_9)] && (NoPerm < FullPerm && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
            );
          
          // -- assume permission updates for field left
            assume (forall o_9: Ref ::
              { QPMask[o_9, left_2] }
              (nodes[invRecv16(o_9)] && (NoPerm < FullPerm && qpRange16(o_9)) ==> invRecv16(o_9) == o_9 && QPMask[o_9, left_2] == Mask[o_9, left_2] - FullPerm) && (!(nodes[invRecv16(o_9)] && (NoPerm < FullPerm && qpRange16(o_9))) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@50.3--50.30) [112712]"}
              (forall n$0_3: Ref, n$0_3_1: Ref ::
              { neverTriggered17(n$0_3), neverTriggered17(n$0_3_1) }
              (((n$0_3 != n$0_3_1 && nodes[n$0_3]) && nodes[n$0_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3 != n$0_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@50.3--50.30) [112713]"}
              (forall n$0_3: Ref ::
              { Heap[n$0_3, right_1] } { QPMask[n$0_3, right_1] } { nodes[n$0_3] }
              nodes[n$0_3] ==> Mask[n$0_3, right_1] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_3: Ref ::
              { Heap[n$0_3, right_1] } { QPMask[n$0_3, right_1] } { nodes[n$0_3] }
              nodes[n$0_3] && NoPerm < FullPerm ==> qpRange17(n$0_3) && invRecv17(n$0_3) == n$0_3
            );
            assume (forall o_9: Ref ::
              { invRecv17(o_9) }
              nodes[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
            );
          
          // -- assume permission updates for field right
            assume (forall o_9: Ref ::
              { QPMask[o_9, right_1] }
              (nodes[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9 && QPMask[o_9, right_1] == Mask[o_9, right_1] - FullPerm) && (!(nodes[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9))) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n$1 is injective
            assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@50.3--50.30) [112714]"}
              (forall n$1_3: Ref, n$1_3_1: Ref ::
              { neverTriggered18(n$1_3), neverTriggered18(n$1_3_1) }
              (((n$1_3 != n$1_3_1 && nodes[n$1_3]) && nodes[n$1_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_3 != n$1_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@50.3--50.30) [112715]"}
              (forall n$1_3: Ref ::
              { Heap[n$1_3, is_marked] } { QPMask[n$1_3, is_marked] } { nodes[n$1_3] }
              nodes[n$1_3] ==> Mask[n$1_3, is_marked] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n$1
            assume (forall n$1_3: Ref ::
              { Heap[n$1_3, is_marked] } { QPMask[n$1_3, is_marked] } { nodes[n$1_3] }
              nodes[n$1_3] && NoPerm < FullPerm ==> qpRange18(n$1_3) && invRecv18(n$1_3) == n$1_3
            );
            assume (forall o_9: Ref ::
              { invRecv18(o_9) }
              nodes[invRecv18(o_9)] && (NoPerm < FullPerm && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
            );
          
          // -- assume permission updates for field is_marked
            assume (forall o_9: Ref ::
              { QPMask[o_9, is_marked] }
              (nodes[invRecv18(o_9)] && (NoPerm < FullPerm && qpRange18(o_9)) ==> invRecv18(o_9) == o_9 && QPMask[o_9, is_marked] == Mask[o_9, is_marked] - FullPerm) && (!(nodes[invRecv18(o_9)] && (NoPerm < FullPerm && qpRange18(o_9))) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (nodes[n$2_4_1] && Heap[n$2_4_1, left_2] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [112716]"}
                nodes[Heap[n$2_4_1, left_2]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { nodes[Heap[n$2_5_1_1, left_2]] } { nodes[n$2_5_1_1], Heap[n$2_5_1_1, left_2] }
            nodes[n$2_5_1_1] && Heap[n$2_5_1_1, left_2] != null ==> nodes[Heap[n$2_5_1_1, left_2]]
          );
          if (*) {
            if (nodes[n$3_4_1] && Heap[n$3_4_1, right_1] != null) {
              assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@50.3--50.30) [112717]"}
                nodes[Heap[n$3_4_1, right_1]];
            }
            assume false;
          }
          assume (forall n$3_5_1_1: Ref ::
            { nodes[Heap[n$3_5_1_1, right_1]] } { nodes[n$3_5_1_1], Heap[n$3_5_1_1, right_1] }
            nodes[n$3_5_1_1] && Heap[n$3_5_1_1, right_1] != null ==> nodes[Heap[n$3_5_1_1, right_1]]
          );
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion !node.right.is_marked might not hold. (graph-marking.vpr@50.3--50.30) [112718]"}
            !Heap[arg_node_1, is_marked];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume nodes[arg_node_1];
          assume !nodes[null];
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@50.3--50.30) [112719]"}
            (forall n$4_4_1: Ref, n$4_4_2: Ref ::
            
            (((n$4_4_1 != n$4_4_2 && nodes[n$4_4_1]) && nodes[n$4_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_4_1 != n$4_4_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_4_1: Ref ::
              { Heap[n$4_4_1, left_2] } { QPMask[n$4_4_1, left_2] } { nodes[n$4_4_1] }
              nodes[n$4_4_1] && NoPerm < FullPerm ==> qpRange19(n$4_4_1) && invRecv19(n$4_4_1) == n$4_4_1
            );
            assume (forall o_9: Ref ::
              { invRecv19(o_9) }
              (nodes[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9) ==> invRecv19(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_4_1: Ref ::
              { Heap[n$4_4_1, left_2] } { QPMask[n$4_4_1, left_2] } { nodes[n$4_4_1] }
              nodes[n$4_4_1] ==> n$4_4_1 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, left_2] }
              ((nodes[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> invRecv19(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + FullPerm) && (!((nodes[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@50.3--50.30) [112720]"}
            (forall n$5_4_1: Ref, n$5_4_2: Ref ::
            
            (((n$5_4_1 != n$5_4_2 && nodes[n$5_4_1]) && nodes[n$5_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_4_1 != n$5_4_2
          );
          
          // -- Define Inverse Function
            assume (forall n$5_4_1: Ref ::
              { Heap[n$5_4_1, right_1] } { QPMask[n$5_4_1, right_1] } { nodes[n$5_4_1] }
              nodes[n$5_4_1] && NoPerm < FullPerm ==> qpRange20(n$5_4_1) && invRecv20(n$5_4_1) == n$5_4_1
            );
            assume (forall o_9: Ref ::
              { invRecv20(o_9) }
              (nodes[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> invRecv20(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$5_4_1: Ref ::
              { Heap[n$5_4_1, right_1] } { QPMask[n$5_4_1, right_1] } { nodes[n$5_4_1] }
              nodes[n$5_4_1] ==> n$5_4_1 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, right_1] }
              ((nodes[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> invRecv20(o_9) == o_9) && QPMask[o_9, right_1] == Mask[o_9, right_1] + FullPerm) && (!((nodes[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@50.3--50.30) [112721]"}
            (forall n$6_4_1: Ref, n$6_4_2: Ref ::
            
            (((n$6_4_1 != n$6_4_2 && nodes[n$6_4_1]) && nodes[n$6_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_4_1 != n$6_4_2
          );
          
          // -- Define Inverse Function
            assume (forall n$6_4_1: Ref ::
              { Heap[n$6_4_1, is_marked] } { QPMask[n$6_4_1, is_marked] } { nodes[n$6_4_1] }
              nodes[n$6_4_1] && NoPerm < FullPerm ==> qpRange21(n$6_4_1) && invRecv21(n$6_4_1) == n$6_4_1
            );
            assume (forall o_9: Ref ::
              { invRecv21(o_9) }
              (nodes[invRecv21(o_9)] && NoPerm < FullPerm) && qpRange21(o_9) ==> invRecv21(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$6_4_1: Ref ::
              { Heap[n$6_4_1, is_marked] } { QPMask[n$6_4_1, is_marked] } { nodes[n$6_4_1] }
              nodes[n$6_4_1] ==> n$6_4_1 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, is_marked] }
              ((nodes[invRecv21(o_9)] && NoPerm < FullPerm) && qpRange21(o_9) ==> (NoPerm < FullPerm ==> invRecv21(o_9) == o_9) && QPMask[o_9, is_marked] == Mask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv21(o_9)] && NoPerm < FullPerm) && qpRange21(o_9)) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$7_5_1: Ref ::
            { nodes[Heap[n$7_5_1, left_2]] } { nodes[n$7_5_1], Heap[n$7_5_1, left_2] }
            nodes[n$7_5_1] && Heap[n$7_5_1, left_2] != null ==> nodes[Heap[n$7_5_1, left_2]]
          );
          assume (forall n$8_5: Ref ::
            { nodes[Heap[n$8_5, right_1]] } { nodes[n$8_5], Heap[n$8_5, right_1] }
            nodes[n$8_5] && Heap[n$8_5, right_1] != null ==> nodes[Heap[n$8_5, right_1]]
          );
          assume (forall n_29: Ref ::
            { nodes[n_29], Heap[n_29, is_marked] }
            nodes[n_29] ==> PreCallHeap[n_29, is_marked] ==> Heap[n_29, is_marked]
          );
          assume Heap[arg_node_1, is_marked];
          assume (forall n_30: Ref ::
            { nodes[n_30], Heap[n_30, left_2] }
            nodes[n_30] ==> Heap[n_30, left_2] == PreCallHeap[n_30, left_2]
          );
          assume (forall n_31: Ref ::
            { nodes[n_31], Heap[n_31, right_1] }
            nodes[n_31] ==> Heap[n_31, right_1] == PreCallHeap[n_31, right_1]
          );
          assume (forall n_32_2: Ref ::
            { nodes[n_32_2], Heap[n_32_2, is_marked] } { nodes[n_32_2], Heap[Heap[n_32_2, left_2], is_marked] }
            nodes[n_32_2] ==> !PreCallHeap[n_32_2, is_marked] && Heap[n_32_2, is_marked] ==> Heap[n_32_2, left_2] == null || Heap[Heap[n_32_2, left_2], is_marked]
          );
          assume (forall n_33: Ref ::
            { nodes[n_33], Heap[n_33, is_marked] } { nodes[n_33], Heap[Heap[n_33, right_1], is_marked] }
            nodes[n_33] ==> !PreCallHeap[n_33, is_marked] && Heap[n_33, is_marked] ==> Heap[n_33, right_1] == null || Heap[Heap[n_33, right_1], is_marked]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion (node in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [112722]"}
      nodes[node];
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@26.10--26.37) [112723]"}
      !nodes[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.left might not be injective. (graph-marking.vpr@26.27--26.37) [112724]"}
        (forall n$4_2: Ref, n$4_2_1: Ref ::
        { neverTriggered7(n$4_2), neverTriggered7(n$4_2_1) }
        (((n$4_2 != n$4_2_1 && nodes[n$4_2]) && nodes[n$4_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_2 != n$4_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$4.left (graph-marking.vpr@26.10--26.37) [112725]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, left_2] } { QPMask[n$4_2, left_2] } { nodes[n$4_2] }
        nodes[n$4_2] ==> Mask[n$4_2, left_2] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2: Ref ::
        { Heap[n$4_2, left_2] } { QPMask[n$4_2, left_2] } { nodes[n$4_2] }
        nodes[n$4_2] && NoPerm < FullPerm ==> qpRange7(n$4_2) && invRecv7(n$4_2) == n$4_2
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        nodes[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
      );
    
    // -- assume permission updates for field left
      assume (forall o_9: Ref ::
        { QPMask[o_9, left_2] }
        (nodes[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9 && QPMask[o_9, left_2] == Mask[o_9, left_2] - FullPerm) && (!(nodes[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9))) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.right might not be injective. (graph-marking.vpr@26.27--26.37) [112726]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered8(n$5_2), neverTriggered8(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && nodes[n$5_2]) && nodes[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$5.right (graph-marking.vpr@26.10--26.37) [112727]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, right_1] } { QPMask[n$5_2, right_1] } { nodes[n$5_2] }
        nodes[n$5_2] ==> Mask[n$5_2, right_1] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, right_1] } { QPMask[n$5_2, right_1] } { nodes[n$5_2] }
        nodes[n$5_2] && NoPerm < FullPerm ==> qpRange8(n$5_2) && invRecv8(n$5_2) == n$5_2
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        nodes[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9
      );
    
    // -- assume permission updates for field right
      assume (forall o_9: Ref ::
        { QPMask[o_9, right_1] }
        (nodes[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9 && QPMask[o_9, right_1] == Mask[o_9, right_1] - FullPerm) && (!(nodes[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9))) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$6 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@26.27--26.37) [112728]"}
        (forall n$6_2: Ref, n$6_2_1: Ref ::
        { neverTriggered9(n$6_2), neverTriggered9(n$6_2_1) }
        (((n$6_2 != n$6_2_1 && nodes[n$6_2]) && nodes[n$6_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_2 != n$6_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of trav_rec might not hold. There might be insufficient permission to access n$6.is_marked (graph-marking.vpr@26.10--26.37) [112729]"}
        (forall n$6_2: Ref ::
        { Heap[n$6_2, is_marked] } { QPMask[n$6_2, is_marked] } { nodes[n$6_2] }
        nodes[n$6_2] ==> Mask[n$6_2, is_marked] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$6
      assume (forall n$6_2: Ref ::
        { Heap[n$6_2, is_marked] } { QPMask[n$6_2, is_marked] } { nodes[n$6_2] }
        nodes[n$6_2] && NoPerm < FullPerm ==> qpRange9(n$6_2) && invRecv9(n$6_2) == n$6_2
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        nodes[invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
      );
    
    // -- assume permission updates for field is_marked
      assume (forall o_9: Ref ::
        { QPMask[o_9, is_marked] }
        (nodes[invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9 && QPMask[o_9, is_marked] == Mask[o_9, is_marked] - FullPerm) && (!(nodes[invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9))) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (nodes[n$7_2] && Heap[n$7_2, left_2] != null) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion (n$7.left in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [112730]"}
          nodes[Heap[n$7_2, left_2]];
      }
      assume false;
    }
    assume (forall n$7_3_1: Ref ::
      { nodes[Heap[n$7_3_1, left_2]] } { nodes[n$7_3_1], Heap[n$7_3_1, left_2] }
      nodes[n$7_3_1] && Heap[n$7_3_1, left_2] != null ==> nodes[Heap[n$7_3_1, left_2]]
    );
    if (*) {
      if (nodes[n$8_2_1] && Heap[n$8_2_1, right_1] != null) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion (n$8.right in nodes) might not hold. (graph-marking.vpr@26.10--26.37) [112731]"}
          nodes[Heap[n$8_2_1, right_1]];
      }
      assume false;
    }
    assume (forall n$8_3_1: Ref ::
      { nodes[Heap[n$8_3_1, right_1]] } { nodes[n$8_3_1], Heap[n$8_3_1, right_1] }
      nodes[n$8_3_1] && Heap[n$8_3_1, right_1] != null ==> nodes[Heap[n$8_3_1, right_1]]
    );
    if (*) {
      if (nodes[n_12]) {
        if (oldHeap[n_12, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.is_marked might not hold. (graph-marking.vpr@30.10--30.102) [112732]"}
            Heap[n_12, is_marked];
        }
      }
      assume false;
    }
    assume (forall n_13_1: Ref ::
      { nodes[n_13_1], Heap[n_13_1, is_marked] }
      nodes[n_13_1] ==> oldHeap[n_13_1, is_marked] ==> Heap[n_13_1, is_marked]
    );
    assert {:msg "  Postcondition of trav_rec might not hold. Assertion node.is_marked might not hold. (graph-marking.vpr@31.10--31.24) [112733]"}
      Heap[node, is_marked];
    if (*) {
      if (nodes[n_14_1]) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.left == old(n.left) might not hold. (graph-marking.vpr@34.10--34.86) [112734]"}
          Heap[n_14_1, left_2] == oldHeap[n_14_1, left_2];
      }
      assume false;
    }
    assume (forall n_15_1_1: Ref ::
      { nodes[n_15_1_1], Heap[n_15_1_1, left_2] }
      nodes[n_15_1_1] ==> Heap[n_15_1_1, left_2] == oldHeap[n_15_1_1, left_2]
    );
    if (*) {
      if (nodes[n_16_1]) {
        assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.right == old(n.right) might not hold. (graph-marking.vpr@35.10--35.89) [112735]"}
          Heap[n_16_1, right_1] == oldHeap[n_16_1, right_1];
      }
      assume false;
    }
    assume (forall n_17_1_1: Ref ::
      { nodes[n_17_1_1], Heap[n_17_1_1, right_1] }
      nodes[n_17_1_1] ==> Heap[n_17_1_1, right_1] == oldHeap[n_17_1_1, right_1]
    );
    if (*) {
      if (nodes[n_18]) {
        if (!oldHeap[n_18, is_marked] && Heap[n_18, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.left == null || n.left.is_marked might not hold. (graph-marking.vpr@38.10--39.103) [112736]"}
            Heap[n_18, left_2] == null || Heap[Heap[n_18, left_2], is_marked];
        }
      }
      assume false;
    }
    assume (forall n_19_1_1: Ref ::
      { nodes[n_19_1_1], Heap[n_19_1_1, is_marked] } { nodes[n_19_1_1], Heap[Heap[n_19_1_1, left_2], is_marked] }
      nodes[n_19_1_1] ==> !oldHeap[n_19_1_1, is_marked] && Heap[n_19_1_1, is_marked] ==> Heap[n_19_1_1, left_2] == null || Heap[Heap[n_19_1_1, left_2], is_marked]
    );
    if (*) {
      if (nodes[n_20]) {
        if (!oldHeap[n_20, is_marked] && Heap[n_20, is_marked]) {
          assert {:msg "  Postcondition of trav_rec might not hold. Assertion n.right == null || n.right.is_marked might not hold. (graph-marking.vpr@40.10--41.104) [112737]"}
            Heap[n_20, right_1] == null || Heap[Heap[n_20, right_1], is_marked];
        }
      }
      assume false;
    }
    assume (forall n_21_1_1: Ref ::
      { nodes[n_21_1_1], Heap[n_21_1_1, is_marked] } { nodes[n_21_1_1], Heap[Heap[n_21_1_1, right_1], is_marked] }
      nodes[n_21_1_1] ==> !oldHeap[n_21_1_1, is_marked] && Heap[n_21_1_1, is_marked] ==> Heap[n_21_1_1, right_1] == null || Heap[Heap[n_21_1_1, right_1], is_marked]
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: Ref;
  var b_24: Ref;
  var freshObj: Ref;
  var nodes: (Set Ref);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var n_34: Ref;
  var n_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var QPMask: MaskType;
  var n$2_6: Ref;
  var n$3_4: Ref;
  var ExhaleHeap: HeapType;
  var n_94: Ref;
  var n_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: a := new(left, right, is_marked) -- graph-marking.vpr@55.14--55.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    a_2 := freshObj;
    Mask := Mask[a_2, left_2:=Mask[a_2, left_2] + FullPerm];
    Mask := Mask[a_2, right_1:=Mask[a_2, right_1] + FullPerm];
    Mask := Mask[a_2, is_marked:=Mask[a_2, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.is_marked := false -- graph-marking.vpr@55.27--55.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.is_marked (graph-marking.vpr@55.27--55.47) [112738]"}
      FullPerm == Mask[a_2, is_marked];
    Heap := Heap[a_2, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := new(left, right, is_marked) -- graph-marking.vpr@56.14--56.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    b_24 := freshObj;
    Mask := Mask[b_24, left_2:=Mask[b_24, left_2] + FullPerm];
    Mask := Mask[b_24, right_1:=Mask[b_24, right_1] + FullPerm];
    Mask := Mask[b_24, is_marked:=Mask[b_24, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.is_marked := false -- graph-marking.vpr@56.27--56.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.is_marked (graph-marking.vpr@56.27--56.47) [112739]"}
      FullPerm == Mask[b_24, is_marked];
    Heap := Heap[b_24, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.left := b -- graph-marking.vpr@58.2--58.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.left (graph-marking.vpr@58.2--58.13) [112740]"}
      FullPerm == Mask[a_2, left_2];
    Heap := Heap[a_2, left_2:=b_24];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.right := null -- graph-marking.vpr@58.18--58.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.right (graph-marking.vpr@58.18--58.33) [112741]"}
      FullPerm == Mask[a_2, right_1];
    Heap := Heap[a_2, right_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.left := null -- graph-marking.vpr@59.2--59.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.left (graph-marking.vpr@59.2--59.16) [112742]"}
      FullPerm == Mask[b_24, left_2];
    Heap := Heap[b_24, left_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.right := a -- graph-marking.vpr@59.18--59.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.right (graph-marking.vpr@59.18--59.30) [112743]"}
      FullPerm == Mask[b_24, right_1];
    Heap := Heap[b_24, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: nodes := Set(a, b) -- graph-marking.vpr@61.2--61.34
    nodes := Set#UnionOne(Set#Singleton(b_24), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked) -- graph-marking.vpr@63.2--63.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked)
      if (*) {
        if (nodes[n_34]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@63.9--63.53) [112744]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_34, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes[n_1]) {
        assert {:msg "  Assert might fail. Assertion !n.is_marked might not hold. (graph-marking.vpr@63.9--63.53) [112745]"}
          !Heap[n_1, is_marked];
      }
      assume false;
    }
    assume (forall n_2_1_1: Ref ::
      { nodes[n_2_1_1] }
      nodes[n_2_1_1] ==> !Heap[n_2_1_1, is_marked]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: trav_rec(nodes, a) -- graph-marking.vpr@65.2--65.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion (a in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [112746]"}
        nodes[a_2];
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@65.2--65.20) [112747]"}
        !nodes[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@65.2--65.20) [112748]"}
          (forall n_3: Ref, n_3_1: Ref ::
          { neverTriggered22(n_3), neverTriggered22(n_3_1) }
          (((n_3 != n_3_1 && nodes[n_3]) && nodes[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@65.2--65.20) [112749]"}
          (forall n_3: Ref ::
          { Heap[n_3, left_2] } { QPMask[n_3, left_2] } { nodes[n_3] }
          nodes[n_3] ==> Mask[n_3, left_2] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_3: Ref ::
          { Heap[n_3, left_2] } { QPMask[n_3, left_2] } { nodes[n_3] }
          nodes[n_3] && NoPerm < FullPerm ==> qpRange22(n_3) && invRecv22(n_3) == n_3
        );
        assume (forall o_9: Ref ::
          { invRecv22(o_9) }
          nodes[invRecv22(o_9)] && (NoPerm < FullPerm && qpRange22(o_9)) ==> invRecv22(o_9) == o_9
        );
      
      // -- assume permission updates for field left
        assume (forall o_9: Ref ::
          { QPMask[o_9, left_2] }
          (nodes[invRecv22(o_9)] && (NoPerm < FullPerm && qpRange22(o_9)) ==> invRecv22(o_9) == o_9 && QPMask[o_9, left_2] == Mask[o_9, left_2] - FullPerm) && (!(nodes[invRecv22(o_9)] && (NoPerm < FullPerm && qpRange22(o_9))) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$0 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@65.2--65.20) [112750]"}
          (forall n$0_14: Ref, n$0_37: Ref ::
          { neverTriggered23(n$0_14), neverTriggered23(n$0_37) }
          (((n$0_14 != n$0_37 && nodes[n$0_14]) && nodes[n$0_37]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_14 != n$0_37
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@65.2--65.20) [112751]"}
          (forall n$0_14: Ref ::
          { Heap[n$0_14, right_1] } { QPMask[n$0_14, right_1] } { nodes[n$0_14] }
          nodes[n$0_14] ==> Mask[n$0_14, right_1] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$0
        assume (forall n$0_14: Ref ::
          { Heap[n$0_14, right_1] } { QPMask[n$0_14, right_1] } { nodes[n$0_14] }
          nodes[n$0_14] && NoPerm < FullPerm ==> qpRange23(n$0_14) && invRecv23(n$0_14) == n$0_14
        );
        assume (forall o_9: Ref ::
          { invRecv23(o_9) }
          nodes[invRecv23(o_9)] && (NoPerm < FullPerm && qpRange23(o_9)) ==> invRecv23(o_9) == o_9
        );
      
      // -- assume permission updates for field right
        assume (forall o_9: Ref ::
          { QPMask[o_9, right_1] }
          (nodes[invRecv23(o_9)] && (NoPerm < FullPerm && qpRange23(o_9)) ==> invRecv23(o_9) == o_9 && QPMask[o_9, right_1] == Mask[o_9, right_1] - FullPerm) && (!(nodes[invRecv23(o_9)] && (NoPerm < FullPerm && qpRange23(o_9))) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$1 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@65.2--65.20) [112752]"}
          (forall n$1: Ref, n$1_7: Ref ::
          { neverTriggered24(n$1), neverTriggered24(n$1_7) }
          (((n$1 != n$1_7 && nodes[n$1]) && nodes[n$1_7]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1 != n$1_7
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@65.2--65.20) [112753]"}
          (forall n$1: Ref ::
          { Heap[n$1, is_marked] } { QPMask[n$1, is_marked] } { nodes[n$1] }
          nodes[n$1] ==> Mask[n$1, is_marked] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$1
        assume (forall n$1: Ref ::
          { Heap[n$1, is_marked] } { QPMask[n$1, is_marked] } { nodes[n$1] }
          nodes[n$1] && NoPerm < FullPerm ==> qpRange24(n$1) && invRecv24(n$1) == n$1
        );
        assume (forall o_9: Ref ::
          { invRecv24(o_9) }
          nodes[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9
        );
      
      // -- assume permission updates for field is_marked
        assume (forall o_9: Ref ::
          { QPMask[o_9, is_marked] }
          (nodes[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9 && QPMask[o_9, is_marked] == Mask[o_9, is_marked] - FullPerm) && (!(nodes[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9))) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (nodes[n$2_6] && Heap[n$2_6, left_2] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [112754]"}
            nodes[Heap[n$2_6, left_2]];
        }
        assume false;
      }
      assume (forall n$2_1_1: Ref ::
        { nodes[Heap[n$2_1_1, left_2]] } { nodes[n$2_1_1], Heap[n$2_1_1, left_2] }
        nodes[n$2_1_1] && Heap[n$2_1_1, left_2] != null ==> nodes[Heap[n$2_1_1, left_2]]
      );
      if (*) {
        if (nodes[n$3_4] && Heap[n$3_4, right_1] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@65.2--65.20) [112755]"}
            nodes[Heap[n$3_4, right_1]];
        }
        assume false;
      }
      assume (forall n$3_1_1_1: Ref ::
        { nodes[Heap[n$3_1_1_1, right_1]] } { nodes[n$3_1_1_1], Heap[n$3_1_1_1, right_1] }
        nodes[n$3_1_1_1] && Heap[n$3_1_1_1, right_1] != null ==> nodes[Heap[n$3_1_1_1, right_1]]
      );
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !a.is_marked might not hold. (graph-marking.vpr@65.2--65.20) [112756]"}
        !Heap[a_2, is_marked];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume nodes[a_2];
      assume !nodes[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@65.2--65.20) [112757]"}
        (forall n$4_10: Ref, n$4_14: Ref ::
        
        (((n$4_10 != n$4_14 && nodes[n$4_10]) && nodes[n$4_14]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_10 != n$4_14
      );
      
      // -- Define Inverse Function
        assume (forall n$4_10: Ref ::
          { Heap[n$4_10, left_2] } { QPMask[n$4_10, left_2] } { nodes[n$4_10] }
          nodes[n$4_10] && NoPerm < FullPerm ==> qpRange25(n$4_10) && invRecv25(n$4_10) == n$4_10
        );
        assume (forall o_9: Ref ::
          { invRecv25(o_9) }
          (nodes[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$4_10: Ref ::
          { Heap[n$4_10, left_2] } { QPMask[n$4_10, left_2] } { nodes[n$4_10] }
          nodes[n$4_10] ==> n$4_10 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, left_2] }
          ((nodes[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> invRecv25(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + FullPerm) && (!((nodes[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@65.2--65.20) [112758]"}
        (forall n$5_8: Ref, n$5_9: Ref ::
        
        (((n$5_8 != n$5_9 && nodes[n$5_8]) && nodes[n$5_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_8 != n$5_9
      );
      
      // -- Define Inverse Function
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes[n$5_8] }
          nodes[n$5_8] && NoPerm < FullPerm ==> qpRange26(n$5_8) && invRecv26(n$5_8) == n$5_8
        );
        assume (forall o_9: Ref ::
          { invRecv26(o_9) }
          (nodes[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> invRecv26(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes[n$5_8] }
          nodes[n$5_8] ==> n$5_8 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, right_1] }
          ((nodes[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> (NoPerm < FullPerm ==> invRecv26(o_9) == o_9) && QPMask[o_9, right_1] == Mask[o_9, right_1] + FullPerm) && (!((nodes[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9)) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@65.2--65.20) [112759]"}
        (forall n$6_11: Ref, n$6_12: Ref ::
        
        (((n$6_11 != n$6_12 && nodes[n$6_11]) && nodes[n$6_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_11 != n$6_12
      );
      
      // -- Define Inverse Function
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes[n$6_11] }
          nodes[n$6_11] && NoPerm < FullPerm ==> qpRange27(n$6_11) && invRecv27(n$6_11) == n$6_11
        );
        assume (forall o_9: Ref ::
          { invRecv27(o_9) }
          (nodes[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9) ==> invRecv27(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes[n$6_11] }
          nodes[n$6_11] ==> n$6_11 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, is_marked] }
          ((nodes[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9) ==> (NoPerm < FullPerm ==> invRecv27(o_9) == o_9) && QPMask[o_9, is_marked] == Mask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9)) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$7_4: Ref ::
        { nodes[Heap[n$7_4, left_2]] } { nodes[n$7_4], Heap[n$7_4, left_2] }
        nodes[n$7_4] && Heap[n$7_4, left_2] != null ==> nodes[Heap[n$7_4, left_2]]
      );
      assume (forall n$8: Ref ::
        { nodes[Heap[n$8, right_1]] } { nodes[n$8], Heap[n$8, right_1] }
        nodes[n$8] && Heap[n$8, right_1] != null ==> nodes[Heap[n$8, right_1]]
      );
      assume (forall n_4: Ref ::
        { nodes[n_4], Heap[n_4, is_marked] }
        nodes[n_4] ==> PreCallHeap[n_4, is_marked] ==> Heap[n_4, is_marked]
      );
      assume Heap[a_2, is_marked];
      assume (forall n_5: Ref ::
        { nodes[n_5], Heap[n_5, left_2] }
        nodes[n_5] ==> Heap[n_5, left_2] == PreCallHeap[n_5, left_2]
      );
      assume (forall n_6: Ref ::
        { nodes[n_6], Heap[n_6, right_1] }
        nodes[n_6] ==> Heap[n_6, right_1] == PreCallHeap[n_6, right_1]
      );
      assume (forall n_7: Ref ::
        { nodes[n_7], Heap[n_7, is_marked] } { nodes[n_7], Heap[Heap[n_7, left_2], is_marked] }
        nodes[n_7] ==> !PreCallHeap[n_7, is_marked] && Heap[n_7, is_marked] ==> Heap[n_7, left_2] == null || Heap[Heap[n_7, left_2], is_marked]
      );
      assume (forall n_8: Ref ::
        { nodes[n_8], Heap[n_8, is_marked] } { nodes[n_8], Heap[Heap[n_8, right_1], is_marked] }
        nodes[n_8] ==> !PreCallHeap[n_8, is_marked] && Heap[n_8, is_marked] ==> Heap[n_8, right_1] == null || Heap[Heap[n_8, right_1], is_marked]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked) -- graph-marking.vpr@67.2--67.52
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked)
      if (*) {
        if (nodes[n_94]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@67.9--67.52) [112760]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_94, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes[n_10_1]) {
        assert {:msg "  Assert might fail. Assertion n.is_marked might not hold. (graph-marking.vpr@67.9--67.52) [112761]"}
          Heap[n_10_1, is_marked];
      }
      assume false;
    }
    assume (forall n_11_1: Ref ::
      { nodes[n_11_1] }
      nodes[n_11_1] ==> Heap[n_11_1, is_marked]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method client_failure
// ==================================================

procedure client_failure() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: Ref;
  var b_24: Ref;
  var freshObj: Ref;
  var nodes: (Set Ref);
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var n_95: Ref;
  var n_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var QPMask: MaskType;
  var n$2_6: Ref;
  var n$3_4: Ref;
  var ExhaleHeap: HeapType;
  var n_96: Ref;
  var n_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: a := new(left, right, is_marked) -- graph-marking.vpr@71.14--71.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    a_2 := freshObj;
    Mask := Mask[a_2, left_2:=Mask[a_2, left_2] + FullPerm];
    Mask := Mask[a_2, right_1:=Mask[a_2, right_1] + FullPerm];
    Mask := Mask[a_2, is_marked:=Mask[a_2, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.is_marked := false -- graph-marking.vpr@71.27--71.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.is_marked (graph-marking.vpr@71.27--71.47) [112762]"}
      FullPerm == Mask[a_2, is_marked];
    Heap := Heap[a_2, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := new(left, right, is_marked) -- graph-marking.vpr@72.14--72.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    b_24 := freshObj;
    Mask := Mask[b_24, left_2:=Mask[b_24, left_2] + FullPerm];
    Mask := Mask[b_24, right_1:=Mask[b_24, right_1] + FullPerm];
    Mask := Mask[b_24, is_marked:=Mask[b_24, is_marked] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.is_marked := false -- graph-marking.vpr@72.27--72.47
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.is_marked (graph-marking.vpr@72.27--72.47) [112763]"}
      FullPerm == Mask[b_24, is_marked];
    Heap := Heap[b_24, is_marked:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.left := a -- graph-marking.vpr@74.2--74.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.left (graph-marking.vpr@74.2--74.13) [112764]"}
      FullPerm == Mask[a_2, left_2];
    Heap := Heap[a_2, left_2:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: a.right := a -- graph-marking.vpr@74.15--74.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.right (graph-marking.vpr@74.15--74.27) [112765]"}
      FullPerm == Mask[a_2, right_1];
    Heap := Heap[a_2, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.left := a -- graph-marking.vpr@75.2--75.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.left (graph-marking.vpr@75.2--75.13) [112766]"}
      FullPerm == Mask[b_24, left_2];
    Heap := Heap[b_24, left_2:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.right := a -- graph-marking.vpr@75.15--75.27
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.right (graph-marking.vpr@75.15--75.27) [112767]"}
      FullPerm == Mask[b_24, right_1];
    Heap := Heap[b_24, right_1:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: nodes := Set(a, b) -- graph-marking.vpr@77.2--77.34
    nodes := Set#UnionOne(Set#Singleton(b_24), a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked) -- graph-marking.vpr@79.2--79.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> !n.is_marked)
      if (*) {
        if (nodes[n_95]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@79.9--79.53) [112768]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_95, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes[n_1]) {
        assert {:msg "  Assert might fail. Assertion !n.is_marked might not hold. (graph-marking.vpr@79.9--79.53) [112769]"}
          !Heap[n_1, is_marked];
      }
      assume false;
    }
    assume (forall n_2_1_1: Ref ::
      { nodes[n_2_1_1] }
      nodes[n_2_1_1] ==> !Heap[n_2_1_1, is_marked]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: trav_rec(nodes, a) -- graph-marking.vpr@81.2--81.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion (a in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [112770]"}
        nodes[a_2];
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !((null in nodes)) might not hold. (graph-marking.vpr@81.2--81.20) [112771]"}
        !nodes[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n.left might not be injective. (graph-marking.vpr@81.2--81.20) [112772]"}
          (forall n_3: Ref, n_3_1: Ref ::
          { neverTriggered28(n_3), neverTriggered28(n_3_1) }
          (((n_3 != n_3_1 && nodes[n_3]) && nodes[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n.left (graph-marking.vpr@81.2--81.20) [112773]"}
          (forall n_3: Ref ::
          { Heap[n_3, left_2] } { QPMask[n_3, left_2] } { nodes[n_3] }
          nodes[n_3] ==> Mask[n_3, left_2] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_3: Ref ::
          { Heap[n_3, left_2] } { QPMask[n_3, left_2] } { nodes[n_3] }
          nodes[n_3] && NoPerm < FullPerm ==> qpRange28(n_3) && invRecv28(n_3) == n_3
        );
        assume (forall o_9: Ref ::
          { invRecv28(o_9) }
          nodes[invRecv28(o_9)] && (NoPerm < FullPerm && qpRange28(o_9)) ==> invRecv28(o_9) == o_9
        );
      
      // -- assume permission updates for field left
        assume (forall o_9: Ref ::
          { QPMask[o_9, left_2] }
          (nodes[invRecv28(o_9)] && (NoPerm < FullPerm && qpRange28(o_9)) ==> invRecv28(o_9) == o_9 && QPMask[o_9, left_2] == Mask[o_9, left_2] - FullPerm) && (!(nodes[invRecv28(o_9)] && (NoPerm < FullPerm && qpRange28(o_9))) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$0 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$0.right might not be injective. (graph-marking.vpr@81.2--81.20) [112774]"}
          (forall n$0_14: Ref, n$0_37: Ref ::
          { neverTriggered29(n$0_14), neverTriggered29(n$0_37) }
          (((n$0_14 != n$0_37 && nodes[n$0_14]) && nodes[n$0_37]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_14 != n$0_37
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$0.right (graph-marking.vpr@81.2--81.20) [112775]"}
          (forall n$0_14: Ref ::
          { Heap[n$0_14, right_1] } { QPMask[n$0_14, right_1] } { nodes[n$0_14] }
          nodes[n$0_14] ==> Mask[n$0_14, right_1] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$0
        assume (forall n$0_14: Ref ::
          { Heap[n$0_14, right_1] } { QPMask[n$0_14, right_1] } { nodes[n$0_14] }
          nodes[n$0_14] && NoPerm < FullPerm ==> qpRange29(n$0_14) && invRecv29(n$0_14) == n$0_14
        );
        assume (forall o_9: Ref ::
          { invRecv29(o_9) }
          nodes[invRecv29(o_9)] && (NoPerm < FullPerm && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
        );
      
      // -- assume permission updates for field right
        assume (forall o_9: Ref ::
          { QPMask[o_9, right_1] }
          (nodes[invRecv29(o_9)] && (NoPerm < FullPerm && qpRange29(o_9)) ==> invRecv29(o_9) == o_9 && QPMask[o_9, right_1] == Mask[o_9, right_1] - FullPerm) && (!(nodes[invRecv29(o_9)] && (NoPerm < FullPerm && qpRange29(o_9))) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n$1 is injective
        assert {:msg "  The precondition of method trav_rec might not hold. Quantified resource n$1.is_marked might not be injective. (graph-marking.vpr@81.2--81.20) [112776]"}
          (forall n$1: Ref, n$1_7: Ref ::
          { neverTriggered30(n$1), neverTriggered30(n$1_7) }
          (((n$1 != n$1_7 && nodes[n$1]) && nodes[n$1_7]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1 != n$1_7
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method trav_rec might not hold. There might be insufficient permission to access n$1.is_marked (graph-marking.vpr@81.2--81.20) [112777]"}
          (forall n$1: Ref ::
          { Heap[n$1, is_marked] } { QPMask[n$1, is_marked] } { nodes[n$1] }
          nodes[n$1] ==> Mask[n$1, is_marked] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n$1
        assume (forall n$1: Ref ::
          { Heap[n$1, is_marked] } { QPMask[n$1, is_marked] } { nodes[n$1] }
          nodes[n$1] && NoPerm < FullPerm ==> qpRange30(n$1) && invRecv30(n$1) == n$1
        );
        assume (forall o_9: Ref ::
          { invRecv30(o_9) }
          nodes[invRecv30(o_9)] && (NoPerm < FullPerm && qpRange30(o_9)) ==> invRecv30(o_9) == o_9
        );
      
      // -- assume permission updates for field is_marked
        assume (forall o_9: Ref ::
          { QPMask[o_9, is_marked] }
          (nodes[invRecv30(o_9)] && (NoPerm < FullPerm && qpRange30(o_9)) ==> invRecv30(o_9) == o_9 && QPMask[o_9, is_marked] == Mask[o_9, is_marked] - FullPerm) && (!(nodes[invRecv30(o_9)] && (NoPerm < FullPerm && qpRange30(o_9))) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (nodes[n$2_6] && Heap[n$2_6, left_2] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$2.left in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [112778]"}
            nodes[Heap[n$2_6, left_2]];
        }
        assume false;
      }
      assume (forall n$2_1_1: Ref ::
        { nodes[Heap[n$2_1_1, left_2]] } { nodes[n$2_1_1], Heap[n$2_1_1, left_2] }
        nodes[n$2_1_1] && Heap[n$2_1_1, left_2] != null ==> nodes[Heap[n$2_1_1, left_2]]
      );
      if (*) {
        if (nodes[n$3_4] && Heap[n$3_4, right_1] != null) {
          assert {:msg "  The precondition of method trav_rec might not hold. Assertion (n$3.right in nodes) might not hold. (graph-marking.vpr@81.2--81.20) [112779]"}
            nodes[Heap[n$3_4, right_1]];
        }
        assume false;
      }
      assume (forall n$3_1_1_1: Ref ::
        { nodes[Heap[n$3_1_1_1, right_1]] } { nodes[n$3_1_1_1], Heap[n$3_1_1_1, right_1] }
        nodes[n$3_1_1_1] && Heap[n$3_1_1_1, right_1] != null ==> nodes[Heap[n$3_1_1_1, right_1]]
      );
      assert {:msg "  The precondition of method trav_rec might not hold. Assertion !a.is_marked might not hold. (graph-marking.vpr@81.2--81.20) [112780]"}
        !Heap[a_2, is_marked];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume nodes[a_2];
      assume !nodes[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$4.left might not be injective. (graph-marking.vpr@81.2--81.20) [112781]"}
        (forall n$4_10: Ref, n$4_14: Ref ::
        
        (((n$4_10 != n$4_14 && nodes[n$4_10]) && nodes[n$4_14]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_10 != n$4_14
      );
      
      // -- Define Inverse Function
        assume (forall n$4_10: Ref ::
          { Heap[n$4_10, left_2] } { QPMask[n$4_10, left_2] } { nodes[n$4_10] }
          nodes[n$4_10] && NoPerm < FullPerm ==> qpRange31(n$4_10) && invRecv31(n$4_10) == n$4_10
        );
        assume (forall o_9: Ref ::
          { invRecv31(o_9) }
          (nodes[invRecv31(o_9)] && NoPerm < FullPerm) && qpRange31(o_9) ==> invRecv31(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$4_10: Ref ::
          { Heap[n$4_10, left_2] } { QPMask[n$4_10, left_2] } { nodes[n$4_10] }
          nodes[n$4_10] ==> n$4_10 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, left_2] }
          ((nodes[invRecv31(o_9)] && NoPerm < FullPerm) && qpRange31(o_9) ==> (NoPerm < FullPerm ==> invRecv31(o_9) == o_9) && QPMask[o_9, left_2] == Mask[o_9, left_2] + FullPerm) && (!((nodes[invRecv31(o_9)] && NoPerm < FullPerm) && qpRange31(o_9)) ==> QPMask[o_9, left_2] == Mask[o_9, left_2])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != left_2 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$5.right might not be injective. (graph-marking.vpr@81.2--81.20) [112782]"}
        (forall n$5_8: Ref, n$5_9: Ref ::
        
        (((n$5_8 != n$5_9 && nodes[n$5_8]) && nodes[n$5_9]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_8 != n$5_9
      );
      
      // -- Define Inverse Function
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes[n$5_8] }
          nodes[n$5_8] && NoPerm < FullPerm ==> qpRange32(n$5_8) && invRecv32(n$5_8) == n$5_8
        );
        assume (forall o_9: Ref ::
          { invRecv32(o_9) }
          (nodes[invRecv32(o_9)] && NoPerm < FullPerm) && qpRange32(o_9) ==> invRecv32(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$5_8: Ref ::
          { Heap[n$5_8, right_1] } { QPMask[n$5_8, right_1] } { nodes[n$5_8] }
          nodes[n$5_8] ==> n$5_8 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, right_1] }
          ((nodes[invRecv32(o_9)] && NoPerm < FullPerm) && qpRange32(o_9) ==> (NoPerm < FullPerm ==> invRecv32(o_9) == o_9) && QPMask[o_9, right_1] == Mask[o_9, right_1] + FullPerm) && (!((nodes[invRecv32(o_9)] && NoPerm < FullPerm) && qpRange32(o_9)) ==> QPMask[o_9, right_1] == Mask[o_9, right_1])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != right_1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$6.is_marked might not be injective. (graph-marking.vpr@81.2--81.20) [112783]"}
        (forall n$6_11: Ref, n$6_12: Ref ::
        
        (((n$6_11 != n$6_12 && nodes[n$6_11]) && nodes[n$6_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$6_11 != n$6_12
      );
      
      // -- Define Inverse Function
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes[n$6_11] }
          nodes[n$6_11] && NoPerm < FullPerm ==> qpRange33(n$6_11) && invRecv33(n$6_11) == n$6_11
        );
        assume (forall o_9: Ref ::
          { invRecv33(o_9) }
          (nodes[invRecv33(o_9)] && NoPerm < FullPerm) && qpRange33(o_9) ==> invRecv33(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$6_11: Ref ::
          { Heap[n$6_11, is_marked] } { QPMask[n$6_11, is_marked] } { nodes[n$6_11] }
          nodes[n$6_11] ==> n$6_11 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, is_marked] }
          ((nodes[invRecv33(o_9)] && NoPerm < FullPerm) && qpRange33(o_9) ==> (NoPerm < FullPerm ==> invRecv33(o_9) == o_9) && QPMask[o_9, is_marked] == Mask[o_9, is_marked] + FullPerm) && (!((nodes[invRecv33(o_9)] && NoPerm < FullPerm) && qpRange33(o_9)) ==> QPMask[o_9, is_marked] == Mask[o_9, is_marked])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != is_marked ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$7_4: Ref ::
        { nodes[Heap[n$7_4, left_2]] } { nodes[n$7_4], Heap[n$7_4, left_2] }
        nodes[n$7_4] && Heap[n$7_4, left_2] != null ==> nodes[Heap[n$7_4, left_2]]
      );
      assume (forall n$8: Ref ::
        { nodes[Heap[n$8, right_1]] } { nodes[n$8], Heap[n$8, right_1] }
        nodes[n$8] && Heap[n$8, right_1] != null ==> nodes[Heap[n$8, right_1]]
      );
      assume (forall n_4: Ref ::
        { nodes[n_4], Heap[n_4, is_marked] }
        nodes[n_4] ==> PreCallHeap[n_4, is_marked] ==> Heap[n_4, is_marked]
      );
      assume Heap[a_2, is_marked];
      assume (forall n_5: Ref ::
        { nodes[n_5], Heap[n_5, left_2] }
        nodes[n_5] ==> Heap[n_5, left_2] == PreCallHeap[n_5, left_2]
      );
      assume (forall n_6: Ref ::
        { nodes[n_6], Heap[n_6, right_1] }
        nodes[n_6] ==> Heap[n_6, right_1] == PreCallHeap[n_6, right_1]
      );
      assume (forall n_7: Ref ::
        { nodes[n_7], Heap[n_7, is_marked] } { nodes[n_7], Heap[Heap[n_7, left_2], is_marked] }
        nodes[n_7] ==> !PreCallHeap[n_7, is_marked] && Heap[n_7, is_marked] ==> Heap[n_7, left_2] == null || Heap[Heap[n_7, left_2], is_marked]
      );
      assume (forall n_8: Ref ::
        { nodes[n_8], Heap[n_8, is_marked] } { nodes[n_8], Heap[Heap[n_8, right_1], is_marked] }
        nodes[n_8] ==> !PreCallHeap[n_8, is_marked] && Heap[n_8, is_marked] ==> Heap[n_8, right_1] == null || Heap[Heap[n_8, right_1], is_marked]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked) -- graph-marking.vpr@85.2--85.52
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n: Ref :: { (n in nodes) } (n in nodes) ==> n.is_marked)
      if (*) {
        if (nodes[n_96]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n.is_marked (graph-marking.vpr@85.9--85.52) [112784]"}
            HasDirectPerm(ExhaleWellDef0Mask, n_96, is_marked);
        }
        assume false;
      }
    if (*) {
      if (nodes[n_10_1]) {
        assert {:msg "  Assert might fail. Assertion n.is_marked might not hold. (graph-marking.vpr@85.9--85.52) [112785]"}
          Heap[n_10_1, is_marked];
      }
      assume false;
    }
    assume (forall n_11_1: Ref ::
      { nodes[n_11_1] }
      nodes[n_11_1] ==> Heap[n_11_1, is_marked]
    );
    assume state(Heap, Mask);
}