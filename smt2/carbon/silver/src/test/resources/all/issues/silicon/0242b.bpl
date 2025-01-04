// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:14:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0242b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0242b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: purify_node
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
// Translation of domain Node
// ==================================================

// The type for domain Node
type NodeDomainType;

// Translation of domain function default_node
function  default_node(): NodeDomainType;

// ==================================================
// Translation of domain Graph
// ==================================================

// The type for domain Graph
type GraphDomainType;

// Translation of domain function lookup
function  lookup(ref_1: Ref): NodeDomainType;

// ==================================================
// Translation of all fields
// ==================================================

const unique m_22: Field NormalField int;
axiom !IsPredicateField(m_22);
axiom !IsWandField(m_22);
const unique l_8: Field NormalField Ref;
axiom !IsPredicateField(l_8);
axiom !IsWandField(l_8);
const unique r_6: Field NormalField Ref;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);

// ==================================================
// Translation of function purify_node
// ==================================================

// Uninterpreted function definitions
function  purify_node(Heap: HeapType, n: Ref): NodeDomainType;
function  purify_node'(Heap: HeapType, n: Ref): NodeDomainType;
axiom (forall Heap: HeapType, n: Ref ::
  { purify_node(Heap, n) }
  purify_node(Heap, n) == purify_node'(Heap, n) && dummyFunction(purify_node#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: Ref ::
  { purify_node'(Heap, n) }
  dummyFunction(purify_node#triggerStateless(n))
);

// Framing axioms
function  purify_node#frame(frame: FrameType, n: Ref): NodeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, n: Ref ::
  { state(Heap, Mask), purify_node'(Heap, n) }
  state(Heap, Mask) ==> purify_node'(Heap, n) == purify_node#frame(CombineFrames(FrameFragment(Heap[n, m_22]), CombineFrames(FrameFragment(Heap[n, l_8]), FrameFragment(Heap[n, r_6]))), n)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, n: Ref ::
  { state(Heap, Mask), purify_node'(Heap, n) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || purify_node#trigger(CombineFrames(FrameFragment(Heap[n, m_22]), CombineFrames(FrameFragment(Heap[n, l_8]), FrameFragment(Heap[n, r_6]))), n)) ==> purify_node'(Heap, n) == (default_node(): NodeDomainType)
);

// Trigger function (controlling recursive postconditions)
function  purify_node#trigger(frame: FrameType, n: Ref): bool;

// State-independent trigger function
function  purify_node#triggerStateless(n: Ref): NodeDomainType;

// Check contract well-formedness and postcondition
procedure purify_node#definedness(n: Ref) returns (Result: NodeDomainType)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[n, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume n != null;
    Mask := Mask[n, m_22:=Mask[n, m_22] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume n != null;
    Mask := Mask[n, l_8:=Mask[n, l_8] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume n != null;
    Mask := Mask[n, r_6:=Mask[n, r_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume Result == (default_node(): NodeDomainType);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var vroot: Ref;
  var root: Ref;
  var freshObj: Ref;
  var graph: (Set Ref);
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var n$2_42: Ref;
  var n$2_1_1: Ref;
  var n$3_10: Ref;
  var n$3_1_2: Ref;
  var n_45: Ref;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[vroot, $allocated];
    assume Heap[root, $allocated];
  
  // -- Translating statement: vroot := new(m, l, r) -- 0242b.vpr@34.21--34.36
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    vroot := freshObj;
    Mask := Mask[vroot, m_22:=Mask[vroot, m_22] + FullPerm];
    Mask := Mask[vroot, l_8:=Mask[vroot, l_8] + FullPerm];
    Mask := Mask[vroot, r_6:=Mask[vroot, r_6] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: vroot.l := vroot -- 0242b.vpr@35.5--35.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vroot.l (0242b.vpr@35.5--35.21) [199439]"}
      FullPerm == Mask[vroot, l_8];
    Heap := Heap[vroot, l_8:=vroot];
    assume state(Heap, Mask);
  
  // -- Translating statement: vroot.r := vroot -- 0242b.vpr@36.5--36.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vroot.r (0242b.vpr@36.5--36.21) [199440]"}
      FullPerm == Mask[vroot, r_6];
    Heap := Heap[vroot, r_6:=vroot];
    assume state(Heap, Mask);
  
  // -- Translating statement: root := new(m, l, r) -- 0242b.vpr@38.20--38.34
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    root := freshObj;
    Mask := Mask[root, m_22:=Mask[root, m_22] + FullPerm];
    Mask := Mask[root, l_8:=Mask[root, l_8] + FullPerm];
    Mask := Mask[root, r_6:=Mask[root, r_6] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: root.l := vroot -- 0242b.vpr@39.5--39.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access root.l (0242b.vpr@39.5--39.20) [199441]"}
      FullPerm == Mask[root, l_8];
    Heap := Heap[root, l_8:=vroot];
    assume state(Heap, Mask);
  
  // -- Translating statement: root.r := vroot -- 0242b.vpr@40.5--40.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access root.r (0242b.vpr@40.5--40.20) [199442]"}
      FullPerm == Mask[root, r_6];
    Heap := Heap[root, r_6:=vroot];
    assume state(Heap, Mask);
  
  // -- Translating statement: graph := Set(vroot, root) -- 0242b.vpr@42.5--42.44
    graph := Set#UnionOne(Set#Singleton(root), vroot);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((null in graph)) &&
  //   ((forall n: Ref :: { (n in graph) } (n in graph) ==> acc(n.l, write)) &&
  //   ((forall n$0: Ref ::
  //     { (n$0 in graph) }
  //     (n$0 in graph) ==> acc(n$0.r, write)) &&
  //   ((forall n$1: Ref ::
  //     { (n$1 in graph) }
  //     (n$1 in graph) ==> acc(n$1.m, write)) &&
  //   ((forall n$2: Ref ::
  //     { (n$2.l in graph) }
  //     { (n$2 in graph), n$2.l }
  //     (n$2 in graph) && n$2.l != null ==> (n$2.l in graph)) &&
  //   (forall n$3: Ref ::
  //     { (n$3.r in graph) }
  //     { (n$3 in graph), n$3.r }
  //     (n$3 in graph) && n$3.r != null ==> (n$3.r in graph)))))) -- 0242b.vpr@45.5--45.24
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion !((null in graph)) might not hold. (0242b.vpr@45.12--45.24) [199443]"}
      !graph[null];
    
    // -- Check definedness of (forall n: Ref :: { (n in graph) } (n in graph) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n is injective
      assert {:msg "  Assert might fail. Quantified resource n.l might not be injective. (0242b.vpr@45.12--45.24) [199445]"}
        (forall n_1: Ref, n_1_1: Ref ::
        { neverTriggered1(n_1), neverTriggered1(n_1_1) }
        (((n_1 != n_1_1 && graph[n_1]) && graph[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access n.l (0242b.vpr@45.12--45.24) [199446]"}
        (forall n_1: Ref ::
        { AssertHeap[n_1, l_8] } { QPMask[n_1, l_8] } { graph[n_1] }
        graph[n_1] ==> AssertMask[n_1, l_8] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n
      assume (forall n_1: Ref ::
        { AssertHeap[n_1, l_8] } { QPMask[n_1, l_8] } { graph[n_1] }
        graph[n_1] && NoPerm < FullPerm ==> qpRange1(n_1) && invRecv1(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        graph[invRecv1(o_4)] && (NoPerm < FullPerm && qpRange1(o_4)) ==> invRecv1(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (graph[invRecv1(o_4)] && (NoPerm < FullPerm && qpRange1(o_4)) ==> invRecv1(o_4) == o_4 && QPMask[o_4, l_8] == AssertMask[o_4, l_8] - FullPerm) && (!(graph[invRecv1(o_4)] && (NoPerm < FullPerm && qpRange1(o_4))) ==> QPMask[o_4, l_8] == AssertMask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0 in graph) } (n$0 in graph) ==> acc(n$0.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$0 is injective
      assert {:msg "  Assert might fail. Quantified resource n$0.r might not be injective. (0242b.vpr@45.12--45.24) [199448]"}
        (forall n$0_1: Ref, n$0_1_1: Ref ::
        { neverTriggered2(n$0_1), neverTriggered2(n$0_1_1) }
        (((n$0_1 != n$0_1_1 && graph[n$0_1]) && graph[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access n$0.r (0242b.vpr@45.12--45.24) [199449]"}
        (forall n$0_1: Ref ::
        { AssertHeap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { graph[n$0_1] }
        graph[n$0_1] ==> AssertMask[n$0_1, r_6] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$0
      assume (forall n$0_1: Ref ::
        { AssertHeap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { graph[n$0_1] }
        graph[n$0_1] && NoPerm < FullPerm ==> qpRange2(n$0_1) && invRecv2(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        graph[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (graph[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4 && QPMask[o_4, r_6] == AssertMask[o_4, r_6] - FullPerm) && (!(graph[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, r_6] == AssertMask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1 in graph) } (n$1 in graph) ==> acc(n$1.m, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Assert might fail. Quantified resource n$1.m might not be injective. (0242b.vpr@45.12--45.24) [199451]"}
        (forall n$1_1: Ref, n$1_1_1: Ref ::
        { neverTriggered3(n$1_1), neverTriggered3(n$1_1_1) }
        (((n$1_1 != n$1_1_1 && graph[n$1_1]) && graph[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access n$1.m (0242b.vpr@45.12--45.24) [199452]"}
        (forall n$1_1: Ref ::
        { AssertHeap[n$1_1, m_22] } { QPMask[n$1_1, m_22] } { graph[n$1_1] }
        graph[n$1_1] ==> AssertMask[n$1_1, m_22] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_1: Ref ::
        { AssertHeap[n$1_1, m_22] } { QPMask[n$1_1, m_22] } { graph[n$1_1] }
        graph[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        graph[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field m
      assume (forall o_4: Ref ::
        { QPMask[o_4, m_22] }
        (graph[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, m_22] == AssertMask[o_4, m_22] - FullPerm) && (!(graph[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, m_22] == AssertMask[o_4, m_22])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != m_22 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.l in graph) } { (n$2 in graph), n$2.l } (n$2 in graph) && n$2.l != null ==> (n$2.l in graph))
      if (*) {
        if (graph[n$2_42]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n$2.l (0242b.vpr@45.12--45.24) [199453]"}
            HasDirectPerm(ExhaleWellDef0Mask, n$2_42, l_8);
        }
        if (graph[n$2_42] && AssertHeap[n$2_42, l_8] != null) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n$2.l (0242b.vpr@45.12--45.24) [199454]"}
            HasDirectPerm(ExhaleWellDef0Mask, n$2_42, l_8);
        }
        assume false;
      }
    if (*) {
      if (graph[n$2_1_1] && AssertHeap[n$2_1_1, l_8] != null) {
        assert {:msg "  Assert might fail. Assertion (n$2.l in graph) might not hold. (0242b.vpr@45.12--45.24) [199455]"}
          graph[AssertHeap[n$2_1_1, l_8]];
      }
      assume false;
    }
    assume (forall n$2_2_1_1: Ref ::
      { graph[AssertHeap[n$2_2_1_1, l_8]] } { graph[n$2_2_1_1], AssertHeap[n$2_2_1_1, l_8] }
      graph[n$2_2_1_1] && AssertHeap[n$2_2_1_1, l_8] != null ==> graph[AssertHeap[n$2_2_1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$3: Ref :: { (n$3.r in graph) } { (n$3 in graph), n$3.r } (n$3 in graph) && n$3.r != null ==> (n$3.r in graph))
      if (*) {
        if (graph[n$3_10]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n$3.r (0242b.vpr@45.12--45.24) [199456]"}
            HasDirectPerm(ExhaleWellDef0Mask, n$3_10, r_6);
        }
        if (graph[n$3_10] && AssertHeap[n$3_10, r_6] != null) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access n$3.r (0242b.vpr@45.12--45.24) [199457]"}
            HasDirectPerm(ExhaleWellDef0Mask, n$3_10, r_6);
        }
        assume false;
      }
    if (*) {
      if (graph[n$3_1_2] && AssertHeap[n$3_1_2, r_6] != null) {
        assert {:msg "  Assert might fail. Assertion (n$3.r in graph) might not hold. (0242b.vpr@45.12--45.24) [199458]"}
          graph[AssertHeap[n$3_1_2, r_6]];
      }
      assume false;
    }
    assume (forall n$3_2_1_1: Ref ::
      { graph[AssertHeap[n$3_2_1_1, r_6]] } { graph[n$3_2_1_1], AssertHeap[n$3_2_1_1, r_6] }
      graph[n$3_2_1_1] && AssertHeap[n$3_2_1_1, r_6] != null ==> graph[AssertHeap[n$3_2_1_1, r_6]]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (root in graph) -- 0242b.vpr@46.5--46.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (root in graph) might not hold. (0242b.vpr@46.12--46.25) [199459]"}
      graph[root];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall n: Ref ::
  //     { (n in graph) }
  //     { lookup(n) }
  //     { purify_node(n) }
  //     (n in graph) ==> lookup(n) == purify_node(n)) -- 0242b.vpr@47.12--47.71
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { (n in graph) } { lookup(n) } { purify_node(n) } (n in graph) ==> lookup(n) == purify_node(n))
      if (*) {
        if (graph[n_45]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function purify_node might not hold. There might be insufficient permission to access n.m (0242b.vpr@47.57--47.71) [199460]"}
              NoPerm < perm ==> NoPerm < Mask[n_45, m_22];
            perm := FullPerm;
            assert {:msg "  Precondition of function purify_node might not hold. There might be insufficient permission to access n.l (0242b.vpr@47.57--47.71) [199461]"}
              NoPerm < perm ==> NoPerm < Mask[n_45, l_8];
            perm := FullPerm;
            assert {:msg "  Precondition of function purify_node might not hold. There might be insufficient permission to access n.r (0242b.vpr@47.57--47.71) [199462]"}
              NoPerm < perm ==> NoPerm < Mask[n_45, r_6];
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
    assume (forall n_3: Ref ::
      { graph[n_3] } { (lookup(n_3): NodeDomainType) } { purify_node#frame(CombineFrames(FrameFragment(Heap[n_3, m_22]), CombineFrames(FrameFragment(Heap[n_3, l_8]), FrameFragment(Heap[n_3, r_6]))), n_3) }
      graph[n_3] ==> (lookup(n_3): NodeDomainType) == purify_node(Heap, n_3)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0242b.vpr@50.5--50.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0242b.vpr@50.12--50.17) [199463]"}
      false;
    assume state(Heap, Mask);
}