// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:36:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0204.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0204-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_28: Ref, f_32: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_28, f_32] }
  Heap[o_28, $allocated] ==> Heap[Heap[o_28, f_32], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref, f_33: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, f_33] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_29, f_33) ==> Heap[o_29, f_33] == ExhaleHeap[o_29, f_33]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_29, $allocated] ==> ExhaleHeap[o_29, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_28: Ref, f_34: (Field A B), v: B ::
  { Heap[o_28, f_34:=v] }
  succHeap(Heap, Heap[o_28, f_34:=v])
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
function  neverTriggered2(n_3: Ref): bool;
function  neverTriggered3(n$0_1: Ref): bool;
function  neverTriggered4(n_1: Ref): bool;
function  neverTriggered5(n_3: Ref): bool;
function  neverTriggered6(n_5: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

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
// Preamble of Wand Module.
// ==================================================

type WandType_wand_6;
function  wand_6(arg1: bool): Field WandType_wand_6 int;
function  wand_6#sm(arg1: bool): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: bool): Field WandType_wand_6 FrameType;
axiom (forall arg1: bool ::
  { wand_6(arg1) }
  IsWandField(wand_6(arg1))
);
axiom (forall arg1: bool ::
  { wand_6#ft(arg1) }
  IsWandField(wand_6#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_6(arg1) }
  !IsPredicateField(wand_6(arg1))
);
axiom (forall arg1: bool ::
  { wand_6#ft(arg1) }
  !IsPredicateField(wand_6#ft(arg1))
);
axiom (forall arg1: bool ::
  { WandMaskField(wand_6#ft(arg1)) }
  wand_6#sm(arg1) == WandMaskField(wand_6#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_6(arg1) }
  getPredWandId(wand_6(arg1)) == 0
);
axiom (forall arg1: bool, arg1_2: bool ::
  { wand_6(arg1), wand_6(arg1_2) }
  wand_6(arg1) == wand_6(arg1_2) ==> arg1 == arg1_2
);
type WandType_wand_2;
function  wand_2(): Field WandType_wand_2 int;
function  wand_2#sm(): Field WandType_wand_2 PMaskType;
function  wand_2#ft(): Field WandType_wand_2 FrameType;
axiom IsWandField(wand_2());
axiom IsWandField(wand_2#ft());
axiom !IsPredicateField(wand_2());
axiom !IsPredicateField(wand_2#ft());
axiom wand_2#sm() == WandMaskField(wand_2#ft());
axiom getPredWandId(wand_2()) == 1;
axiom true;
type WandType_wand_7;
function  wand_7(arg1: bool): Field WandType_wand_7 int;
function  wand_7#sm(arg1: bool): Field WandType_wand_7 PMaskType;
function  wand_7#ft(arg1: bool): Field WandType_wand_7 FrameType;
axiom (forall arg1: bool ::
  { wand_7(arg1) }
  IsWandField(wand_7(arg1))
);
axiom (forall arg1: bool ::
  { wand_7#ft(arg1) }
  IsWandField(wand_7#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_7(arg1) }
  !IsPredicateField(wand_7(arg1))
);
axiom (forall arg1: bool ::
  { wand_7#ft(arg1) }
  !IsPredicateField(wand_7#ft(arg1))
);
axiom (forall arg1: bool ::
  { WandMaskField(wand_7#ft(arg1)) }
  wand_7#sm(arg1) == WandMaskField(wand_7#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_7(arg1) }
  getPredWandId(wand_7(arg1)) == 2
);
axiom (forall arg1: bool, arg1_2: bool ::
  { wand_7(arg1), wand_7(arg1_2) }
  wand_7(arg1) == wand_7(arg1_2) ==> arg1 == arg1_2
);
type WandType_wand_4;
function  wand_4(arg1: bool): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool ::
  { wand_4(arg1) }
  IsWandField(wand_4(arg1))
);
axiom (forall arg1: bool ::
  { wand_4#ft(arg1) }
  IsWandField(wand_4#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_4(arg1) }
  !IsPredicateField(wand_4(arg1))
);
axiom (forall arg1: bool ::
  { wand_4#ft(arg1) }
  !IsPredicateField(wand_4#ft(arg1))
);
axiom (forall arg1: bool ::
  { WandMaskField(wand_4#ft(arg1)) }
  wand_4#sm(arg1) == WandMaskField(wand_4#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_4(arg1) }
  getPredWandId(wand_4(arg1)) == 3
);
axiom (forall arg1: bool, arg1_2: bool ::
  { wand_4(arg1), wand_4(arg1_2) }
  wand_4(arg1) == wand_4(arg1_2) ==> arg1 == arg1_2
);
type WandType_wand;
function  wand(arg1: Perm, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: Perm, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Perm, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: Perm, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: Perm, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Perm, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: Perm, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Perm, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Perm, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 4
);
axiom (forall arg1: Perm, arg2: bool, arg1_2: Perm, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_5;
function  wand_5(arg1: bool): Field WandType_wand_5 int;
function  wand_5#sm(arg1: bool): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: bool): Field WandType_wand_5 FrameType;
axiom (forall arg1: bool ::
  { wand_5(arg1) }
  IsWandField(wand_5(arg1))
);
axiom (forall arg1: bool ::
  { wand_5#ft(arg1) }
  IsWandField(wand_5#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_5(arg1) }
  !IsPredicateField(wand_5(arg1))
);
axiom (forall arg1: bool ::
  { wand_5#ft(arg1) }
  !IsPredicateField(wand_5#ft(arg1))
);
axiom (forall arg1: bool ::
  { WandMaskField(wand_5#ft(arg1)) }
  wand_5#sm(arg1) == WandMaskField(wand_5#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_5(arg1) }
  getPredWandId(wand_5(arg1)) == 5
);
axiom (forall arg1: bool, arg1_2: bool ::
  { wand_5(arg1), wand_5(arg1_2) }
  wand_5(arg1) == wand_5(arg1_2) ==> arg1 == arg1_2
);
type WandType_wand_3;
function  wand_3(): Field WandType_wand_3 int;
function  wand_3#sm(): Field WandType_wand_3 PMaskType;
function  wand_3#ft(): Field WandType_wand_3 FrameType;
axiom IsWandField(wand_3());
axiom IsWandField(wand_3#ft());
axiom !IsPredicateField(wand_3());
axiom !IsPredicateField(wand_3#ft());
axiom wand_3#sm() == WandMaskField(wand_3#ft());
axiom getPredWandId(wand_3()) == 6;
axiom true;
type WandType_wand_1;
function  wand_1(arg1: (Set bool), arg2: bool, arg3: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: (Set bool), arg2: bool, arg3: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: (Set bool), arg2: bool, arg3: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 7
);
axiom (forall arg1: (Set bool), arg2: bool, arg3: bool, arg1_2: (Set bool), arg2_2: bool, arg3_2: bool ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);

// ==================================================
// Translation of domain foo
// ==================================================

// The type for domain foo
type fooDomainType;

// Translation of domain function f1
function  f1_2(x_8: int): bool;

// Translation of domain function f2
function  f2_2(x_8: int, y_6: int): bool;

// Translation of domain function f3
function  f3_1(x_8: int, y_6: int, z_26: int): bool;

// Translation of domain function g2
function  g2(x_8: int, y_6: Ref): bool;

// Translation of domain axiom f1def
axiom (forall x: int ::
  { (f1_2(x): bool) }
  (f1_2(x): bool)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(head_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var QPMask: MaskType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[head_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall n: Ref ::acc(n.val, write)) --* true {
  // } -- 0204.vpr@12.2--12.30
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1) {
        
        // -- Check definedness of (forall n: Ref ::acc(n.val, write))
          if (*) {
            b_1_1 := false;
          }
      }
      havoc QPMask;
      assert {:msg "  Packaging wand might fail. Quantified resource n.val might not be injective. (0204.vpr@12.2--12.30) [221344]"}
        (forall n_3: Ref, n_3_1: Ref ::
        
        (n_3 != n_3_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
      );
      
      // -- Define Inverse Function
        b_1_1 := b_1_1 && (forall n_3: Ref ::
          { Ops_1Heap[n_3, val] } { QPMask[n_3, val] }
          NoPerm < FullPerm ==> qpRange2(n_3) && invRecv2(n_3) == n_3
        );
        b_1_1 := b_1_1 && (forall o_4: Ref ::
          { invRecv2(o_4) }
          NoPerm < FullPerm && qpRange2(o_4) ==> invRecv2(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        b_1_1 := b_1_1 && (forall n_3: Ref ::
          { Ops_1Heap[n_3, val] } { QPMask[n_3, val] }
          n_3 != null
        );
      
      // -- Define permissions
        b_1_1 := b_1_1 && (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (NoPerm < FullPerm && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, val] == Ops_1Mask[o_4, val] + FullPerm) && (!(NoPerm < FullPerm && qpRange2(o_4)) ==> QPMask[o_4, val] == Ops_1Mask[o_4, val])
        );
        b_1_1 := b_1_1 && (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Ops_1Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Ops_1Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Ops_1Mask := QPMask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- 0204.vpr@12.10--12.30
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    Mask := Mask[null, wand(FullPerm, true):=Mask[null, wand(FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall n$0: Ref ::acc(n$0.val, write)) --* true -- 0204.vpr@13.2--13.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n$0: Ref ::acc(n$0.val, write)) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall n$0: Ref ::acc(n$0.val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Exhale might fail. Quantified resource n$0.val might not be injective. (0204.vpr@13.10--13.30) [221346]"}
          (forall n$0_1: Ref, n$0_1_1: Ref ::
          
          (n$0_1 != n$0_1_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
        );
        
        // -- Define Inverse Function
          assume (forall n$0_1: Ref ::
            { WandDefLHSHeap[n$0_1, val] } { QPMask[n$0_1, val] }
            NoPerm < FullPerm ==> qpRange3(n$0_1) && invRecv3(n$0_1) == n$0_1
          );
          assume (forall o_4: Ref ::
            { invRecv3(o_4) }
            NoPerm < FullPerm && qpRange3(o_4) ==> invRecv3(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$0_1: Ref ::
            { WandDefLHSHeap[n$0_1, val] } { QPMask[n$0_1, val] }
            n$0_1 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < FullPerm && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, val] == WandDefLHSMask[o_4, val] + FullPerm) && (!(NoPerm < FullPerm && qpRange3(o_4)) ==> QPMask[o_4, val] == WandDefLHSMask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> WandDefLHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- 0204.vpr@13.10--13.30
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@13.10--13.30) [221347]"}
      FullPerm <= Mask[null, wand(FullPerm, true)];
    Mask := Mask[null, wand(FullPerm, true):=Mask[null, wand(FullPerm, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(head_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var QPMask: MaskType;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[head_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall n: Ref ::acc(n.val, write)) --* true {
  // } -- 0204.vpr@18.2--18.48
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      if (b_4) {
        
        // -- Check definedness of (forall n: Ref ::acc(n.val, write))
          if (*) {
            b_4 := false;
          }
      }
      havoc QPMask;
      assert {:msg "  Packaging wand might fail. Quantified resource n.val might not be injective. (0204.vpr@18.2--18.48) [221348]"}
        (forall n_3: Ref, n_3_1: Ref ::
        
        (n_3 != n_3_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
      );
      
      // -- Define Inverse Function
        b_4 := b_4 && (forall n_3: Ref ::
          { Ops_3Heap[n_3, val] } { QPMask[n_3, val] }
          NoPerm < FullPerm ==> qpRange5(n_3) && invRecv5(n_3) == n_3
        );
        b_4 := b_4 && (forall o_4: Ref ::
          { invRecv5(o_4) }
          NoPerm < FullPerm && qpRange5(o_4) ==> invRecv5(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        b_4 := b_4 && (forall n_3: Ref ::
          { Ops_3Heap[n_3, val] } { QPMask[n_3, val] }
          n_3 != null
        );
      
      // -- Define permissions
        b_4 := b_4 && (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (NoPerm < FullPerm && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, val] == Ops_3Mask[o_4, val] + FullPerm) && (!(NoPerm < FullPerm && qpRange5(o_4)) ==> QPMask[o_4, val] == Ops_3Mask[o_4, val])
        );
        b_4 := b_4 && (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Ops_3Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Ops_3Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Ops_3Mask := QPMask;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- 0204.vpr@18.10--18.48
      lhs4:
      Labellhs4Mask := Ops_3Mask;
      Labellhs4Heap := Ops_3Heap;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    Mask := Mask[null, wand(FullPerm, true):=Mask[null, wand(FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall n: Ref ::acc(n.val, write)) --* true -- 0204.vpr@19.2--19.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall n: Ref ::acc(n.val, write)) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall n: Ref ::acc(n.val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Exhale might fail. Quantified resource n.val might not be injective. (0204.vpr@19.10--19.48) [221350]"}
          (forall n_5: Ref, n_5_1: Ref ::
          
          (n_5 != n_5_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
        );
        
        // -- Define Inverse Function
          assume (forall n_5: Ref ::
            { WandDefLHSHeap[n_5, val] } { QPMask[n_5, val] }
            NoPerm < FullPerm ==> qpRange6(n_5) && invRecv6(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            NoPerm < FullPerm && qpRange6(o_4) ==> invRecv6(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n_5: Ref ::
            { WandDefLHSHeap[n_5, val] } { QPMask[n_5, val] }
            n_5 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < FullPerm && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, val] == WandDefLHSMask[o_4, val] + FullPerm) && (!(NoPerm < FullPerm && qpRange6(o_4)) ==> QPMask[o_4, val] == WandDefLHSMask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { WandDefLHSMask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> WandDefLHSMask[o_4, f_5] == QPMask[o_4, f_5]
          );
        WandDefLHSMask := QPMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- 0204.vpr@19.10--19.48
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@19.10--19.48) [221351]"}
      FullPerm <= Mask[null, wand(FullPerm, true)];
    Mask := Mask[null, wand(FullPerm, true):=Mask[null, wand(FullPerm, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(xs: (Set bool)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_7: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_8: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall b1: Bool :: { (b1 in xs) } (b1 in xs) ==> true) --* true {
  // } -- 0204.vpr@23.3--23.58
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_6 := b_6 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      if (b_7) {
        
        // -- Check definedness of (forall b1: Bool :: { (b1 in xs) } (b1 in xs) ==> true)
          if (*) {
            b_7 := false;
          }
      }
      b_7 := b_7;
    }
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- 0204.vpr@23.11--23.58
      lhs7:
      Labellhs7Mask := Ops_5Mask;
      Labellhs7Heap := Ops_5Heap;
      b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_8 := b_8 && state(Used_5Heap, Used_5Mask);
    Mask := Mask[null, wand_1(xs, true, true):=Mask[null, wand_1(xs, true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall b2: Bool :: { (b2 in xs) } (b2 in xs) ==> true) --* true -- 0204.vpr@24.3--24.58
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall b2: Bool :: { (b2 in xs) } (b2 in xs) ==> true) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall b2: Bool :: { (b2 in xs) } (b2 in xs) ==> true)
          if (*) {
            assume false;
          }
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- 0204.vpr@24.11--24.58
          lhs9:
          Labellhs9Mask := WandDefLHSMask;
          Labellhs9Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@24.11--24.58) [221353]"}
      FullPerm <= Mask[null, wand_1(xs, true, true)];
    Mask := Mask[null, wand_1(xs, true, true):=Mask[null, wand_1(xs, true, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_10: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_9: bool;
  var x_46: int;
  var y_28: int;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_11: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var a_28: int;
  var b_106: int;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall x: Int, y: Int ::
  //   { f2(x, y) }
  //   f2(x, y) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z))) --*
  // (forall q: Int :: { f1(q) } f1(q)) {
  // } -- 0204.vpr@38.3--40.33
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_9 := b_9 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      if (b_10) {
        
        // -- Check definedness of (forall x: Int, y: Int :: { f2(x, y) } f2(x, y) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z)))
          if (*) {
            if ((f2_2(x_46, y_28): bool)) {
              if (*) {
                b_10 := false;
              }
            }
            b_10 := false;
          }
      }
      b_10 := b_10 && (forall x_3: int, y_3_2: int ::
        { (f2_2(x_3, y_3_2): bool) }
        (f2_2(x_3, y_3_2): bool) ==> (forall z_3: int ::
          { (f3_1(x_3, y_3_2, z_3): bool) }
          (f3_1(x_3, y_3_2, z_3): bool)
        )
      );
    }
    b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs10 -- 0204.vpr@39.9--40.33
      lhs10:
      Labellhs10Mask := Ops_7Mask;
      Labellhs10Heap := Ops_7Heap;
      b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operation(forall q: Int :: { f1(q) } f1(q))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_11 := b_11 && state(Used_7Heap, Used_7Mask);
    if ((b_10 && b_10) && b_11) {
      if (b_10) {
        
        // -- Check definedness of (forall q: Int :: { f1(q) } f1(q))
          if (*) {
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (forall q: Int :: { f1(q) } f1(q)) might not hold. (0204.vpr@38.3--40.33) [221354]"}
      (b_10 && b_10) && b_11 ==> (forall q_3: int ::
      { (f1_2(q_3): bool) }
      (f1_2(q_3): bool)
    );
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall a: Int, b: Int ::
  //     { f2(a, b) }
  //     f2(a, b) ==> (forall q: Int :: { f3(a, b, q) } f3(a, b, q))) --*
  //   (forall c: Int :: { f1(c) } f1(c)) -- 0204.vpr@42.3--44.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a: Int, b: Int :: { f2(a, b) } f2(a, b) ==> (forall q: Int :: { f3(a, b, q) } f3(a, b, q))) --* (forall c: Int :: { f1(c) } f1(c))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall a: Int, b: Int :: { f2(a, b) } f2(a, b) ==> (forall q: Int :: { f3(a, b, q) } f3(a, b, q)))
          if (*) {
            if ((f2_2(a_28, b_106): bool)) {
              if (*) {
                assume false;
              }
            }
            assume false;
          }
        assume (forall a_1_1: int, b_1_2: int ::
          { (f2_2(a_1_1, b_1_2): bool) }
          (f2_2(a_1_1, b_1_2): bool) ==> (forall q_5: int ::
            { (f3_1(a_1_1, b_1_2, q_5): bool) }
            (f3_1(a_1_1, b_1_2, q_5): bool)
          )
        );
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs12 -- 0204.vpr@43.9--44.33
          lhs12:
          Labellhs12Mask := WandDefLHSMask;
          Labellhs12Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall c: Int :: { f1(c) } f1(c))
          if (*) {
            assume false;
          }
        assume (forall c_1: int ::
          { (f1_2(c_1): bool) }
          (f1_2(c_1): bool)
        );
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@43.9--44.33) [221355]"}
      FullPerm <= Mask[null, wand_2()];
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_13: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_12: bool;
  var x_29: int;
  var y_38: int;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_4: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_14: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var y_40: int;
  var x_48: int;
  var Labellhs15Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall x: Int, y: Int ::
  //   { f2(x, y) }
  //   f2(x, y) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z))) --*
  // (forall q: Int :: { f1(q) } f1(q)) {
  // } -- 0204.vpr@48.3--50.33
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_12 := b_12 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      if (b_13) {
        
        // -- Check definedness of (forall x: Int, y: Int :: { f2(x, y) } f2(x, y) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z)))
          if (*) {
            if ((f2_2(x_29, y_38): bool)) {
              if (*) {
                b_13 := false;
              }
            }
            b_13 := false;
          }
      }
      b_13 := b_13 && (forall x_3: int, y_3_2: int ::
        { (f2_2(x_3, y_3_2): bool) }
        (f2_2(x_3, y_3_2): bool) ==> (forall z_3: int ::
          { (f3_1(x_3, y_3_2, z_3): bool) }
          (f3_1(x_3, y_3_2, z_3): bool)
        )
      );
    }
    b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs13 -- 0204.vpr@49.9--50.33
      lhs13:
      Labellhs13Mask := Ops_9Mask;
      Labellhs13Heap := Ops_9Heap;
      b_13 := b_13 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operation(forall q: Int :: { f1(q) } f1(q))
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_14 := b_14 && state(Used_9Heap, Used_9Mask);
    if ((b_13 && b_13) && b_14) {
      if (b_13) {
        
        // -- Check definedness of (forall q: Int :: { f1(q) } f1(q))
          if (*) {
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (forall q: Int :: { f1(q) } f1(q)) might not hold. (0204.vpr@48.3--50.33) [221356]"}
      (b_13 && b_13) && b_14 ==> (forall q_3: int ::
      { (f1_2(q_3): bool) }
      (f1_2(q_3): bool)
    );
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int, y: Int ::
  //     { f2(y, x) }
  //     f2(y, x) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z))) --*
  //   (forall q: Int :: { f1(q) } f1(q)) -- 0204.vpr@52.3--55.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Int, y: Int :: { f2(y, x) } f2(y, x) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z))) --* (forall q: Int :: { f1(q) } f1(q))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall x: Int, y: Int :: { f2(y, x) } f2(y, x) ==> (forall z: Int :: { f3(x, y, z) } f3(x, y, z)))
          if (*) {
            if ((f2_2(y_40, x_48): bool)) {
              if (*) {
                assume false;
              }
            }
            assume false;
          }
        assume (forall x_5: int, y_5_2: int ::
          { (f2_2(y_5_2, x_5): bool) }
          (f2_2(y_5_2, x_5): bool) ==> (forall z_5: int ::
            { (f3_1(x_5, y_5_2, z_5): bool) }
            (f3_1(x_5, y_5_2, z_5): bool)
          )
        );
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs15 -- 0204.vpr@54.9--55.33
          lhs15:
          Labellhs15Mask := WandDefLHSMask;
          Labellhs15Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of (forall q: Int :: { f1(q) } f1(q))
          if (*) {
            assume false;
          }
        assume (forall q_5: int ::
          { (f1_2(q_5): bool) }
          (f1_2(q_5): bool)
        );
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@54.9--55.33) [221357]"}
      FullPerm <= Mask[null, wand_3()];
    Mask := Mask[null, wand_3():=Mask[null, wand_3()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_16: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_15: bool;
  var Labellhs16Mask: MaskType;
  var Labellhs16Heap: HeapType;
  var boolCur_5: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_17: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs18Mask: MaskType;
  var Labellhs18Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall x: Int, y: Int :: { f2(x, y) } f2(x, y)) --* true {
  // } -- 0204.vpr@59.3--59.55
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_16 := b_16 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_15 := b_15 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_16) {
      if (b_16) {
        
        // -- Check definedness of (forall x: Int, y: Int :: { f2(x, y) } f2(x, y))
          if (*) {
            b_16 := false;
          }
      }
      b_16 := b_16 && (forall x_3: int, y_3_2: int ::
        { (f2_2(x_3, y_3_2): bool) }
        (f2_2(x_3, y_3_2): bool)
      );
    }
    b_16 := b_16 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs16 -- 0204.vpr@59.11--59.55
      lhs16:
      Labellhs16Mask := Ops_11Mask;
      Labellhs16Heap := Ops_11Heap;
      b_16 := b_16 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_17 := b_17 && state(Used_11Heap, Used_11Mask);
    Mask := Mask[null, wand_4(true):=Mask[null, wand_4(true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::(forall y: Int :: { f2(x, y) } f2(x, y))) --* true -- 0204.vpr@62.3--62.63
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Int ::(forall y: Int :: { f2(x, y) } f2(x, y))) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall x: Int ::(forall y: Int :: { f2(x, y) } f2(x, y)))
          if (*) {
            if (*) {
              assume false;
            }
            assume false;
          }
        assume (forall x_5: int ::
          
          (forall y_5_2: int ::
            { (f2_2(x_5, y_5_2): bool) }
            (f2_2(x_5, y_5_2): bool)
          )
        );
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs18 -- 0204.vpr@62.10--62.63
          lhs18:
          Labellhs18Mask := WandDefLHSMask;
          Labellhs18Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@62.10--62.63) [221359]"}
      FullPerm <= Mask[null, wand_5(true)];
    Mask := Mask[null, wand_5(true):=Mask[null, wand_5(true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7
// ==================================================

procedure test7() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_19: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_18: bool;
  var Labellhs19Mask: MaskType;
  var Labellhs19Heap: HeapType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_20: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs21Mask: MaskType;
  var Labellhs21Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (forall x: Int, y: Ref :: { g2(x, y) } g2(x, y)) --* true {
  // } -- 0204.vpr@67.3--67.55
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_19 := b_19 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_18 := b_18 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_19) {
      if (b_19) {
        
        // -- Check definedness of (forall x: Int, y: Ref :: { g2(x, y) } g2(x, y))
          if (*) {
            b_19 := false;
          }
      }
      b_19 := b_19 && (forall x_3: int, y_3_2: Ref ::
        { (g2(x_3, y_3_2): bool) }
        (g2(x_3, y_3_2): bool)
      );
    }
    b_19 := b_19 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs19 -- 0204.vpr@67.11--67.55
      lhs19:
      Labellhs19Mask := Ops_13Mask;
      Labellhs19Heap := Ops_13Heap;
      b_19 := b_19 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_20 := b_20 && state(Used_13Heap, Used_13Mask);
    Mask := Mask[null, wand_6(true):=Mask[null, wand_6(true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall y: Ref, x: Int :: { g2(x, y) } g2(x, y)) --* true -- 0204.vpr@70.3--70.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall y: Ref, x: Int :: { g2(x, y) } g2(x, y)) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        
        // -- Check definedness of (forall y: Ref, x: Int :: { g2(x, y) } g2(x, y))
          if (*) {
            assume false;
          }
        assume (forall y_5_2: Ref, x_5: int ::
          { (g2(x_5, y_5_2): bool) }
          (g2(x_5, y_5_2): bool)
        );
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs21 -- 0204.vpr@70.11--70.55
          lhs21:
          Labellhs21Mask := WandDefLHSMask;
          Labellhs21Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0204.vpr@70.11--70.55) [221361]"}
      FullPerm <= Mask[null, wand_7(true)];
    Mask := Mask[null, wand_7(true):=Mask[null, wand_7(true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}