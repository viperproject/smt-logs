// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:32:00
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testLockSetDemo.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testLockSetDemo-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Translation of all fields
// ==================================================

const unique Lock__owner: Field NormalField Ref;
axiom !IsPredicateField(Lock__owner);
axiom !IsWandField(Lock__owner);
const unique Lock__user: Field NormalField Ref;
axiom !IsPredicateField(Lock__user);
axiom !IsWandField(Lock__user);
const unique Client__x: Field NormalField int;
axiom !IsPredicateField(Client__x);
axiom !IsWandField(Client__x);

// ==================================================
// Translation of predicate LockSet__lockset
// ==================================================

type PredicateType_LockSet__lockset;
function  LockSet__lockset(diz: Ref, S: (MultiSet Ref)): Field PredicateType_LockSet__lockset FrameType;
function  LockSet__lockset#sm(diz: Ref, S: (MultiSet Ref)): Field PredicateType_LockSet__lockset PMaskType;
axiom (forall diz: Ref, S: (MultiSet Ref) ::
  { PredicateMaskField(LockSet__lockset(diz, S)) }
  PredicateMaskField(LockSet__lockset(diz, S)) == LockSet__lockset#sm(diz, S)
);
axiom (forall diz: Ref, S: (MultiSet Ref) ::
  { LockSet__lockset(diz, S) }
  IsPredicateField(LockSet__lockset(diz, S))
);
axiom (forall diz: Ref, S: (MultiSet Ref) ::
  { LockSet__lockset(diz, S) }
  getPredWandId(LockSet__lockset(diz, S)) == 0
);
function  LockSet__lockset#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LockSet__lockset#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, S: (MultiSet Ref), diz2: Ref, S2: (MultiSet Ref) ::
  { LockSet__lockset(diz, S), LockSet__lockset(diz2, S2) }
  LockSet__lockset(diz, S) == LockSet__lockset(diz2, S2) ==> diz == diz2 && S == S2
);
axiom (forall diz: Ref, S: (MultiSet Ref), diz2: Ref, S2: (MultiSet Ref) ::
  { LockSet__lockset#sm(diz, S), LockSet__lockset#sm(diz2, S2) }
  LockSet__lockset#sm(diz, S) == LockSet__lockset#sm(diz2, S2) ==> diz == diz2 && S == S2
);

axiom (forall Heap: HeapType, diz: Ref, S: (MultiSet Ref) ::
  { LockSet__lockset#trigger(Heap, LockSet__lockset(diz, S)) }
  LockSet__lockset#everUsed(LockSet__lockset(diz, S))
);

procedure LockSet__lockset#definedness(diz: Ref, S: (MultiSet Ref)) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of LockSet__lockset
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Client__inv
// ==================================================

type PredicateType_Client__inv;
function  Client__inv(diz: Ref, p_1: Perm): Field PredicateType_Client__inv FrameType;
function  Client__inv#sm(diz: Ref, p_1: Perm): Field PredicateType_Client__inv PMaskType;
axiom (forall diz: Ref, p_1: Perm ::
  { PredicateMaskField(Client__inv(diz, p_1)) }
  PredicateMaskField(Client__inv(diz, p_1)) == Client__inv#sm(diz, p_1)
);
axiom (forall diz: Ref, p_1: Perm ::
  { Client__inv(diz, p_1) }
  IsPredicateField(Client__inv(diz, p_1))
);
axiom (forall diz: Ref, p_1: Perm ::
  { Client__inv(diz, p_1) }
  getPredWandId(Client__inv(diz, p_1)) == 1
);
function  Client__inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Client__inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Client__inv(diz, p_1), Client__inv(diz2, p2_1) }
  Client__inv(diz, p_1) == Client__inv(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);
axiom (forall diz: Ref, p_1: Perm, diz2: Ref, p2_1: Perm ::
  { Client__inv#sm(diz, p_1), Client__inv#sm(diz2, p2_1) }
  Client__inv#sm(diz, p_1) == Client__inv#sm(diz2, p2_1) ==> diz == diz2 && p_1 == p2_1
);

axiom (forall Heap: HeapType, diz: Ref, p_1: Perm ::
  { Client__inv#trigger(Heap, Client__inv(diz, p_1)) }
  Client__inv#everUsed(Client__inv(diz, p_1))
);

procedure Client__inv#definedness(diz: Ref, p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Client__inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    assume NoPerm <= p_1;
    perm := p_1;
    assert {:msg "  Predicate might not be well-formed. Fraction p might be negative. (testLockSetDemo.vpr@14.1--16.2) [159962]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method LockSet__LockSet
// ==================================================

procedure LockSet__LockSet(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref)):=PostMask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- testLockSetDemo.vpr@24.3--24.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@25.3--25.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testLockSetDemo.vpr@26.3--26.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   acc(LockSet__lockset(sys__result, Multiset[Ref]()), write) -- testLockSetDemo.vpr@27.3--27.93
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@27.10--27.93) [159963]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access LockSet__lockset(sys__result, Multiset[Ref]()) (testLockSetDemo.vpr@27.10--27.93) [159965]"}
        perm <= AssertMask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref))];
    }
    AssertMask := AssertMask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref)):=AssertMask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref))] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@28.3--28.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of LockSet__LockSet might not hold. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@20.11--20.30) [159966]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of LockSet__LockSet might not hold. There might be insufficient permission to access LockSet__lockset(sys__result, Multiset[Ref]()) (testLockSetDemo.vpr@21.11--21.69) [159967]"}
        perm <= Mask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref))];
    }
    Mask := Mask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref)):=Mask[null, LockSet__lockset(sys__result, (MultiSet#Empty(): MultiSet Ref))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Lock__lock
// ==================================================

procedure Lock__lock(diz: Ref, current_thread_id: int, S: (MultiSet Ref)) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Lock__owner:=Mask[diz, Lock__owner] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Lock__user:=Mask[diz, Lock__user] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LockSet__lockset(diz.Lock__owner, S), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@36.12--36.60) [159968]"}
        HasDirectPerm(Mask, diz, Lock__owner);
    perm := FullPerm;
    Mask := Mask[null, LockSet__lockset(Heap[diz, Lock__owner], S):=Mask[null, LockSet__lockset(Heap[diz, Lock__owner], S)] + perm];
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
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Lock__owner:=PostMask[diz, Lock__owner] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Lock__user:=PostMask[diz, Lock__user] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (MultiSet#Select(S, diz) == 0) {
      
      // -- Check definedness of acc(Client__inv(diz.Lock__user, write), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__user (testLockSetDemo.vpr@39.11--39.79) [159969]"}
          HasDirectPerm(PostMask, diz, Lock__user);
      perm := FullPerm;
      PostMask := PostMask[null, Client__inv(PostHeap[diz, Lock__user], FullPerm):=PostMask[null, Client__inv(PostHeap[diz, Lock__user], FullPerm)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(LockSet__lockset(diz.Lock__owner, (S union Multiset(diz))), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@40.11--40.79) [159970]"}
        HasDirectPerm(PostMask, diz, Lock__owner);
    perm := FullPerm;
    PostMask := PostMask[null, LockSet__lockset(PostHeap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz))):=PostMask[null, LockSet__lockset(PostHeap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz)))] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@42.3--42.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Lock__lock might not hold. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@37.11--37.41) [159971]"}
      Mask[diz, Lock__owner] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Lock__owner];
    Mask := Mask[diz, Lock__owner:=Mask[diz, Lock__owner] - wildcard];
    assert {:msg "  Postcondition of Lock__lock might not hold. There might be insufficient permission to access diz.Lock__user (testLockSetDemo.vpr@38.11--38.40) [159972]"}
      Mask[diz, Lock__user] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Lock__user];
    Mask := Mask[diz, Lock__user:=Mask[diz, Lock__user] - wildcard];
    if (MultiSet#Select(S, diz) == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Lock__lock might not hold. There might be insufficient permission to access Client__inv(diz.Lock__user, write) (testLockSetDemo.vpr@39.11--39.79) [159973]"}
          perm <= Mask[null, Client__inv(Heap[diz, Lock__user], FullPerm)];
      }
      Mask := Mask[null, Client__inv(Heap[diz, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[diz, Lock__user], FullPerm)] - perm];
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Lock__lock might not hold. There might be insufficient permission to access LockSet__lockset(diz.Lock__owner, (S union Multiset(diz))) (testLockSetDemo.vpr@40.11--40.79) [159974]"}
        perm <= Mask[null, LockSet__lockset(Heap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz)))];
    }
    Mask := Mask[null, LockSet__lockset(Heap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz))):=Mask[null, LockSet__lockset(Heap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz)))] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Lock__unlock
