// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:41:23
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/issues/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_54: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_54, f_24] }
  Heap[o_54, $allocated] ==> Heap[Heap[o_54, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref, f_54: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, f_54] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_55, f_54) ==> Heap[o_55, f_54] == ExhaleHeap[o_55, f_54]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32), ExhaleHeap[null, PredicateMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> Heap[null, PredicateMaskField(pm_f_32)] == ExhaleHeap[null, PredicateMaskField(pm_f_32)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_32, f_54] }
    Heap[null, PredicateMaskField(pm_f_32)][o2_32, f_54] ==> Heap[o2_32, f_54] == ExhaleHeap[o2_32, f_54]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32), ExhaleHeap[null, WandMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> Heap[null, WandMaskField(pm_f_32)] == ExhaleHeap[null, WandMaskField(pm_f_32)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_32, f_54] }
    Heap[null, WandMaskField(pm_f_32)][o2_32, f_54] ==> Heap[o2_32, f_54] == ExhaleHeap[o2_32, f_54]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_55, $allocated] ==> ExhaleHeap[o_55, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_54: Ref, f_8: (Field A B), v: B ::
  { Heap[o_54, f_8:=v] }
  succHeap(Heap, Heap[o_54, f_8:=v])
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

function  neverTriggered1(r_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1: Ref): bool;

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
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(r_1: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(r_1: Ref): Field PredicateType_p2 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p2(r_1)) }
  PredicateMaskField(p2(r_1)) == p2#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  IsPredicateField(p2(r_1))
);
axiom (forall r_1: Ref ::
  { p2(r_1) }
  getPredWandId(p2(r_1)) == 0
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p2(r_1), p2(r2) }
  p2(r_1) == p2(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p2#sm(r_1), p2#sm(r2) }
  p2#sm(r_1) == p2#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p2#trigger(Heap, p2(r_1)) }
  p2#everUsed(p2(r_1))
);

