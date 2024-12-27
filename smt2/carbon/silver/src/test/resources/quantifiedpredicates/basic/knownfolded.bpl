// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:16:03
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/knownfolded.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/knownfolded-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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

function  neverTriggered1(y_1: Ref): bool;
function  neverTriggered2(y_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_1_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv2(x_1_1_1: Ref, b_1_1_1: bool): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_1_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange2(x_1_1_1: Ref, b_1_1_1: bool): bool;

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
const unique g: Field NormalField bool;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, b_24: bool): Field PredicateType_P FrameType;
function  P#sm(x: Ref, b_24: bool): Field PredicateType_P PMaskType;
axiom (forall x: Ref, b_24: bool ::
  { PredicateMaskField(P(x, b_24)) }
  PredicateMaskField(P(x, b_24)) == P#sm(x, b_24)
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  IsPredicateField(P(x, b_24))
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  getPredWandId(P(x, b_24)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P(x, b_24), P(x2, b2) }
  P(x, b_24) == P(x2, b2) ==> x == x2 && b_24 == b2
);
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P#sm(x, b_24), P#sm(x2, b2) }
  P#sm(x, b_24) == P#sm(x2, b2) ==> x == x2 && b_24 == b2
);

axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { P#trigger(Heap, P(x, b_24)) }
  P#everUsed(P(x, b_24))
);