// ==================================================

procedure Lock__unlock(diz: Ref, current_thread_id: int, S: (MultiSet Ref)) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Lock__owner:=Mask[diz, Lock__owner] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Lock__user:=Mask[diz, Lock__user] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LockSet__lockset(diz.Lock__owner, (S union Multiset(diz))), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@50.12--50.80) [159975]"}
        HasDirectPerm(Mask, diz, Lock__owner);
    perm := FullPerm;
    Mask := Mask[null, LockSet__lockset(Heap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz))):=Mask[null, LockSet__lockset(Heap[diz, Lock__owner], MultiSet#Union(S, MultiSet#Singleton(diz)))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (MultiSet#Select(S, diz) == 0) {
      
      // -- Check definedness of acc(Client__inv(diz.Lock__user, write), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__user (testLockSetDemo.vpr@51.12--51.80) [159976]"}
          HasDirectPerm(Mask, diz, Lock__user);
      perm := FullPerm;
      Mask := Mask[null, Client__inv(Heap[diz, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[diz, Lock__user], FullPerm)] + perm];
      assume state(Heap, Mask);
    }
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
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Lock__owner:=PostMask[diz, Lock__owner] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    PostMask := PostMask[diz, Lock__user:=PostMask[diz, Lock__user] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(LockSet__lockset(diz.Lock__owner, S), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@54.11--54.59) [159977]"}
        HasDirectPerm(PostMask, diz, Lock__owner);
    perm := FullPerm;
    PostMask := PostMask[null, LockSet__lockset(PostHeap[diz, Lock__owner], S):=PostMask[null, LockSet__lockset(PostHeap[diz, Lock__owner], S)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@56.3--56.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Lock__unlock might not hold. There might be insufficient permission to access diz.Lock__owner (testLockSetDemo.vpr@52.11--52.41) [159978]"}
      Mask[diz, Lock__owner] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Lock__owner];
    Mask := Mask[diz, Lock__owner:=Mask[diz, Lock__owner] - wildcard];
    assert {:msg "  Postcondition of Lock__unlock might not hold. There might be insufficient permission to access diz.Lock__user (testLockSetDemo.vpr@53.11--53.40) [159979]"}
      Mask[diz, Lock__user] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[diz, Lock__user];
    Mask := Mask[diz, Lock__user:=Mask[diz, Lock__user] - wildcard];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Lock__unlock might not hold. There might be insufficient permission to access LockSet__lockset(diz.Lock__owner, S) (testLockSetDemo.vpr@54.11--54.59) [159980]"}
        perm <= Mask[null, LockSet__lockset(Heap[diz, Lock__owner], S)];
    }
    Mask := Mask[null, LockSet__lockset(Heap[diz, Lock__owner], S):=Mask[null, LockSet__lockset(Heap[diz, Lock__owner], S)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Lock__Lock
// ==================================================

procedure Lock__Lock(current_thread_id: int, owner: Ref, user: Ref) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var diz: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[owner, $allocated];
    assume Heap[user, $allocated];
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Client__inv(user, FullPerm):=Mask[null, Client__inv(user, FullPerm)] + perm];
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Lock__owner:=PostMask[sys__result, Lock__owner] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Lock__user:=PostMask[sys__result, Lock__user] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Lock__owner == owner
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Lock__owner (testLockSetDemo.vpr@65.11--65.43) [159981]"}
        HasDirectPerm(PostMask, sys__result, Lock__owner);
    assume PostHeap[sys__result, Lock__owner] == owner;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Lock__user == user
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Lock__user (testLockSetDemo.vpr@66.11--66.41) [159982]"}
        HasDirectPerm(PostMask, sys__result, Lock__user);
    assume PostHeap[sys__result, Lock__user] == user;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Lock__owner, Lock__user) -- testLockSetDemo.vpr@69.3--69.38
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Lock__owner:=Mask[diz, Lock__owner] + FullPerm];
    Mask := Mask[diz, Lock__user:=Mask[diz, Lock__user] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@70.3--70.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testLockSetDemo.vpr@71.3--71.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Lock__owner, wildcard) &&
  //   (acc(sys__result.Lock__user, wildcard) &&
  //   (sys__result.Lock__owner == owner && sys__result.Lock__user == user))) -- testLockSetDemo.vpr@72.3--72.188
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@72.10--72.188) [159983]"}
      sys__result != null;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Lock__owner (testLockSetDemo.vpr@72.10--72.188) [159984]"}
      AssertMask[sys__result, Lock__owner] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Lock__owner];
    AssertMask := AssertMask[sys__result, Lock__owner:=AssertMask[sys__result, Lock__owner] - wildcard];
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Lock__user (testLockSetDemo.vpr@72.10--72.188) [159985]"}
      AssertMask[sys__result, Lock__user] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Lock__user];
    AssertMask := AssertMask[sys__result, Lock__user:=AssertMask[sys__result, Lock__user] - wildcard];
    
    // -- Check definedness of sys__result.Lock__owner == owner
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Lock__owner (testLockSetDemo.vpr@72.10--72.188) [159986]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Lock__owner);
    assert {:msg "  Assert might fail. Assertion sys__result.Lock__owner == owner might not hold. (testLockSetDemo.vpr@72.10--72.188) [159987]"}
      AssertHeap[sys__result, Lock__owner] == owner;
    
    // -- Check definedness of sys__result.Lock__user == user
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Lock__user (testLockSetDemo.vpr@72.10--72.188) [159988]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Lock__user);
    assert {:msg "  Assert might fail. Assertion sys__result.Lock__user == user might not hold. (testLockSetDemo.vpr@72.10--72.188) [159989]"}
      AssertHeap[sys__result, Lock__user] == user;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@73.3--73.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Lock__Lock might not hold. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@62.11--62.30) [159990]"}
      sys__result != null;
    assert {:msg "  Postcondition of Lock__Lock might not hold. There might be insufficient permission to access sys__result.Lock__owner (testLockSetDemo.vpr@63.11--63.49) [159991]"}
      Mask[sys__result, Lock__owner] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Lock__owner];
    Mask := Mask[sys__result, Lock__owner:=Mask[sys__result, Lock__owner] - wildcard];
    assert {:msg "  Postcondition of Lock__Lock might not hold. There might be insufficient permission to access sys__result.Lock__user (testLockSetDemo.vpr@64.11--64.48) [159992]"}
      Mask[sys__result, Lock__user] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Lock__user];
    Mask := Mask[sys__result, Lock__user:=Mask[sys__result, Lock__user] - wildcard];
    assert {:msg "  Postcondition of Lock__Lock might not hold. Assertion sys__result.Lock__owner == owner might not hold. (testLockSetDemo.vpr@65.11--65.43) [159993]"}
      Heap[sys__result, Lock__owner] == owner;
    assert {:msg "  Postcondition of Lock__Lock might not hold. Assertion sys__result.Lock__user == user might not hold. (testLockSetDemo.vpr@66.11--66.41) [159994]"}
      Heap[sys__result, Lock__user] == user;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Client__main
