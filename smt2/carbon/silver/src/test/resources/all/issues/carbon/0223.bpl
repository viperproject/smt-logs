// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0223.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0223-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(w_4_1: Ref): bool;
function  neverTriggered2(w_2: Ref): bool;
function  neverTriggered3(r_1_1: Ref): bool;
function  neverTriggered4(w_2: Ref): bool;
function  neverTriggered5(w_1_1: Ref): bool;
function  neverTriggered6(w_2_2: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_2_1: Ref): Ref;
function  invRecv2(x_1_1_1: Ref): Ref;
function  invRecv3(x_1_1_1: Ref): Ref;
function  invRecv4(x_2_1: Ref): Ref;
function  invRecv5(x_3_1_1: Ref): Ref;
function  invRecv6(x_4_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x_2_1: Ref): bool;
function  qpRange2(x_1_1_1: Ref): bool;
function  qpRange3(x_1_1_1: Ref): bool;
function  qpRange4(x_2_1: Ref): bool;
function  qpRange5(x_3_1_1: Ref): bool;
function  qpRange6(x_4_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: get
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
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, x: Ref): int;
function  get'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get(Heap, x) }
  get(Heap, x) == get'(Heap, x) && dummyFunction(get#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get'(Heap, x) }
  dummyFunction(get#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, x) == Heap[x, val]
);

// Framing axioms
function  get#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get'(Heap, x) }
  state(Heap, Mask) ==> get'(Heap, x) == get#frame(FrameFragment(get#condqp1(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall w: Ref :: { (w in Set(x)) } (w in Set(x)) ==> acc(bar(w), write)) in function get
// ==================================================