procedure p2#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 5
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@6.1--9.2) [199804]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_14: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var r_5_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (unfolding.vpr@13.10--13.48) [199805]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (((r_1_1 != r_1_2 && xs[r_1_1]) && xs[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, p2(r_1_1)] } { Mask[null, p2(r_1_1)] } { xs[r_1_1] }
        xs[r_1_1] && NoPerm < FullPerm ==> invRecv1(r_1_1) == r_1_1 && qpRange1(r_1_1)
      );
      assume (forall r_2_1: Ref ::
        { invRecv1(r_2_1) }
        (xs[invRecv1(r_2_1)] && NoPerm < FullPerm) && qpRange1(r_2_1) ==> invRecv1(r_2_1) == r_2_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        (xs[invRecv1(r_2_1)] && NoPerm < FullPerm) && qpRange1(r_2_1) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1) == r_2_1) && QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall r_2_1: Ref ::
        { QPMask[null, p2(r_2_1)] }
        !((xs[invRecv1(r_2_1)] && NoPerm < FullPerm) && qpRange1(r_2_1)) ==> QPMask[null, p2(r_2_1)] == Mask[null, p2(r_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in xs) }
  //     (r in xs) ==> (unfolding acc(p2(r), write) in r.f == 5)) -- unfolding.vpr@15.5--15.67
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> (unfolding acc(p2(r), write) in r.f == 5))
      if (*) {
        if (xs[r_14]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_14));
          assume UnfoldingHeap[null, p2(r_14)] == FrameFragment(UnfoldingHeap[r_14, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@15.12--15.67) [199806]"}
              perm <= UnfoldingMask[null, p2(r_14)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_14):=UnfoldingMask[null, p2(r_14)] - perm];
          perm := FullPerm;
          assume r_14 != null;
          UnfoldingMask := UnfoldingMask[r_14, f_7:=UnfoldingMask[r_14, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_14, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding.vpr@15.12--15.67) [199807]"}
            HasDirectPerm(UnfoldingMask, r_14, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p2#sm(r_14):=Heap[null, p2#sm(r_14)][r_14, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (xs[r_5_1]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_5_1));
          assume UnfoldingHeap[null, p2(r_5_1)] == FrameFragment(UnfoldingHeap[r_5_1, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@15.12--15.67) [199810]"}
              perm <= UnfoldingMask[null, p2(r_5_1)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_5_1):=UnfoldingMask[null, p2(r_5_1)] - perm];
          perm := FullPerm;
          assume r_5_1 != null;
          UnfoldingMask := UnfoldingMask[r_5_1, f_7:=UnfoldingMask[r_5_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_5_1, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == 5 might not hold. (unfolding.vpr@15.12--15.67) [199812]"}
          Heap[r_5_1, f_7] == 5;
      }
      assume false;
    }
    assume (forall r_6_1_1: Ref ::
      { xs[r_6_1_1] }
      xs[r_6_1_1] ==> Heap[r_6_1_1, f_7] == 5
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_16: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var r_1_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x1):=Mask[null, p2(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(x2):=Mask[null, p2(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in Set(x1, x2)) }
  //     (r in Set(x1, x2)) ==> (unfolding acc(p2(r), write) in r.f == 5)) -- unfolding.vpr@26.5--26.76
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x1, x2)) } (r in Set(x1, x2)) ==> (unfolding acc(p2(r), write) in r.f == 5))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1)[r_16]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_16));
          assume UnfoldingHeap[null, p2(r_16)] == FrameFragment(UnfoldingHeap[r_16, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@26.12--26.76) [199813]"}
              perm <= UnfoldingMask[null, p2(r_16)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_16):=UnfoldingMask[null, p2(r_16)] - perm];
          perm := FullPerm;
          assume r_16 != null;
          UnfoldingMask := UnfoldingMask[r_16, f_7:=UnfoldingMask[r_16, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_16, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding.vpr@26.12--26.76) [199814]"}
            HasDirectPerm(UnfoldingMask, r_16, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p2#sm(r_16):=Heap[null, p2#sm(r_16)][r_16, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (Set#UnionOne(Set#Singleton(x2), x1)[r_1_1]) {
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_1_1));
          assume UnfoldingHeap[null, p2(r_1_1)] == FrameFragment(UnfoldingHeap[r_1_1, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@26.12--26.76) [199817]"}
              perm <= UnfoldingMask[null, p2(r_1_1)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_1_1):=UnfoldingMask[null, p2(r_1_1)] - perm];
          perm := FullPerm;
          assume r_1_1 != null;
          UnfoldingMask := UnfoldingMask[r_1_1, f_7:=UnfoldingMask[r_1_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_1_1, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. Assertion r.f == 5 might not hold. (unfolding.vpr@26.12--26.76) [199819]"}
          Heap[r_1_1, f_7] == 5;
      }
      assume false;
    }
    assume (forall r_2_1: Ref ::
      { Set#UnionOne(Set#Singleton(x2), x1)[r_2_1] }
      Set#UnionOne(Set#Singleton(x2), x1)[r_2_1] ==> Heap[r_2_1, f_7] == 5
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var r_1: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x1):=Mask[null, p2(x1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(x2):=Mask[null, p2(x2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[r_1, $allocated];
  
  // -- Translating statement: inhale (r in Set(x1, x2)) -- unfolding.vpr@35.12--35.28
    assume Set#UnionOne(Set#Singleton(x2), x1)[r_1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (r == x1) -- unfolding.vpr@36.5--40.6
    if (r_1 == x1) {
      
      // -- Translating statement: assert (unfolding acc(p2(r), write) in r.f == 5) -- unfolding.vpr@37.9--37.43
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(p2(r), write) in r.f == 5)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_1));
          assume UnfoldingHeap[null, p2(r_1)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@37.16--37.43) [199820]"}
              perm <= UnfoldingMask[null, p2(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_1):=UnfoldingMask[null, p2(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_1, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding.vpr@37.16--37.43) [199821]"}
            HasDirectPerm(UnfoldingMask, r_1, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p2#sm(r_1):=Heap[null, p2#sm(r_1)][r_1, f_7:=true]];
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion r.f == 5 might not hold. (unfolding.vpr@37.16--37.43) [199822]"}
          Heap[r_1, f_7] == 5;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p2#sm(r_1):=Heap[null, p2#sm(r_1)][r_1, f_7:=true]];
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert (unfolding acc(p2(r), write) in r.f == 5) -- unfolding.vpr@39.9--39.43
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(p2(r), write) in r.f == 5)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p2#trigger(UnfoldingHeap, p2(r_1));
          assume UnfoldingHeap[null, p2(r_1)] == FrameFragment(UnfoldingHeap[r_1, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access p2(r) (unfolding.vpr@39.16--39.43) [199823]"}
              perm <= UnfoldingMask[null, p2(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, p2(r_1):=UnfoldingMask[null, p2(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[r_1, f_7] == 5;
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (unfolding.vpr@39.16--39.43) [199824]"}
            HasDirectPerm(UnfoldingMask, r_1, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p2#sm(r_1):=Heap[null, p2#sm(r_1)][r_1, f_7:=true]];
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion r.f == 5 might not hold. (unfolding.vpr@39.16--39.43) [199825]"}
          Heap[r_1, f_7] == 5;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p2#sm(r_1):=Heap[null, p2#sm(r_1)][r_1, f_7:=true]];
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}