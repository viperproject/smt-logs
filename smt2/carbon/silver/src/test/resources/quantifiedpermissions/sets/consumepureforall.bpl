// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/consumepureforall-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_17] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_56: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_56] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_56) ==> Heap[o_43, f_56] == ExhaleHeap[o_43, f_56]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_57: (Field A B), v: B ::
  { Heap[o_11, f_57:=v] }
  succHeap(Heap, Heap[o_11, f_57:=v])
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

function  neverTriggered1(s_1_1: Ref): bool;
function  neverTriggered2(s_1_1: Ref): bool;
function  neverTriggered3(t_1_1: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_2_2: Ref): bool;
function  neverTriggered6(s_1_1: Ref): bool;
function  neverTriggered7(r_1_1: Ref): bool;
function  neverTriggered8(r_2: Ref): bool;
function  neverTriggered9(s_1_1: Ref): bool;
function  neverTriggered10(r_1_1: Ref): bool;
function  neverTriggered11(r_2: Ref): bool;
function  neverTriggered12(s_1_1: Ref): bool;
function  neverTriggered13(r_1_1: Ref): bool;
function  neverTriggered14(r_2: Ref): bool;
function  neverTriggered15(s_1_1: Ref): bool;
function  neverTriggered16(r_1_1: Ref): bool;
function  neverTriggered17(r_2: Ref): bool;
function  neverTriggered18(s_1_1: Ref): bool;
function  neverTriggered19(s_1_1: Ref): bool;
function  neverTriggered20(r_1_1: Ref): bool;
function  neverTriggered21(r_2: Ref): bool;
function  neverTriggered22(s_1_1: Ref): bool;
function  neverTriggered23(r_1_1: Ref): bool;
function  neverTriggered24(r_2: Ref): bool;
function  neverTriggered25(s_1_1: Ref): bool;
function  neverTriggered26(r_1_1: Ref): bool;
function  neverTriggered27(r_2: Ref): bool;
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method m
// ==================================================

