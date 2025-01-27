// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:22:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0196.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0196-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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

function  neverTriggered1(e_2_2: Ref): bool;
function  neverTriggered2(e_2_2: Ref): bool;
function  neverTriggered3(e_2_2: Ref): bool;
function  neverTriggered4(e_2_2: Ref): bool;
function  neverTriggered5(e_1: Ref): bool;
function  neverTriggered6(e_2_2: Ref): bool;
function  neverTriggered7(e_3_1: Ref): bool;
function  neverTriggered8(e_1: Ref): bool;
function  neverTriggered9(e_2_2: Ref): bool;
function  neverTriggered10(e_3_1: Ref): bool;
function  neverTriggered11(e_1: Ref): bool;
function  neverTriggered12(e_2_2: Ref): bool;
function  neverTriggered13(e_3_1: Ref): bool;
function  neverTriggered14(e_1: Ref): bool;
function  neverTriggered15(e_2_2: Ref): bool;
function  neverTriggered16(e_3_1: Ref): bool;
function  neverTriggered17(e_1: Ref): bool;
function  neverTriggered18(e_1_1: Ref): bool;
function  neverTriggered19(e_3_1: Ref): bool;
function  neverTriggered20(e_1: Ref): bool;
function  neverTriggered21(e_1_1: Ref): bool;
function  neverTriggered22(e_3_1: Ref): bool;
function  neverTriggered23(e_1: Ref): bool;
function  neverTriggered24(e_1_1: Ref): bool;
function  neverTriggered25(e_3_1: Ref): bool;
function  neverTriggered26(e_1: Ref): bool;
function  neverTriggered27(e_1_1: Ref): bool;
function  neverTriggered28(e_3_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1: Ref): Ref;
function  invRecv2(r_2_1: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(r_1_1_1: Ref): Ref;
function  invRecv6(r_2_1: Ref): Ref;
function  invRecv7(r_3_1: Ref): Ref;
function  invRecv8(r_1_1_1: Ref): Ref;
function  invRecv9(r_2_1: Ref): Ref;
function  invRecv10(r_3_1: Ref): Ref;
function  invRecv11(r_1_1_1: Ref): Ref;
function  invRecv12(r_2_1: Ref): Ref;
function  invRecv13(r_3_1: Ref): Ref;
function  invRecv14(r_1_1_1: Ref): Ref;
function  invRecv15(r_2_1: Ref): Ref;
function  invRecv16(r_3_1: Ref): Ref;
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
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1: Ref): bool;
function  qpRange2(r_2_1: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(r_1_1_1: Ref): bool;
function  qpRange6(r_2_1: Ref): bool;
function  qpRange7(r_3_1: Ref): bool;
function  qpRange8(r_1_1_1: Ref): bool;
function  qpRange9(r_2_1: Ref): bool;
function  qpRange10(r_3_1: Ref): bool;
function  qpRange11(r_1_1_1: Ref): bool;
function  qpRange12(r_2_1: Ref): bool;
function  qpRange13(r_3_1: Ref): bool;
function  qpRange14(r_1_1_1: Ref): bool;
function  qpRange15(r_2_1: Ref): bool;
function  qpRange16(r_3_1: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: refs
// - height 4: testerfieldFull
// - height 3: testerFull
// - height 2: get
// - height 1: testerfield
// - height 0: tester
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

const unique q_6: Field NormalField Ref;
axiom !IsPredicateField(q_6);
axiom !IsWandField(q_6);

// ==================================================
// Translation of function refs
// ==================================================

// Uninterpreted function definitions
function  refs_1(Heap: HeapType, r_1: Ref): Set Ref;
function  refs'(Heap: HeapType, r_1: Ref): Set Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { refs_1(Heap, r_1) }
  refs_1(Heap, r_1) == refs'(Heap, r_1) && dummyFunction(refs#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { refs'(Heap, r_1) }
  dummyFunction(refs#triggerStateless(r_1))
);

// Framing axioms
function  refs#frame(frame: FrameType, r_1: Ref): Set Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), refs'(Heap, r_1) }
  state(Heap, Mask) ==> refs'(Heap, r_1) == refs#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  refs#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  refs#triggerStateless(r_1: Ref): Set Ref;

// Check contract well-formedness and postcondition
procedure refs#definedness(r_1: Ref) returns (Result: (Set Ref))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 5;
}

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, r_1: Ref): Ref;
function  get'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { get(Heap, r_1) }
  get(Heap, r_1) == get'(Heap, r_1) && dummyFunction(get#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { get'(Heap, r_1) }
  dummyFunction(get#triggerStateless(r_1))
);

// Framing axioms
function  get#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), get'(Heap, r_1) }
  state(Heap, Mask) ==> get'(Heap, r_1) == get#frame(EmptyFrame, r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), get'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || get#trigger(EmptyFrame, r_1)) ==> refs_1(Heap, r_1)[get'(Heap, r_1)]
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure get#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of (result in refs(r))
      if (*) {
        // Stop execution
        assume false;
      }
    assume refs_1(Heap, r_1)[Result];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function tester
// ==================================================

// Uninterpreted function definitions
function  tester(Heap: HeapType, r_1: Ref): Ref;
function  tester'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { tester(Heap, r_1) }
  tester(Heap, r_1) == tester'(Heap, r_1) && dummyFunction(tester#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { tester'(Heap, r_1) }
  dummyFunction(tester#triggerStateless(r_1))
);

// Framing axioms
function  tester#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), tester'(Heap, r_1) }
  state(Heap, Mask) ==> tester'(Heap, r_1) == tester#frame(Heap[null, Q(r_1)], r_1)
);

// Trigger function (controlling recursive postconditions)
function  tester#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  tester#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure tester#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, Q(r_1):=Mask[null, Q(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function testerFull
// ==================================================

// Uninterpreted function definitions
function  testerFull(Heap: HeapType, r_1: Ref): Ref;
function  testerFull'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerFull(Heap, r_1) }
  testerFull(Heap, r_1) == testerFull'(Heap, r_1) && dummyFunction(testerFull#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerFull'(Heap, r_1) }
  dummyFunction(testerFull#triggerStateless(r_1))
);

// Framing axioms
function  testerFull#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), testerFull'(Heap, r_1) }
  state(Heap, Mask) ==> testerFull'(Heap, r_1) == testerFull#frame(Heap[null, Q(r_1)], r_1)
);

// Trigger function (controlling recursive postconditions)
function  testerFull#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  testerFull#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure testerFull#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Q(r_1):=Mask[null, Q(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function testerfield
// ==================================================

// Uninterpreted function definitions
function  testerfield(Heap: HeapType, r_1: Ref): Ref;
function  testerfield'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerfield(Heap, r_1) }
  testerfield(Heap, r_1) == testerfield'(Heap, r_1) && dummyFunction(testerfield#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerfield'(Heap, r_1) }
  dummyFunction(testerfield#triggerStateless(r_1))
);

