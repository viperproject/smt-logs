// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0522.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0522-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x: Ref): bool;
function  neverTriggered3(x_3: Ref): bool;
function  neverTriggered4(x_6: Ref): bool;
function  neverTriggered5(x_9: Ref): bool;
function  neverTriggered6(x_11: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_3: Ref): bool;
function  neverTriggered9(x_6: Ref): bool;
function  neverTriggered10(r_1_1: Ref): bool;
function  neverTriggered11(r_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(x_1_1_1: Ref): Ref;
function  invRecv3(x_4_1: Ref): Ref;
function  invRecv4(x_7_1_1: Ref): Ref;
function  invRecv5(x_10_1: Ref): Ref;
function  invRecv6(x_12_1: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x_1_1_1: Ref): bool;
function  qpRange3(x_4_1: Ref): bool;
function  qpRange4(x_7_1_1: Ref): bool;
function  qpRange5(x_10_1: Ref): bool;
function  qpRange6(x_12_1: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: funky
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
// Translation of domain foo
// ==================================================

// The type for domain foo
type fooDomainType;

// Translation of domain function permfun
function  permfun(x_37: Ref): Perm;

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function funky
// ==================================================

// Uninterpreted function definitions
function  funky(Heap: HeapType, x: Ref): bool;
function  funky'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { funky(Heap, x) }
  funky(Heap, x) == funky'(Heap, x) && dummyFunction(funky#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { funky'(Heap, x) }
  dummyFunction(funky#triggerStateless(x))
);

// Framing axioms
function  funky#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), funky'(Heap, x) }
  state(Heap, Mask) ==> funky'(Heap, x) == funky#frame(ConditionalFrame(-1 / 2, FrameFragment(Heap[x, f_7])), x)
);

