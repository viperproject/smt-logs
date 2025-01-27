// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:19:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0383b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0383b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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

function  neverTriggered1(node_2: Ref): bool;
function  neverTriggered2(node: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(node_3_1: Ref): Ref;
function  invRecv2(node_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(node_3_1: Ref): bool;
function  qpRange2(node_1_1: Ref): bool;

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

const unique visited: Field NormalField bool;
axiom !IsPredicateField(visited);
axiom !IsWandField(visited);

// ==================================================
// Translation of predicate read_fields
// ==================================================

type PredicateType_read_fields;
function  read_fields(node: Ref): Field PredicateType_read_fields FrameType;
function  read_fields#sm(node: Ref): Field PredicateType_read_fields PMaskType;
axiom (forall node: Ref ::
  { PredicateMaskField(read_fields(node)) }
  PredicateMaskField(read_fields(node)) == read_fields#sm(node)
);
axiom (forall node: Ref ::
  { read_fields(node) }
  IsPredicateField(read_fields(node))
);
axiom (forall node: Ref ::
  { read_fields(node) }
  getPredWandId(read_fields(node)) == 0
);
function  read_fields#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  read_fields#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall node: Ref, node2: Ref ::
  { read_fields(node), read_fields(node2) }
  read_fields(node) == read_fields(node2) ==> node == node2
);
axiom (forall node: Ref, node2: Ref ::
  { read_fields#sm(node), read_fields#sm(node2) }
  read_fields#sm(node) == read_fields#sm(node2) ==> node == node2
);

axiom (forall Heap: HeapType, node: Ref ::
  { read_fields#trigger(Heap, read_fields(node)) }
  read_fields#everUsed(read_fields(node))
);

procedure read_fields#definedness(node: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of read_fields
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[node, $allocated];
    perm := FullPerm;
    assume node != null;
    Mask := Mask[node, visited:=Mask[node, visited] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate acc_graph
// ==================================================

type PredicateType_acc_graph;
function  acc_graph(all_nodes: (Set Ref)): Field PredicateType_acc_graph FrameType;
function  acc_graph#sm(all_nodes: (Set Ref)): Field PredicateType_acc_graph PMaskType;
axiom (forall all_nodes: (Set Ref) ::
  { PredicateMaskField(acc_graph(all_nodes)) }
  PredicateMaskField(acc_graph(all_nodes)) == acc_graph#sm(all_nodes)
);
axiom (forall all_nodes: (Set Ref) ::
  { acc_graph(all_nodes) }
  IsPredicateField(acc_graph(all_nodes))
);
axiom (forall all_nodes: (Set Ref) ::
  { acc_graph(all_nodes) }
  getPredWandId(acc_graph(all_nodes)) == 1
);
function  acc_graph#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  acc_graph#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall all_nodes: (Set Ref), all_nodes2: (Set Ref) ::
  { acc_graph(all_nodes), acc_graph(all_nodes2) }
  acc_graph(all_nodes) == acc_graph(all_nodes2) ==> all_nodes == all_nodes2
);
axiom (forall all_nodes: (Set Ref), all_nodes2: (Set Ref) ::
  { acc_graph#sm(all_nodes), acc_graph#sm(all_nodes2) }
  acc_graph#sm(all_nodes) == acc_graph#sm(all_nodes2) ==> all_nodes == all_nodes2
);

axiom (forall Heap: HeapType, all_nodes: (Set Ref) ::
  { acc_graph#trigger(Heap, acc_graph(all_nodes)) }
  acc_graph#everUsed(acc_graph(all_nodes))
);

// ==================================================
// Function used for framing of quantified permission (forall node: Ref :: { (node in all_nodes) } (node in all_nodes) ==> acc(read_fields(node), write)) in predicate acc_graph
// ==================================================

function  acc_graph#condqp1(Heap: HeapType, all_nodes_1_1: (Set Ref)): int;
function  sk_acc_graph#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, all_nodes: (Set Ref) ::
  { acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes), succHeapTrans(Heap2Heap, Heap1Heap) }
  (all_nodes[sk_acc_graph#condqp1(acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes))] && NoPerm < FullPerm <==> all_nodes[sk_acc_graph#condqp1(acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes))] && NoPerm < FullPerm) && (all_nodes[sk_acc_graph#condqp1(acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes))] && NoPerm < FullPerm ==> Heap2Heap[null, read_fields(sk_acc_graph#condqp1(acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes)))] == Heap1Heap[null, read_fields(sk_acc_graph#condqp1(acc_graph#condqp1(Heap2Heap, all_nodes), acc_graph#condqp1(Heap1Heap, all_nodes)))]) ==> acc_graph#condqp1(Heap2Heap, all_nodes) == acc_graph#condqp1(Heap1Heap, all_nodes)
);

procedure acc_graph#definedness(all_nodes: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var node_3: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Check definedness of predicate body of acc_graph
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall node: Ref :: { (node in all_nodes) } (node in all_nodes) ==> acc(read_fields(node), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(read_fields(node), write) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource read_fields(node) might not be injective. (0383b.vpr@8.1--12.2) [70493]"}
        (forall node_2: Ref, node_2_1: Ref ::
        { neverTriggered1(node_2), neverTriggered1(node_2_1) }
        (((node_2 != node_2_1 && all_nodes[node_2]) && all_nodes[node_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> node_2 != node_2_1
      );
    
    // -- Define Inverse Function
      assume (forall node_2: Ref ::
        { Heap[null, read_fields(node_2)] } { Mask[null, read_fields(node_2)] } { all_nodes[node_2] }
        all_nodes[node_2] && NoPerm < FullPerm ==> invRecv1(node_2) == node_2 && qpRange1(node_2)
      );
      assume (forall node_3_1: Ref ::
        { invRecv1(node_3_1) }
        (all_nodes[invRecv1(node_3_1)] && NoPerm < FullPerm) && qpRange1(node_3_1) ==> invRecv1(node_3_1) == node_3_1
      );
    
    // -- Define updated permissions
      assume (forall node_3_1: Ref ::
        { QPMask[null, read_fields(node_3_1)] }
        (all_nodes[invRecv1(node_3_1)] && NoPerm < FullPerm) && qpRange1(node_3_1) ==> (NoPerm < FullPerm ==> invRecv1(node_3_1) == node_3_1) && QPMask[null, read_fields(node_3_1)] == Mask[null, read_fields(node_3_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall node_3_1: Ref ::
        { QPMask[null, read_fields(node_3_1)] }
        !((all_nodes[invRecv1(node_3_1)] && NoPerm < FullPerm) && qpRange1(node_3_1)) ==> QPMask[null, read_fields(node_3_1)] == Mask[null, read_fields(node_3_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall node: Ref :: { (node in all_nodes) } (node in all_nodes) ==> (unfolding acc(read_fields(node), write) in true))
      if (*) {
        if (all_nodes[node_3]) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume read_fields#trigger(UnfoldingHeap, read_fields(node_3));
          assume UnfoldingHeap[null, read_fields(node_3)] == FrameFragment(UnfoldingHeap[node_3, visited]);
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access read_fields(node) (0383b.vpr@8.1--12.2) [70494]"}
              perm <= UnfoldingMask[null, read_fields(node_3)];
          }
          UnfoldingMask := UnfoldingMask[null, read_fields(node_3):=UnfoldingMask[null, read_fields(node_3)] - perm];
          perm := FullPerm;
          assume node_3 != null;
          UnfoldingMask := UnfoldingMask[node_3, visited:=UnfoldingMask[node_3, visited] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, read_fields#sm(node_3):=Heap[null, read_fields#sm(node_3)][node_3, visited:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(n: Ref, diff: Ref, graph: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var QPMask: MaskType;
  var node_2: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[n, $allocated];
    assume Heap[diff, $allocated];
  
  // -- Checked inhaling of precondition
    assume Set#Equal(graph, Set#UnionOne(Set#Singleton(diff), n));
    assume state(Heap, Mask);
    perm := FullPerm;
    assume n != null;
    Mask := Mask[n, visited:=Mask[n, visited] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diff != null;
    Mask := Mask[diff, visited:=Mask[diff, visited] + perm];
    assume state(Heap, Mask);
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
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: diff.visited := true -- 0383b.vpr@21.3--21.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diff.visited (0383b.vpr@21.3--21.23) [70495]"}
      FullPerm == Mask[diff, visited];
    Heap := Heap[diff, visited:=true];
    assume state(Heap, Mask);
  
  // -- Translating statement: n.visited := false -- 0383b.vpr@22.3--22.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n.visited (0383b.vpr@22.3--22.21) [70496]"}
      FullPerm == Mask[n, visited];
    Heap := Heap[n, visited:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(read_fields(diff), write) -- 0383b.vpr@24.3--24.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding read_fields(diff) might fail. There might be insufficient permission to access diff.visited (0383b.vpr@24.3--24.25) [70499]"}
        perm <= Mask[diff, visited];
    }
    Mask := Mask[diff, visited:=Mask[diff, visited] - perm];
    perm := FullPerm;
    Mask := Mask[null, read_fields(diff):=Mask[null, read_fields(diff)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume read_fields#trigger(Heap, read_fields(diff));
    assume Heap[null, read_fields(diff)] == FrameFragment(Heap[diff, visited]);
    if (!HasDirectPerm(Mask, null, read_fields(diff))) {
      Heap := Heap[null, read_fields#sm(diff):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, read_fields(diff):=freshVersion];
    }
    Heap := Heap[null, read_fields#sm(diff):=Heap[null, read_fields#sm(diff)][diff, visited:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(read_fields(n), write) -- 0383b.vpr@25.3--25.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding read_fields(n) might fail. There might be insufficient permission to access n.visited (0383b.vpr@25.3--25.22) [70504]"}
        perm <= Mask[n, visited];
    }
    Mask := Mask[n, visited:=Mask[n, visited] - perm];
    perm := FullPerm;
    Mask := Mask[null, read_fields(n):=Mask[null, read_fields(n)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume read_fields#trigger(Heap, read_fields(n));
    assume Heap[null, read_fields(n)] == FrameFragment(Heap[n, visited]);
    if (!HasDirectPerm(Mask, null, read_fields(n))) {
      Heap := Heap[null, read_fields#sm(n):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, read_fields(n):=freshVersion];
    }
    Heap := Heap[null, read_fields#sm(n):=Heap[null, read_fields#sm(n)][n, visited:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(acc_graph(graph), write) -- 0383b.vpr@28.3--28.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(read_fields(node), write) is injective
      assert {:msg "  Folding acc_graph(graph) might fail. Quantified resource read_fields(node) might not be injective. (0383b.vpr@28.3--28.24) [70509]"}
        (forall node: Ref, node_4: Ref ::
        { neverTriggered2(node), neverTriggered2(node_4) }
        (((node != node_4 && graph[node]) && graph[node_4]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> node != node_4
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding acc_graph(graph) might fail. There might be insufficient permission to access read_fields(node) (0383b.vpr@28.3--28.24) [70510]"}
        (forall node: Ref ::
        { Heap[null, read_fields(node)] } { Mask[null, read_fields(node)] } { graph[node] }
        graph[node] ==> Mask[null, read_fields(node)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(read_fields(node), write)
      assume (forall node: Ref ::
        { Heap[null, read_fields(node)] } { Mask[null, read_fields(node)] } { graph[node] }
        graph[node] && NoPerm < FullPerm ==> invRecv2(node) == node && qpRange2(node)
      );
      assume (forall node_1_1: Ref ::
        { invRecv2(node_1_1) }
        (graph[invRecv2(node_1_1)] && NoPerm < FullPerm) && qpRange2(node_1_1) ==> invRecv2(node_1_1) == node_1_1
      );
    
    // -- assume permission updates
      assume (forall node_1_1: Ref ::
        { QPMask[null, read_fields(node_1_1)] }
        (graph[invRecv2(node_1_1)] && NoPerm < FullPerm) && qpRange2(node_1_1) ==> invRecv2(node_1_1) == node_1_1 && QPMask[null, read_fields(node_1_1)] == Mask[null, read_fields(node_1_1)] - FullPerm
      );
      assume (forall node_1_1: Ref ::
        { QPMask[null, read_fields(node_1_1)] }
        !((graph[invRecv2(node_1_1)] && NoPerm < FullPerm) && qpRange2(node_1_1)) ==> QPMask[null, read_fields(node_1_1)] == Mask[null, read_fields(node_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (graph[node_2]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume read_fields#trigger(UnfoldingHeap, read_fields(node_2));
          assume UnfoldingHeap[null, read_fields(node_2)] == FrameFragment(UnfoldingHeap[node_2, visited]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding acc_graph(graph) might fail. There might be insufficient permission to access read_fields(node) (0383b.vpr@28.3--28.24) [70513]"}
              perm <= UnfoldingMask[null, read_fields(node_2)];
          }
          UnfoldingMask := UnfoldingMask[null, read_fields(node_2):=UnfoldingMask[null, read_fields(node_2)] - perm];
          perm := FullPerm;
          assume node_2 != null;
          UnfoldingMask := UnfoldingMask[node_2, visited:=UnfoldingMask[node_2, visited] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume false;
    }
    perm := FullPerm;
    Mask := Mask[null, acc_graph(graph):=Mask[null, acc_graph(graph)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume acc_graph#trigger(Heap, acc_graph(graph));
    assume Heap[null, acc_graph(graph)] == FrameFragment(acc_graph#condqp1(Heap, graph));
    if (!HasDirectPerm(Mask, null, acc_graph(graph))) {
      Heap := Heap[null, acc_graph#sm(graph):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, acc_graph(graph):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of test might not hold. Assertion false might not hold. (0383b.vpr@19.11--19.16) [70517]"}
      false;
}