// ==================================================

procedure Client__main(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ls: Ref;
  var __flatten_1: Ref;
  var l_2: Ref;
  var __flatten_2: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var arg_S: (MultiSet Ref);
  var newVersion: FrameType;
  var __flatten_4: int;
  var __flatten_15: int;
  var arg_S_1: (MultiSet Ref);
  var __flatten_6: int;
  var __flatten_17: int;
  var arg_S_2: (MultiSet Ref);
  var __flatten_8: int;
  var __flatten_19: int;
  var arg_S_3: (MultiSet Ref);
  var __flatten_10: int;
  var __flatten_21: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[ls, $allocated];
    assume Heap[__flatten_1, $allocated];
    assume Heap[l_2, $allocated];
    assume Heap[__flatten_2, $allocated];
  
  // -- Translating statement: __flatten_1 := LockSet__LockSet(current_thread_id) -- testLockSetDemo.vpr@93.3--93.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method LockSet__LockSet might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@93.3--93.53) [159995]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_1;
    
    // -- Inhaling postcondition
      assume __flatten_1 != null;
      perm := FullPerm;
      Mask := Mask[null, LockSet__lockset(__flatten_1, (MultiSet#Empty(): MultiSet Ref)):=Mask[null, LockSet__lockset(__flatten_1, (MultiSet#Empty(): MultiSet Ref))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[__flatten_1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: ls := __flatten_1 -- testLockSetDemo.vpr@94.3--94.20
    ls := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(LockSet__lockset(ls, Multiset[Ref]()), write) -- testLockSetDemo.vpr@95.3--95.59
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access LockSet__lockset(ls, Multiset[Ref]()) (testLockSetDemo.vpr@95.10--95.59) [159997]"}
        perm <= AssertMask[null, LockSet__lockset(ls, (MultiSet#Empty(): MultiSet Ref))];
    }
    AssertMask := AssertMask[null, LockSet__lockset(ls, (MultiSet#Empty(): MultiSet Ref)):=AssertMask[null, LockSet__lockset(ls, (MultiSet#Empty(): MultiSet Ref))] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Client__inv(diz, write), write) -- testLockSetDemo.vpr@96.3--96.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Client__inv(diz, write) might fail. Assertion write >= none might not hold. (testLockSetDemo.vpr@96.3--96.43) [159999]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Client__inv(diz, write) might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@96.3--96.43) [160001]"}
        perm <= Mask[diz, Client__x];
    }
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, Client__inv(diz, FullPerm):=Mask[null, Client__inv(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Client__inv#trigger(Heap, Client__inv(diz, FullPerm));
    assume Heap[null, Client__inv(diz, FullPerm)] == ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Client__x]));
    if (!HasDirectPerm(Mask, null, Client__inv(diz, FullPerm))) {
      Heap := Heap[null, Client__inv#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Client__inv(diz, FullPerm):=freshVersion];
    }
    Heap := Heap[null, Client__inv#sm(diz, FullPerm):=Heap[null, Client__inv#sm(diz, FullPerm)][diz, Client__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := Lock__Lock(current_thread_id, ls, diz) -- testLockSetDemo.vpr@97.3--97.56
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Lock__Lock might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@97.3--97.56) [160003]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Lock__Lock might not hold. There might be insufficient permission to access Client__inv(diz, write) (testLockSetDemo.vpr@97.3--97.56) [160004]"}
          perm <= Mask[null, Client__inv(diz, FullPerm)];
      }
      Mask := Mask[null, Client__inv(diz, FullPerm):=Mask[null, Client__inv(diz, FullPerm)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc __flatten_2;
    
    // -- Inhaling postcondition
      assume __flatten_2 != null;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Lock__owner:=Mask[__flatten_2, Lock__owner] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume __flatten_2 != null;
      Mask := Mask[__flatten_2, Lock__user:=Mask[__flatten_2, Lock__user] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_2, Lock__owner] == ls;
      assume Heap[__flatten_2, Lock__user] == diz;
      assume state(Heap, Mask);
    assume Heap[__flatten_2, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: l := __flatten_2 -- testLockSetDemo.vpr@98.3--98.19
    l_2 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: Lock__lock(l, current_thread_id, Multiset[Ref]()) -- testLockSetDemo.vpr@99.3--99.52
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_S := (MultiSet#Empty(): MultiSet Ref);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Lock__lock might not hold. Assertion l != null might not hold. (testLockSetDemo.vpr@99.3--99.52) [160005]"}
        l_2 != null;
      assert {:msg "  The precondition of method Lock__lock might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@99.3--99.52) [160006]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access l.Lock__owner (testLockSetDemo.vpr@99.3--99.52) [160007]"}
        Mask[l_2, Lock__owner] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__owner];
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] - wildcard];
      assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access l.Lock__user (testLockSetDemo.vpr@99.3--99.52) [160008]"}
        Mask[l_2, Lock__user] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__user];
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access LockSet__lockset(l.Lock__owner, Multiset[Ref]()) (testLockSetDemo.vpr@99.3--99.52) [160009]"}
          perm <= Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S)];
      }
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] + perm];
      assume state(Heap, Mask);
      if (MultiSet#Select(arg_S, l_2) == 0) {
        perm := FullPerm;
        Mask := Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)] + perm];
        assume state(Heap, Mask);
      }
      perm := FullPerm;
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S, MultiSet#Singleton(l_2))):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S, MultiSet#Singleton(l_2)))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Client__inv(diz, write), write) -- testLockSetDemo.vpr@100.3--100.45
    assume Client__inv#trigger(Heap, Client__inv(diz, FullPerm));
    assume Heap[null, Client__inv(diz, FullPerm)] == ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Client__x]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Client__inv(diz, write) might fail. There might be insufficient permission to access Client__inv(diz, write) (testLockSetDemo.vpr@100.3--100.45) [160012]"}
        perm <= Mask[null, Client__inv(diz, FullPerm)];
    }
    Mask := Mask[null, Client__inv(diz, FullPerm):=Mask[null, Client__inv(diz, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Client__inv(diz, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Client__inv(diz, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := 1 -- testLockSetDemo.vpr@101.3--101.19
    __flatten_4 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_15 := __flatten_4 -- testLockSetDemo.vpr@102.3--102.30
    __flatten_15 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Client__x := __flatten_15 -- testLockSetDemo.vpr@103.3--103.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@103.3--103.32) [160014]"}
      FullPerm == Mask[diz, Client__x];
    Heap := Heap[diz, Client__x:=__flatten_15];
    assume state(Heap, Mask);
  
  // -- Translating statement: Lock__lock(l, current_thread_id, Multiset(l)) -- testLockSetDemo.vpr@105.3--105.48
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_S_1 := MultiSet#Singleton(l_2);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Lock__lock might not hold. Assertion l != null might not hold. (testLockSetDemo.vpr@105.3--105.48) [160015]"}
        l_2 != null;
      assert {:msg "  The precondition of method Lock__lock might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@105.3--105.48) [160016]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access l.Lock__owner (testLockSetDemo.vpr@105.3--105.48) [160017]"}
        Mask[l_2, Lock__owner] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__owner];
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] - wildcard];
      assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access l.Lock__user (testLockSetDemo.vpr@105.3--105.48) [160018]"}
        Mask[l_2, Lock__user] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__user];
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Lock__lock might not hold. There might be insufficient permission to access LockSet__lockset(l.Lock__owner, Multiset(l)) (testLockSetDemo.vpr@105.3--105.48) [160019]"}
          perm <= Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_1)];
      }
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_1):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] + perm];
      assume state(Heap, Mask);
      if (MultiSet#Select(arg_S_1, l_2) == 0) {
        perm := FullPerm;
        Mask := Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)] + perm];
        assume state(Heap, Mask);
      }
      perm := FullPerm;
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_1, MultiSet#Singleton(l_2))):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_1, MultiSet#Singleton(l_2)))] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := 2 -- testLockSetDemo.vpr@106.3--106.19
    __flatten_6 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := __flatten_6 -- testLockSetDemo.vpr@107.3--107.30
    __flatten_17 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Client__x := __flatten_17 -- testLockSetDemo.vpr@108.3--108.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@108.3--108.32) [160020]"}
      FullPerm == Mask[diz, Client__x];
    Heap := Heap[diz, Client__x:=__flatten_17];
    assume state(Heap, Mask);
  
  // -- Translating statement: Lock__unlock(l, current_thread_id, Multiset(l)) -- testLockSetDemo.vpr@109.3--109.50
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_S_2 := MultiSet#Singleton(l_2);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Lock__unlock might not hold. Assertion l != null might not hold. (testLockSetDemo.vpr@109.3--109.50) [160021]"}
        l_2 != null;
      assert {:msg "  The precondition of method Lock__unlock might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@109.3--109.50) [160022]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access l.Lock__owner (testLockSetDemo.vpr@109.3--109.50) [160023]"}
        Mask[l_2, Lock__owner] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__owner];
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] - wildcard];
      assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access l.Lock__user (testLockSetDemo.vpr@109.3--109.50) [160024]"}
        Mask[l_2, Lock__user] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__user];
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access LockSet__lockset(l.Lock__owner, (Multiset(l) union Multiset(l))) (testLockSetDemo.vpr@109.3--109.50) [160025]"}
          perm <= Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_2, MultiSet#Singleton(l_2)))];
      }
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_2, MultiSet#Singleton(l_2))):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_2, MultiSet#Singleton(l_2)))] - perm];
      if (MultiSet#Select(arg_S_2, l_2) == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access Client__inv(l.Lock__user, write) (testLockSetDemo.vpr@109.3--109.50) [160026]"}
            perm <= Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)];
        }
        Mask := Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_2):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := 3 -- testLockSetDemo.vpr@110.3--110.19
    __flatten_8 := 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := __flatten_8 -- testLockSetDemo.vpr@111.3--111.30
    __flatten_19 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Client__x := __flatten_19 -- testLockSetDemo.vpr@112.3--112.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@112.3--112.32) [160027]"}
      FullPerm == Mask[diz, Client__x];
    Heap := Heap[diz, Client__x:=__flatten_19];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Client__inv(diz, write), write) -- testLockSetDemo.vpr@113.3--113.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Client__inv(diz, write) might fail. Assertion write >= none might not hold. (testLockSetDemo.vpr@113.3--113.43) [160029]"}
      NoPerm <= FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Client__inv(diz, write) might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@113.3--113.43) [160031]"}
        perm <= Mask[diz, Client__x];
    }
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, Client__inv(diz, FullPerm):=Mask[null, Client__inv(diz, FullPerm)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Client__inv#trigger(Heap, Client__inv(diz, FullPerm));
    assume Heap[null, Client__inv(diz, FullPerm)] == ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Client__x]));
    if (!HasDirectPerm(Mask, null, Client__inv(diz, FullPerm))) {
      Heap := Heap[null, Client__inv#sm(diz, FullPerm):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Client__inv(diz, FullPerm):=freshVersion];
    }
    Heap := Heap[null, Client__inv#sm(diz, FullPerm):=Heap[null, Client__inv#sm(diz, FullPerm)][diz, Client__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Lock__unlock(l, current_thread_id, Multiset[Ref]()) -- testLockSetDemo.vpr@114.3--114.54
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_S_3 := (MultiSet#Empty(): MultiSet Ref);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Lock__unlock might not hold. Assertion l != null might not hold. (testLockSetDemo.vpr@114.3--114.54) [160033]"}
        l_2 != null;
      assert {:msg "  The precondition of method Lock__unlock might not hold. Assertion current_thread_id >= 0 might not hold. (testLockSetDemo.vpr@114.3--114.54) [160034]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access l.Lock__owner (testLockSetDemo.vpr@114.3--114.54) [160035]"}
        Mask[l_2, Lock__owner] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__owner];
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] - wildcard];
      assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access l.Lock__user (testLockSetDemo.vpr@114.3--114.54) [160036]"}
        Mask[l_2, Lock__user] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[l_2, Lock__user];
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access LockSet__lockset(l.Lock__owner, (Multiset[Ref]() union Multiset(l))) (testLockSetDemo.vpr@114.3--114.54) [160037]"}
          perm <= Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_3, MultiSet#Singleton(l_2)))];
      }
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_3, MultiSet#Singleton(l_2))):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], MultiSet#Union(arg_S_3, MultiSet#Singleton(l_2)))] - perm];
      if (MultiSet#Select(arg_S_3, l_2) == 0) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Lock__unlock might not hold. There might be insufficient permission to access Client__inv(l.Lock__user, write) (testLockSetDemo.vpr@114.3--114.54) [160038]"}
            perm <= Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)];
        }
        Mask := Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm):=Mask[null, Client__inv(Heap[l_2, Lock__user], FullPerm)] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__owner:=Mask[l_2, Lock__owner] + perm];
      assume state(Heap, Mask);
      havoc wildcard;
      perm := wildcard;
      assume l_2 != null;
      Mask := Mask[l_2, Lock__user:=Mask[l_2, Lock__user] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_3):=Mask[null, LockSet__lockset(Heap[l_2, Lock__owner], arg_S_3)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Client__inv(diz, write), write) -- testLockSetDemo.vpr@117.3--117.45
    assume Client__inv#trigger(Heap, Client__inv(diz, FullPerm));
    assume Heap[null, Client__inv(diz, FullPerm)] == ConditionalFrame(FullPerm, FrameFragment(Heap[diz, Client__x]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Client__inv(diz, write) might fail. There might be insufficient permission to access Client__inv(diz, write) (testLockSetDemo.vpr@117.3--117.45) [160041]"}
        perm <= Mask[null, Client__inv(diz, FullPerm)];
    }
    Mask := Mask[null, Client__inv(diz, FullPerm):=Mask[null, Client__inv(diz, FullPerm)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Client__inv(diz, FullPerm))) {
        havoc newVersion;
        Heap := Heap[null, Client__inv(diz, FullPerm):=newVersion];
      }
    assume NoPerm <= FullPerm;
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := 4 -- testLockSetDemo.vpr@118.3--118.20
    __flatten_10 := 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := __flatten_10 -- testLockSetDemo.vpr@119.3--119.31
    __flatten_21 := __flatten_10;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Client__x := __flatten_21 -- testLockSetDemo.vpr@120.3--120.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@120.3--120.32) [160043]"}
      FullPerm == Mask[diz, Client__x];
    Heap := Heap[diz, Client__x:=__flatten_21];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Client__Client