// Framing axioms
function  testerfield#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), testerfield'(Heap, r_1) }
  state(Heap, Mask) ==> testerfield'(Heap, r_1) == testerfield#frame(FrameFragment(Heap[r_1, q_6]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  testerfield#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  testerfield#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure testerfield#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume r_1 != null;
    Mask := Mask[r_1, q_6:=Mask[r_1, q_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function testerfieldFull
// ==================================================

// Uninterpreted function definitions
function  testerfieldFull(Heap: HeapType, r_1: Ref): Ref;
function  testerfieldFull'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerfieldFull(Heap, r_1) }
  testerfieldFull(Heap, r_1) == testerfieldFull'(Heap, r_1) && dummyFunction(testerfieldFull#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { testerfieldFull'(Heap, r_1) }
  dummyFunction(testerfieldFull#triggerStateless(r_1))
);

// Framing axioms
function  testerfieldFull#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), testerfieldFull'(Heap, r_1) }
  state(Heap, Mask) ==> testerfieldFull'(Heap, r_1) == testerfieldFull#frame(FrameFragment(Heap[r_1, q_6]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  testerfieldFull#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  testerfieldFull#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure testerfieldFull#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, q_6:=Mask[r_1, q_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(r_1: Ref): Field PredicateType_P FrameType;
function  P#sm(r_1: Ref): Field PredicateType_P PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(P(r_1)) }
  PredicateMaskField(P(r_1)) == P#sm(r_1)
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  IsPredicateField(P(r_1))
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  getPredWandId(P(r_1)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { P(r_1), P(r2) }
  P(r_1) == P(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { P#sm(r_1), P#sm(r2) }
  P#sm(r_1) == P#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { P#trigger(Heap, P(r_1)) }
  P#everUsed(P(r_1))
);

// ==================================================
// Function used for framing of quantified permission (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(Q(e), wildcard)) in predicate P
// ==================================================

function  P#condqp1(Heap: HeapType, r_1_1_1: Ref): int;
function  sk_P#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, r_1: Ref ::
  { P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs_1(Heap2Heap, r_1)[sk_P#condqp1(P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1))] <==> refs_1(Heap1Heap, r_1)[sk_P#condqp1(P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1))]) && (refs_1(Heap2Heap, r_1)[sk_P#condqp1(P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1))] ==> Heap2Heap[null, Q(sk_P#condqp1(P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1)))] == Heap1Heap[null, Q(sk_P#condqp1(P#condqp1(Heap2Heap, r_1), P#condqp1(Heap1Heap, r_1)))]) ==> P#condqp1(Heap2Heap, r_1) == P#condqp1(Heap1Heap, r_1)
);

procedure P#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(Q(e), wildcard))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource Q(e) might not be injective. (0196.vpr@4.1--4.77) [81015]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered1(e_2_2), neverTriggered1(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
      );
    
    // -- Define Inverse Function
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < wildcard ==> invRecv1(e_2_2) == e_2_2 && qpRange1(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv1(r_2_1) }
        (refs_1(Heap, r_1)[invRecv1(r_2_1)] && NoPerm < wildcard) && qpRange1(r_2_1) ==> invRecv1(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv1(r_2_1)] && NoPerm < wildcard) && qpRange1(r_2_1) ==> (NoPerm < wildcard ==> invRecv1(r_2_1) == r_2_1) && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv1(r_2_1)] && NoPerm < wildcard) && qpRange1(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P2
// ==================================================

type PredicateType_P2;
function  P2(r_1: Ref): Field PredicateType_P2 FrameType;
function  P2#sm(r_1: Ref): Field PredicateType_P2 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(P2(r_1)) }
  PredicateMaskField(P2(r_1)) == P2#sm(r_1)
);
axiom (forall r_1: Ref ::
  { P2(r_1) }
  IsPredicateField(P2(r_1))
);
axiom (forall r_1: Ref ::
  { P2(r_1) }
  getPredWandId(P2(r_1)) == 2
);
function  P2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { P2(r_1), P2(r2) }
  P2(r_1) == P2(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { P2#sm(r_1), P2#sm(r2) }
  P2#sm(r_1) == P2#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { P2#trigger(Heap, P2(r_1)) }
  P2#everUsed(P2(r_1))
);

// ==================================================
// Function used for framing of quantified permission (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(Q(e), 1 / 2)) in predicate P2
// ==================================================

function  P2#condqp2(Heap: HeapType, r_1_1_1: Ref): int;
function  sk_P2#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, r_1: Ref ::
  { P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs_1(Heap2Heap, r_1)[sk_P2#condqp2(P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1))] && NoPerm < 1 / 2 <==> refs_1(Heap1Heap, r_1)[sk_P2#condqp2(P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1))] && NoPerm < 1 / 2) && (refs_1(Heap2Heap, r_1)[sk_P2#condqp2(P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1))] && NoPerm < 1 / 2 ==> Heap2Heap[null, Q(sk_P2#condqp2(P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1)))] == Heap1Heap[null, Q(sk_P2#condqp2(P2#condqp2(Heap2Heap, r_1), P2#condqp2(Heap1Heap, r_1)))]) ==> P2#condqp2(Heap2Heap, r_1) == P2#condqp2(Heap1Heap, r_1)
);

procedure P2#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(Q(e), 1 / 2))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Q(e), 1 / 2) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource Q(e) might not be injective. (0196.vpr@5.1--5.73) [81016]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered2(e_2_2), neverTriggered2(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> e_2_2 != e_2_3
      );
    
    // -- Define Inverse Function
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < 1 / 2 ==> invRecv2(e_2_2) == e_2_2 && qpRange2(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv2(r_2_1) }
        (refs_1(Heap, r_1)[invRecv2(r_2_1)] && NoPerm < 1 / 2) && qpRange2(r_2_1) ==> invRecv2(r_2_1) == r_2_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0196.vpr@5.1--5.73) [81017]"}
      (forall e_2_2: Ref ::
      { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
      refs_1(Heap, r_1)[e_2_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv2(r_2_1)] && NoPerm < 1 / 2) && qpRange2(r_2_1) ==> (NoPerm < 1 / 2 ==> invRecv2(r_2_1) == r_2_1) && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] + 1 / 2
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv2(r_2_1)] && NoPerm < 1 / 2) && qpRange2(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate R
// ==================================================

type PredicateType_R;
function  R(r_1: Ref): Field PredicateType_R FrameType;
function  R#sm(r_1: Ref): Field PredicateType_R PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(R(r_1)) }
  PredicateMaskField(R(r_1)) == R#sm(r_1)
);
axiom (forall r_1: Ref ::
  { R(r_1) }
  IsPredicateField(R(r_1))
);
axiom (forall r_1: Ref ::
  { R(r_1) }
  getPredWandId(R(r_1)) == 3
);
function  R#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  R#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { R(r_1), R(r2) }
  R(r_1) == R(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { R#sm(r_1), R#sm(r2) }
  R#sm(r_1) == R#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { R#trigger(Heap, R(r_1)) }
  R#everUsed(R(r_1))
);

// ==================================================
// Function used for framing of quantified permission (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(e.q, wildcard)) in predicate R
// ==================================================

function  R#condqp3(Heap: HeapType, r_1_1_1: Ref): int;
function  sk_R#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, r_1: Ref ::
  { R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs_1(Heap2Heap, r_1)[sk_R#condqp3(R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1))] <==> refs_1(Heap1Heap, r_1)[sk_R#condqp3(R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1))]) && (refs_1(Heap2Heap, r_1)[sk_R#condqp3(R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1))] ==> Heap2Heap[sk_R#condqp3(R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1)), q_6] == Heap1Heap[sk_R#condqp3(R#condqp3(Heap2Heap, r_1), R#condqp3(Heap1Heap, r_1)), q_6]) ==> R#condqp3(Heap2Heap, r_1) == R#condqp3(Heap1Heap, r_1)
);

procedure R#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var wildcard: real;
  
  // -- Check definedness of predicate body of R
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(e.q, wildcard))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource e.q might not be injective. (0196.vpr@6.1--6.76) [81018]"}
      (forall e_2_2: Ref, e_2_3: Ref ::
      
      (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
    );
    
    // -- Define Inverse Function
      assume (forall e_2_2: Ref ::
        { Heap[e_2_2, q_6] } { QPMask[e_2_2, q_6] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> qpRange3(e_2_2) && invRecv3(e_2_2) == e_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        refs_1(Heap, r_1)[invRecv3(o_9)] && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_2_2: Ref ::
        { Heap[e_2_2, q_6] } { QPMask[e_2_2, q_6] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> e_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv3(o_9)] && qpRange3(o_9) ==> invRecv3(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv3(o_9)] && qpRange3(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate R2
// ==================================================

type PredicateType_R2;
function  R2(r_1: Ref): Field PredicateType_R2 FrameType;
function  R2#sm(r_1: Ref): Field PredicateType_R2 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(R2(r_1)) }
  PredicateMaskField(R2(r_1)) == R2#sm(r_1)
);
axiom (forall r_1: Ref ::
  { R2(r_1) }
  IsPredicateField(R2(r_1))
);
axiom (forall r_1: Ref ::
  { R2(r_1) }
  getPredWandId(R2(r_1)) == 4
);
function  R2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  R2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { R2(r_1), R2(r2) }
  R2(r_1) == R2(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { R2#sm(r_1), R2#sm(r2) }
  R2#sm(r_1) == R2#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { R2#trigger(Heap, R2(r_1)) }
  R2#everUsed(R2(r_1))
);

// ==================================================
// Function used for framing of quantified permission (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(e.q, 1 / 2)) in predicate R2
// ==================================================

function  R2#condqp4(Heap: HeapType, r_1_1_1: Ref): int;
function  sk_R2#condqp4(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, r_1: Ref ::
  { R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs_1(Heap2Heap, r_1)[sk_R2#condqp4(R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1))] && NoPerm < 1 / 2 <==> refs_1(Heap1Heap, r_1)[sk_R2#condqp4(R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1))] && NoPerm < 1 / 2) && (refs_1(Heap2Heap, r_1)[sk_R2#condqp4(R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_R2#condqp4(R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1)), q_6] == Heap1Heap[sk_R2#condqp4(R2#condqp4(Heap2Heap, r_1), R2#condqp4(Heap1Heap, r_1)), q_6]) ==> R2#condqp4(Heap2Heap, r_1) == R2#condqp4(Heap1Heap, r_1)
);

procedure R2#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of R2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall e: Ref :: { (e in refs(r)) } (e in refs(r)) ==> acc(e.q, 1 / 2))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource e.q might not be injective. (0196.vpr@7.1--7.72) [81019]"}
      (forall e_2_2: Ref, e_2_3: Ref ::
      
      (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> e_2_2 != e_2_3
    );
    
    // -- Define Inverse Function
      assume (forall e_2_2: Ref ::
        { Heap[e_2_2, q_6] } { QPMask[e_2_2, q_6] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < 1 / 2 ==> qpRange4(e_2_2) && invRecv4(e_2_2) == e_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (refs_1(Heap, r_1)[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0196.vpr@7.1--7.72) [81020]"}
      (forall e_2_2: Ref ::
      { Heap[e_2_2, q_6] } { QPMask[e_2_2, q_6] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
      refs_1(Heap, r_1)[e_2_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall e_2_2: Ref ::
        { Heap[e_2_2, q_6] } { QPMask[e_2_2, q_6] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && 1 / 2 > NoPerm ==> e_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        ((refs_1(Heap, r_1)[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9) ==> (NoPerm < 1 / 2 ==> invRecv4(o_9) == o_9) && QPMask[o_9, q_6] == Mask[o_9, q_6] + 1 / 2) && (!((refs_1(Heap, r_1)[invRecv4(o_9)] && NoPerm < 1 / 2) && qpRange4(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(r_1: Ref): Field PredicateType_Q FrameType;
function  Q#sm(r_1: Ref): Field PredicateType_Q PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(Q(r_1)) }
  PredicateMaskField(Q(r_1)) == Q#sm(r_1)
);
axiom (forall r_1: Ref ::
  { Q(r_1) }
  IsPredicateField(Q(r_1))
);
axiom (forall r_1: Ref ::
  { Q(r_1) }
  getPredWandId(Q(r_1)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { Q(r_1), Q(r2) }
  Q(r_1) == Q(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { Q#sm(r_1), Q#sm(r2) }
  Q#sm(r_1) == Q#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { Q#trigger(Heap, Q(r_1)) }
  Q#everUsed(Q(r_1))
);

// ==================================================
// Translation of method pred1
// ==================================================

procedure pred1_1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(P(r), wildcard) -- 0196.vpr@32.5--32.31
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@32.5--32.31) [81022]"}
      Mask[null, P(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, P(r_1)];
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard * wildcard) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@32.5--32.31) [81023]"}
        (forall e_1: Ref, e_4: Ref ::
        { neverTriggered5(e_1), neverTriggered5(e_4) }
        (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
      );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[null, Q(e_1)] } { Mask[null, Q(e_1)] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && NoPerm < wildcard ==> invRecv5(e_1) == e_1 && qpRange5(e_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv5(r_1_1_1) }
        (refs_1(Heap, r_1)[invRecv5(r_1_1_1)] && NoPerm < wildcard) && qpRange5(r_1_1_1) ==> invRecv5(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        (refs_1(Heap, r_1)[invRecv5(r_1_1_1)] && NoPerm < wildcard) && qpRange5(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv5(r_1_1_1) == r_1_1_1) && QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        !((refs_1(Heap, r_1)[invRecv5(r_1_1_1)] && NoPerm < wildcard) && qpRange5(r_1_1_1)) ==> QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), wildcard) -- 0196.vpr@33.5--33.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@33.5--33.29) [81025]"}
      (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> wildcard < Mask[null, Q(e_2_2)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding P(r) might fail. Fraction wildcard * wildcard might be negative. (0196.vpr@33.5--33.29) [81026]"}
        (forall r_2_1: Ref ::
        { invRecv6(r_2_1) }
        refs_1(Heap, r_1)[invRecv6(r_2_1)] && qpRange6(r_2_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(Q(e), wildcard * wildcard) is injective
      assert {:msg "  Folding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@33.5--33.29) [81027]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered6(e_2_2), neverTriggered6(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@33.5--33.29) [81028]"}
        (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(Q(e), wildcard * wildcard)
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < wildcard ==> invRecv6(e_2_2) == e_2_2 && qpRange6(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv6(r_2_1) }
        (refs_1(Heap, r_1)[invRecv6(r_2_1)] && NoPerm < wildcard) && qpRange6(r_2_1) ==> invRecv6(r_2_1) == r_2_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv6(r_2_1)] && NoPerm < wildcard) && qpRange6(r_2_1) ==> invRecv6(r_2_1) == r_2_1 && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] - wildcard
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv6(r_2_1)] && NoPerm < wildcard) && qpRange6(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(r), wildcard) -- 0196.vpr@34.5--34.31
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@34.5--34.31) [81030]"}
      Mask[null, P(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, P(r_1)];
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard * wildcard) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@34.5--34.31) [81031]"}
        (forall e_3_1: Ref, e_3_2: Ref ::
        { neverTriggered7(e_3_1), neverTriggered7(e_3_2) }
        (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
      );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[null, Q(e_3_1)] } { Mask[null, Q(e_3_1)] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && NoPerm < wildcard ==> invRecv7(e_3_1) == e_3_1 && qpRange7(e_3_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv7(r_3_1) }
        (refs_1(Heap, r_1)[invRecv7(r_3_1)] && NoPerm < wildcard) && qpRange7(r_3_1) ==> invRecv7(r_3_1) == r_3_1
      );
    
    // -- Define updated permissions
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        (refs_1(Heap, r_1)[invRecv7(r_3_1)] && NoPerm < wildcard) && qpRange7(r_3_1) ==> (NoPerm < wildcard ==> invRecv7(r_3_1) == r_3_1) && QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        !((refs_1(Heap, r_1)[invRecv7(r_3_1)] && NoPerm < wildcard) && qpRange7(r_3_1)) ==> QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := tester(get(r)) -- 0196.vpr@35.5--35.35
    
    // -- Check definedness of tester(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function tester might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@35.21--35.35) [81032]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := tester(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerFull(get(r)) -- 0196.vpr@37.5--37.39
    
    // -- Check definedness of testerFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerFull might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@37.21--37.39) [81033]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pred2
// ==================================================

procedure pred2_1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(P(r), write) -- 0196.vpr@43.5--43.21
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@43.5--43.21) [81036]"}
        perm <= Mask[null, P(r_1)];
    }
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@43.5--43.21) [81037]"}
        (forall e_1: Ref, e_4: Ref ::
        { neverTriggered8(e_1), neverTriggered8(e_4) }
        (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
      );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[null, Q(e_1)] } { Mask[null, Q(e_1)] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && NoPerm < wildcard ==> invRecv8(e_1) == e_1 && qpRange8(e_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv8(r_1_1_1) }
        (refs_1(Heap, r_1)[invRecv8(r_1_1_1)] && NoPerm < wildcard) && qpRange8(r_1_1_1) ==> invRecv8(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        (refs_1(Heap, r_1)[invRecv8(r_1_1_1)] && NoPerm < wildcard) && qpRange8(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv8(r_1_1_1) == r_1_1_1) && QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        !((refs_1(Heap, r_1)[invRecv8(r_1_1_1)] && NoPerm < wildcard) && qpRange8(r_1_1_1)) ==> QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), write) -- 0196.vpr@44.5--44.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@44.5--44.19) [81039]"}
      (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> wildcard < Mask[null, Q(e_2_2)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding P(r) might fail. Fraction wildcard might be negative. (0196.vpr@44.5--44.19) [81040]"}
        (forall r_2_1: Ref ::
        { invRecv9(r_2_1) }
        refs_1(Heap, r_1)[invRecv9(r_2_1)] && qpRange9(r_2_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(Q(e), wildcard) is injective
      assert {:msg "  Folding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@44.5--44.19) [81041]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered9(e_2_2), neverTriggered9(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@44.5--44.19) [81042]"}
        (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(Q(e), wildcard)
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < wildcard ==> invRecv9(e_2_2) == e_2_2 && qpRange9(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv9(r_2_1) }
        (refs_1(Heap, r_1)[invRecv9(r_2_1)] && NoPerm < wildcard) && qpRange9(r_2_1) ==> invRecv9(r_2_1) == r_2_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv9(r_2_1)] && NoPerm < wildcard) && qpRange9(r_2_1) ==> invRecv9(r_2_1) == r_2_1 && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] - wildcard
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv9(r_2_1)] && NoPerm < wildcard) && qpRange9(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(r), write) -- 0196.vpr@45.5--45.21
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@45.5--45.21) [81046]"}
        perm <= Mask[null, P(r_1)];
    }
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@45.5--45.21) [81047]"}
        (forall e_3_1: Ref, e_3_2: Ref ::
        { neverTriggered10(e_3_1), neverTriggered10(e_3_2) }
        (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
      );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[null, Q(e_3_1)] } { Mask[null, Q(e_3_1)] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && NoPerm < wildcard ==> invRecv10(e_3_1) == e_3_1 && qpRange10(e_3_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv10(r_3_1) }
        (refs_1(Heap, r_1)[invRecv10(r_3_1)] && NoPerm < wildcard) && qpRange10(r_3_1) ==> invRecv10(r_3_1) == r_3_1
      );
    
    // -- Define updated permissions
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        (refs_1(Heap, r_1)[invRecv10(r_3_1)] && NoPerm < wildcard) && qpRange10(r_3_1) ==> (NoPerm < wildcard ==> invRecv10(r_3_1) == r_3_1) && QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        !((refs_1(Heap, r_1)[invRecv10(r_3_1)] && NoPerm < wildcard) && qpRange10(r_3_1)) ==> QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := tester(get(r)) -- 0196.vpr@46.5--46.35
    
    // -- Check definedness of tester(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function tester might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@46.21--46.35) [81048]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := tester(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerFull(get(r)) -- 0196.vpr@48.5--48.39
    
    // -- Check definedness of testerFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerFull might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@48.21--48.39) [81049]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pred3
// ==================================================

procedure pred3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(P(r), 1 / 2) -- 0196.vpr@54.5--54.26
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding P(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@54.5--54.26) [81051]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@54.5--54.26) [81052]"}
        perm <= Mask[null, P(r_1)];
    }
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard * (1 / 2)) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@54.5--54.26) [81053]"}
        (forall e_1: Ref, e_4: Ref ::
        { neverTriggered11(e_1), neverTriggered11(e_4) }
        (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
      );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[null, Q(e_1)] } { Mask[null, Q(e_1)] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && NoPerm < wildcard ==> invRecv11(e_1) == e_1 && qpRange11(e_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv11(r_1_1_1) }
        (refs_1(Heap, r_1)[invRecv11(r_1_1_1)] && NoPerm < wildcard) && qpRange11(r_1_1_1) ==> invRecv11(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        (refs_1(Heap, r_1)[invRecv11(r_1_1_1)] && NoPerm < wildcard) && qpRange11(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv11(r_1_1_1) == r_1_1_1) && QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        !((refs_1(Heap, r_1)[invRecv11(r_1_1_1)] && NoPerm < wildcard) && qpRange11(r_1_1_1)) ==> QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), 1 / 2) -- 0196.vpr@55.5--55.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@55.5--55.24) [81055]"}
      (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> wildcard < Mask[null, Q(e_2_2)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding P(r) might fail. Fraction wildcard * (1 / 2) might be negative. (0196.vpr@55.5--55.24) [81056]"}
        (forall r_2_1: Ref ::
        { invRecv12(r_2_1) }
        refs_1(Heap, r_1)[invRecv12(r_2_1)] && qpRange12(r_2_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(Q(e), wildcard * (1 / 2)) is injective
      assert {:msg "  Folding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@55.5--55.24) [81057]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered12(e_2_2), neverTriggered12(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@55.5--55.24) [81058]"}
        (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(Q(e), wildcard * (1 / 2))
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < wildcard ==> invRecv12(e_2_2) == e_2_2 && qpRange12(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv12(r_2_1) }
        (refs_1(Heap, r_1)[invRecv12(r_2_1)] && NoPerm < wildcard) && qpRange12(r_2_1) ==> invRecv12(r_2_1) == r_2_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv12(r_2_1)] && NoPerm < wildcard) && qpRange12(r_2_1) ==> invRecv12(r_2_1) == r_2_1 && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] - wildcard
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv12(r_2_1)] && NoPerm < wildcard) && qpRange12(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := 1 / 2;
    assert {:msg "  Folding P(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@55.5--55.24) [81059]"}
      perm >= NoPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(r), 1 / 2) -- 0196.vpr@56.5--56.26
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(P#condqp1(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding P(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@56.5--56.26) [81061]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(r) might fail. There might be insufficient permission to access P(r) (0196.vpr@56.5--56.26) [81062]"}
        perm <= Mask[null, P(r_1)];
    }
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), wildcard * (1 / 2)) is injective
      assert {:msg "  Unfolding P(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@56.5--56.26) [81063]"}
        (forall e_3_1: Ref, e_3_2: Ref ::
        { neverTriggered13(e_3_1), neverTriggered13(e_3_2) }
        (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
      );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[null, Q(e_3_1)] } { Mask[null, Q(e_3_1)] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && NoPerm < wildcard ==> invRecv13(e_3_1) == e_3_1 && qpRange13(e_3_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv13(r_3_1) }
        (refs_1(Heap, r_1)[invRecv13(r_3_1)] && NoPerm < wildcard) && qpRange13(r_3_1) ==> invRecv13(r_3_1) == r_3_1
      );
    
    // -- Define updated permissions
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        (refs_1(Heap, r_1)[invRecv13(r_3_1)] && NoPerm < wildcard) && qpRange13(r_3_1) ==> (NoPerm < wildcard ==> invRecv13(r_3_1) == r_3_1) && QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        !((refs_1(Heap, r_1)[invRecv13(r_3_1)] && NoPerm < wildcard) && qpRange13(r_3_1)) ==> QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := tester(get(r)) -- 0196.vpr@57.5--57.35
    
    // -- Check definedness of tester(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function tester might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@57.21--57.35) [81064]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := tester(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerFull(get(r)) -- 0196.vpr@59.5--59.39
    
    // -- Check definedness of testerFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerFull might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@59.21--59.39) [81065]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pred4
// ==================================================

procedure pred4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P2(r_1):=Mask[null, P2(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(P2(r), wildcard) -- 0196.vpr@65.5--65.32
    assume P2#trigger(Heap, P2(r_1));
    assume Heap[null, P2(r_1)] == FrameFragment(P2#condqp2(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding P2(r) might fail. There might be insufficient permission to access P2(r) (0196.vpr@65.5--65.32) [81067]"}
      Mask[null, P2(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, P2(r_1)];
    Mask := Mask[null, P2(r_1):=Mask[null, P2(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P2(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P2(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), 1 / 2 * wildcard) is injective
      assert {:msg "  Unfolding P2(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@65.5--65.32) [81068]"}
        (forall e_1: Ref, e_4: Ref ::
        { neverTriggered14(e_1), neverTriggered14(e_4) }
        (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
      );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[null, Q(e_1)] } { Mask[null, Q(e_1)] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && NoPerm < wildcard ==> invRecv14(e_1) == e_1 && qpRange14(e_1)
      );
      assume (forall r_1_1_1: Ref ::
        { invRecv14(r_1_1_1) }
        (refs_1(Heap, r_1)[invRecv14(r_1_1_1)] && NoPerm < wildcard) && qpRange14(r_1_1_1) ==> invRecv14(r_1_1_1) == r_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        (refs_1(Heap, r_1)[invRecv14(r_1_1_1)] && NoPerm < wildcard) && qpRange14(r_1_1_1) ==> (NoPerm < wildcard ==> invRecv14(r_1_1_1) == r_1_1_1) && QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_1_1_1: Ref ::
        { QPMask[null, Q(r_1_1_1)] }
        !((refs_1(Heap, r_1)[invRecv14(r_1_1_1)] && NoPerm < wildcard) && qpRange14(r_1_1_1)) ==> QPMask[null, Q(r_1_1_1)] == Mask[null, Q(r_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P2(r), wildcard) -- 0196.vpr@66.5--66.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wildcard assumptions
    havoc wildcard;
    assert {:msg "  Folding P2(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@66.5--66.30) [81070]"}
      (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> wildcard < Mask[null, Q(e_2_2)]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding P2(r) might fail. Fraction 1 / 2 * wildcard might be negative. (0196.vpr@66.5--66.30) [81071]"}
        (forall r_2_1: Ref ::
        { invRecv15(r_2_1) }
        refs_1(Heap, r_1)[invRecv15(r_2_1)] && qpRange15(r_2_1) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver acc(Q(e), 1 / 2 * wildcard) is injective
      assert {:msg "  Folding P2(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@66.5--66.30) [81072]"}
        (forall e_2_2: Ref, e_2_3: Ref ::
        { neverTriggered15(e_2_2), neverTriggered15(e_2_3) }
        (((e_2_2 != e_2_3 && refs_1(Heap, r_1)[e_2_2]) && refs_1(Heap, r_1)[e_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_2_2 != e_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P2(r) might fail. There might be insufficient permission to access Q(e) (0196.vpr@66.5--66.30) [81073]"}
        (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] ==> Mask[null, Q(e_2_2)] > NoPerm
      );
    
    // -- assumptions for inverse of receiver acc(Q(e), 1 / 2 * wildcard)
      assume (forall e_2_2: Ref ::
        { Heap[null, Q(e_2_2)] } { Mask[null, Q(e_2_2)] } { refs#frame(EmptyFrame, r_1)[e_2_2] }
        refs_1(Heap, r_1)[e_2_2] && NoPerm < wildcard ==> invRecv15(e_2_2) == e_2_2 && qpRange15(e_2_2)
      );
      assume (forall r_2_1: Ref ::
        { invRecv15(r_2_1) }
        (refs_1(Heap, r_1)[invRecv15(r_2_1)] && NoPerm < wildcard) && qpRange15(r_2_1) ==> invRecv15(r_2_1) == r_2_1
      );
    
    // -- assume permission updates
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        (refs_1(Heap, r_1)[invRecv15(r_2_1)] && NoPerm < wildcard) && qpRange15(r_2_1) ==> invRecv15(r_2_1) == r_2_1 && QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)] - wildcard
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, Q(r_2_1)] }
        !((refs_1(Heap, r_1)[invRecv15(r_2_1)] && NoPerm < wildcard) && qpRange15(r_2_1)) ==> QPMask[null, Q(r_2_1)] == Mask[null, Q(r_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, P2(r_1):=Mask[null, P2(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P2#trigger(Heap, P2(r_1));
    assume Heap[null, P2(r_1)] == FrameFragment(P2#condqp2(Heap, r_1));
    if (!HasDirectPerm(Mask, null, P2(r_1))) {
      Heap := Heap[null, P2#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P2(r_1):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P2(r), wildcard) -- 0196.vpr@67.5--67.32
    assume P2#trigger(Heap, P2(r_1));
    assume Heap[null, P2(r_1)] == FrameFragment(P2#condqp2(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding P2(r) might fail. There might be insufficient permission to access P2(r) (0196.vpr@67.5--67.32) [81075]"}
      Mask[null, P2(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, P2(r_1)];
    Mask := Mask[null, P2(r_1):=Mask[null, P2(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P2(r_1))) {
        havoc newVersion;
        Heap := Heap[null, P2(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    havoc wildcard;
    
    // -- check if receiver acc(Q(e), 1 / 2 * wildcard) is injective
      assert {:msg "  Unfolding P2(r) might fail. Quantified resource Q(e) might not be injective. (0196.vpr@67.5--67.32) [81076]"}
        (forall e_3_1: Ref, e_3_2: Ref ::
        { neverTriggered16(e_3_1), neverTriggered16(e_3_2) }
        (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
      );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[null, Q(e_3_1)] } { Mask[null, Q(e_3_1)] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && NoPerm < wildcard ==> invRecv16(e_3_1) == e_3_1 && qpRange16(e_3_1)
      );
      assume (forall r_3_1: Ref ::
        { invRecv16(r_3_1) }
        (refs_1(Heap, r_1)[invRecv16(r_3_1)] && NoPerm < wildcard) && qpRange16(r_3_1) ==> invRecv16(r_3_1) == r_3_1
      );
    
    // -- Define updated permissions
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        (refs_1(Heap, r_1)[invRecv16(r_3_1)] && NoPerm < wildcard) && qpRange16(r_3_1) ==> (NoPerm < wildcard ==> invRecv16(r_3_1) == r_3_1) && QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)] + wildcard
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_3_1: Ref ::
        { QPMask[null, Q(r_3_1)] }
        !((refs_1(Heap, r_1)[invRecv16(r_3_1)] && NoPerm < wildcard) && qpRange16(r_3_1)) ==> QPMask[null, Q(r_3_1)] == Mask[null, Q(r_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := tester(get(r)) -- 0196.vpr@68.5--68.35
    
    // -- Check definedness of tester(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function tester might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@68.21--68.35) [81077]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := tester(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerFull(get(r)) -- 0196.vpr@70.5--70.39
    
    // -- Check definedness of testerFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerFull might not hold. There might be insufficient permission to access Q(get(r)) (0196.vpr@70.21--70.39) [81078]"}
          NoPerm < perm ==> NoPerm < Mask[null, Q(get(Heap, r_1))];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method func1
// ==================================================

procedure func1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(R(r), wildcard) -- 0196.vpr@76.5--76.31
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@76.5--76.31) [81080]"}
      Mask[null, R(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, R(r_1)];
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@76.5--76.31) [81081]"}
      (forall e_1: Ref, e_4: Ref ::
      
      (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
    );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] ==> qpRange17(e_1) && invRecv17(e_1) == e_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        refs_1(Heap, r_1)[invRecv17(o_9)] && qpRange17(o_9) ==> invRecv17(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && wildcard > NoPerm ==> e_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv17(o_9)] && qpRange17(o_9) ==> invRecv17(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv17(o_9)] && qpRange17(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(R(r), wildcard) -- 0196.vpr@77.5--77.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@77.5--77.29) [81083]"}
      (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
    );
    assume (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> wildcard < Mask[e_1_1, q_6]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding R(r) might fail. Fraction wildcard * wildcard might be negative. (0196.vpr@77.5--77.29) [81084]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && dummyFunction(Heap[e_1_1, q_6]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver e is injective
      assert {:msg "  Folding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@77.5--77.29) [81085]"}
        (forall e_1_1: Ref, e_1_2: Ref ::
        { neverTriggered18(e_1_1), neverTriggered18(e_1_2) }
        (((e_1_1 != e_1_2 && refs_1(Heap, r_1)[e_1_1]) && refs_1(Heap, r_1)[e_1_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1_1 != e_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@77.5--77.29) [81086]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
      );
    
    // -- assumptions for inverse of receiver e
      assume (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && NoPerm < wildcard ==> qpRange18(e_1_1) && invRecv18(e_1_1) == e_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        refs_1(Heap, r_1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
      );
    
    // -- assume permission updates for field q
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9)) ==> invRecv18(o_9) == o_9 && QPMask[o_9, q_6] == Mask[o_9, q_6] - wildcard) && (!(refs_1(Heap, r_1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9))) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    if (!HasDirectPerm(Mask, null, R(r_1))) {
      Heap := Heap[null, R#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, R(r_1):=freshVersion];
    }
    // register all known folded permissions guarded by predicate R
    havoc newPMask;
    assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
      { newPMask[o_40, f_52] }
      Heap[null, R#sm(r_1)][o_40, f_52] ==> newPMask[o_40, f_52]
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> newPMask[e_2_2, q_6]
    );
    Heap := Heap[null, R#sm(r_1):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(R(r), wildcard) -- 0196.vpr@78.5--78.31
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@78.5--78.31) [81088]"}
      Mask[null, R(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, R(r_1)];
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@78.5--78.31) [81089]"}
      (forall e_3_1: Ref, e_3_2: Ref ::
      
      (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
    );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] ==> qpRange19(e_3_1) && invRecv19(e_3_1) == e_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        refs_1(Heap, r_1)[invRecv19(o_9)] && qpRange19(o_9) ==> invRecv19(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && wildcard > NoPerm ==> e_3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv19(o_9)] && qpRange19(o_9) ==> invRecv19(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv19(o_9)] && qpRange19(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := testerfield(get(r)) -- 0196.vpr@79.5--79.40
    
    // -- Check definedness of testerfield(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfield might not hold. There might be insufficient permission to access get(r).q (0196.vpr@79.21--79.40) [81090]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := testerfield(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerfieldFull(get(r)) -- 0196.vpr@81.5--81.44
    
    // -- Check definedness of testerfieldFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfieldFull might not hold. There might be insufficient permission to access get(r).q (0196.vpr@81.21--81.44) [81091]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerfieldFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method func2
// ==================================================

procedure func2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(R(r), write) -- 0196.vpr@87.5--87.21
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@87.5--87.21) [81094]"}
        perm <= Mask[null, R(r_1)];
    }
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@87.5--87.21) [81095]"}
      (forall e_1: Ref, e_4: Ref ::
      
      (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
    );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] ==> qpRange20(e_1) && invRecv20(e_1) == e_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        refs_1(Heap, r_1)[invRecv20(o_9)] && qpRange20(o_9) ==> invRecv20(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] ==> e_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv20(o_9)] && qpRange20(o_9) ==> invRecv20(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv20(o_9)] && qpRange20(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(R(r), write) -- 0196.vpr@88.5--88.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@88.5--88.19) [81097]"}
      (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
    );
    assume (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> wildcard < Mask[e_1_1, q_6]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding R(r) might fail. Fraction wildcard might be negative. (0196.vpr@88.5--88.19) [81098]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && dummyFunction(Heap[e_1_1, q_6]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver e is injective
      assert {:msg "  Folding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@88.5--88.19) [81099]"}
        (forall e_1_1: Ref, e_1_2: Ref ::
        { neverTriggered21(e_1_1), neverTriggered21(e_1_2) }
        (((e_1_1 != e_1_2 && refs_1(Heap, r_1)[e_1_1]) && refs_1(Heap, r_1)[e_1_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1_1 != e_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@88.5--88.19) [81100]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
      );
    
    // -- assumptions for inverse of receiver e
      assume (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && NoPerm < wildcard ==> qpRange21(e_1_1) && invRecv21(e_1_1) == e_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        refs_1(Heap, r_1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
      );
    
    // -- assume permission updates for field q
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9)) ==> invRecv21(o_9) == o_9 && QPMask[o_9, q_6] == Mask[o_9, q_6] - wildcard) && (!(refs_1(Heap, r_1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9))) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    if (!HasDirectPerm(Mask, null, R(r_1))) {
      Heap := Heap[null, R#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, R(r_1):=freshVersion];
    }
    // register all known folded permissions guarded by predicate R
    havoc newPMask;
    assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
      { newPMask[o_42, f_55] }
      Heap[null, R#sm(r_1)][o_42, f_55] ==> newPMask[o_42, f_55]
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> newPMask[e_2_2, q_6]
    );
    Heap := Heap[null, R#sm(r_1):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(R(r), write) -- 0196.vpr@89.5--89.21
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@89.5--89.21) [81104]"}
        perm <= Mask[null, R(r_1)];
    }
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@89.5--89.21) [81105]"}
      (forall e_3_1: Ref, e_3_2: Ref ::
      
      (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
    );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] ==> qpRange22(e_3_1) && invRecv22(e_3_1) == e_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        refs_1(Heap, r_1)[invRecv22(o_9)] && qpRange22(o_9) ==> invRecv22(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] ==> e_3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv22(o_9)] && qpRange22(o_9) ==> invRecv22(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv22(o_9)] && qpRange22(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := testerfield(get(r)) -- 0196.vpr@90.5--90.40
    
    // -- Check definedness of testerfield(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfield might not hold. There might be insufficient permission to access get(r).q (0196.vpr@90.21--90.40) [81106]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := testerfield(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerfieldFull(get(r)) -- 0196.vpr@92.5--92.44
    
    // -- Check definedness of testerfieldFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfieldFull might not hold. There might be insufficient permission to access get(r).q (0196.vpr@92.21--92.44) [81107]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerfieldFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method func3
// ==================================================

procedure func3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(R(r), 1 / 2) -- 0196.vpr@98.5--98.26
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding R(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@98.5--98.26) [81109]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@98.5--98.26) [81110]"}
        perm <= Mask[null, R(r_1)];
    }
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@98.5--98.26) [81111]"}
      (forall e_1: Ref, e_4: Ref ::
      
      (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
    );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] ==> qpRange23(e_1) && invRecv23(e_1) == e_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        refs_1(Heap, r_1)[invRecv23(o_9)] && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && wildcard > NoPerm ==> e_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv23(o_9)] && qpRange23(o_9) ==> invRecv23(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv23(o_9)] && qpRange23(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(R(r), 1 / 2) -- 0196.vpr@99.5--99.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@99.5--99.24) [81113]"}
      (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
    );
    assume (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> wildcard < Mask[e_1_1, q_6]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding R(r) might fail. Fraction wildcard * (1 / 2) might be negative. (0196.vpr@99.5--99.24) [81114]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && dummyFunction(Heap[e_1_1, q_6]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver e is injective
      assert {:msg "  Folding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@99.5--99.24) [81115]"}
        (forall e_1_1: Ref, e_1_2: Ref ::
        { neverTriggered24(e_1_1), neverTriggered24(e_1_2) }
        (((e_1_1 != e_1_2 && refs_1(Heap, r_1)[e_1_1]) && refs_1(Heap, r_1)[e_1_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1_1 != e_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding R(r) might fail. There might be insufficient permission to access e.q (0196.vpr@99.5--99.24) [81116]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
      );
    
    // -- assumptions for inverse of receiver e
      assume (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && NoPerm < wildcard ==> qpRange24(e_1_1) && invRecv24(e_1_1) == e_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        refs_1(Heap, r_1)[invRecv24(o_9)] && (NoPerm < wildcard && qpRange24(o_9)) ==> invRecv24(o_9) == o_9
      );
    
    // -- assume permission updates for field q
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv24(o_9)] && (NoPerm < wildcard && qpRange24(o_9)) ==> invRecv24(o_9) == o_9 && QPMask[o_9, q_6] == Mask[o_9, q_6] - wildcard) && (!(refs_1(Heap, r_1)[invRecv24(o_9)] && (NoPerm < wildcard && qpRange24(o_9))) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := 1 / 2;
    assert {:msg "  Folding R(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@99.5--99.24) [81117]"}
      perm >= NoPerm;
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    if (!HasDirectPerm(Mask, null, R(r_1))) {
      Heap := Heap[null, R#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, R(r_1):=freshVersion];
    }
    // register all known folded permissions guarded by predicate R
    havoc newPMask;
    assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
      { newPMask[o_46, f_60] }
      Heap[null, R#sm(r_1)][o_46, f_60] ==> newPMask[o_46, f_60]
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> newPMask[e_2_2, q_6]
    );
    Heap := Heap[null, R#sm(r_1):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(R(r), 1 / 2) -- 0196.vpr@100.5--100.26
    assume R#trigger(Heap, R(r_1));
    assume Heap[null, R(r_1)] == FrameFragment(R#condqp3(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding R(r) might fail. Fraction 1 / 2 might be negative. (0196.vpr@100.5--100.26) [81119]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding R(r) might fail. There might be insufficient permission to access R(r) (0196.vpr@100.5--100.26) [81120]"}
        perm <= Mask[null, R(r_1)];
    }
    Mask := Mask[null, R(r_1):=Mask[null, R(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@100.5--100.26) [81121]"}
      (forall e_3_1: Ref, e_3_2: Ref ::
      
      (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
    );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] ==> qpRange25(e_3_1) && invRecv25(e_3_1) == e_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        refs_1(Heap, r_1)[invRecv25(o_9)] && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && wildcard > NoPerm ==> e_3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv25(o_9)] && qpRange25(o_9) ==> invRecv25(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv25(o_9)] && qpRange25(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := testerfield(get(r)) -- 0196.vpr@101.5--101.40
    
    // -- Check definedness of testerfield(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfield might not hold. There might be insufficient permission to access get(r).q (0196.vpr@101.21--101.40) [81122]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := testerfield(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerfieldFull(get(r)) -- 0196.vpr@103.5--103.44
    
    // -- Check definedness of testerfieldFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfieldFull might not hold. There might be insufficient permission to access get(r).q (0196.vpr@103.21--103.44) [81123]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerfieldFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method func4
// ==================================================

procedure func4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r2: Ref;
  var r3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, R2(r_1):=Mask[null, R2(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r2, $allocated];
    assume Heap[r3, $allocated];
  
  // -- Translating statement: unfold acc(R2(r), wildcard) -- 0196.vpr@109.5--109.32
    assume R2#trigger(Heap, R2(r_1));
    assume Heap[null, R2(r_1)] == FrameFragment(R2#condqp4(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding R2(r) might fail. There might be insufficient permission to access R2(r) (0196.vpr@109.5--109.32) [81125]"}
      Mask[null, R2(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, R2(r_1)];
    Mask := Mask[null, R2(r_1):=Mask[null, R2(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R2(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R2(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R2(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@109.5--109.32) [81126]"}
      (forall e_1: Ref, e_4: Ref ::
      
      (((e_1 != e_4 && refs_1(Heap, r_1)[e_1]) && refs_1(Heap, r_1)[e_4]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1 != e_4
    );
    
    // -- Define Inverse Function
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] ==> qpRange26(e_1) && invRecv26(e_1) == e_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        refs_1(Heap, r_1)[invRecv26(o_9)] && qpRange26(o_9) ==> invRecv26(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_1: Ref ::
        { Heap[e_1, q_6] } { QPMask[e_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1] }
        refs_1(Heap, r_1)[e_1] && wildcard > NoPerm ==> e_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv26(o_9)] && qpRange26(o_9) ==> invRecv26(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv26(o_9)] && qpRange26(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(R2(r), wildcard) -- 0196.vpr@110.5--110.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Folding R2(r) might fail. There might be insufficient permission to access e.q (0196.vpr@110.5--110.30) [81128]"}
      (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
    );
    assume (forall e_1_1: Ref ::
      
      refs_1(Heap, r_1)[e_1_1] ==> wildcard < Mask[e_1_1, q_6]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Folding R2(r) might fail. Fraction 1 / 2 * wildcard might be negative. (0196.vpr@110.5--110.30) [81129]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && dummyFunction(Heap[e_1_1, q_6]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver e is injective
      assert {:msg "  Folding R2(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@110.5--110.30) [81130]"}
        (forall e_1_1: Ref, e_1_2: Ref ::
        { neverTriggered27(e_1_1), neverTriggered27(e_1_2) }
        (((e_1_1 != e_1_2 && refs_1(Heap, r_1)[e_1_1]) && refs_1(Heap, r_1)[e_1_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_1_1 != e_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding R2(r) might fail. There might be insufficient permission to access e.q (0196.vpr@110.5--110.30) [81131]"}
        (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] ==> Mask[e_1_1, q_6] > NoPerm
      );
    
    // -- assumptions for inverse of receiver e
      assume (forall e_1_1: Ref ::
        { Heap[e_1_1, q_6] } { QPMask[e_1_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_1_1] }
        refs_1(Heap, r_1)[e_1_1] && NoPerm < wildcard ==> qpRange27(e_1_1) && invRecv27(e_1_1) == e_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        refs_1(Heap, r_1)[invRecv27(o_9)] && (NoPerm < wildcard && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
      );
    
    // -- assume permission updates for field q
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv27(o_9)] && (NoPerm < wildcard && qpRange27(o_9)) ==> invRecv27(o_9) == o_9 && QPMask[o_9, q_6] == Mask[o_9, q_6] - wildcard) && (!(refs_1(Heap, r_1)[invRecv27(o_9)] && (NoPerm < wildcard && qpRange27(o_9))) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, R2(r_1):=Mask[null, R2(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume R2#trigger(Heap, R2(r_1));
    assume Heap[null, R2(r_1)] == FrameFragment(R2#condqp4(Heap, r_1));
    if (!HasDirectPerm(Mask, null, R2(r_1))) {
      Heap := Heap[null, R2#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, R2(r_1):=freshVersion];
    }
    // register all known folded permissions guarded by predicate R2
    havoc newPMask;
    assume (forall <A, B> o: Ref, f_61: (Field A B) ::
      { newPMask[o, f_61] }
      Heap[null, R2#sm(r_1)][o, f_61] ==> newPMask[o, f_61]
    );
    assume (forall e_2_2: Ref ::
      
      refs_1(Heap, r_1)[e_2_2] ==> newPMask[e_2_2, q_6]
    );
    Heap := Heap[null, R2#sm(r_1):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(R2(r), wildcard) -- 0196.vpr@111.5--111.32
    assume R2#trigger(Heap, R2(r_1));
    assume Heap[null, R2(r_1)] == FrameFragment(R2#condqp4(Heap, r_1));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding R2(r) might fail. There might be insufficient permission to access R2(r) (0196.vpr@111.5--111.32) [81133]"}
      Mask[null, R2(r_1)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, R2(r_1)];
    Mask := Mask[null, R2(r_1):=Mask[null, R2(r_1)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, R2(r_1))) {
        havoc newVersion;
        Heap := Heap[null, R2(r_1):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding R2(r) might fail. Quantified resource e.q might not be injective. (0196.vpr@111.5--111.32) [81134]"}
      (forall e_3_1: Ref, e_3_2: Ref ::
      
      (((e_3_1 != e_3_2 && refs_1(Heap, r_1)[e_3_1]) && refs_1(Heap, r_1)[e_3_2]) && NoPerm < wildcard) && NoPerm < wildcard ==> e_3_1 != e_3_2
    );
    
    // -- Define Inverse Function
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] ==> qpRange28(e_3_1) && invRecv28(e_3_1) == e_3_1
      );
      assume (forall o_9: Ref ::
        { invRecv28(o_9) }
        refs_1(Heap, r_1)[invRecv28(o_9)] && qpRange28(o_9) ==> invRecv28(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall e_3_1: Ref ::
        { Heap[e_3_1, q_6] } { QPMask[e_3_1, q_6] } { refs#frame(EmptyFrame, r_1)[e_3_1] }
        refs_1(Heap, r_1)[e_3_1] && wildcard > NoPerm ==> e_3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, q_6] }
        (refs_1(Heap, r_1)[invRecv28(o_9)] && qpRange28(o_9) ==> invRecv28(o_9) == o_9 && Mask[o_9, q_6] < QPMask[o_9, q_6]) && (!(refs_1(Heap, r_1)[invRecv28(o_9)] && qpRange28(o_9)) ==> QPMask[o_9, q_6] == Mask[o_9, q_6])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != q_6 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r2 := testerfield(get(r)) -- 0196.vpr@112.5--112.40
    
    // -- Check definedness of testerfield(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfield might not hold. There might be insufficient permission to access get(r).q (0196.vpr@112.21--112.40) [81135]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r2 := testerfield(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
  
  // -- Translating statement: r3 := testerfieldFull(get(r)) -- 0196.vpr@114.5--114.44
    
    // -- Check definedness of testerfieldFull(get(r))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function testerfieldFull might not hold. There might be insufficient permission to access get(r).q (0196.vpr@114.21--114.44) [81136]"}
          NoPerm < perm ==> NoPerm < Mask[get(Heap, r_1), q_6];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    r3 := testerfieldFull(Heap, get(Heap, r_1));
    assume state(Heap, Mask);
}