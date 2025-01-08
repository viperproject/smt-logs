// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:35:48
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0121.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0121-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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

function  neverTriggered1(x_2_2: Ref): bool;
function  neverTriggered2(x_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

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

const unique S_1: Field NormalField (Set Ref);
axiom !IsPredicateField(S_1);
axiom !IsWandField(S_1);
const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(this: Ref): Field PredicateType_p FrameType;
function  p#sm(this: Ref): Field PredicateType_p PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p_14(this)) }
  PredicateMaskField(p_14(this)) == p#sm(this)
);
axiom (forall this: Ref ::
  { p_14(this) }
  IsPredicateField(p_14(this))
);
axiom (forall this: Ref ::
  { p_14(this) }
  getPredWandId(p_14(this)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p_14(this), p_14(this2) }
  p_14(this) == p_14(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p#sm(this), p#sm(this2) }
  p#sm(this) == p#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p#trigger(Heap, p_14(this)) }
  p#everUsed(p_14(this))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in this.S) } (x in this.S) ==> acc(x.f, 1 / 2)) in predicate p
// ==================================================

function  p#condqp1(Heap: HeapType, this_1_1: Ref): int;
function  sk_p#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, S_1][sk_p#condqp1(p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 <==> Heap1Heap[this, S_1][sk_p#condqp1(p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2) && (Heap2Heap[this, S_1][sk_p#condqp1(p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_p#condqp1(p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this)), f_7] == Heap1Heap[sk_p#condqp1(p#condqp1(Heap2Heap, this), p#condqp1(Heap1Heap, this)), f_7]) ==> p#condqp1(Heap2Heap, this) == p#condqp1(Heap1Heap, this)
);

procedure p#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var y_4: Ref;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, S_1:=Mask[this, S_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in this.S)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.S (issue_0121.vpr@7.1--12.2) [73661]"}
        HasDirectPerm(Mask, this, S_1);
    assume Heap[this, S_1][this];
    
    // -- Check definedness of (forall x: Ref :: { (x in this.S) } (x in this.S) ==> acc(x.f, 1 / 2))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.S (issue_0121.vpr@7.1--12.2) [73662]"}
          HasDirectPerm(Mask, this, S_1);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (issue_0121.vpr@7.1--12.2) [73663]"}
      (forall x_2_2: Ref, x_2_3: Ref ::
      
      (((x_2_2 != x_2_3 && Heap[this, S_1][x_2_2]) && Heap[this, S_1][x_2_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_2_2 != x_2_3
    );
    
    // -- Define Inverse Function
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, S_1][x_2_2] }
        Heap[this, S_1][x_2_2] && NoPerm < 1 / 2 ==> qpRange1(x_2_2) && invRecv1(x_2_2) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Heap[this, S_1][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (issue_0121.vpr@7.1--12.2) [73664]"}
      (forall x_2_2: Ref ::
      { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, S_1][x_2_2] }
      Heap[this, S_1][x_2_2] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { Heap[this, S_1][x_2_2] }
        Heap[this, S_1][x_2_2] && 1 / 2 > NoPerm ==> x_2_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Heap[this, S_1][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 2) && (!((Heap[this, S_1][invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { (y in this.S) } { (y.f in this.S) } (y in this.S) && y.f != null ==> (y.f in this.S))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.S (issue_0121.vpr@7.1--12.2) [73665]"}
          HasDirectPerm(Mask, this, S_1);
        if (Heap[this, S_1][y_4]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access y.f (issue_0121.vpr@7.1--12.2) [73666]"}
            HasDirectPerm(Mask, y_4, f_7);
        }
        if (Heap[this, S_1][y_4] && Heap[y_4, f_7] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access y.f (issue_0121.vpr@7.1--12.2) [73667]"}
            HasDirectPerm(Mask, y_4, f_7);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.S (issue_0121.vpr@7.1--12.2) [73668]"}
            HasDirectPerm(Mask, this, S_1);
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { Heap[this, S_1][y_1] } { Heap[this, S_1][Heap[y_1, f_7]] }
      Heap[this, S_1][y_1] && Heap[y_1, f_7] != null ==> Heap[this, S_1][Heap[y_1, f_7]]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), this: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var y_5: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[this];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (issue_0121.vpr@16.12--16.54) [73669]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < 1 / 2 ==> qpRange2(x_1) && invRecv2(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (xs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0121.vpr@16.12--16.54) [73670]"}
      (forall x_1: Ref ::
      { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
      xs[x_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && 1 / 2 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 2) && (!((xs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } { (y.f in xs) } (y in xs) && y.f != null ==> (y.f in xs))
      if (*) {
        if (xs[y_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (issue_0121.vpr@17.12--17.65) [73671]"}
            HasDirectPerm(Mask, y_5, f_7);
        }
        if (xs[y_5] && Heap[y_5, f_7] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (issue_0121.vpr@17.12--17.65) [73672]"}
            HasDirectPerm(Mask, y_5, f_7);
        }
        assume false;
      }
    assume (forall y_1: Ref ::
      { xs[y_1] } { xs[Heap[y_1, f_7]] }
      xs[y_1] && Heap[y_1, f_7] != null ==> xs[Heap[y_1, f_7]]
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}