procedure P#definedness(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref, xs: (Set Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } (y in xs) ==> acc(P(y, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(y, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(y, b) might not be injective. (knownfolded.vpr@12.12--12.53) [107923]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered1(y_1), neverTriggered1(y_1_1) }
        (((y_1 != y_1_1 && xs[y_1]) && xs[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[null, P(y_1, b_24)] } { Mask[null, P(y_1, b_24)] } { xs[y_1] }
        xs[y_1] && NoPerm < FullPerm ==> invRecv1(y_1, b_24) == y_1 && qpRange1(y_1, b_24)
      );
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { invRecv1(x_1_1_1, b_1_1_1) }
        (xs[invRecv1(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange1(x_1_1_1, b_1_1_1) ==> invRecv1(x_1_1_1, b_1_1_1) == x_1_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, P(x_1_1_1, b_1_1_1)] }
        (xs[invRecv1(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange1(x_1_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv1(x_1_1_1, b_1_1_1) == x_1_1_1 && b_24 == b_1_1_1) && QPMask[null, P(x_1_1_1, b_1_1_1)] == Mask[null, P(x_1_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, P(x_1_1_1, b_1_1_1)] }
        !((xs[invRecv1(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange1(x_1_1_1, b_1_1_1)) ==> QPMask[null, P(x_1_1_1, b_1_1_1)] == Mask[null, P(x_1_1_1, b_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
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
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of x.f == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (knownfolded.vpr@14.11--14.53) [107924]"}
          HasDirectPerm(PostMask, x, f_7);
      assume PostHeap[x, f_7] == 0;
    } else {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, g:=PostMask[x, g] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of x.g
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (knownfolded.vpr@14.11--14.53) [107925]"}
          HasDirectPerm(PostMask, x, g);
      assume PostHeap[x, g];
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(x, b), write) -- knownfolded.vpr@16.3--16.22
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x, b) might fail. There might be insufficient permission to access P(x, b) (knownfolded.vpr@16.3--16.22) [107928]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- knownfolded.vpr@18.3--22.4
    if (b_24) {
      
      // -- Translating statement: x.f := 0 -- knownfolded.vpr@19.5--19.13
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (knownfolded.vpr@19.5--19.13) [107931]"}
          FullPerm == Mask[x, f_7];
        Heap := Heap[x, f_7:=0];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: x.g := true -- knownfolded.vpr@21.5--21.16
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (knownfolded.vpr@21.5--21.16) [107932]"}
          FullPerm == Mask[x, g];
        Heap := Heap[x, g:=true];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.f (knownfolded.vpr@14.11--14.53) [107933]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Postcondition of test1 might not hold. Assertion x.f == 0 might not hold. (knownfolded.vpr@14.11--14.53) [107934]"}
        Heap[x, f_7] == 0;
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.g (knownfolded.vpr@14.11--14.53) [107935]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
      assert {:msg "  Postcondition of test1 might not hold. Assertion x.g might not hold. (knownfolded.vpr@14.11--14.53) [107936]"}
        Heap[x, g];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref, xs: (Set Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } (y in xs) ==> acc(P(y, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(y, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource P(y, b) might not be injective. (knownfolded.vpr@28.12--28.53) [107937]"}
        (forall y_1: Ref, y_1_1: Ref ::
        { neverTriggered2(y_1), neverTriggered2(y_1_1) }
        (((y_1 != y_1_1 && xs[y_1]) && xs[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[null, P(y_1, b_24)] } { Mask[null, P(y_1, b_24)] } { xs[y_1] }
        xs[y_1] && NoPerm < FullPerm ==> invRecv2(y_1, b_24) == y_1 && qpRange2(y_1, b_24)
      );
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { invRecv2(x_1_1_1, b_1_1_1) }
        (xs[invRecv2(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange2(x_1_1_1, b_1_1_1) ==> invRecv2(x_1_1_1, b_1_1_1) == x_1_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, P(x_1_1_1, b_1_1_1)] }
        (xs[invRecv2(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange2(x_1_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv2(x_1_1_1, b_1_1_1) == x_1_1_1 && b_24 == b_1_1_1) && QPMask[null, P(x_1_1_1, b_1_1_1)] == Mask[null, P(x_1_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_1_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, P(x_1_1_1, b_1_1_1)] }
        !((xs[invRecv2(x_1_1_1, b_1_1_1)] && NoPerm < FullPerm) && qpRange2(x_1_1_1, b_1_1_1)) ==> QPMask[null, P(x_1_1_1, b_1_1_1)] == Mask[null, P(x_1_1_1, b_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
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
    PostMask := PostMask[null, P(x, b_24):=PostMask[null, P(x, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(x, b), write) in (b ? x.f == 0 : x.g))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(x, b_24));
      assume UnfoldingHeap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, f_7]) else FrameFragment(UnfoldingHeap[x, g])));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x, b) (knownfolded.vpr@31.11--31.52) [107938]"}
          perm <= UnfoldingMask[null, P(x, b_24)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x, b_24):=UnfoldingMask[null, P(x, b_24)] - perm];
      if (b_24) {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      } else {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (b_24) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (knownfolded.vpr@31.11--31.52) [107939]"}
          HasDirectPerm(UnfoldingMask, x, f_7);
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (knownfolded.vpr@31.11--31.52) [107940]"}
          HasDirectPerm(UnfoldingMask, x, g);
      }
      
      // -- Free assumptions (exp module)
        if (b_24) {
          PostHeap := PostHeap[null, P#sm(x, b_24):=PostHeap[null, P#sm(x, b_24)][x, f_7:=true]];
        } else {
          PostHeap := PostHeap[null, P#sm(x, b_24):=PostHeap[null, P#sm(x, b_24)][x, g:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(x, b_24));
      assume UnfoldingHeap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, f_7]) else FrameFragment(UnfoldingHeap[x, g])));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(x, b_24):=UnfoldingMask[null, P(x, b_24)] - perm];
      if (b_24) {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      } else {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume (if b_24 then PostHeap[x, f_7] == 0 else PostHeap[x, g]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(x, b), write) -- knownfolded.vpr@33.3--33.22
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x, b) might fail. There might be insufficient permission to access P(x, b) (knownfolded.vpr@33.3--33.22) [107943]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- knownfolded.vpr@35.3--39.4
    if (b_24) {
      
      // -- Translating statement: x.f := 0 -- knownfolded.vpr@36.5--36.13
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (knownfolded.vpr@36.5--36.13) [107946]"}
          FullPerm == Mask[x, f_7];
        Heap := Heap[x, f_7:=0];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: x.g := true -- knownfolded.vpr@38.5--38.16
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (knownfolded.vpr@38.5--38.16) [107947]"}
          FullPerm == Mask[x, g];
        Heap := Heap[x, g:=true];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(x, b), write) -- knownfolded.vpr@40.3--40.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P(x, b) might fail. There might be insufficient permission to access x.f (knownfolded.vpr@40.3--40.20) [107950]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P(x, b) might fail. There might be insufficient permission to access x.g (knownfolded.vpr@40.3--40.20) [107952]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    if (!HasDirectPerm(Mask, null, P(x, b_24))) {
      Heap := Heap[null, P#sm(x, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(x, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, f_7:=true]];
    } else {
      Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access P(x, b) (knownfolded.vpr@30.11--30.23) [107954]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(x, b_24));
      assume UnfoldingHeap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, f_7]) else FrameFragment(UnfoldingHeap[x, g])));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access P(x, b) (knownfolded.vpr@31.11--31.52) [107955]"}
          perm <= UnfoldingMask[null, P(x, b_24)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x, b_24):=UnfoldingMask[null, P(x, b_24)] - perm];
      if (b_24) {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      } else {
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    if (b_24) {
      assert {:msg "  Postcondition of test2 might not hold. Assertion x.f == 0 might not hold. (knownfolded.vpr@31.11--31.52) [107956]"}
        Heap[x, f_7] == 0;
    } else {
      assert {:msg "  Postcondition of test2 might not hold. Assertion x.g might not hold. (knownfolded.vpr@31.11--31.52) [107957]"}
        Heap[x, g];
    }
    
    // -- Free assumptions (exhale module)
      if (b_24) {
        Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, f_7:=true]];
      } else {
        Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, g:=true]];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}