// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/maps/example2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/maps/example2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Map module.
// ==================================================


type Map U V;

// A Map is defined by three functions, Map#Domain, Map#Elements, and #Map#Card.

function Map#Domain<U,V>(Map U V) : Set U;

function Map#Elements<U,V>(Map U V) : [U]V;

function Map#Card<U,V>(Map U V) : int;

axiom (forall<U,V> m: Map U V :: { Map#Card(m) } 0 <= Map#Card(m));

// The set of Keys of a Map are available by Map#Domain, and the cardinality of that
// set is given by Map#Card.

  /* added second trigger set */

axiom (forall<U,V> m: Map U V :: { Set#Card(Map#Domain(m)) } { Map#Card(m) }
  Set#Card(Map#Domain(m)) == Map#Card(m));

// The set of Values of a Map can be obtained by the function Map#Values, which is
// defined as follows.  Remember, a Set is defined by membership (using Boogie's
// square brackets) and Map#Card, so we need to define what these mean for the Set
// returned by Map#Values.

function Map#Values<U,V>(Map U V) : Set V;

  /* split axiom into each direction */

axiom (forall<U,V> m: Map U V, v: V :: { Map#Values(m)[v] }
  Map#Values(m)[v] ==>
	(exists u: U :: { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u] &&
    v == Map#Elements(m)[u]));

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Elements(m)[u] } // { Map#Domain(m)[u] } // REMOVED this trigger due to a potential for matching loops
	  Map#Domain(m)[u]
    ==> Map#Values(m)[Map#Elements(m)[u]]);
// There's a potential for matching loops with the extra trigger if two maps have equal domains:
// v in range(m1); some k in dom(m1) = dom(m2) s.t. m1[k] = v; m2[k] in range(m2); some k' in dom(m2) s.t. m2[k'] = m2[k]

axiom (forall<U,V> m: Map U V, u: U ::  { Map#Domain(m)[u] } { Map#Elements(m)[u] }
	  Map#Domain(m)[u]
    ==> Set#Card(Map#Values(m)) > 0); // weaker property than above, with weaker triggers

 // Here are the operations that produce Map values.

function Map#Empty<U, V>(): Map U V;
axiom (forall<U, V> u: U ::
        { Map#Domain(Map#Empty(): Map U V)[u] }
        !Map#Domain(Map#Empty(): Map U V)[u]);

axiom (forall<U, V> m: Map U V :: { Map#Card(m) }
 (Map#Card(m) == 0 <==> m == Map#Empty()) &&
 (Map#Card(m) != 0 ==> (exists x: U :: Map#Domain(m)[x])) &&
 ((forall x: U :: {Map#Domain(m)[x]} Map#Domain(m)[x] ==> Map#Card(m) != 0)));

//Build is used in displays, and for map updates
function Map#Build<U, V>(Map U V, U, V): Map U V;

/* added second trigger set (cf. example3 test case, test3) */
axiom (forall<U, V> m: Map U V, u: U, u': U, v: V ::
  { Map#Domain(Map#Build(m, u, v))[u'] } { Map#Domain(m)[u'],Map#Build(m, u, v) } { Map#Elements(Map#Build(m, u, v))[u'] }
  (u' == u ==> Map#Domain(Map#Build(m, u, v))[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == v) &&
  (u' != u ==> Map#Domain(Map#Build(m, u, v))[u'] == Map#Domain(m)[u'] &&
               Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));
/* added second trigger set (not sure of a test case needing it, though) */
axiom (forall<U, V> m: Map U V, u: U, v: V :: { Map#Card(Map#Build(m, u, v)) }{ Map#Card(m),Map#Build(m, u, v) }
  !Map#Domain(m)[u] ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

//equality for maps
  // this axiom is only needed in one direction; the other is implied by the next axiom

function Map#Equal<U, V>(Map U V, Map U V): bool;
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
   (forall u : U :: Map#Domain(m)[u] == Map#Domain(m')[u]) &&
     (forall u : U :: Map#Domain(m)[u] ==> Map#Elements(m)[u] == Map#Elements(m')[u]) ==> Map#Equal(m, m'));
// extensionality
axiom (forall<U, V> m: Map U V, m': Map U V::
  { Map#Equal(m, m') }
    Map#Equal(m, m') ==> m == m');

function Map#Disjoint<U, V>(Map U V, Map U V): bool;
// split in both directions
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    Map#Disjoint(m, m') ==> (forall o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} !Map#Domain(m)[o] || !Map#Domain(m')[o]));
axiom (forall<U, V> m: Map U V, m': Map U V ::
  { Map#Disjoint(m, m') }
    !Map#Disjoint(m, m') ==> (exists o: U :: {Map#Domain(m)[o]} {Map#Domain(m')[o]} Map#Domain(m)[o] && Map#Domain(m')[o]));



// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: (Map int int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map(2 := 3) -- example2.vpr@12.3--12.39
    m_18 := Map#Build((Map#Empty(): Map int int), 2, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (2 in m) -- example2.vpr@13.3--13.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (2 in m) might not hold. (example2.vpr@13.10--13.16) [47652]"}
      Map#Domain(m_18)[2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((3 in m)) -- example2.vpr@14.3--14.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((3 in m)) might not hold. (example2.vpr@14.10--14.19) [47653]"}
      !Map#Domain(m_18)[3];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2] == 3 -- example2.vpr@15.3--15.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[2] == 3
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example2.vpr@15.10--15.19) [47654]"}
        Map#Domain(m_18)[2];
    assert {:msg "  Assert might fail. Assertion m[2] == 3 might not hold. (example2.vpr@15.10--15.19) [47655]"}
      Map#Elements(m_18)[2] == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2 := 4] == Map(2 := 4) -- example2.vpr@16.3--16.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m[2 := 4] == Map(2 := 4) might not hold. (example2.vpr@16.10--16.34) [47656]"}
      Map#Equal(Map#Build(m_18, 2, 4), Map#Build((Map#Empty(): Map int int), 2, 4));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[7 := 1] == Map(2 := 3, 7 := 1) -- example2.vpr@17.3--17.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m[7 := 1] == Map(2 := 3, 7 := 1) might not hold. (example2.vpr@17.10--17.42) [47657]"}
      Map#Equal(Map#Build(m_18, 7, 1), Map#Build(Map#Build((Map#Empty(): Map int int), 2, 3), 7, 1));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m == Map(2 := 3) -- example2.vpr@18.3--18.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m == Map(2 := 3) might not hold. (example2.vpr@18.10--18.26) [47658]"}
      Map#Equal(m_18, Map#Build((Map#Empty(): Map int int), 2, 3));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m1_3: (Map int int);
  var m2_1: (Map int int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m1 := Map(2 := 3) -- example2.vpr@24.3--24.40
    m1_3 := Map#Build((Map#Empty(): Map int int), 2, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: m2 := Map(3 := 2) -- example2.vpr@25.3--25.40
    m2_1 := Map#Build((Map#Empty(): Map int int), 3, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m1[m2[3]] == 3 -- example2.vpr@26.3--26.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m1[m2[3]] == 3
      assert {:msg "  Assert might fail. Map m2 might not contain an entry at key 3. (example2.vpr@26.10--26.24) [47659]"}
        Map#Domain(m2_1)[3];
      assert {:msg "  Assert might fail. Map m1 might not contain an entry at key m2[3]. (example2.vpr@26.10--26.24) [47660]"}
        Map#Domain(m1_3)[Map#Elements(m2_1)[3]];
    assert {:msg "  Assert might fail. Assertion m1[m2[3]] == 3 might not hold. (example2.vpr@26.10--26.24) [47661]"}
      Map#Elements(m1_3)[Map#Elements(m2_1)[3]] == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(m1_3: (Map int bool), m2_1: (Map int bool)) returns ()
  modifies Heap, Mask;
{
  var i_18: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_3: int;
  var i_3_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (i in m1) } { (i in m2) } { m1[i] } { m2[i] } 0 <= i && i < 100 ==> (i in m1) && ((i in m2) && m1[i] != m2[i]))
      if (*) {
        if (0 <= i_18 && i_18 < 100) {
          if (Map#Domain(m1_3)[i_18]) {
            if (Map#Domain(m2_1)[i_18]) {
              assert {:msg "  Contract might not be well-formed. Map m1 might not contain an entry at key i. (example2.vpr@30.12--31.63) [47662]"}
                Map#Domain(m1_3)[i_18];
              assert {:msg "  Contract might not be well-formed. Map m2 might not contain an entry at key i. (example2.vpr@30.12--31.63) [47663]"}
                Map#Domain(m2_1)[i_18];
            }
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { Map#Domain(m1_3)[i_1] } { Map#Domain(m2_1)[i_1] } { Map#Elements(m1_3)[i_1] } { Map#Elements(m2_1)[i_1] }
      0 <= i_1 && i_1 < 100 ==> Map#Domain(m1_3)[i_1] && (Map#Domain(m2_1)[i_1] && Map#Elements(m1_3)[i_1] != Map#Elements(m2_1)[i_1])
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall i: Int ::
  //     { m1[i] }
  //     { m2[i] }
  //     0 <= i && i < 100 ==> m1[i] || m2[i]) -- example2.vpr@33.3--33.64
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { m1[i] } { m2[i] } 0 <= i && i < 100 ==> m1[i] || m2[i])
      if (*) {
        if (0 <= i_3 && i_3 < 100) {
          assert {:msg "  Assert might fail. Map m1 might not contain an entry at key i. (example2.vpr@33.10--33.64) [47664]"}
            Map#Domain(m1_3)[i_3];
          if (!Map#Elements(m1_3)[i_3]) {
            assert {:msg "  Assert might fail. Map m2 might not contain an entry at key i. (example2.vpr@33.10--33.64) [47665]"}
              Map#Domain(m2_1)[i_3];
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_3_2 && i_3_2 < 100) {
        assert {:msg "  Assert might fail. Assertion m1[i] || m2[i] might not hold. (example2.vpr@33.10--33.64) [47666]"}
          Map#Elements(m1_3)[i_3_2] || Map#Elements(m2_1)[i_3_2];
      }
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { Map#Elements(m1_3)[i_4_1_1] } { Map#Elements(m2_1)[i_4_1_1] }
      0 <= i_4_1_1 && i_4_1_1 < 100 ==> Map#Elements(m1_3)[i_4_1_1] || Map#Elements(m2_1)[i_4_1_1]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4_1(m_18: (Map int int)) returns ()
  modifies Heap, Mask;
{
  var i_4: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (i in m) } { m[i] } 0 <= i && i < 100 ==> (i in m) && m[i] == i * i)
      if (*) {
        if (0 <= i_4 && i_4 < 100) {
          if (Map#Domain(m_18)[i_4]) {
            assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example2.vpr@37.12--37.75) [47667]"}
              Map#Domain(m_18)[i_4];
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { Map#Domain(m_18)[i_1] } { Map#Elements(m_18)[i_1] }
      0 <= i_1 && i_1 < 100 ==> Map#Domain(m_18)[i_1] && Map#Elements(m_18)[i_1] == i_1 * i_1
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert m[20] == 400 -- example2.vpr@39.3--39.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[20] == 400
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 20. (example2.vpr@39.10--39.22) [47668]"}
        Map#Domain(m_18)[20];
    assert {:msg "  Assert might fail. Assertion m[20] == 400 might not hold. (example2.vpr@39.10--39.22) [47669]"}
      Map#Elements(m_18)[20] == 400;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: (Map int int);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map(3 := 9) -- example2.vpr@44.3--44.39
    m_18 := Map#Build((Map#Empty(): Map int int), 3, 9);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6(m_18: (Map int int)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume Map#Domain(m_18)[20];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert m[20] <= 0 || 0 < m[20] -- example2.vpr@58.3--58.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[20] <= 0 || 0 < m[20]
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 20. (example2.vpr@58.10--58.33) [47670]"}
        Map#Domain(m_18)[20];
      if (!(Map#Elements(m_18)[20] <= 0)) {
        assert {:msg "  Assert might fail. Map m might not contain an entry at key 20. (example2.vpr@58.10--58.33) [47671]"}
          Map#Domain(m_18)[20];
      }
    assert {:msg "  Assert might fail. Assertion m[20] <= 0 || 0 < m[20] might not hold. (example2.vpr@58.10--58.33) [47672]"}
      Map#Elements(m_18)[20] <= 0 || 0 < Map#Elements(m_18)[20];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7
// ==================================================

procedure test7() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: (Map int int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map(3 := 9) -- example2.vpr@63.3--63.39
    m_18 := Map#Build((Map#Empty(): Map int int), 3, 9);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[3 := 5] == Map(3 := 5) -- example2.vpr@64.3--64.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m[3 := 5] == Map(3 := 5) might not hold. (example2.vpr@64.10--64.34) [47673]"}
      Map#Equal(Map#Build(m_18, 3, 5), Map#Build((Map#Empty(): Map int int), 3, 5));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2 := 5] == Map(2 := 5, 3 := 9) -- example2.vpr@65.3--65.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m[2 := 5] == Map(2 := 5, 3 := 9) might not hold. (example2.vpr@65.10--65.42) [47674]"}
      Map#Equal(Map#Build(m_18, 2, 5), Map#Build(Map#Build((Map#Empty(): Map int int), 2, 5), 3, 9));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2 := 5] == Map(2 := 6, 3 := 9, 2 := 5) -- example2.vpr@66.3--66.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m[2 := 5] == Map(2 := 6, 3 := 9, 2 := 5) might not hold. (example2.vpr@66.10--66.50) [47675]"}
      Map#Equal(Map#Build(m_18, 2, 5), Map#Build(Map#Build(Map#Build((Map#Empty(): Map int int), 2, 6), 3, 9), 2, 5));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test8
// ==================================================

procedure test8() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: (Map int int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_14: int;
  var i_1: int;
  var i_4_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map(1 := 1, 2 := 4, 3 := 9) -- example2.vpr@71.3--71.55
    m_18 := Map#Build(Map#Build(Map#Build((Map#Empty(): Map int int), 1, 1), 2, 4), 3, 9);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { m[i] } (i in m) ==> m[i] == i * i) -- example2.vpr@72.3--72.61
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { m[i] } (i in m) ==> m[i] == i * i)
      if (*) {
        if (Map#Domain(m_18)[i_14]) {
          assert {:msg "  Assert might fail. Map m might not contain an entry at key i. (example2.vpr@72.10--72.61) [47676]"}
            Map#Domain(m_18)[i_14];
        }
        assume false;
      }
    if (*) {
      if (Map#Domain(m_18)[i_1]) {
        assert {:msg "  Assert might fail. Assertion m[i] == i * i might not hold. (example2.vpr@72.10--72.61) [47677]"}
          Map#Elements(m_18)[i_1] == i_1 * i_1;
      }
      assume false;
    }
    assume (forall i_2_1: int ::
      { Map#Elements(m_18)[i_2_1] }
      Map#Domain(m_18)[i_2_1] ==> Map#Elements(m_18)[i_2_1] == i_2_1 * i_2_1
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((0 in m)) -- example2.vpr@73.3--73.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((0 in m)) might not hold. (example2.vpr@73.10--73.19) [47678]"}
      !Map#Domain(m_18)[0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (1 in m) -- example2.vpr@74.3--74.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (1 in m) might not hold. (example2.vpr@74.10--74.16) [47679]"}
      Map#Domain(m_18)[1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (2 in m) -- example2.vpr@75.3--75.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (2 in m) might not hold. (example2.vpr@75.10--75.16) [47680]"}
      Map#Domain(m_18)[2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (3 in m) -- example2.vpr@76.3--76.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (3 in m) might not hold. (example2.vpr@76.10--76.16) [47681]"}
      Map#Domain(m_18)[3];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { (i in m) } i < 1 || i > 3 ==> !((i in m))) -- example2.vpr@77.3--77.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { (i in m) } i < 1 || i > 3 ==> !((i in m)))
      if (*) {
        assume false;
      }
    if (*) {
      if (i_4_1 < 1 || i_4_1 > 3) {
        assert {:msg "  Assert might fail. Assertion !((i in m)) might not hold. (example2.vpr@77.10--77.67) [47682]"}
          !Map#Domain(m_18)[i_4_1];
      }
      assume false;
    }
    assume (forall i_5_1_1: int ::
      { Map#Domain(m_18)[i_5_1_1] }
      i_5_1_1 < 1 || i_5_1_1 > 3 ==> !Map#Domain(m_18)[i_5_1_1]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test9
// ==================================================

procedure test9() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: (Map int int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var k_1: int;
  var i: int;
  var n: int;
  var k_3: int;
  var k_5: int;
  var k_2: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var k_13: int;
  var k_15: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var i$0: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map[Int,Int]() -- example2.vpr@82.3--82.33
    m_18 := (Map#Empty(): Map int int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall k: Int :: { (k in m) } !((k in m))) -- example2.vpr@83.3--83.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall k: Int :: { (k in m) } !((k in m)))
      if (*) {
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion !((k in m)) might not hold. (example2.vpr@83.10--83.37) [47683]"}
        !Map#Domain(m_18)[k_1];
      assume false;
    }
    assume (forall k_2_1: int ::
      { Map#Domain(m_18)[k_2_1] }
      !Map#Domain(m_18)[k_2_1]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: i := 0 -- example2.vpr@85.3--85.19
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: n := 100 -- example2.vpr@86.3--86.21
    n := 100;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- example2.vpr@88.3--95.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not hold on entry. Assertion 0 <= i might not hold. (example2.vpr@89.15--89.43) [47684]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not hold on entry. Assertion i <= n might not hold. (example2.vpr@89.15--89.43) [47685]"}
          i <= n;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not hold on entry. Assertion n == 100 might not hold. (example2.vpr@89.15--89.43) [47686]"}
          n == 100;
        if (*) {
          assert {:msg "  Loop invariant (forall k: Int :: { (k in m) } (0 <= k && k < i) == (k in m)) might not hold on entry. Assertion (0 <= k && k < i) == (k in m) might not hold. (example2.vpr@90.15--90.62) [47687]"}
            (0 <= k_3 && k_3 < i) == Map#Domain(m_18)[k_3];
          assume false;
        }
        assume (forall k_4_1: int ::
          { Map#Domain(m_18)[k_4_1] }
          (0 <= k_4_1 && k_4_1 < i) == Map#Domain(m_18)[k_4_1]
        );
        if (*) {
          if (Map#Domain(m_18)[k_5]) {
            assert {:msg "  Loop invariant (forall k: Int :: { (k in m) } { m[k] } (k in m) ==> m[k] == k * k) might not hold on entry. Assertion m[k] == k * k might not hold. (example2.vpr@91.15--91.57) [47688]"}
              Map#Elements(m_18)[k_5] == k_5 * k_5;
          }
          assume false;
        }
        assume (forall k_6_1: int ::
          { Map#Domain(m_18)[k_6_1] } { Map#Elements(m_18)[k_6_1] }
          Map#Domain(m_18)[k_6_1] ==> Map#Elements(m_18)[k_6_1] == k_6_1 * k_6_1
        );
    
    // -- Havoc loop written variables (except locals)
      havoc i, m_18;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i <= n;
        assume n == 100;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { (k in m) } (0 <= k && k < i) == (k in m))
          if (*) {
            assume false;
          }
        assume (forall k_8: int ::
          { Map#Domain(m_18)[k_8] }
          (0 <= k_8 && k_8 < i) == Map#Domain(m_18)[k_8]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall k: Int :: { (k in m) } { m[k] } (k in m) ==> m[k] == k * k)
          if (*) {
            if (Map#Domain(m_18)[k_2]) {
              assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key k. (example2.vpr@91.15--91.57) [47689]"}
                Map#Domain(m_18)[k_2];
            }
            assume false;
          }
        assume (forall k_10: int ::
          { Map#Domain(m_18)[k_10] } { Map#Elements(m_18)[k_10] }
          Map#Domain(m_18)[k_10] ==> Map#Elements(m_18)[k_10] == k_10 * k_10
        );
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
        assume 0 <= i;
        assume i <= n;
        assume n == 100;
        assume (forall k_11: int ::
          { Map#Domain(m_18)[k_11] }
          (0 <= k_11 && k_11 < i) == Map#Domain(m_18)[k_11]
        );
        assume (forall k_12: int ::
          { Map#Domain(m_18)[k_12] } { Map#Elements(m_18)[k_12] }
          Map#Domain(m_18)[k_12] ==> Map#Elements(m_18)[k_12] == k_12 * k_12
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: m := m[i := i * i] -- example2.vpr@93.5--93.23
            m_18 := Map#Build(m_18, i, i * i);
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- example2.vpr@94.5--94.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not be preserved. Assertion 0 <= i might not hold. (example2.vpr@89.15--89.43) [47690]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not be preserved. Assertion i <= n might not hold. (example2.vpr@89.15--89.43) [47691]"}
          i <= n;
        assert {:msg "  Loop invariant 0 <= i && (i <= n && n == 100) might not be preserved. Assertion n == 100 might not hold. (example2.vpr@89.15--89.43) [47692]"}
          n == 100;
        if (*) {
          assert {:msg "  Loop invariant (forall k: Int :: { (k in m) } (0 <= k && k < i) == (k in m)) might not be preserved. Assertion (0 <= k && k < i) == (k in m) might not hold. (example2.vpr@90.15--90.62) [47693]"}
            (0 <= k_13 && k_13 < i) == Map#Domain(m_18)[k_13];
          assume false;
        }
        assume (forall k_14_1: int ::
          { Map#Domain(m_18)[k_14_1] }
          (0 <= k_14_1 && k_14_1 < i) == Map#Domain(m_18)[k_14_1]
        );
        if (*) {
          if (Map#Domain(m_18)[k_15]) {
            assert {:msg "  Loop invariant (forall k: Int :: { (k in m) } { m[k] } (k in m) ==> m[k] == k * k) might not be preserved. Assertion m[k] == k * k might not hold. (example2.vpr@91.15--91.57) [47694]"}
              Map#Elements(m_18)[k_15] == k_15 * k_15;
          }
          assume false;
        }
        assume (forall k_16_1: int ::
          { Map#Domain(m_18)[k_16_1] } { Map#Elements(m_18)[k_16_1] }
          Map#Domain(m_18)[k_16_1] ==> Map#Elements(m_18)[k_16_1] == k_16_1 * k_16_1
        );
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i <= n;
      assume n == 100;
      assume (forall k_17: int ::
        { Map#Domain(m_18)[k_17] }
        (0 <= k_17 && k_17 < i) == Map#Domain(m_18)[k_17]
      );
      assume (forall k_18: int ::
        { Map#Domain(m_18)[k_18] } { Map#Elements(m_18)[k_18] }
        Map#Domain(m_18)[k_18] ==> Map#Elements(m_18)[k_18] == k_18 * k_18
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test4(m) -- example2.vpr@97.3--97.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      if (*) {
        if (0 <= i$0 && i$0 < 100) {
          assert {:msg "  The precondition of method test4 might not hold. Assertion (i$0 in m) might not hold. (example2.vpr@97.3--97.11) [47695]"}
            Map#Domain(m_18)[i$0];
          assert {:msg "  The precondition of method test4 might not hold. Assertion m[i$0] == i$0 * i$0 might not hold. (example2.vpr@97.3--97.11) [47696]"}
            Map#Elements(m_18)[i$0] == i$0 * i$0;
        }
        assume false;
      }
      assume (forall i$0_1_1: int ::
        { Map#Domain(m_18)[i$0_1_1] } { Map#Elements(m_18)[i$0_1_1] }
        0 <= i$0_1_1 && i$0_1_1 < 100 ==> Map#Domain(m_18)[i$0_1_1] && Map#Elements(m_18)[i$0_1_1] == i$0_1_1 * i$0_1_1
      );
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(m_18: (Map int int)) returns ()
  modifies Heap, Mask;
{
  var i_19: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (i in m) } (0 <= i && i < 10) == (i in m))
      if (*) {
        assume false;
      }
    assume (forall i_1: int ::
      { Map#Domain(m_18)[i_1] }
      (0 <= i_1 && i_1 < 10) == Map#Domain(m_18)[i_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { m[i] } (i in m) ==> m[i] == i * 2)
      if (*) {
        if (Map#Domain(m_18)[i_19]) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example2.vpr@102.12--102.63) [47697]"}
            Map#Domain(m_18)[i_19];
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { Map#Elements(m_18)[i_3_2] }
      Map#Domain(m_18)[i_3_2] ==> Map#Elements(m_18)[i_3_2] == i_3_2 * 2
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (0 in m) -- example2.vpr@104.3--104.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (0 in m) might not hold. (example2.vpr@104.10--104.16) [47698]"}
      Map#Domain(m_18)[0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (1 in m) -- example2.vpr@105.3--105.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (1 in m) might not hold. (example2.vpr@105.10--105.16) [47699]"}
      Map#Domain(m_18)[1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((10 in m)) -- example2.vpr@106.3--106.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((10 in m)) might not hold. (example2.vpr@106.10--106.20) [47700]"}
      !Map#Domain(m_18)[10];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[0] == 0 && m[2] == 4 -- example2.vpr@107.3--107.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[0] == 0
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 0. (example2.vpr@107.10--107.32) [47701]"}
        Map#Domain(m_18)[0];
    assert {:msg "  Assert might fail. Assertion m[0] == 0 might not hold. (example2.vpr@107.10--107.32) [47702]"}
      Map#Elements(m_18)[0] == 0;
    
    // -- Check definedness of m[2] == 4
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example2.vpr@107.10--107.32) [47703]"}
        Map#Domain(m_18)[2];
    assert {:msg "  Assert might fail. Assertion m[2] == 4 might not hold. (example2.vpr@107.10--107.32) [47704]"}
      Map#Elements(m_18)[2] == 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test11
// ==================================================

procedure test11(m_18: (Map int int)) returns ()
  modifies Heap, Mask;
{
  var i_10: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (i in m) } (2 <= i && i < 6) == (i in m))
      if (*) {
        assume false;
      }
    assume (forall i_1: int ::
      { Map#Domain(m_18)[i_1] }
      (2 <= i_1 && i_1 < 6) == Map#Domain(m_18)[i_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { m[i] } (i in m) ==> m[i] == i + 1)
      if (*) {
        if (Map#Domain(m_18)[i_10]) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example2.vpr@112.12--112.63) [47705]"}
            Map#Domain(m_18)[i_10];
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { Map#Elements(m_18)[i_3_2] }
      Map#Domain(m_18)[i_3_2] ==> Map#Elements(m_18)[i_3_2] == i_3_2 + 1
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (5 in domain(m)) -- example2.vpr@114.3--114.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (5 in domain(m)) might not hold. (example2.vpr@114.10--114.24) [47706]"}
      Map#Domain(m_18)[5];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((6 in domain(m))) -- example2.vpr@115.3--115.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((6 in domain(m))) might not hold. (example2.vpr@115.10--115.27) [47707]"}
      !Map#Domain(m_18)[6];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[5] == 6 -- example2.vpr@116.3--116.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[5] == 6
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 5. (example2.vpr@116.10--116.19) [47708]"}
        Map#Domain(m_18)[5];
    assert {:msg "  Assert might fail. Assertion m[5] == 6 might not hold. (example2.vpr@116.10--116.19) [47709]"}
      Map#Elements(m_18)[5] == 6;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (6 in range(m)) -- example2.vpr@117.3--117.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (6 in range(m)) might not hold. (example2.vpr@117.10--117.23) [47710]"}
      Map#Values(m_18)[6];
    assume state(Heap, Mask);
}