// Trigger function (controlling recursive postconditions)
function  funky#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  funky#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure funky#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := -1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction -1 / 2 might be negative. (0522.vpr@114.12--114.26) [55675]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(x: Ref, p_1: Perm): Field PredicateType_Q FrameType;
function  Q#sm(x: Ref, p_1: Perm): Field PredicateType_Q PMaskType;
axiom (forall x: Ref, p_1: Perm ::
  { PredicateMaskField(Q(x, p_1)) }
  PredicateMaskField(Q(x, p_1)) == Q#sm(x, p_1)
);
axiom (forall x: Ref, p_1: Perm ::
  { Q(x, p_1) }
  IsPredicateField(Q(x, p_1))
);
axiom (forall x: Ref, p_1: Perm ::
  { Q(x, p_1) }
  getPredWandId(Q(x, p_1)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, p_1: Perm, x2: Ref, p2_1: Perm ::
  { Q(x, p_1), Q(x2, p2_1) }
  Q(x, p_1) == Q(x2, p2_1) ==> x == x2 && p_1 == p2_1
);
axiom (forall x: Ref, p_1: Perm, x2: Ref, p2_1: Perm ::
  { Q#sm(x, p_1), Q#sm(x2, p2_1) }
  Q#sm(x, p_1) == Q#sm(x2, p2_1) ==> x == x2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, x: Ref, p_1: Perm ::
  { Q#trigger(Heap, Q(x, p_1)) }
  Q#everUsed(Q(x, p_1))
);

procedure Q#definedness(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (0522.vpr@37.1--39.2) [55676]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, -1 / 2) -- 0522.vpr@12.3--12.24
    perm := -1 / 2;
    assert {:msg "  Inhale might fail. Fraction -1 / 2 might be negative. (0522.vpr@12.10--12.24) [55677]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := -FullPerm;
    assert {:msg "  Contract might not be well-formed. Fraction -write might be negative. (0522.vpr@17.12--17.29) [55678]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, p) -- 0522.vpr@21.3--21.21
    perm := p_1;
    assert {:msg "  Inhale might fail. Fraction p might be negative. (0522.vpr@21.10--21.21) [55679]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3b
// ==================================================

procedure test3b(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale none <= p ==> acc(x.f, p) -- 0522.vpr@25.3--25.35
    if (NoPerm <= p_1) {
      perm := p_1;
      assert {:msg "  Inhale might fail. Fraction p might be negative. (0522.vpr@25.10--25.35) [55680]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4_1(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(x), write) -- 0522.vpr@29.3--29.14
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(x), p) -- 0522.vpr@33.3--33.22
    assert {:msg "  Unfolding P(x) might fail. Fraction p might not be positive. (0522.vpr@33.3--33.22) [55682]"}
      p_1 > NoPerm;
    assume P#trigger(Heap, P(x));
    assume Heap[null, P(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := p_1;
    assert {:msg "  Unfolding P(x) might fail. Fraction p might be negative. (0522.vpr@33.3--33.22) [55683]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (0522.vpr@33.3--33.22) [55684]"}
        perm <= Mask[null, P(x)];
    }
    Mask := Mask[null, P(x):=Mask[null, P(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x))) {
        havoc newVersion;
        Heap := Heap[null, P(x):=newVersion];
      }
    perm := p_1;
    assert {:msg "  Unfolding P(x) might fail. Fraction p might be negative. (0522.vpr@33.3--33.22) [55685]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5_1(x: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(Q(x, p), write) -- 0522.vpr@42.3--42.17
    perm := FullPerm;
    Mask := Mask[null, Q(x, p_1):=Mask[null, Q(x, p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (unfolding acc(Q(x, p), write) in x != null) -- 0522.vpr@44.3--44.40
    
    // -- Check definedness of (unfolding acc(Q(x, p), write) in x != null)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(x, p_1));
      assume UnfoldingHeap[null, Q(x, p_1)] == ConditionalFrame(p_1, FrameFragment(UnfoldingHeap[x, f_7]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access Q(x, p) (0522.vpr@44.10--44.40) [55687]"}
          perm <= UnfoldingMask[null, Q(x, p_1)];
      }
      UnfoldingMask := UnfoldingMask[null, Q(x, p_1):=UnfoldingMask[null, Q(x, p_1)] - perm];
      perm := p_1;
      assert {:msg "  Inhale might fail. Fraction p might be negative. (0522.vpr@44.10--44.40) [55688]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Q#sm(x, p_1):=Heap[null, Q#sm(x, p_1)][x, f_7:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(x, p_1));
      assume UnfoldingHeap[null, Q(x, p_1)] == ConditionalFrame(p_1, FrameFragment(UnfoldingHeap[x, f_7]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Q(x, p_1):=UnfoldingMask[null, Q(x, p_1)] - perm];
      perm := p_1;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume x != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test20
// ==================================================

procedure test20(xs: (Set Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, p))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (0522.vpr@50.12--50.52) [55689]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < p_1) && NoPerm < p_1 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < p_1 ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (xs[invRecv1(o_9)] && NoPerm < p_1) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (0522.vpr@50.12--50.52) [55690]"}
      (forall x_1: Ref ::
      { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
      xs[x_1] ==> p_1 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && p_1 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv1(o_9)] && NoPerm < p_1) && qpRange1(o_9) ==> (NoPerm < p_1 ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + p_1) && (!((xs[invRecv1(o_9)] && NoPerm < p_1) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test21
// ==================================================

procedure test21(xs: (Set Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: while (true) -- 0522.vpr@53.3--62.5
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not hold on entry. Fraction p might be negative. (0522.vpr@61.15--61.56) [55691]"}
            (forall x_1_1_1: Ref ::
            { invRecv2(x_1_1_1) }
            xs[invRecv2(x_1_1_1)] && qpRange2(x_1_1_1) ==> p_1 >= NoPerm
          );
        
        // -- check if receiver acc(P(x), p) is injective
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not hold on entry. Quantified resource P(x) might not be injective. (0522.vpr@61.15--61.56) [55692]"}
            (forall x: Ref, x_46: Ref ::
            { neverTriggered2(x), neverTriggered2(x_46) }
            (((x != x_46 && xs[x]) && xs[x_46]) && NoPerm < p_1) && NoPerm < p_1 ==> x != x_46
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not hold on entry. There might be insufficient permission to access P(x) (0522.vpr@61.15--61.56) [55693]"}
            (forall x: Ref ::
            { Heap[null, P(x)] } { Mask[null, P(x)] } { xs[x] }
            xs[x] ==> Mask[null, P(x)] >= p_1
          );
        
        // -- assumptions for inverse of receiver acc(P(x), p)
          assume (forall x: Ref ::
            { Heap[null, P(x)] } { Mask[null, P(x)] } { xs[x] }
            xs[x] && NoPerm < p_1 ==> invRecv2(x) == x && qpRange2(x)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv2(x_1_1_1) }
            (xs[invRecv2(x_1_1_1)] && NoPerm < p_1) && qpRange2(x_1_1_1) ==> invRecv2(x_1_1_1) == x_1_1_1
          );
        
        // -- assume permission updates
          assume (forall x_1_1_1: Ref ::
            { QPMask[null, P(x_1_1_1)] }
            (xs[invRecv2(x_1_1_1)] && NoPerm < p_1) && qpRange2(x_1_1_1) ==> invRecv2(x_1_1_1) == x_1_1_1 && QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)] - p_1
          );
          assume (forall x_1_1_1: Ref ::
            { QPMask[null, P(x_1_1_1)] }
            !((xs[invRecv2(x_1_1_1)] && NoPerm < p_1) && qpRange2(x_1_1_1)) ==> QPMask[null, P(x_1_1_1)] == Mask[null, P(x_1_1_1)]
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
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check if receiver acc(P(x), p) is injective
          assert {:msg "  Contract might not be well-formed. Quantified resource P(x) might not be injective. (0522.vpr@61.15--61.56) [55694]"}
            (forall x_3: Ref, x_3_1: Ref ::
            { neverTriggered3(x_3), neverTriggered3(x_3_1) }
            (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < p_1) && NoPerm < p_1 ==> x_3 != x_3_1
          );
        
        // -- Define Inverse Function
          assume (forall x_3: Ref ::
            { Heap[null, P(x_3)] } { Mask[null, P(x_3)] } { xs[x_3] }
            xs[x_3] && NoPerm < p_1 ==> invRecv3(x_3) == x_3 && qpRange3(x_3)
          );
          assume (forall x_4_1: Ref ::
            { invRecv3(x_4_1) }
            (xs[invRecv3(x_4_1)] && NoPerm < p_1) && qpRange3(x_4_1) ==> invRecv3(x_4_1) == x_4_1
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (0522.vpr@61.15--61.56) [55695]"}
          (forall x_3: Ref ::
          { Heap[null, P(x_3)] } { Mask[null, P(x_3)] } { xs[x_3] }
          xs[x_3] ==> p_1 >= NoPerm
        );
        
        // -- Define updated permissions
          assume (forall x_4_1: Ref ::
            { QPMask[null, P(x_4_1)] }
            (xs[invRecv3(x_4_1)] && NoPerm < p_1) && qpRange3(x_4_1) ==> (NoPerm < p_1 ==> invRecv3(x_4_1) == x_4_1) && QPMask[null, P(x_4_1)] == Mask[null, P(x_4_1)] + p_1
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
          assume (forall x_4_1: Ref ::
            { QPMask[null, P(x_4_1)] }
            !((xs[invRecv3(x_4_1)] && NoPerm < p_1) && qpRange3(x_4_1)) ==> QPMask[null, P(x_4_1)] == Mask[null, P(x_4_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
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
        havoc QPMask;
        
        // -- check if receiver acc(P(x), p) is injective
          assert {:msg "  While statement might fail. Quantified resource P(x) might not be injective. (0522.vpr@61.15--61.56) [55696]"}
            (forall x_6: Ref, x_6_1: Ref ::
            { neverTriggered4(x_6), neverTriggered4(x_6_1) }
            (((x_6 != x_6_1 && xs[x_6]) && xs[x_6_1]) && NoPerm < p_1) && NoPerm < p_1 ==> x_6 != x_6_1
          );
        
        // -- Define Inverse Function
          assume (forall x_6: Ref ::
            { Heap[null, P(x_6)] } { Mask[null, P(x_6)] } { xs[x_6] }
            xs[x_6] && NoPerm < p_1 ==> invRecv4(x_6) == x_6 && qpRange4(x_6)
          );
          assume (forall x_7_1_1: Ref ::
            { invRecv4(x_7_1_1) }
            (xs[invRecv4(x_7_1_1)] && NoPerm < p_1) && qpRange4(x_7_1_1) ==> invRecv4(x_7_1_1) == x_7_1_1
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  While statement might fail. Fraction p might be negative. (0522.vpr@61.15--61.56) [55697]"}
          (forall x_6: Ref ::
          { Heap[null, P(x_6)] } { Mask[null, P(x_6)] } { xs[x_6] }
          xs[x_6] ==> p_1 >= NoPerm
        );
        
        // -- Define updated permissions
          assume (forall x_7_1_1: Ref ::
            { QPMask[null, P(x_7_1_1)] }
            (xs[invRecv4(x_7_1_1)] && NoPerm < p_1) && qpRange4(x_7_1_1) ==> (NoPerm < p_1 ==> invRecv4(x_7_1_1) == x_7_1_1) && QPMask[null, P(x_7_1_1)] == Mask[null, P(x_7_1_1)] + p_1
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
          assume (forall x_7_1_1: Ref ::
            { QPMask[null, P(x_7_1_1)] }
            !((xs[invRecv4(x_7_1_1)] && NoPerm < p_1) && qpRange4(x_7_1_1)) ==> QPMask[null, P(x_7_1_1)] == Mask[null, P(x_7_1_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not be preserved. Fraction p might be negative. (0522.vpr@61.15--61.56) [55698]"}
            (forall x_10_1: Ref ::
            { invRecv5(x_10_1) }
            xs[invRecv5(x_10_1)] && qpRange5(x_10_1) ==> p_1 >= NoPerm
          );
        
        // -- check if receiver acc(P(x), p) is injective
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not be preserved. Quantified resource P(x) might not be injective. (0522.vpr@61.15--61.56) [55699]"}
            (forall x_9: Ref, x_9_1: Ref ::
            { neverTriggered5(x_9), neverTriggered5(x_9_1) }
            (((x_9 != x_9_1 && xs[x_9]) && xs[x_9_1]) && NoPerm < p_1) && NoPerm < p_1 ==> x_9 != x_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(P(x), p)) might not be preserved. There might be insufficient permission to access P(x) (0522.vpr@61.15--61.56) [55700]"}
            (forall x_9: Ref ::
            { Heap[null, P(x_9)] } { Mask[null, P(x_9)] } { xs[x_9] }
            xs[x_9] ==> Mask[null, P(x_9)] >= p_1
          );
        
        // -- assumptions for inverse of receiver acc(P(x), p)
          assume (forall x_9: Ref ::
            { Heap[null, P(x_9)] } { Mask[null, P(x_9)] } { xs[x_9] }
            xs[x_9] && NoPerm < p_1 ==> invRecv5(x_9) == x_9 && qpRange5(x_9)
          );
          assume (forall x_10_1: Ref ::
            { invRecv5(x_10_1) }
            (xs[invRecv5(x_10_1)] && NoPerm < p_1) && qpRange5(x_10_1) ==> invRecv5(x_10_1) == x_10_1
          );
        
        // -- assume permission updates
          assume (forall x_10_1: Ref ::
            { QPMask[null, P(x_10_1)] }
            (xs[invRecv5(x_10_1)] && NoPerm < p_1) && qpRange5(x_10_1) ==> invRecv5(x_10_1) == x_10_1 && QPMask[null, P(x_10_1)] == Mask[null, P(x_10_1)] - p_1
          );
          assume (forall x_10_1: Ref ::
            { QPMask[null, P(x_10_1)] }
            !((xs[invRecv5(x_10_1)] && NoPerm < p_1) && qpRange5(x_10_1)) ==> QPMask[null, P(x_10_1)] == Mask[null, P(x_10_1)]
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
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      havoc QPMask;
      
      // -- check if receiver acc(P(x), p) is injective
        assert {:msg "  While statement might fail. Quantified resource P(x) might not be injective. (0522.vpr@61.15--61.56) [55701]"}
          (forall x_11: Ref, x_11_1: Ref ::
          { neverTriggered6(x_11), neverTriggered6(x_11_1) }
          (((x_11 != x_11_1 && xs[x_11]) && xs[x_11_1]) && NoPerm < p_1) && NoPerm < p_1 ==> x_11 != x_11_1
        );
      
      // -- Define Inverse Function
        assume (forall x_11: Ref ::
          { Heap[null, P(x_11)] } { Mask[null, P(x_11)] } { xs[x_11] }
          xs[x_11] && NoPerm < p_1 ==> invRecv6(x_11) == x_11 && qpRange6(x_11)
        );
        assume (forall x_12_1: Ref ::
          { invRecv6(x_12_1) }
          (xs[invRecv6(x_12_1)] && NoPerm < p_1) && qpRange6(x_12_1) ==> invRecv6(x_12_1) == x_12_1
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  While statement might fail. Fraction p might be negative. (0522.vpr@61.15--61.56) [55702]"}
        (forall x_11: Ref ::
        { Heap[null, P(x_11)] } { Mask[null, P(x_11)] } { xs[x_11] }
        xs[x_11] ==> p_1 >= NoPerm
      );
      
      // -- Define updated permissions
        assume (forall x_12_1: Ref ::
          { QPMask[null, P(x_12_1)] }
          (xs[invRecv6(x_12_1)] && NoPerm < p_1) && qpRange6(x_12_1) ==> (NoPerm < p_1 ==> invRecv6(x_12_1) == x_12_1) && QPMask[null, P(x_12_1)] == Mask[null, P(x_12_1)] + p_1
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
        assume (forall x_12_1: Ref ::
          { QPMask[null, P(x_12_1)] }
          !((xs[invRecv6(x_12_1)] && NoPerm < p_1) && qpRange6(x_12_1)) ==> QPMask[null, P(x_12_1)] == Mask[null, P(x_12_1)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test22
// ==================================================

procedure test22(xs: (Set Ref), p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in xs) }
  //     (x in xs) ==> acc(x.f, (none <= p ? p : none))) -- 0522.vpr@66.3--66.69
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, (none <= p ? p : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (0522.vpr@66.10--66.69) [55703]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm)) && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm) ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm) ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (xs[invRecv7(o_9)] && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm)) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction (none <= p ? p : none) might be negative. (0522.vpr@66.10--66.69) [55704]"}
      (forall x_1: Ref ::
      { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
      xs[x_1] ==> (if NoPerm <= p_1 then p_1 else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && (if NoPerm <= p_1 then p_1 else NoPerm) > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv7(o_9)] && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm)) && qpRange7(o_9) ==> (NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm) ==> invRecv7(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (if NoPerm <= p_1 then p_1 else NoPerm)) && (!((xs[invRecv7(o_9)] && NoPerm < (if NoPerm <= p_1 then p_1 else NoPerm)) && qpRange7(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test23
// ==================================================

procedure test23(p_1: Perm, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var xs: (Set Ref);
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in xs) }
  //     { permfun(x) }
  //     (x in xs) ==> none <= permfun(x)) -- 0522.vpr@76.10--76.57
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { permfun(x) } (x in xs) ==> none <= permfun(x))
      if (*) {
        assume false;
      }
    assume (forall x_1: Ref ::
      { xs[x_1] } { (permfun(x_1): Perm) }
      xs[x_1] ==> NoPerm <= (permfun(x_1): Perm)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := (xs union Set(y)) -- 0522.vpr@78.3--78.24
    xs := Set#Union(xs, Set#Singleton(y));
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in xs) }
  //     { permfun(x) }
  //     (x in xs) ==> acc(x.f, permfun(x))) -- 0522.vpr@81.3--81.59
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { permfun(x) } (x in xs) ==> acc(x.f, permfun(x)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (0522.vpr@81.10--81.59) [55705]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < (permfun(x_3): Perm)) && NoPerm < (permfun(x_3_1): Perm) ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] } { (permfun(x_3): Perm) }
        xs[x_3] && NoPerm < (permfun(x_3): Perm) ==> qpRange8(x_3) && invRecv8(x_3) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (xs[invRecv8(o_9)] && NoPerm < (permfun(invRecv8(o_9)): Perm)) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction permfun(x) might be negative. (0522.vpr@81.10--81.59) [55706]"}
      (forall x_3: Ref ::
      { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] } { (permfun(x_3): Perm) }
      xs[x_3] ==> (permfun(x_3): Perm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] } { (permfun(x_3): Perm) }
        xs[x_3] && (permfun(x_3): Perm) > NoPerm ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv8(o_9)] && NoPerm < (permfun(invRecv8(o_9)): Perm)) && qpRange8(o_9) ==> (NoPerm < (permfun(invRecv8(o_9)): Perm) ==> invRecv8(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (permfun(invRecv8(o_9)): Perm)) && (!((xs[invRecv8(o_9)] && NoPerm < (permfun(invRecv8(o_9)): Perm)) && qpRange8(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test23b
// ==================================================

procedure test23b(p_1: Perm, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var xs: (Set Ref);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_3: Ref;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (y in xs) -- 0522.vpr@86.10--86.17
    assume xs[y];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in xs) }
  //     { permfun(x) }
  //     (x in xs) ==> none <= permfun(x)) -- 0522.vpr@87.10--87.57
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { permfun(x) } (x in xs) ==> none <= permfun(x))
      if (*) {
        assume false;
      }
    assume (forall x_1: Ref ::
      { xs[x_1] } { (permfun(x_1): Perm) }
      xs[x_1] ==> NoPerm <= (permfun(x_1): Perm)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs := (xs union Set(y)) -- 0522.vpr@89.3--89.24
    xs := Set#Union(xs, Set#Singleton(y));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref ::
  //     { (x in xs) }
  //     { permfun(x) }
  //     (x in xs) ==> none <= permfun(x)) -- 0522.vpr@91.3--91.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { permfun(x) } (x in xs) ==> none <= permfun(x))
      if (*) {
        assume false;
      }
    if (*) {
      if (xs[x_3]) {
        assert {:msg "  Assert might fail. Assertion none <= permfun(x) might not hold. (0522.vpr@91.10--91.57) [55707]"}
          NoPerm <= (permfun(x_3): Perm);
      }
      assume false;
    }
    assume (forall x_4_1: Ref ::
      { xs[x_4_1] } { (permfun(x_4_1): Perm) }
      xs[x_4_1] ==> NoPerm <= (permfun(x_4_1): Perm)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref ::
  //     { (x in xs) }
  //     { permfun(x) }
  //     (x in xs) ==> acc(x.f, permfun(x))) -- 0522.vpr@92.3--92.59
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { permfun(x) } (x in xs) ==> acc(x.f, permfun(x)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (0522.vpr@92.10--92.59) [55708]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && xs[x_6]) && xs[x_6_1]) && NoPerm < (permfun(x_6): Perm)) && NoPerm < (permfun(x_6_1): Perm) ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] } { (permfun(x_6): Perm) }
        xs[x_6] && NoPerm < (permfun(x_6): Perm) ==> qpRange9(x_6) && invRecv9(x_6) == x_6
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (xs[invRecv9(o_9)] && NoPerm < (permfun(invRecv9(o_9)): Perm)) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction permfun(x) might be negative. (0522.vpr@92.10--92.59) [55709]"}
      (forall x_6: Ref ::
      { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] } { (permfun(x_6): Perm) }
      xs[x_6] ==> (permfun(x_6): Perm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] } { (permfun(x_6): Perm) }
        xs[x_6] && (permfun(x_6): Perm) > NoPerm ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv9(o_9)] && NoPerm < (permfun(invRecv9(o_9)): Perm)) && qpRange9(o_9) ==> (NoPerm < (permfun(invRecv9(o_9)): Perm) ==> invRecv9(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + (permfun(invRecv9(o_9)): Perm)) && (!((xs[invRecv9(o_9)] && NoPerm < (permfun(invRecv9(o_9)): Perm)) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test31
// ==================================================

procedure test31() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var wildcard: real;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall r: Ref :: { r.f } acc(r.f, wildcard)) -- 0522.vpr@97.3--97.51
    
    // -- Check definedness of (forall r: Ref :: { r.f } acc(r.f, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource r.f might not be injective. (0522.vpr@97.10--97.51) [55710]"}
      (forall r_1_1: Ref, r_1_2: Ref ::
      
      (r_1_1 != r_1_2 && NoPerm < wildcard) && NoPerm < wildcard ==> r_1_1 != r_1_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
        qpRange10(r_1_1) && invRecv10(r_1_1) == r_1_1
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        qpRange10(o_9) ==> invRecv10(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1_1: Ref ::
        { Heap[r_1_1, f_7] } { QPMask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
        r_1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (qpRange10(o_9) ==> invRecv10(o_9) == o_9 && Mask[o_9, f_7] < QPMask[o_9, f_7]) && (!qpRange10(o_9) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test32
// ==================================================

procedure test32(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(r.f, wildcard) -- 0522.vpr@101.3--101.28
    havoc wildcard;
    perm := wildcard;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test40
// ==================================================

procedure test40(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall r: Ref ::false ==> acc(r.f, none)) -- 0522.vpr@106.3--106.51
    
    // -- Check definedness of (forall r: Ref ::false ==> acc(r.f, none))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- Define Inverse Function
      
    
    // -- Assume set of fields is nonNull
      
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        QPMask[o_9, f_7] == Mask[o_9, f_7]
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, -1 / 2) -- 0522.vpr@109.3--109.24
    perm := -1 / 2;
    assert {:msg "  Inhale might fail. Fraction -1 / 2 might be negative. (0522.vpr@109.10--109.24) [55712]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}