function  get#condqp1(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_get#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Set#Singleton(x)[sk_get#condqp1(get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x))] && NoPerm < FullPerm <==> Set#Singleton(x)[sk_get#condqp1(get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x))] && NoPerm < FullPerm) && (Set#Singleton(x)[sk_get#condqp1(get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x))] && NoPerm < FullPerm ==> Heap2Heap[null, bar_3(sk_get#condqp1(get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x)))] == Heap1Heap[null, bar_3(sk_get#condqp1(get#condqp1(Heap2Heap, x), get#condqp1(Heap1Heap, x)))]) ==> get#condqp1(Heap2Heap, x) == get#condqp1(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall w: Ref :: { (w in Set(x)) } (w in Set(x)) ==> acc(bar(w), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(bar(w), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource bar(w) might not be injective. (0223.vpr@12.12--12.69) [81831]"}
        (forall w_4_1: Ref, w_4_2: Ref ::
        { neverTriggered1(w_4_1), neverTriggered1(w_4_2) }
        (((w_4_1 != w_4_2 && Set#Singleton(x)[w_4_1]) && Set#Singleton(x)[w_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_4_1 != w_4_2
      );
    
    // -- Define Inverse Function
      assume (forall w_4_1: Ref ::
        { Heap[null, bar_3(w_4_1)] } { Mask[null, bar_3(w_4_1)] } { Set#Singleton(x)[w_4_1] }
        Set#Singleton(x)[w_4_1] && NoPerm < FullPerm ==> invRecv1(w_4_1) == w_4_1 && qpRange1(w_4_1)
      );
      assume (forall x_2_1: Ref ::
        { invRecv1(x_2_1) }
        (Set#Singleton(x)[invRecv1(x_2_1)] && NoPerm < FullPerm) && qpRange1(x_2_1) ==> invRecv1(x_2_1) == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, bar_3(x_2_1)] }
        (Set#Singleton(x)[invRecv1(x_2_1)] && NoPerm < FullPerm) && qpRange1(x_2_1) ==> (NoPerm < FullPerm ==> invRecv1(x_2_1) == x_2_1) && QPMask[null, bar_3(x_2_1)] == Mask[null, bar_3(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, bar_3(x_2_1)] }
        !((Set#Singleton(x)[invRecv1(x_2_1)] && NoPerm < FullPerm) && qpRange1(x_2_1)) ==> QPMask[null, bar_3(x_2_1)] == Mask[null, bar_3(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (asserting ((x in Set(x))) in (unfolding acc(bar(x), write) in x.val))
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Function might not be well-formed. Assertion (x in Set(x)) might not hold. (0223.vpr@11.1--15.4) [81832]"}
        Set#Singleton(x)[x];
      
      // -- Check definedness of (unfolding acc(bar(x), write) in x.val)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume bar#trigger_1(UnfoldingHeap, bar_3(x));
        assume UnfoldingHeap[null, bar_3(x)] == FrameFragment(UnfoldingHeap[x, val]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access bar(x) (0223.vpr@11.1--15.4) [81833]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, bar_3(x)];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.val (0223.vpr@11.1--15.4) [81834]"}
          HasDirectPerm(UnfoldingMask, x, val);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, bar#sm(x):=Heap[null, bar#sm(x)][x, val:=true]];
          assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, val];
}

// ==================================================
// Translation of predicate bar
// ==================================================

type PredicateType_bar;
function  bar_3(x: Ref): Field PredicateType_bar FrameType;
function  bar#sm(x: Ref): Field PredicateType_bar PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(bar_3(x)) }
  PredicateMaskField(bar_3(x)) == bar#sm(x)
);
axiom (forall x: Ref ::
  { bar_3(x) }
  IsPredicateField(bar_3(x))
);
axiom (forall x: Ref ::
  { bar_3(x) }
  getPredWandId(bar_3(x)) == 0
);
function  bar#trigger_1<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  bar#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { bar_3(x), bar_3(x2) }
  bar_3(x) == bar_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { bar#sm(x), bar#sm(x2) }
  bar#sm(x) == bar#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { bar#trigger_1(Heap, bar_3(x)) }
  bar#everUsed(bar_3(x))
);

procedure bar#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of bar
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method set
// ==================================================

procedure set_3(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, bar_3(x):=PostMask[null, bar_3(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(x) == i
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(bar(w), write) is injective
          assert {:msg "  Precondition of function get might not hold. Quantified resource bar(w) might not be injective. (0223.vpr@19.21--19.27) [81835]"}
            (forall w_2: Ref, w_12: Ref ::
            { neverTriggered2(w_2), neverTriggered2(w_12) }
            (((w_2 != w_12 && Set#Singleton(x)[w_2]) && Set#Singleton(x)[w_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_2 != w_12
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access bar(w) (0223.vpr@19.21--19.27) [81836]"}
            (forall w_2: Ref ::
            { PostHeap[null, bar_3(w_2)] } { PostMask[null, bar_3(w_2)] } { Set#Singleton(x)[w_2] }
            Set#Singleton(x)[w_2] ==> FullPerm > NoPerm ==> PostMask[null, bar_3(w_2)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(bar(w), write)
          assume (forall w_2: Ref ::
            { PostHeap[null, bar_3(w_2)] } { PostMask[null, bar_3(w_2)] } { Set#Singleton(x)[w_2] }
            Set#Singleton(x)[w_2] && NoPerm < FullPerm ==> invRecv2(w_2) == w_2 && qpRange2(w_2)
          );
          assume (forall x_1_1_1: Ref ::
            { invRecv2(x_1_1_1) }
            (Set#Singleton(x)[invRecv2(x_1_1_1)] && NoPerm < FullPerm) && qpRange2(x_1_1_1) ==> invRecv2(x_1_1_1) == x_1_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, x) == i;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access bar(x) (0223.vpr@19.11--19.32) [81837]"}
        perm <= Mask[null, bar_3(x)];
    }
    Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] - perm];
    assert {:msg "  Postcondition of set might not hold. Assertion get(x) == i might not hold. (0223.vpr@19.11--19.32) [81838]"}
      get(Heap, x) == i;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(x: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, z)) } (r in Set(x, z)) ==> acc(bar(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(bar(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource bar(r) might not be injective. (0223.vpr@22.12--22.52) [81839]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered3(r_1_1), neverTriggered3(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#Singleton(z), x)[r_1_1]) && Set#UnionOne(Set#Singleton(z), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, bar_3(r_1_1)] } { Mask[null, bar_3(r_1_1)] } { Set#UnionOne(Set#Singleton(z), x)[r_1_1] }
        Set#UnionOne(Set#Singleton(z), x)[r_1_1] && NoPerm < FullPerm ==> invRecv3(r_1_1) == r_1_1 && qpRange3(r_1_1)
      );
      assume (forall x_1_1_1: Ref ::
        { invRecv3(x_1_1_1) }
        (Set#UnionOne(Set#Singleton(z), x)[invRecv3(x_1_1_1)] && NoPerm < FullPerm) && qpRange3(x_1_1_1) ==> invRecv3(x_1_1_1) == x_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, bar_3(x_1_1_1)] }
        (Set#UnionOne(Set#Singleton(z), x)[invRecv3(x_1_1_1)] && NoPerm < FullPerm) && qpRange3(x_1_1_1) ==> (NoPerm < FullPerm ==> invRecv3(x_1_1_1) == x_1_1_1) && QPMask[null, bar_3(x_1_1_1)] == Mask[null, bar_3(x_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, bar_3(x_1_1_1)] }
        !((Set#UnionOne(Set#Singleton(z), x)[invRecv3(x_1_1_1)] && NoPerm < FullPerm) && qpRange3(x_1_1_1)) ==> QPMask[null, bar_3(x_1_1_1)] == Mask[null, bar_3(x_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x != z;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: set(x, 4) -- 0223.vpr@25.3--25.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access bar(x) (0223.vpr@25.3--25.11) [81840]"}
          perm <= Mask[null, bar_3(x)];
      }
      Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 4;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 4 -- 0223.vpr@26.3--26.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(x) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(bar(w), write) is injective
          assert {:msg "  Precondition of function get might not hold. Quantified resource bar(w) might not be injective. (0223.vpr@26.10--26.16) [81841]"}
            (forall w_2: Ref, w_12: Ref ::
            { neverTriggered4(w_2), neverTriggered4(w_12) }
            (((w_2 != w_12 && Set#Singleton(x)[w_2]) && Set#Singleton(x)[w_12]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_2 != w_12
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access bar(w) (0223.vpr@26.10--26.16) [81842]"}
            (forall w_2: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_2)] } { ExhaleWellDef0Mask[null, bar_3(w_2)] } { Set#Singleton(x)[w_2] }
            Set#Singleton(x)[w_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, bar_3(w_2)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(bar(w), write)
          assume (forall w_2: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_2)] } { ExhaleWellDef0Mask[null, bar_3(w_2)] } { Set#Singleton(x)[w_2] }
            Set#Singleton(x)[w_2] && NoPerm < FullPerm ==> invRecv4(w_2) == w_2 && qpRange4(w_2)
          );
          assume (forall x_2_1: Ref ::
            { invRecv4(x_2_1) }
            (Set#Singleton(x)[invRecv4(x_2_1)] && NoPerm < FullPerm) && qpRange4(x_2_1) ==> invRecv4(x_2_1) == x_2_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 4 might not hold. (0223.vpr@26.10--26.21) [81843]"}
      get(Heap, x) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: set(z, 3) -- 0223.vpr@27.3--27.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access bar(z) (0223.vpr@27.3--27.11) [81844]"}
          perm <= Mask[null, bar_3(z)];
      }
      Mask := Mask[null, bar_3(z):=Mask[null, bar_3(z)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, bar_3(z):=Mask[null, bar_3(z)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, z) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 4 -- 0223.vpr@28.3--28.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(x) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(bar(w), write) is injective
          assert {:msg "  Precondition of function get might not hold. Quantified resource bar(w) might not be injective. (0223.vpr@28.10--28.16) [81845]"}
            (forall w_1_1: Ref, w_1_2: Ref ::
            { neverTriggered5(w_1_1), neverTriggered5(w_1_2) }
            (((w_1_1 != w_1_2 && Set#Singleton(x)[w_1_1]) && Set#Singleton(x)[w_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_1_1 != w_1_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access bar(w) (0223.vpr@28.10--28.16) [81846]"}
            (forall w_1_1: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_1_1)] } { ExhaleWellDef0Mask[null, bar_3(w_1_1)] } { Set#Singleton(x)[w_1_1] }
            Set#Singleton(x)[w_1_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, bar_3(w_1_1)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(bar(w), write)
          assume (forall w_1_1: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_1_1)] } { ExhaleWellDef0Mask[null, bar_3(w_1_1)] } { Set#Singleton(x)[w_1_1] }
            Set#Singleton(x)[w_1_1] && NoPerm < FullPerm ==> invRecv5(w_1_1) == w_1_1 && qpRange5(w_1_1)
          );
          assume (forall x_3_1_1: Ref ::
            { invRecv5(x_3_1_1) }
            (Set#Singleton(x)[invRecv5(x_3_1_1)] && NoPerm < FullPerm) && qpRange5(x_3_1_1) ==> invRecv5(x_3_1_1) == x_3_1_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 4 might not hold. (0223.vpr@28.10--28.21) [81847]"}
      get(Heap, x) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- 0223.vpr@29.3--29.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access bar(x) (0223.vpr@29.3--29.11) [81848]"}
          perm <= Mask[null, bar_3(x)];
      }
      Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, bar_3(x):=Mask[null, bar_3(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 4 -- 0223.vpr@32.3--32.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(x) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(bar(w), write) is injective
          assert {:msg "  Precondition of function get might not hold. Quantified resource bar(w) might not be injective. (0223.vpr@32.10--32.16) [81849]"}
            (forall w_2_2: Ref, w_2_3: Ref ::
            { neverTriggered6(w_2_2), neverTriggered6(w_2_3) }
            (((w_2_2 != w_2_3 && Set#Singleton(x)[w_2_2]) && Set#Singleton(x)[w_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_2_2 != w_2_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access bar(w) (0223.vpr@32.10--32.16) [81850]"}
            (forall w_2_2: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_2_2)] } { ExhaleWellDef0Mask[null, bar_3(w_2_2)] } { Set#Singleton(x)[w_2_2] }
            Set#Singleton(x)[w_2_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[null, bar_3(w_2_2)] > NoPerm
          );
        
        // -- assumptions for inverse of receiver acc(bar(w), write)
          assume (forall w_2_2: Ref ::
            { ExhaleWellDef0Heap[null, bar_3(w_2_2)] } { ExhaleWellDef0Mask[null, bar_3(w_2_2)] } { Set#Singleton(x)[w_2_2] }
            Set#Singleton(x)[w_2_2] && NoPerm < FullPerm ==> invRecv6(w_2_2) == w_2_2 && qpRange6(w_2_2)
          );
          assume (forall x_4_1: Ref ::
            { invRecv6(x_4_1) }
            (Set#Singleton(x)[invRecv6(x_4_1)] && NoPerm < FullPerm) && qpRange6(x_4_1) ==> invRecv6(x_4_1) == x_4_1
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 4 might not hold. (0223.vpr@32.10--32.21) [81851]"}
      get(Heap, x) == 4;
    assume state(Heap, Mask);
}