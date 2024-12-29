// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:36:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0210.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0210-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_30: Ref, f_35: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_30, f_35] }
  Heap[o_30, $allocated] ==> Heap[Heap[o_30, f_35], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref, f_36: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, f_36] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_31, f_36) ==> Heap[o_31, f_36] == ExhaleHeap[o_31, f_36]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11), ExhaleHeap[null, PredicateMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> Heap[null, PredicateMaskField(pm_f_11)] == ExhaleHeap[null, PredicateMaskField(pm_f_11)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_11, f_36] }
    Heap[null, PredicateMaskField(pm_f_11)][o2_11, f_36] ==> Heap[o2_11, f_36] == ExhaleHeap[o2_11, f_36]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11), ExhaleHeap[null, WandMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> Heap[null, WandMaskField(pm_f_11)] == ExhaleHeap[null, WandMaskField(pm_f_11)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_36: (Field A B) ::
    { ExhaleHeap[o2_11, f_36] }
    Heap[null, WandMaskField(pm_f_11)][o2_11, f_36] ==> Heap[o2_11, f_36] == ExhaleHeap[o2_11, f_36]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_31, $allocated] ==> ExhaleHeap[o_31, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_30: Ref, f_37: (Field A B), v: B ::
  { Heap[o_30, f_37:=v] }
  succHeap(Heap, Heap[o_30, f_37:=v])
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
function  neverTriggered10(n$1_2: Ref): bool;
function  neverTriggered11(n_1: Ref): bool;
function  neverTriggered12(n_2: Ref): bool;
function  neverTriggered13(n$1_12: Ref): bool;
function  neverTriggered14(n_3: Ref): bool;
function  neverTriggered15(n_4_1: Ref): bool;
function  neverTriggered16(n_5: Ref): bool;
function  neverTriggered17(n_6: Ref): bool;
function  neverTriggered18(n_7: Ref): bool;
function  neverTriggered19(n_8: Ref): bool;
function  neverTriggered20(n_9: Ref): bool;
function  neverTriggered21(n_10_1: Ref): bool;
function  neverTriggered22(n_11_1: Ref): bool;
function  neverTriggered23(n_12_1: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: hfun
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
// Translation of domain Foobar
// ==================================================

// The type for domain Foobar
type FoobarDomainType;

// Translation of domain function foo
function  foo(S_2: (Set int), x_8: Ref, y_6: Ref): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function hfun
// ==================================================

// Uninterpreted function definitions
function  hfun(Heap: HeapType, g_1: (Set Ref)): Set int;
function  hfun'(Heap: HeapType, g_1: (Set Ref)): Set int;
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { hfun(Heap, g_1) }
  hfun(Heap, g_1) == hfun'(Heap, g_1) && dummyFunction(hfun#triggerStateless(g_1))
);
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { hfun'(Heap, g_1) }
  dummyFunction(hfun#triggerStateless(g_1))
);

// Framing axioms
function  hfun#frame(frame: FrameType, g_1: (Set Ref)): Set int;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref) ::
  { state(Heap, Mask), hfun'(Heap, g_1) }
  state(Heap, Mask) ==> hfun'(Heap, g_1) == hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write)) in function hfun
// ==================================================

function  hfun#condqp1(Heap: HeapType, g_1_1: (Set Ref)): int;
function  sk_hfun#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref) ::
  { hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_hfun#condqp1(hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1))] && NoPerm < FullPerm <==> g_1[sk_hfun#condqp1(hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1))] && NoPerm < FullPerm) && (g_1[sk_hfun#condqp1(hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1))] && NoPerm < FullPerm ==> Heap2Heap[sk_hfun#condqp1(hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1)), next] == Heap1Heap[sk_hfun#condqp1(hfun#condqp1(Heap2Heap, g_1), hfun#condqp1(Heap1Heap, g_1)), next]) ==> hfun#condqp1(Heap2Heap, g_1) == hfun#condqp1(Heap1Heap, g_1)
);

// Trigger function (controlling recursive postconditions)
function  hfun#trigger(frame: FrameType, g_1: (Set Ref)): bool;

// State-independent trigger function
function  hfun#triggerStateless(g_1: (Set Ref)): Set int;

// Check contract well-formedness and postcondition
procedure hfun#definedness(g_1: (Set Ref)) returns (Result: (Set int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_43: Ref;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (0210.vpr@21.14--21.22) [194050]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        g_1[n_3] && NoPerm < FullPerm ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        g_1[n_3] ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_43]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@21.14--21.22) [194051]"}
            HasDirectPerm(Mask, n$0_43, next);
        }
        if (g_1[n$0_43] && Heap[n$0_43, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@21.14--21.22) [194052]"}
            HasDirectPerm(Mask, n$0_43, next);
        }
        assume false;
      }
    assume (forall n$0_2_1: Ref ::
      { g_1[Heap[n$0_2_1, next]] } { g_1[n$0_2_1], Heap[n$0_2_1, next] }
      g_1[n$0_2_1] && Heap[n$0_2_1, next] != null ==> g_1[Heap[n$0_2_1, next]]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method reverse_impl
// ==================================================

procedure reverse_impl(g_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_33: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_35: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var n$0_2_1: Ref;
  var ExhaleHeap: HeapType;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var n$0_8: Ref;
  var n$0_10: Ref;
  var n$0_12: Ref;
  var n$2_2: Ref;
  var x_4: Ref;
  var y_4_1: Ref;
  var x_6: Ref;
  var y_6_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (0210.vpr@24.14--24.22) [194053]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange2(n_1) && invRecv2(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@24.14--24.22) [194054]"}
            HasDirectPerm(Mask, n$0_33, next);
        }
        if (g_1[n$0_33] && Heap[n$0_33, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@24.14--24.22) [194055]"}
            HasDirectPerm(Mask, n$0_33, next);
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
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (0210.vpr@25.13--25.21) [194056]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((g_1[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (0210.vpr@25.13--25.21) [194057]"}
            HasDirectPerm(PostMask, n$2_35, next);
        }
        if (g_1[n$2_35] && PostHeap[n$2_35, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (0210.vpr@25.13--25.21) [194058]"}
            HasDirectPerm(PostMask, n$2_35, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[PostHeap[n$2_1_1, next]] } { g_1[n$2_1_1], PostHeap[n$2_1_1, next] }
      g_1[n$2_1_1] && PostHeap[n$2_1_1, next] != null ==> g_1[PostHeap[n$2_1_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), y, x) } foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@26.40--26.47) [194059]"}
            !g_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@26.40--26.47) [194060]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered4(n_2), neverTriggered4(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@26.40--26.47) [194061]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> FullPerm > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < FullPerm ==> qpRange4(n_2) && invRecv4(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              g_1[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
            );
          if (*) {
            if (g_1[n$0_2_1] && PostHeap[n$0_2_1, next] != null) {
              assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@26.40--26.47) [194062]"}
                g_1[PostHeap[n$0_2_1, next]];
            }
            assume false;
          }
          assume (forall n$0_3_1: Ref ::
            { g_1[PostHeap[n$0_3_1, next]] } { g_1[n$0_3_1], PostHeap[n$0_3_1, next] }
            g_1[n$0_3_1] && PostHeap[n$0_3_1, next] != null ==> g_1[PostHeap[n$0_3_1, next]]
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
          assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@26.64--26.71) [194063]"}
            !g_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@26.64--26.71) [194064]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered5(n_3), neverTriggered5(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@26.64--26.71) [194065]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> FullPerm > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < FullPerm ==> qpRange5(n_3) && invRecv5(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv5(o_4) }
              g_1[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
            );
          if (*) {
            if (g_1[n$0_4] && oldHeap[n$0_4, next] != null) {
              assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@26.64--26.71) [194066]"}
                g_1[oldHeap[n$0_4, next]];
            }
            assume false;
          }
          assume (forall n$0_5_1: Ref ::
            { g_1[oldHeap[n$0_5_1, next]] } { g_1[n$0_5_1], oldHeap[n$0_5_1, next] }
            g_1[n$0_5_1] && oldHeap[n$0_5_1, next] != null ==> g_1[oldHeap[n$0_5_1, next]]
          );
          // Finish exhale
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: Ref, y_1: Ref ::
      { (foo(hfun#frame(FrameFragment(hfun#condqp1(PostHeap, g_1)), g_1), x_1, y_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), y_1, x_1): bool) }
      (foo(hfun(PostHeap, g_1), x_1, y_1): bool) == (foo(hfun(oldHeap, g_1), y_1, x_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) != foo(old(hfun(g)), x, y))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@27.40--27.47) [194067]"}
            !g_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@27.40--27.47) [194068]"}
              (forall n_4_1: Ref, n_4_2: Ref ::
              { neverTriggered6(n_4_1), neverTriggered6(n_4_2) }
              (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@27.40--27.47) [194069]"}
              (forall n_4_1: Ref ::
              { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
              g_1[n_4_1] ==> FullPerm > NoPerm ==> PostMask[n_4_1, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4_1: Ref ::
              { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
              g_1[n_4_1] && NoPerm < FullPerm ==> qpRange6(n_4_1) && invRecv6(n_4_1) == n_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv6(o_4) }
              g_1[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
            );
          if (*) {
            if (g_1[n$0_6] && PostHeap[n$0_6, next] != null) {
              assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@27.40--27.47) [194070]"}
                g_1[PostHeap[n$0_6, next]];
            }
            assume false;
          }
          assume (forall n$0_7_1: Ref ::
            { g_1[PostHeap[n$0_7_1, next]] } { g_1[n$0_7_1], PostHeap[n$0_7_1, next] }
            g_1[n$0_7_1] && PostHeap[n$0_7_1, next] != null ==> g_1[PostHeap[n$0_7_1, next]]
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
          assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@27.64--27.71) [194071]"}
            !g_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@27.64--27.71) [194072]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered7(n_5), neverTriggered7(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@27.64--27.71) [194073]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
              g_1[n_5] ==> FullPerm > NoPerm ==> oldMask[n_5, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
              g_1[n_5] && NoPerm < FullPerm ==> qpRange7(n_5) && invRecv7(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv7(o_4) }
              g_1[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
            );
          if (*) {
            if (g_1[n$0_8] && oldHeap[n$0_8, next] != null) {
              assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@27.64--27.71) [194074]"}
                g_1[oldHeap[n$0_8, next]];
            }
            assume false;
          }
          assume (forall n$0_9_1: Ref ::
            { g_1[oldHeap[n$0_9_1, next]] } { g_1[n$0_9_1], oldHeap[n$0_9_1, next] }
            g_1[n$0_9_1] && oldHeap[n$0_9_1, next] != null ==> g_1[oldHeap[n$0_9_1, next]]
          );
          // Finish exhale
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_3: Ref, y_3_2: Ref ::
      { (foo(hfun#frame(FrameFragment(hfun#condqp1(PostHeap, g_1)), g_1), x_3, y_3_2): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), x_3, y_3_2): bool) }
      (foo(hfun(PostHeap, g_1), x_3, y_3_2): bool) != (foo(hfun(oldHeap, g_1), x_3, y_3_2): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of hfun(g) != old(hfun(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@28.13--28.20) [194075]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@28.13--28.20) [194076]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered8(n_6), neverTriggered8(n_6_1) }
            (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@28.13--28.20) [194077]"}
            (forall n_6: Ref ::
            { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
            g_1[n_6] ==> FullPerm > NoPerm ==> PostMask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
            g_1[n_6] && NoPerm < FullPerm ==> qpRange8(n_6) && invRecv8(n_6) == n_6
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            g_1[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
          );
        if (*) {
          if (g_1[n$0_10] && PostHeap[n$0_10, next] != null) {
            assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@28.13--28.20) [194078]"}
              g_1[PostHeap[n$0_10, next]];
          }
          assume false;
        }
        assume (forall n$0_11_1: Ref ::
          { g_1[PostHeap[n$0_11_1, next]] } { g_1[n$0_11_1], PostHeap[n$0_11_1, next] }
          g_1[n$0_11_1] && PostHeap[n$0_11_1, next] != null ==> g_1[PostHeap[n$0_11_1, next]]
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
        assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@28.29--28.36) [194079]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@28.29--28.36) [194080]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered9(n_7), neverTriggered9(n_7_1) }
            (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@28.29--28.36) [194081]"}
            (forall n_7: Ref ::
            { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
            g_1[n_7] ==> FullPerm > NoPerm ==> oldMask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
            g_1[n_7] && NoPerm < FullPerm ==> qpRange9(n_7) && invRecv9(n_7) == n_7
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            g_1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
          );
        if (*) {
          if (g_1[n$0_12] && oldHeap[n$0_12, next] != null) {
            assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@28.29--28.36) [194082]"}
              g_1[oldHeap[n$0_12, next]];
          }
          assume false;
        }
        assume (forall n$0_13_1: Ref ::
          { g_1[oldHeap[n$0_13_1, next]] } { g_1[n$0_13_1], oldHeap[n$0_13_1, next] }
          g_1[n$0_13_1] && oldHeap[n$0_13_1, next] != null ==> g_1[oldHeap[n$0_13_1, next]]
        );
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume !Set#Equal(hfun(PostHeap, g_1), hfun(oldHeap, g_1));
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
    assert {:msg "  Postcondition of reverse_impl might not hold. Assertion !((null in g)) might not hold. (0210.vpr@25.13--25.21) [194083]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (0210.vpr@25.13--25.21) [194084]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered10(n$1_2), neverTriggered10(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of reverse_impl might not hold. There might be insufficient permission to access n$1.next (0210.vpr@25.13--25.21) [194085]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange10(n$1_2) && invRecv10(n$1_2) == n$1_2
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        g_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (g_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of reverse_impl might not hold. Assertion (n$2.next in g) might not hold. (0210.vpr@25.13--25.21) [194086]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    if (*) {
      assert {:msg "  Postcondition of reverse_impl might not hold. Assertion foo(hfun(g), x, y) == foo(old(hfun(g)), y, x) might not hold. (0210.vpr@26.13--26.77) [194087]"}
        (foo(hfun(Heap, g_1), x_4, y_4_1): bool) == (foo(hfun(oldHeap, g_1), y_4_1, x_4): bool);
      assume false;
    }
    assume (forall x_5_1_1: Ref, y_5_1: Ref ::
      { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_5_1_1, y_5_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), y_5_1, x_5_1_1): bool) }
      (foo(hfun(Heap, g_1), x_5_1_1, y_5_1): bool) == (foo(hfun(oldHeap, g_1), y_5_1, x_5_1_1): bool)
    );
    if (*) {
      assert {:msg "  Postcondition of reverse_impl might not hold. Assertion foo(hfun(g), x, y) != foo(old(hfun(g)), x, y) might not hold. (0210.vpr@27.13--27.77) [194088]"}
        (foo(hfun(Heap, g_1), x_6, y_6_2): bool) != (foo(hfun(oldHeap, g_1), x_6, y_6_2): bool);
      assume false;
    }
    assume (forall x_7_1_1: Ref, y_7_1: Ref ::
      { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_7_1_1, y_7_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), x_7_1_1, y_7_1): bool) }
      (foo(hfun(Heap, g_1), x_7_1_1, y_7_1): bool) != (foo(hfun(oldHeap, g_1), x_7_1_1, y_7_1): bool)
    );
    assert {:msg "  Postcondition of reverse_impl might not hold. Assertion hfun(g) != old(hfun(g)) might not hold. (0210.vpr@28.13--28.38) [194089]"}
      !Set#Equal(hfun(Heap, g_1), hfun(oldHeap, g_1));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method reverse
// ==================================================

procedure reverse(g_1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_34: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var n$0_2_1: Ref;
  var ExhaleHeap: HeapType;
  var b1: bool;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var x_3: Ref;
  var y_3_2: Ref;
  var b2: bool;
  var n$0_8: Ref;
  var n$0_10: Ref;
  var x_6: Ref;
  var y_6_2: Ref;
  var n$0_12: Ref;
  var n$0_14: Ref;
  var n$0_16: Ref;
  var n$0_18: Ref;
  var n$0_20: Ref;
  var n$0_22_1: Ref;
  var x_9_2: Ref;
  var y_9_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (0210.vpr@31.14--31.22) [194090]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange11(n_1) && invRecv11(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (g_1[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@31.14--31.22) [194091]"}
            HasDirectPerm(Mask, n$0_34, next);
        }
        if (g_1[n$0_34] && Heap[n$0_34, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (0210.vpr@31.14--31.22) [194092]"}
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
  
  // -- Translating statement: reverse_impl(g) -- 0210.vpr@34.5--34.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method reverse_impl might not hold. Assertion !((null in g)) might not hold. (0210.vpr@34.5--34.20) [194093]"}
        !g_1[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method reverse_impl might not hold. Quantified resource n.next might not be injective. (0210.vpr@34.5--34.20) [194094]"}
          (forall n_2: Ref, n_2_1: Ref ::
          { neverTriggered12(n_2), neverTriggered12(n_2_1) }
          (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method reverse_impl might not hold. There might be insufficient permission to access n.next (0210.vpr@34.5--34.20) [194095]"}
          (forall n_2: Ref ::
          { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
          g_1[n_2] ==> Mask[n_2, next] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_2: Ref ::
          { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
          g_1[n_2] && NoPerm < FullPerm ==> qpRange12(n_2) && invRecv12(n_2) == n_2
        );
        assume (forall o_4: Ref ::
          { invRecv12(o_4) }
          g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
        );
      
      // -- assume permission updates for field next
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          (g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (g_1[n$0_2_1] && Heap[n$0_2_1, next] != null) {
          assert {:msg "  The precondition of method reverse_impl might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@34.5--34.20) [194096]"}
            g_1[Heap[n$0_2_1, next]];
        }
        assume false;
      }
      assume (forall n$0_3_1: Ref ::
        { g_1[Heap[n$0_3_1, next]] } { g_1[n$0_3_1], Heap[n$0_3_1, next] }
        g_1[n$0_3_1] && Heap[n$0_3_1, next] != null ==> g_1[Heap[n$0_3_1, next]]
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (0210.vpr@34.5--34.20) [194097]"}
        (forall n$1_12: Ref, n$1_24: Ref ::
        
        (((n$1_12 != n$1_24 && g_1[n$1_12]) && g_1[n$1_24]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_12 != n$1_24
      );
      
      // -- Define Inverse Function
        assume (forall n$1_12: Ref ::
          { Heap[n$1_12, next] } { QPMask[n$1_12, next] } { Heap[n$1_12, next] }
          g_1[n$1_12] && NoPerm < FullPerm ==> qpRange13(n$1_12) && invRecv13(n$1_12) == n$1_12
        );
        assume (forall o_4: Ref ::
          { invRecv13(o_4) }
          (g_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_12: Ref ::
          { Heap[n$1_12, next] } { QPMask[n$1_12, next] } { Heap[n$1_12, next] }
          g_1[n$1_12] ==> n$1_12 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> invRecv13(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2: Ref ::
        { g_1[Heap[n$2, next]] } { g_1[n$2], Heap[n$2, next] }
        g_1[n$2] && Heap[n$2, next] != null ==> g_1[Heap[n$2, next]]
      );
      assume state(Heap, Mask);
      assume (forall x: Ref, y: Ref ::
        { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x, y): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(PreCallHeap, g_1)), g_1), y, x): bool) }
        (foo(hfun(Heap, g_1), x, y): bool) == (foo(hfun(PreCallHeap, g_1), y, x): bool)
      );
      assume state(Heap, Mask);
      assume (forall x_1: Ref, y_1: Ref ::
        { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_1, y_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(PreCallHeap, g_1)), g_1), x_1, y_1): bool) }
        (foo(hfun(Heap, g_1), x_1, y_1): bool) != (foo(hfun(PreCallHeap, g_1), x_1, y_1): bool)
      );
      assume state(Heap, Mask);
      assume !Set#Equal(hfun(Heap, g_1), hfun(PreCallHeap, g_1));
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b1) -- 0210.vpr@39.5--70.6
    if (b1) {
      
      // -- Translating statement: assert (forall x: Ref, y: Ref ::
  //     { foo(hfun(g), x, y) }
  //     { foo(old(hfun(g)), y, x) }
  //     foo(hfun(g), x, y) == foo(old(hfun(g)), y, x)) -- 0210.vpr@42.9--42.80
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), y, x) } foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@42.43--42.50) [194098]"}
                !g_1[null];
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@42.43--42.50) [194099]"}
                  (forall n_3: Ref, n_3_1: Ref ::
                  { neverTriggered14(n_3), neverTriggered14(n_3_1) }
                  (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@42.43--42.50) [194100]"}
                  (forall n_3: Ref ::
                  { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                  g_1[n_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_3: Ref ::
                  { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                  g_1[n_3] && NoPerm < FullPerm ==> qpRange14(n_3) && invRecv14(n_3) == n_3
                );
                assume (forall o_4: Ref ::
                  { invRecv14(o_4) }
                  g_1[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
                );
              if (*) {
                if (g_1[n$0_4] && ExhaleWellDef0Heap[n$0_4, next] != null) {
                  assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@42.43--42.50) [194101]"}
                    g_1[ExhaleWellDef0Heap[n$0_4, next]];
                }
                assume false;
              }
              assume (forall n$0_5_1: Ref ::
                { g_1[ExhaleWellDef0Heap[n$0_5_1, next]] } { g_1[n$0_5_1], ExhaleWellDef0Heap[n$0_5_1, next] }
                g_1[n$0_5_1] && ExhaleWellDef0Heap[n$0_5_1, next] != null ==> g_1[ExhaleWellDef0Heap[n$0_5_1, next]]
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
              ExhaleWellDef1Mask := oldMask;
              ExhaleWellDef1Heap := oldHeap;
              assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@42.67--42.74) [194102]"}
                !g_1[null];
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@42.67--42.74) [194103]"}
                  (forall n_4_1: Ref, n_4_2: Ref ::
                  { neverTriggered15(n_4_1), neverTriggered15(n_4_2) }
                  (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@42.67--42.74) [194104]"}
                  (forall n_4_1: Ref ::
                  { oldHeap[n_4_1, next] } { QPMask[n_4_1, next] } { oldHeap[n_4_1, next] }
                  g_1[n_4_1] ==> FullPerm > NoPerm ==> oldMask[n_4_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_4_1: Ref ::
                  { oldHeap[n_4_1, next] } { QPMask[n_4_1, next] } { oldHeap[n_4_1, next] }
                  g_1[n_4_1] && NoPerm < FullPerm ==> qpRange15(n_4_1) && invRecv15(n_4_1) == n_4_1
                );
                assume (forall o_4: Ref ::
                  { invRecv15(o_4) }
                  g_1[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
                );
              if (*) {
                if (g_1[n$0_6] && oldHeap[n$0_6, next] != null) {
                  assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@42.67--42.74) [194105]"}
                    g_1[oldHeap[n$0_6, next]];
                }
                assume false;
              }
              assume (forall n$0_7_1: Ref ::
                { g_1[oldHeap[n$0_7_1, next]] } { g_1[n$0_7_1], oldHeap[n$0_7_1, next] }
                g_1[n$0_7_1] && oldHeap[n$0_7_1, next] != null ==> g_1[oldHeap[n$0_7_1, next]]
              );
              // Finish exhale
              // Stop execution
              assume false;
            }
            assume false;
          }
        if (*) {
          assert {:msg "  Assert might fail. Assertion foo(hfun(g), x, y) == foo(old(hfun(g)), y, x) might not hold. (0210.vpr@42.16--42.80) [194106]"}
            (foo(hfun(Heap, g_1), x_3, y_3_2): bool) == (foo(hfun(oldHeap, g_1), y_3_2, x_3): bool);
          assume false;
        }
        assume (forall x_4_1_1: Ref, y_4_1_1: Ref ::
          { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_4_1_1, y_4_1_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), y_4_1_1, x_4_1_1): bool) }
          (foo(hfun(Heap, g_1), x_4_1_1, y_4_1_1): bool) == (foo(hfun(oldHeap, g_1), y_4_1_1, x_4_1_1): bool)
        );
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- 0210.vpr@45.16--45.21
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (b2) -- 0210.vpr@47.7--70.6
        if (b2) {
          
          // -- Translating statement: assert (forall x: Ref, y: Ref ::
  //     { foo(hfun(g), x, y) }
  //     { foo(old(hfun(g)), x, y) }
  //     foo(hfun(g), x, y) == foo(old(hfun(g)), x, y)) -- 0210.vpr@51.9--51.80
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
              if (*) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@51.43--51.50) [194107]"}
                    !g_1[null];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@51.43--51.50) [194108]"}
                      (forall n_5: Ref, n_5_1: Ref ::
                      { neverTriggered16(n_5), neverTriggered16(n_5_1) }
                      (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@51.43--51.50) [194109]"}
                      (forall n_5: Ref ::
                      { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
                      g_1[n_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_5, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_5: Ref ::
                      { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
                      g_1[n_5] && NoPerm < FullPerm ==> qpRange16(n_5) && invRecv16(n_5) == n_5
                    );
                    assume (forall o_4: Ref ::
                      { invRecv16(o_4) }
                      g_1[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
                    );
                  if (*) {
                    if (g_1[n$0_8] && ExhaleWellDef0Heap[n$0_8, next] != null) {
                      assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@51.43--51.50) [194110]"}
                        g_1[ExhaleWellDef0Heap[n$0_8, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_9_1: Ref ::
                    { g_1[ExhaleWellDef0Heap[n$0_9_1, next]] } { g_1[n$0_9_1], ExhaleWellDef0Heap[n$0_9_1, next] }
                    g_1[n$0_9_1] && ExhaleWellDef0Heap[n$0_9_1, next] != null ==> g_1[ExhaleWellDef0Heap[n$0_9_1, next]]
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
                  ExhaleWellDef1Mask := oldMask;
                  ExhaleWellDef1Heap := oldHeap;
                  assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@51.67--51.74) [194111]"}
                    !g_1[null];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@51.67--51.74) [194112]"}
                      (forall n_6: Ref, n_6_1: Ref ::
                      { neverTriggered17(n_6), neverTriggered17(n_6_1) }
                      (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@51.67--51.74) [194113]"}
                      (forall n_6: Ref ::
                      { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                      g_1[n_6] ==> FullPerm > NoPerm ==> oldMask[n_6, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_6: Ref ::
                      { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                      g_1[n_6] && NoPerm < FullPerm ==> qpRange17(n_6) && invRecv17(n_6) == n_6
                    );
                    assume (forall o_4: Ref ::
                      { invRecv17(o_4) }
                      g_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
                    );
                  if (*) {
                    if (g_1[n$0_10] && oldHeap[n$0_10, next] != null) {
                      assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@51.67--51.74) [194114]"}
                        g_1[oldHeap[n$0_10, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_11_1: Ref ::
                    { g_1[oldHeap[n$0_11_1, next]] } { g_1[n$0_11_1], oldHeap[n$0_11_1, next] }
                    g_1[n$0_11_1] && oldHeap[n$0_11_1, next] != null ==> g_1[oldHeap[n$0_11_1, next]]
                  );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assume false;
              }
            if (*) {
              assert {:msg "  Assert might fail. Assertion foo(hfun(g), x, y) == foo(old(hfun(g)), x, y) might not hold. (0210.vpr@51.16--51.80) [194115]"}
                (foo(hfun(Heap, g_1), x_6, y_6_2): bool) == (foo(hfun(oldHeap, g_1), x_6, y_6_2): bool);
              assume false;
            }
            assume (forall x_7_1_1: Ref, y_7_1: Ref ::
              { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_7_1_1, y_7_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), x_7_1_1, y_7_1): bool) }
              (foo(hfun(Heap, g_1), x_7_1_1, y_7_1): bool) == (foo(hfun(oldHeap, g_1), x_7_1_1, y_7_1): bool)
            );
            assume state(Heap, Mask);
          
          // -- Translating statement: assert hfun(g) == old(hfun(g)) -- 0210.vpr@57.9--57.41
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of hfun(g) == old(hfun(g))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@57.16--57.23) [194116]"}
                  !g_1[null];
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@57.16--57.23) [194117]"}
                    (forall n_7: Ref, n_7_1: Ref ::
                    { neverTriggered18(n_7), neverTriggered18(n_7_1) }
                    (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@57.16--57.23) [194118]"}
                    (forall n_7: Ref ::
                    { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
                    g_1[n_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_7, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_7: Ref ::
                    { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
                    g_1[n_7] && NoPerm < FullPerm ==> qpRange18(n_7) && invRecv18(n_7) == n_7
                  );
                  assume (forall o_4: Ref ::
                    { invRecv18(o_4) }
                    g_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
                  );
                if (*) {
                  if (g_1[n$0_12] && ExhaleWellDef0Heap[n$0_12, next] != null) {
                    assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@57.16--57.23) [194119]"}
                      g_1[ExhaleWellDef0Heap[n$0_12, next]];
                  }
                  assume false;
                }
                assume (forall n$0_13_1: Ref ::
                  { g_1[ExhaleWellDef0Heap[n$0_13_1, next]] } { g_1[n$0_13_1], ExhaleWellDef0Heap[n$0_13_1, next] }
                  g_1[n$0_13_1] && ExhaleWellDef0Heap[n$0_13_1, next] != null ==> g_1[ExhaleWellDef0Heap[n$0_13_1, next]]
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
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@57.32--57.39) [194120]"}
                  !g_1[null];
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@57.32--57.39) [194121]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered19(n_8), neverTriggered19(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@57.32--57.39) [194122]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> FullPerm > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < FullPerm ==> qpRange19(n_8) && invRecv19(n_8) == n_8
                  );
                  assume (forall o_4: Ref ::
                    { invRecv19(o_4) }
                    g_1[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
                  );
                if (*) {
                  if (g_1[n$0_14] && oldHeap[n$0_14, next] != null) {
                    assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@57.32--57.39) [194123]"}
                      g_1[oldHeap[n$0_14, next]];
                  }
                  assume false;
                }
                assume (forall n$0_15_1: Ref ::
                  { g_1[oldHeap[n$0_15_1, next]] } { g_1[n$0_15_1], oldHeap[n$0_15_1, next] }
                  g_1[n$0_15_1] && oldHeap[n$0_15_1, next] != null ==> g_1[oldHeap[n$0_15_1, next]]
                );
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion hfun(g) == old(hfun(g)) might not hold. (0210.vpr@57.16--57.41) [194124]"}
              Set#Equal(hfun(Heap, g_1), hfun(oldHeap, g_1));
            assume state(Heap, Mask);
          
          // -- Translating statement: assert hfun(g) != old(hfun(g)) -- 0210.vpr@60.9--60.41
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of hfun(g) != old(hfun(g))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@60.16--60.23) [194125]"}
                  !g_1[null];
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@60.16--60.23) [194126]"}
                    (forall n_9: Ref, n_9_1: Ref ::
                    { neverTriggered20(n_9), neverTriggered20(n_9_1) }
                    (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@60.16--60.23) [194127]"}
                    (forall n_9: Ref ::
                    { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
                    g_1[n_9] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_9, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_9: Ref ::
                    { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
                    g_1[n_9] && NoPerm < FullPerm ==> qpRange20(n_9) && invRecv20(n_9) == n_9
                  );
                  assume (forall o_4: Ref ::
                    { invRecv20(o_4) }
                    g_1[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
                  );
                if (*) {
                  if (g_1[n$0_16] && ExhaleWellDef0Heap[n$0_16, next] != null) {
                    assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@60.16--60.23) [194128]"}
                      g_1[ExhaleWellDef0Heap[n$0_16, next]];
                  }
                  assume false;
                }
                assume (forall n$0_17_1: Ref ::
                  { g_1[ExhaleWellDef0Heap[n$0_17_1, next]] } { g_1[n$0_17_1], ExhaleWellDef0Heap[n$0_17_1, next] }
                  g_1[n$0_17_1] && ExhaleWellDef0Heap[n$0_17_1, next] != null ==> g_1[ExhaleWellDef0Heap[n$0_17_1, next]]
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
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@60.32--60.39) [194129]"}
                  !g_1[null];
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@60.32--60.39) [194130]"}
                    (forall n_10_1: Ref, n_10_2: Ref ::
                    { neverTriggered21(n_10_1), neverTriggered21(n_10_2) }
                    (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_10_1 != n_10_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@60.32--60.39) [194131]"}
                    (forall n_10_1: Ref ::
                    { oldHeap[n_10_1, next] } { QPMask[n_10_1, next] } { oldHeap[n_10_1, next] }
                    g_1[n_10_1] ==> FullPerm > NoPerm ==> oldMask[n_10_1, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_10_1: Ref ::
                    { oldHeap[n_10_1, next] } { QPMask[n_10_1, next] } { oldHeap[n_10_1, next] }
                    g_1[n_10_1] && NoPerm < FullPerm ==> qpRange21(n_10_1) && invRecv21(n_10_1) == n_10_1
                  );
                  assume (forall o_4: Ref ::
                    { invRecv21(o_4) }
                    g_1[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
                  );
                if (*) {
                  if (g_1[n$0_18] && oldHeap[n$0_18, next] != null) {
                    assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@60.32--60.39) [194132]"}
                      g_1[oldHeap[n$0_18, next]];
                  }
                  assume false;
                }
                assume (forall n$0_19_1: Ref ::
                  { g_1[oldHeap[n$0_19_1, next]] } { g_1[n$0_19_1], oldHeap[n$0_19_1, next] }
                  g_1[n$0_19_1] && oldHeap[n$0_19_1, next] != null ==> g_1[oldHeap[n$0_19_1, next]]
                );
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion hfun(g) != old(hfun(g)) might not hold. (0210.vpr@60.16--60.41) [194133]"}
              !Set#Equal(hfun(Heap, g_1), hfun(oldHeap, g_1));
            assume state(Heap, Mask);
          
          // -- Translating statement: assert (forall x: Ref, y: Ref ::
  //     { foo(hfun(g), x, y) }
  //     { foo(old(hfun(g)), x, y) }
  //     foo(hfun(g), x, y) != foo(old(hfun(g)), x, y)) -- 0210.vpr@63.9--63.80
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            
            // -- Check definedness of (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) != foo(old(hfun(g)), x, y))
              if (*) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@63.43--63.50) [194134]"}
                    !g_1[null];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@63.43--63.50) [194135]"}
                      (forall n_11_1: Ref, n_11_2: Ref ::
                      { neverTriggered22(n_11_1), neverTriggered22(n_11_2) }
                      (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_1 != n_11_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@63.43--63.50) [194136]"}
                      (forall n_11_1: Ref ::
                      { ExhaleWellDef0Heap[n_11_1, next] } { QPMask[n_11_1, next] } { ExhaleWellDef0Heap[n_11_1, next] }
                      g_1[n_11_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_11_1, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_11_1: Ref ::
                      { ExhaleWellDef0Heap[n_11_1, next] } { QPMask[n_11_1, next] } { ExhaleWellDef0Heap[n_11_1, next] }
                      g_1[n_11_1] && NoPerm < FullPerm ==> qpRange22(n_11_1) && invRecv22(n_11_1) == n_11_1
                    );
                    assume (forall o_4: Ref ::
                      { invRecv22(o_4) }
                      g_1[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
                    );
                  if (*) {
                    if (g_1[n$0_20] && ExhaleWellDef0Heap[n$0_20, next] != null) {
                      assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@63.43--63.50) [194137]"}
                        g_1[ExhaleWellDef0Heap[n$0_20, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_21_1: Ref ::
                    { g_1[ExhaleWellDef0Heap[n$0_21_1, next]] } { g_1[n$0_21_1], ExhaleWellDef0Heap[n$0_21_1, next] }
                    g_1[n$0_21_1] && ExhaleWellDef0Heap[n$0_21_1, next] != null ==> g_1[ExhaleWellDef0Heap[n$0_21_1, next]]
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
                  ExhaleWellDef1Mask := oldMask;
                  ExhaleWellDef1Heap := oldHeap;
                  assert {:msg "  Precondition of function hfun might not hold. Assertion !((null in g)) might not hold. (0210.vpr@63.67--63.74) [194138]"}
                    !g_1[null];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function hfun might not hold. Quantified resource n.next might not be injective. (0210.vpr@63.67--63.74) [194139]"}
                      (forall n_12_1: Ref, n_12_2: Ref ::
                      { neverTriggered23(n_12_1), neverTriggered23(n_12_2) }
                      (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12_1 != n_12_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function hfun might not hold. There might be insufficient permission to access n.next (0210.vpr@63.67--63.74) [194140]"}
                      (forall n_12_1: Ref ::
                      { oldHeap[n_12_1, next] } { QPMask[n_12_1, next] } { oldHeap[n_12_1, next] }
                      g_1[n_12_1] ==> FullPerm > NoPerm ==> oldMask[n_12_1, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_12_1: Ref ::
                      { oldHeap[n_12_1, next] } { QPMask[n_12_1, next] } { oldHeap[n_12_1, next] }
                      g_1[n_12_1] && NoPerm < FullPerm ==> qpRange23(n_12_1) && invRecv23(n_12_1) == n_12_1
                    );
                    assume (forall o_4: Ref ::
                      { invRecv23(o_4) }
                      g_1[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
                    );
                  if (*) {
                    if (g_1[n$0_22_1] && oldHeap[n$0_22_1, next] != null) {
                      assert {:msg "  Precondition of function hfun might not hold. Assertion (n$0.next in g) might not hold. (0210.vpr@63.67--63.74) [194141]"}
                        g_1[oldHeap[n$0_22_1, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_23_1: Ref ::
                    { g_1[oldHeap[n$0_23_1, next]] } { g_1[n$0_23_1], oldHeap[n$0_23_1, next] }
                    g_1[n$0_23_1] && oldHeap[n$0_23_1, next] != null ==> g_1[oldHeap[n$0_23_1, next]]
                  );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assume false;
              }
            if (*) {
              assert {:msg "  Assert might fail. Assertion foo(hfun(g), x, y) != foo(old(hfun(g)), x, y) might not hold. (0210.vpr@63.16--63.80) [194142]"}
                (foo(hfun(Heap, g_1), x_9_2, y_9_1): bool) != (foo(hfun(oldHeap, g_1), x_9_2, y_9_1): bool);
              assume false;
            }
            assume (forall x_10_1_1: Ref, y_10_1: Ref ::
              { (foo(hfun#frame(FrameFragment(hfun#condqp1(Heap, g_1)), g_1), x_10_1_1, y_10_1): bool) } { (foo(hfun#frame(FrameFragment(hfun#condqp1(oldHeap, g_1)), g_1), x_10_1_1, y_10_1): bool) }
              (foo(hfun(Heap, g_1), x_10_1_1, y_10_1): bool) != (foo(hfun(oldHeap, g_1), x_10_1_1, y_10_1): bool)
            );
            assume state(Heap, Mask);
          
          // -- Translating statement: assert false -- 0210.vpr@66.9--66.21
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion false might not hold. (0210.vpr@66.16--66.21) [194143]"}
              false;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- 0210.vpr@69.16--69.21
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0210.vpr@75.4--75.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0210.vpr@75.11--75.16) [194144]"}
      false;
    assume state(Heap, Mask);
}