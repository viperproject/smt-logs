// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:13:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/maps/example1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/maps/example1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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

function  neverTriggered1(k_1_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;

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
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_17: (Map int bool);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var d: (Set int);
  var r_1: (Set bool);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: m := Map[Int,Bool]() -- example1.vpr@6.3--6.34
    m_17 := (Map#Empty(): Map int bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |Map[Int,Bool]()| == 0 -- example1.vpr@7.3--7.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |Map[Int,Bool]()| == 0 might not hold. (example1.vpr@7.10--7.33) [157557]"}
      Map#Card((Map#Empty(): Map int bool)) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |m| == 0 -- example1.vpr@8.3--8.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |m| == 0 might not hold. (example1.vpr@8.10--8.18) [157558]"}
      Map#Card(m_17) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: d := domain(m) -- example1.vpr@10.3--10.32
    d := Map#Domain(m_17);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert d == Set[Int]() -- example1.vpr@11.3--11.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion d == Set[Int]() might not hold. (example1.vpr@11.10--11.20) [157559]"}
      Set#Equal(d, (Set#Empty(): Set int));
    assume state(Heap, Mask);
  
  // -- Translating statement: r := range(m) -- example1.vpr@13.3--13.32
    r_1 := Map#Values(m_17);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |range(m)| == 0 -- example1.vpr@14.3--14.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |range(m)| == 0 might not hold. (example1.vpr@14.10--14.25) [157560]"}
      Set#Card(Map#Values(m_17)) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_17: (Map int bool);
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
  
  // -- Translating statement: m := Map[Int,Bool]() -- example1.vpr@19.3--19.34
    m_17 := (Map#Empty(): Map int bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: m := m[2 := true] -- example1.vpr@20.3--20.20
    m_17 := Map#Build(m_17, 2, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2] -- example1.vpr@22.3--22.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[2]
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example1.vpr@22.10--22.14) [157561]"}
        Map#Domain(m_17)[2];
    assert {:msg "  Assert might fail. Assertion m[2] might not hold. (example1.vpr@22.10--22.14) [157562]"}
      Map#Elements(m_17)[2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert domain(m) == Set(2) -- example1.vpr@23.3--23.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion domain(m) == Set(2) might not hold. (example1.vpr@23.10--23.29) [157563]"}
      Set#Equal(Map#Domain(m_17), Set#Singleton(2));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert range(m) == Set(true) -- example1.vpr@24.3--24.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion range(m) == Set(true) might not hold. (example1.vpr@24.10--24.31) [157564]"}
      Set#Equal(Map#Values(m_17), Set#Singleton(true));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_17: (Map int int);
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
  
  // -- Translating statement: m := Map(2 := 12, 3 := 24, 4 := 36) -- example1.vpr@29.3--29.58
    m_17 := Map#Build(Map#Build(Map#Build((Map#Empty(): Map int int), 2, 12), 3, 24), 4, 36);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert |m| == 3 -- example1.vpr@31.3--31.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion |m| == 3 might not hold. (example1.vpr@31.10--31.18) [157565]"}
      Map#Card(m_17) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2] == 12 && (m[3] == 24 && m[4] == 36) -- example1.vpr@32.3--32.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[2] == 12
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example1.vpr@32.10--32.48) [157566]"}
        Map#Domain(m_17)[2];
    assert {:msg "  Assert might fail. Assertion m[2] == 12 might not hold. (example1.vpr@32.10--32.48) [157567]"}
      Map#Elements(m_17)[2] == 12;
    
    // -- Check definedness of m[3] == 24
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 3. (example1.vpr@32.10--32.48) [157568]"}
        Map#Domain(m_17)[3];
    assert {:msg "  Assert might fail. Assertion m[3] == 24 might not hold. (example1.vpr@32.10--32.48) [157569]"}
      Map#Elements(m_17)[3] == 24;
    
    // -- Check definedness of m[4] == 36
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 4. (example1.vpr@32.10--32.48) [157570]"}
        Map#Domain(m_17)[4];
    assert {:msg "  Assert might fail. Assertion m[4] == 36 might not hold. (example1.vpr@32.10--32.48) [157571]"}
      Map#Elements(m_17)[4] == 36;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert domain(m) == Set(4, 2, 3) -- example1.vpr@33.3--33.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion domain(m) == Set(4, 2, 3) might not hold. (example1.vpr@33.10--33.35) [157572]"}
      Set#Equal(Map#Domain(m_17), Set#UnionOne(Set#UnionOne(Set#Singleton(3), 2), 4));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert range(m) == Set(24, 12, 36) -- example1.vpr@34.3--34.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion range(m) == Set(24, 12, 36) might not hold. (example1.vpr@34.10--34.37) [157573]"}
      Set#Equal(Map#Values(m_17), Set#UnionOne(Set#UnionOne(Set#Singleton(36), 12), 24));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (3 in m) -- example1.vpr@35.3--35.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (3 in m) might not hold. (example1.vpr@35.10--35.16) [157574]"}
      Map#Domain(m_17)[3];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((1 in m)) -- example1.vpr@36.3--36.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((1 in m)) might not hold. (example1.vpr@36.10--36.19) [157575]"}
      !Map#Domain(m_17)[1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m1_3: (Map int bool);
  var m2_1: (Map int bool);
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
  
  // -- Translating statement: m1 := Map(2 := false, 4 := true, 6 := false) -- example1.vpr@41.3--41.68
    m1_3 := Map#Build(Map#Build(Map#Build((Map#Empty(): Map int bool), 2, false), 4, true), 6, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: m2 := Map(6 := false, 2 := false) -- example1.vpr@42.3--42.57
    m2_1 := Map#Build(Map#Build((Map#Empty(): Map int bool), 6, false), 2, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((4 in m2)) -- example1.vpr@44.3--44.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((4 in m2)) might not hold. (example1.vpr@44.10--44.20) [157576]"}
      !Map#Domain(m2_1)[4];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m1 != m2 -- example1.vpr@45.3--45.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m1 != m2 might not hold. (example1.vpr@45.10--45.18) [157577]"}
      !Map#Equal(m1_3, m2_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m2[4 := true][4] -- example1.vpr@46.3--46.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m2[4 := true][4]
      assert {:msg "  Assert might fail. Map m2[4 := true] might not contain an entry at key 4. (example1.vpr@46.10--46.26) [157578]"}
        Map#Domain(Map#Build(m2_1, 4, true))[4];
    assert {:msg "  Assert might fail. Assertion m2[4 := true][4] might not hold. (example1.vpr@46.10--46.26) [157579]"}
      Map#Elements(Map#Build(m2_1, 4, true))[4];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m1 == m1[4 := true] -- example1.vpr@47.3--47.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m1 == m1[4 := true] might not hold. (example1.vpr@47.10--47.29) [157580]"}
      Map#Equal(m1_3, Map#Build(m1_3, 4, true));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m1 == m2[4 := true] -- example1.vpr@48.3--48.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m1 == m2[4 := true] might not hold. (example1.vpr@48.10--48.29) [157581]"}
      Map#Equal(m1_3, Map#Build(m2_1, 4, true));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(m_17: (Map int (Map int bool))) returns ()
  modifies Heap, Mask;
{
  var i_2: int;
  var i_4: int;
  var j_6: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { (i in m) } (0 <= i && i < 4) == (i in m))
      if (*) {
        assume false;
      }
    assume (forall i_1: int ::
      { Map#Domain(m_17)[i_1] }
      (0 <= i_1 && i_1 < 4) == Map#Domain(m_17)[i_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { (j in m[i]) } (i in m) ==> (0 <= j && j < 4) == (j in m[i]))
      if (*) {
        if (Map#Domain(m_17)[i_2]) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example1.vpr@53.12--53.96) [157582]"}
            Map#Domain(m_17)[i_2];
        }
        assume false;
      }
    assume (forall i_3: int, j_1: int ::
      { Map#Domain(Map#Elements(m_17)[i_3])[j_1] }
      Map#Domain(m_17)[i_3] ==> (0 <= j_1 && j_1 < 4) == Map#Domain(Map#Elements(m_17)[i_3])[j_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { m[i][j] } (i in m) && (j in m) ==> m[i][j] == (i == j))
      if (*) {
        if (Map#Domain(m_17)[i_4] && Map#Domain(m_17)[j_6]) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example1.vpr@54.12--54.93) [157583]"}
            Map#Domain(m_17)[i_4];
          assert {:msg "  Contract might not be well-formed. Map m[i] might not contain an entry at key j. (example1.vpr@54.12--54.93) [157584]"}
            Map#Domain(Map#Elements(m_17)[i_4])[j_6];
        }
        assume false;
      }
    assume (forall i_5: int, j_3_1: int ::
      { Map#Elements(Map#Elements(m_17)[i_5])[j_3_1] }
      Map#Domain(m_17)[i_5] && Map#Domain(m_17)[j_3_1] ==> Map#Elements(Map#Elements(m_17)[i_5])[j_3_1] == (i_5 == j_3_1)
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert m[2][2] -- example1.vpr@56.3--56.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[2][2]
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example1.vpr@56.10--56.17) [157585]"}
        Map#Domain(m_17)[2];
      assert {:msg "  Assert might fail. Map m[2] might not contain an entry at key 2. (example1.vpr@56.10--56.17) [157586]"}
        Map#Domain(Map#Elements(m_17)[2])[2];
    assert {:msg "  Assert might fail. Assertion m[2][2] might not hold. (example1.vpr@56.10--56.17) [157587]"}
      Map#Elements(Map#Elements(m_17)[2])[2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !m[1][2] -- example1.vpr@57.3--57.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of !m[1][2]
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 1. (example1.vpr@57.10--57.18) [157588]"}
        Map#Domain(m_17)[1];
      assert {:msg "  Assert might fail. Map m[1] might not contain an entry at key 2. (example1.vpr@57.10--57.18) [157589]"}
        Map#Domain(Map#Elements(m_17)[1])[2];
    assert {:msg "  Assert might fail. Assertion !m[1][2] might not hold. (example1.vpr@57.10--57.18) [157590]"}
      !Map#Elements(Map#Elements(m_17)[1])[2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert domain(m) == Set(0, 1, 2, 3) -- example1.vpr@58.3--58.38
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion domain(m) == Set(0, 1, 2, 3) might not hold. (example1.vpr@58.10--58.38) [157591]"}
      Set#Equal(Map#Domain(m_17), Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(3), 2), 1), 0));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert domain(m[0]) == Set(0, 1, 2, 3) -- example1.vpr@59.3--59.41
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of domain(m[0]) == Set(0, 1, 2, 3)
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 0. (example1.vpr@59.10--59.41) [157592]"}
        Map#Domain(m_17)[0];
    assert {:msg "  Assert might fail. Assertion domain(m[0]) == Set(0, 1, 2, 3) might not hold. (example1.vpr@59.10--59.41) [157593]"}
      Set#Equal(Map#Domain(Map#Elements(m_17)[0]), Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Singleton(3), 2), 1), 0));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m[2] == Map(0 := false, 1 := false, 2 := true, 3 := false) -- example1.vpr@60.3--60.68
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m[2] == Map(0 := false, 1 := false, 2 := true, 3 := false)
      assert {:msg "  Assert might fail. Map m might not contain an entry at key 2. (example1.vpr@60.10--60.68) [157594]"}
        Map#Domain(m_17)[2];
    assert {:msg "  Assert might fail. Assertion m[2] == Map(0 := false, 1 := false, 2 := true, 3 := false) might not hold. (example1.vpr@60.10--60.68) [157595]"}
      Map#Equal(Map#Elements(m_17)[2], Map#Build(Map#Build(Map#Build(Map#Build((Map#Empty(): Map int bool), 0, false), 1, false), 2, true), 3, false));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Map(0 := false, 1 := false, 2 := true, 3 := false) in range(m)) -- example1.vpr@61.3--61.72
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Map(0 := false, 1 := false, 2 := true, 3 := false) in range(m)) might not hold. (example1.vpr@61.10--61.72) [157596]"}
      Map#Values(m_17)[Map#Build(Map#Build(Map#Build(Map#Build((Map#Empty(): Map int bool), 0, false), 1, false), 2, true), 3, false)];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6(m_17: (Map int Ref), x: int) returns ()
  modifies Heap, Mask;
{
  var i_6: int;
  var j_2: int;
  var k_10: int;
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in m), (j in m) } (i in m) && ((j in m) && i != j) ==> m[i] != m[j])
      if (*) {
        if (Map#Domain(m_17)[i_6] && (Map#Domain(m_17)[j_2] && i_6 != j_2)) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key i. (example1.vpr@67.12--67.99) [157597]"}
            Map#Domain(m_17)[i_6];
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key j. (example1.vpr@67.12--67.99) [157598]"}
            Map#Domain(m_17)[j_2];
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Map#Domain(m_17)[i_1], Map#Domain(m_17)[j_1] }
      Map#Domain(m_17)[i_1] && (Map#Domain(m_17)[j_1] && i_1 != j_1) ==> Map#Elements(m_17)[i_1] != Map#Elements(m_17)[j_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { (k in m) } (k in m) ==> acc(m[k].val, write))
      if (*) {
        if (Map#Domain(m_17)[k_10]) {
          assert {:msg "  Contract might not be well-formed. Map m might not contain an entry at key k. (example1.vpr@68.12--68.65) [157599]"}
            Map#Domain(m_17)[k_10];
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource m[k].val might not be injective. (example1.vpr@68.12--68.65) [157600]"}
      (forall k_1_1: int, k_1_2: int ::
      
      (((k_1_1 != k_1_2 && Map#Domain(m_17)[k_1_1]) && Map#Domain(m_17)[k_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Map#Elements(m_17)[k_1_1] != Map#Elements(m_17)[k_1_2]
    );
    
    // -- Define Inverse Function
      assume (forall k_1_1: int ::
        { Map#Elements(m_17)[k_1_1] } { Map#Domain(m_17)[k_1_1] }
        Map#Domain(m_17)[k_1_1] && NoPerm < FullPerm ==> qpRange1(Map#Elements(m_17)[k_1_1]) && invRecv1(Map#Elements(m_17)[k_1_1]) == k_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Map#Domain(m_17)[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> Map#Elements(m_17)[invRecv1(o_4)] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_1_1: int ::
        { Map#Elements(m_17)[k_1_1] } { Map#Domain(m_17)[k_1_1] }
        Map#Domain(m_17)[k_1_1] ==> Map#Elements(m_17)[k_1_1] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((Map#Domain(m_17)[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> Map#Elements(m_17)[invRecv1(o_4)] == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((Map#Domain(m_17)[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ((x in m)) -- example1.vpr@70.3--73.4
    if (Map#Domain(m_17)[x]) {
      
      // -- Translating statement: m[x].val := m[x].val + x -- example1.vpr@72.5--72.29
        
        // -- Check definedness of m[x]
          assert {:msg "  Assignment might fail. Map m might not contain an entry at key x. (example1.vpr@72.5--72.29) [157601]"}
            Map#Domain(m_17)[x];
        
        // -- Check definedness of m[x].val + x
          assert {:msg "  Assignment might fail. Map m might not contain an entry at key x. (example1.vpr@72.5--72.29) [157602]"}
            Map#Domain(m_17)[x];
          assert {:msg "  Assignment might fail. There might be insufficient permission to access m[x].val (example1.vpr@72.5--72.29) [157603]"}
            HasDirectPerm(Mask, Map#Elements(m_17)[x], val);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access m[x].val (example1.vpr@72.5--72.29) [157604]"}
          FullPerm == Mask[Map#Elements(m_17)[x], val];
        Heap := Heap[Map#Elements(m_17)[x], val:=Heap[Map#Elements(m_17)[x], val] + x];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}