procedure m_17(S: (Set Ref), b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var p_4: Ref;
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
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@7.11--7.46) [180500]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange1(s_1_1) && invRecv1(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (S[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref :: { (p in S) } (p in S) ==> p.f > 0)
      if (*) {
        if (S[p_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.f (consumepureforall.vpr@8.11--8.45) [180501]"}
            HasDirectPerm(Mask, p_4, f_7);
        }
        assume false;
      }
    assume (forall p_1_1: Ref ::
      { S[p_1_1] }
      S[p_1_1] ==> Heap[p_1_1, f_7] > 0
    );
    assume state(Heap, Mask);
    assume S[b_24];
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
    assume b_24 != null;
    PostMask := PostMask[b_24, f_7:=PostMask[b_24, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b.f > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.f (consumepureforall.vpr@11.9--11.16) [180502]"}
        HasDirectPerm(PostMask, b_24, f_7);
    assume PostHeap[b_24, f_7] > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m might not hold. There might be insufficient permission to access b.f (consumepureforall.vpr@10.9--10.17) [180503]"}
        perm <= Mask[b_24, f_7];
    }
    Mask := Mask[b_24, f_7:=Mask[b_24, f_7] - perm];
    assert {:msg "  Postcondition of m might not hold. Assertion b.f > 0 might not hold. (consumepureforall.vpr@11.9--11.16) [180504]"}
      Heap[b_24, f_7] > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(S: (Set Ref), T: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var u_13: Ref;
  var v_14: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var y_32: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var y_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@16.11--16.47) [180505]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange2(s_1_1) && invRecv2(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (S[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall t: Ref :: { (t in T) } (t in T) ==> acc(t.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource t.f might not be injective. (consumepureforall.vpr@17.11--17.47) [180506]"}
      (forall t_1_1: Ref, t_1_2: Ref ::
      
      (((t_1_1 != t_1_2 && T[t_1_1]) && T[t_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> t_1_1 != t_1_2
    );
    
    // -- Define Inverse Function
      assume (forall t_1_1: Ref ::
        { Heap[t_1_1, f_7] } { QPMask[t_1_1, f_7] } { T[t_1_1] }
        T[t_1_1] && NoPerm < FullPerm ==> qpRange3(t_1_1) && invRecv3(t_1_1) == t_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (T[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall t_1_1: Ref ::
        { Heap[t_1_1, f_7] } { QPMask[t_1_1, f_7] } { T[t_1_1] }
        T[t_1_1] ==> t_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((T[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((T[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref :: { (u in S) } (u in S) ==> u.f > 0)
      if (*) {
        if (S[u_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access u.f (consumepureforall.vpr@18.11--18.47) [180507]"}
            HasDirectPerm(Mask, u_13, f_7);
        }
        assume false;
      }
    assume (forall u_1_1: Ref ::
      { S[u_1_1] }
      S[u_1_1] ==> Heap[u_1_1, f_7] > 0
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v: Ref :: { (v in T) } (v in T) ==> v.f > 0)
      if (*) {
        if (T[v_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v.f (consumepureforall.vpr@19.11--19.46) [180508]"}
            HasDirectPerm(Mask, v_14, f_7);
        }
        assume false;
      }
    assume (forall v_1_1: Ref ::
      { T[v_1_1] }
      T[v_1_1] ==> Heap[v_1_1, f_7] > 0
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
    
    // -- Check definedness of (forall x: Ref :: { (x in (T union S)) } (x in (T union S)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (consumepureforall.vpr@20.10--20.56) [180509]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Union(T, S)[x_1]) && Set#Union(T, S)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#Union(T, S)[x_1] }
        Set#Union(T, S)[x_1] && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Set#Union(T, S)[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#Union(T, S)[x_1] }
        Set#Union(T, S)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#Union(T, S)[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Set#Union(T, S)[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall y: Ref :: { (y in (T union S)) } (y in (T union S)) ==> y.f > 0)
      if (*) {
        if (Set#Union(T, S)[y_32]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (consumepureforall.vpr@21.10--21.55) [180510]"}
            HasDirectPerm(PostMask, y_32, f_7);
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { Set#Union(T, S)[y_1] }
      Set#Union(T, S)[y_1] ==> PostHeap[y_1, f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (consumepureforall.vpr@20.10--20.56) [180511]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered5(x_2_2), neverTriggered5(x_2_3) }
        (((x_2_2 != x_2_3 && Set#Union(T, S)[x_2_2]) && Set#Union(T, S)[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access x.f (consumepureforall.vpr@20.10--20.56) [180512]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Set#Union(T, S)[x_2_2] }
        Set#Union(T, S)[x_2_2] ==> Mask[x_2_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Set#Union(T, S)[x_2_2] }
        Set#Union(T, S)[x_2_2] && NoPerm < FullPerm ==> qpRange5(x_2_2) && invRecv5(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        Set#Union(T, S)[invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#Union(T, S)[invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Set#Union(T, S)[invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(T, S)[y_2_1]) {
        assert {:msg "  Postcondition of m4 might not hold. Assertion y.f > 0 might not hold. (consumepureforall.vpr@21.10--21.55) [180513]"}
          Heap[y_2_1, f_7] > 0;
      }
      assume false;
    }
    assume (forall y_3_1: Ref ::
      { Set#Union(T, S)[y_3_1] }
      Set#Union(T, S)[y_3_1] ==> Heap[y_3_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(S: (Set Ref), b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var p_13: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var q_8: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var q_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@28.11--28.47) [180514]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange6(s_1_1) && invRecv6(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (S[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref :: { (p in S) } (p in S) ==> p.f > 0)
      if (*) {
        if (S[p_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.f (consumepureforall.vpr@29.11--29.46) [180515]"}
            HasDirectPerm(Mask, p_13, f_7);
        }
        assume false;
      }
    assume (forall p_1_1: Ref ::
      { S[p_1_1] }
      S[p_1_1] ==> Heap[p_1_1, f_7] > 0
    );
    assume state(Heap, Mask);
    assume S[b_24];
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@31.10--31.47) [180516]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange7(r_1_1) && invRecv7(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (S[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> invRecv7(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall q: Ref :: { (q in S) } (q in S) ==> q.f > 0)
      if (*) {
        if (S[q_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access q.f (consumepureforall.vpr@32.10--32.46) [180517]"}
            HasDirectPerm(PostMask, q_8, f_7);
        }
        assume false;
      }
    assume (forall q_1_1: Ref ::
      { S[q_1_1] }
      S[q_1_1] ==> PostHeap[q_1_1, f_7] > 0
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 3 -- consumepureforall.vpr@34.4--34.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@34.4--34.12) [180518]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@31.10--31.47) [180519]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered8(r_2), neverTriggered8(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@31.10--31.47) [180520]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange8(r_2) && invRecv8(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        S[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[q_2_1]) {
        assert {:msg "  Postcondition of m2 might not hold. Assertion q.f > 0 might not hold. (consumepureforall.vpr@32.10--32.46) [180521]"}
          Heap[q_2_1, f_7] > 0;
      }
      assume false;
    }
    assume (forall q_3_1: Ref ::
      { S[q_3_1] }
      S[q_3_1] ==> Heap[q_3_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m13
// ==================================================

procedure m13(S: (Set Ref), b_24: Ref, a_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_4: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@38.11--38.47) [180522]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange9(s_1_1) && invRecv9(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (S[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Equal(S, Set#Singleton(b_24));
    assume state(Heap, Mask);
    
    // -- Check definedness of b.f == a
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.f (consumepureforall.vpr@40.10--40.18) [180523]"}
        HasDirectPerm(Mask, b_24, f_7);
    assume Heap[b_24, f_7] == a_2;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@41.10--41.47) [180524]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange10(r_1_1) && invRecv10(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (S[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> invRecv10(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> invRecv10(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
      if (*) {
        if (S[t_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access t.f (consumepureforall.vpr@42.10--42.54) [180525]"}
            HasDirectPerm(PostMask, t_4, f_7);
        }
        assume false;
      }
    assume (forall t_1_1: Ref ::
      { S[t_1_1] }
      S[t_1_1] ==> PostHeap[t_1_1, f_7] > 2 * a_2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a + 1 -- consumepureforall.vpr@44.5--44.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@44.5--44.17) [180526]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@41.10--41.47) [180527]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered11(r_2), neverTriggered11(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m13 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@41.10--41.47) [180528]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange11(r_2) && invRecv11(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        S[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[t_2_1]) {
        assert {:msg "  Postcondition of m13 might not hold. Assertion t.f > 2 * a might not hold. (consumepureforall.vpr@42.10--42.54) [180529]"}
          Heap[t_2_1, f_7] > 2 * a_2;
      }
      assume false;
    }
    assume (forall t_3_1: Ref ::
      { S[t_3_1] }
      S[t_3_1] ==> Heap[t_3_1, f_7] > 2 * a_2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(S: (Set Ref), b_24: Ref, a_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_5: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@49.11--49.47) [180530]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange12(s_1_1) && invRecv12(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (S[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9) ==> invRecv12(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> invRecv12(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv12(o_9)] && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Equal(S, Set#Singleton(b_24));
    assume state(Heap, Mask);
    
    // -- Check definedness of b.f == a
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.f (consumepureforall.vpr@51.10--51.18) [180531]"}
        HasDirectPerm(Mask, b_24, f_7);
    assume Heap[b_24, f_7] == a_2;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@52.10--52.47) [180532]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange13(r_1_1) && invRecv13(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (S[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
      if (*) {
        if (S[t_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access t.f (consumepureforall.vpr@53.10--53.54) [180533]"}
            HasDirectPerm(PostMask, t_5, f_7);
        }
        assume false;
      }
    assume (forall t_1_1: Ref ::
      { S[t_1_1] }
      S[t_1_1] ==> PostHeap[t_1_1, f_7] > 2 * a_2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a + 1 -- consumepureforall.vpr@55.5--55.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@55.5--55.17) [180534]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@52.10--52.47) [180535]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered14(r_2), neverTriggered14(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@52.10--52.47) [180536]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange14(r_2) && invRecv14(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        S[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> invRecv14(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> invRecv14(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[t_2_1]) {
        assert {:msg "  Postcondition of m3 might not hold. Assertion t.f > 2 * a might not hold. (consumepureforall.vpr@53.10--53.54) [180537]"}
          Heap[t_2_1, f_7] > 2 * a_2;
      }
      assume false;
    }
    assume (forall t_3_1: Ref ::
      { S[t_3_1] }
      S[t_3_1] ==> Heap[t_3_1, f_7] > 2 * a_2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(S: (Set Ref), b_24: Ref, a_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_6: Ref;
  var t_1_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@59.11--59.47) [180538]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange15(s_1_1) && invRecv15(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (S[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> invRecv15(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Equal(S, Set#Singleton(b_24));
    assume state(Heap, Mask);
    
    // -- Check definedness of b.f == a
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b.f (consumepureforall.vpr@61.10--61.18) [180539]"}
        HasDirectPerm(Mask, b_24, f_7);
    assume Heap[b_24, f_7] == a_2;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@62.10--62.47) [180540]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange16(r_1_1) && invRecv16(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (S[invRecv16(o_9)] && NoPerm < FullPerm) && qpRange16(o_9) ==> invRecv16(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv16(o_9)] && NoPerm < FullPerm) && qpRange16(o_9) ==> (NoPerm < FullPerm ==> invRecv16(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv16(o_9)] && NoPerm < FullPerm) && qpRange16(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a -- consumepureforall.vpr@64.5--64.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@64.5--64.15) [180541]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a) -- consumepureforall.vpr@66.5--66.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f > 2 * a)
      if (*) {
        if (S[t_6]) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access t.f (consumepureforall.vpr@66.13--66.55) [180542]"}
            HasDirectPerm(ExhaleWellDef0Mask, t_6, f_7);
        }
        assume false;
      }
    if (*) {
      if (S[t_1_1]) {
        assert {:msg "  Exhale might fail. Assertion t.f > 2 * a might not hold. (consumepureforall.vpr@66.13--66.55) [180543]"}
          Heap[t_1_1, f_7] > 2 * a_2;
      }
      assume false;
    }
    assume (forall t_2_1_1: Ref ::
      { S[t_2_1_1] }
      S[t_2_1_1] ==> Heap[t_2_1_1, f_7] > 2 * a_2
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@62.10--62.47) [180544]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered17(r_2), neverTriggered17(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m7 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@62.10--62.47) [180545]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange17(r_2) && invRecv17(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        S[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(S: (Set Ref), b_24: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@70.11--70.47) [180546]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange18(s_1_1) && invRecv18(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        (S[invRecv18(o_9)] && NoPerm < FullPerm) && qpRange18(o_9) ==> invRecv18(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv18(o_9)] && NoPerm < FullPerm) && qpRange18(o_9) ==> (NoPerm < FullPerm ==> invRecv18(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv18(o_9)] && NoPerm < FullPerm) && qpRange18(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume S[b_24];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale b.f > 0 -- consumepureforall.vpr@73.12--73.19
    
    // -- Check definedness of b.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@73.12--73.19) [180547]"}
        HasDirectPerm(Mask, b_24, f_7);
    assume Heap[b_24, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m8
// ==================================================

procedure m8(S: (Set Ref), b_24: Ref, a_2: int, c: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s_19: Ref;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_7: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@77.12--77.48) [180548]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange19(s_1_1) && invRecv19(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        (S[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9) ==> invRecv19(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> invRecv19(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv19(o_9)] && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> s.f == a)
      if (*) {
        if (S[s_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.f (consumepureforall.vpr@78.12--78.48) [180549]"}
            HasDirectPerm(Mask, s_19, f_7);
        }
        assume false;
      }
    assume (forall s_3_1: Ref ::
      { S[s_3_1] }
      S[s_3_1] ==> Heap[s_3_1, f_7] == a_2
    );
    assume state(Heap, Mask);
    assume S[b_24];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c != null;
    Mask := Mask[c, f_7:=Mask[c, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of c.f < 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.f (consumepureforall.vpr@81.12--81.19) [180550]"}
        HasDirectPerm(Mask, c, f_7);
    assume Heap[c, f_7] < 0;
    assume state(Heap, Mask);
    assume a_2 > 0;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@83.11--83.48) [180551]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange20(r_1_1) && invRecv20(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (S[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> invRecv20(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> invRecv20(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f == (t == b ? 2 * a + 1 : a))
      if (*) {
        if (S[t_7]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access t.f (consumepureforall.vpr@84.11--84.71) [180552]"}
            HasDirectPerm(PostMask, t_7, f_7);
        }
        assume false;
      }
    assume (forall t_1_1: Ref ::
      { S[t_1_1] }
      S[t_1_1] ==> PostHeap[t_1_1, f_7] == (if t_1_1 == b_24 then 2 * a_2 + 1 else a_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a + 1 -- consumepureforall.vpr@86.3--86.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@86.3--86.15) [180553]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@83.11--83.48) [180554]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered21(r_2), neverTriggered21(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m8 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@83.11--83.48) [180555]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange21(r_2) && invRecv21(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        S[invRecv21(o_9)] && (NoPerm < FullPerm && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv21(o_9)] && (NoPerm < FullPerm && qpRange21(o_9)) ==> invRecv21(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv21(o_9)] && (NoPerm < FullPerm && qpRange21(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[t_2_1]) {
        assert {:msg "  Postcondition of m8 might not hold. Assertion t.f == (t == b ? 2 * a + 1 : a) might not hold. (consumepureforall.vpr@84.11--84.71) [180556]"}
          Heap[t_2_1, f_7] == (if t_2_1 == b_24 then 2 * a_2 + 1 else a_2);
      }
      assume false;
    }
    assume (forall t_3_1: Ref ::
      { S[t_3_1] }
      S[t_3_1] ==> Heap[t_3_1, f_7] == (if t_3_1 == b_24 then 2 * a_2 + 1 else a_2)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m9
// ==================================================

procedure m9(S: (Set Ref), b_24: Ref, a_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var q_9: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_8: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@90.11--90.47) [180557]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange22(s_1_1) && invRecv22(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (S[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> invRecv22(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> invRecv22(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall q: Ref :: { (q in S) } (q in S) ==> q.f > a)
      if (*) {
        if (S[q_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access q.f (consumepureforall.vpr@91.11--91.46) [180558]"}
            HasDirectPerm(Mask, q_9, f_7);
        }
        assume false;
      }
    assume (forall q_1_1: Ref ::
      { S[q_1_1] }
      S[q_1_1] ==> Heap[q_1_1, f_7] > a_2
    );
    assume state(Heap, Mask);
    assume S[b_24];
    assume state(Heap, Mask);
    assume a_2 > 0;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@94.10--94.47) [180559]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange23(r_1_1) && invRecv23(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        (S[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> invRecv23(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv23(o_9)] && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
      if (*) {
        if (S[t_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access t.f (consumepureforall.vpr@95.10--95.48) [180560]"}
            HasDirectPerm(PostMask, t_8, f_7);
        }
        assume false;
      }
    assume (forall t_1_1: Ref ::
      { S[t_1_1] }
      S[t_1_1] ==> PostHeap[t_1_1, f_7] > a_2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a + 1 -- consumepureforall.vpr@97.5--97.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@97.5--97.17) [180561]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@94.10--94.47) [180562]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered24(r_2), neverTriggered24(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m9 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@94.10--94.47) [180563]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange24(r_2) && invRecv24(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        S[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[t_2_1]) {
        assert {:msg "  Postcondition of m9 might not hold. Assertion t.f > a might not hold. (consumepureforall.vpr@95.10--95.48) [180564]"}
          Heap[t_2_1, f_7] > a_2;
      }
      assume false;
    }
    assume (forall t_3_1: Ref ::
      { S[t_3_1] }
      S[t_3_1] ==> Heap[t_3_1, f_7] > a_2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m10
// ==================================================

procedure m10(S: (Set Ref), b_24: Ref, a_2: int, c: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var q_10: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_9: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var t_2_1: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (consumepureforall.vpr@101.11--101.47) [180565]"}
      (forall s_1_1: Ref, s_1_2: Ref ::
      
      (((s_1_1 != s_1_2 && S[s_1_1]) && S[s_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1_1 != s_1_2
    );
    
    // -- Define Inverse Function
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] && NoPerm < FullPerm ==> qpRange25(s_1_1) && invRecv25(s_1_1) == s_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        (S[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1_1: Ref ::
        { Heap[s_1_1, f_7] } { QPMask[s_1_1, f_7] } { S[s_1_1] }
        S[s_1_1] ==> s_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> invRecv25(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((S[invRecv25(o_9)] && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall q: Ref :: { (q in S) } (q in S) ==> q.f > a)
      if (*) {
        if (S[q_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access q.f (consumepureforall.vpr@102.11--102.46) [180566]"}
            HasDirectPerm(Mask, q_10, f_7);
        }
        assume false;
      }
    assume (forall q_1_1: Ref ::
      { S[q_1_1] }
      S[q_1_1] ==> Heap[q_1_1, f_7] > a_2
    );
    assume state(Heap, Mask);
    assume S[b_24];
    assume state(Heap, Mask);
    assume S[c];
    assume state(Heap, Mask);
    assume a_2 > 0;
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
    
    // -- Check definedness of (forall r: Ref :: { (r in S) } (r in S) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@106.10--106.47) [180567]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (((r_1_1 != r_1_2 && S[r_1_1]) && S[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] && NoPerm < FullPerm ==> qpRange26(r_1_1) && invRecv26(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        (S[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> invRecv26(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { PostHeap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { S[r_1_1] }
        S[r_1_1] ==> r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((S[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9) ==> (NoPerm < FullPerm ==> invRecv26(o_9) == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((S[invRecv26(o_9)] && NoPerm < FullPerm) && qpRange26(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall t: Ref :: { (t in S) } (t in S) ==> t.f > a)
      if (*) {
        if (S[t_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access t.f (consumepureforall.vpr@107.10--107.48) [180568]"}
            HasDirectPerm(PostMask, t_9, f_7);
        }
        assume false;
      }
    assume (forall t_1_1: Ref ::
      { S[t_1_1] }
      S[t_1_1] ==> PostHeap[t_1_1, f_7] > a_2
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: b.f := 2 * a + 1 -- consumepureforall.vpr@109.5--109.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.f (consumepureforall.vpr@109.5--109.17) [180569]"}
      FullPerm == Mask[b_24, f_7];
    Heap := Heap[b_24, f_7:=2 * a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: c.f := a + 1 -- consumepureforall.vpr@110.5--110.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access c.f (consumepureforall.vpr@110.5--110.15) [180570]"}
      FullPerm == Mask[c, f_7];
    Heap := Heap[c, f_7:=a_2 + 1];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (consumepureforall.vpr@106.10--106.47) [180571]"}
        (forall r_2: Ref, r_2_2: Ref ::
        { neverTriggered27(r_2), neverTriggered27(r_2_2) }
        (((r_2 != r_2_2 && S[r_2]) && S[r_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_2 != r_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m10 might not hold. There might be insufficient permission to access r.f (consumepureforall.vpr@106.10--106.47) [180572]"}
        (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] ==> Mask[r_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_2: Ref ::
        { Heap[r_2, f_7] } { QPMask[r_2, f_7] } { S[r_2] }
        S[r_2] && NoPerm < FullPerm ==> qpRange27(r_2) && invRecv27(r_2) == r_2
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        S[invRecv27(o_9)] && (NoPerm < FullPerm && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (S[invRecv27(o_9)] && (NoPerm < FullPerm && qpRange27(o_9)) ==> invRecv27(o_9) == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(S[invRecv27(o_9)] && (NoPerm < FullPerm && qpRange27(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[t_2_1]) {
        assert {:msg "  Postcondition of m10 might not hold. Assertion t.f > a might not hold. (consumepureforall.vpr@107.10--107.48) [180573]"}
          Heap[t_2_1, f_7] > a_2;
      }
      assume false;
    }
    assume (forall t_3_1: Ref ::
      { S[t_3_1] }
      S[t_3_1] ==> Heap[t_3_1, f_7] > a_2
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}