// ==================================================

procedure Client__Client(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_11: int;
  var __flatten_22: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Client__x:=PostMask[sys__result, Client__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Client__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Client__x (testLockSetDemo.vpr@126.11--126.76) [160044]"}
        HasDirectPerm(PostMask, sys__result, Client__x);
    assume PostHeap[sys__result, Client__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Client__x) -- testLockSetDemo.vpr@131.3--131.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Client__x:=Mask[diz, Client__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := 0 -- testLockSetDemo.vpr@132.3--132.20
    __flatten_11 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_22 := __flatten_11 -- testLockSetDemo.vpr@133.3--133.31
    __flatten_22 := __flatten_11;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Client__x := __flatten_22 -- testLockSetDemo.vpr@134.3--134.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Client__x (testLockSetDemo.vpr@134.3--134.32) [160045]"}
      FullPerm == Mask[diz, Client__x];
    Heap := Heap[diz, Client__x:=__flatten_22];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testLockSetDemo.vpr@135.3--135.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Client__x, write) && sys__result.Client__x == 0) -- testLockSetDemo.vpr@136.3--136.102
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@136.10--136.102) [160046]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Client__x (testLockSetDemo.vpr@136.10--136.102) [160048]"}
        perm <= AssertMask[sys__result, Client__x];
    }
    AssertMask := AssertMask[sys__result, Client__x:=AssertMask[sys__result, Client__x] - perm];
    
    // -- Check definedness of sys__result.Client__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Client__x (testLockSetDemo.vpr@136.10--136.102) [160049]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Client__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Client__x == 0 might not hold. (testLockSetDemo.vpr@136.10--136.102) [160050]"}
      AssertHeap[sys__result, Client__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLockSetDemo.vpr@137.3--137.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Client__Client might not hold. Assertion sys__result != null might not hold. (testLockSetDemo.vpr@125.11--125.30) [160051]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Client__Client might not hold. There might be insufficient permission to access sys__result.Client__x (testLockSetDemo.vpr@126.11--126.76) [160052]"}
        perm <= Mask[sys__result, Client__x];
    }
    Mask := Mask[sys__result, Client__x:=Mask[sys__result, Client__x] - perm];
    assert {:msg "  Postcondition of Client__Client might not hold. Assertion sys__result.Client__x == 0 might not hold. (testLockSetDemo.vpr@126.11--126.76) [160053]"}
      Heap[sys__result, Client__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}