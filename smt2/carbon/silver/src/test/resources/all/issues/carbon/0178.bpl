// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:36:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0178.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0178-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(r_3_2: Ref): bool;
function  neverTriggered2(r_5: Ref): bool;
function  neverTriggered3(r_1: Ref): bool;
function  neverTriggered4(r_1_1: Ref): bool;
function  neverTriggered5(r_3_2: Ref): bool;
function  neverTriggered6(r_4: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(ref_2_1: Ref, wset_2_1: (Set Ref)): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(ref: Ref, wset: (Set Ref)): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(ref_1_1: Ref, wset_1: (Set Ref)): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(ref_2_1: Ref, wset_2_1: (Set Ref)): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(ref: Ref, wset: (Set Ref)): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(ref_1_1: Ref, wset_1: (Set Ref)): bool;

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

const unique data: Field NormalField Ref;
axiom !IsPredicateField(data);
axiom !IsWandField(data);

// ==================================================
// Translation of predicate Node__isolated
// ==================================================

type PredicateType_Node__isolated;
function  Node__isolated(ref: Ref, wset: (Set Ref)): Field PredicateType_Node__isolated FrameType;
function  Node__isolated#sm(ref: Ref, wset: (Set Ref)): Field PredicateType_Node__isolated PMaskType;
axiom (forall ref: Ref, wset: (Set Ref) ::
  { PredicateMaskField(Node__isolated(ref, wset)) }
  PredicateMaskField(Node__isolated(ref, wset)) == Node__isolated#sm(ref, wset)
);
axiom (forall ref: Ref, wset: (Set Ref) ::
  { Node__isolated(ref, wset) }
  IsPredicateField(Node__isolated(ref, wset))
);
axiom (forall ref: Ref, wset: (Set Ref) ::
  { Node__isolated(ref, wset) }
  getPredWandId(Node__isolated(ref, wset)) == 0
);
function  Node__isolated#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node__isolated#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall ref: Ref, wset: (Set Ref), ref2: Ref, wset2: (Set Ref) ::
  { Node__isolated(ref, wset), Node__isolated(ref2, wset2) }
  Node__isolated(ref, wset) == Node__isolated(ref2, wset2) ==> ref == ref2 && wset == wset2
);
axiom (forall ref: Ref, wset: (Set Ref), ref2: Ref, wset2: (Set Ref) ::
  { Node__isolated#sm(ref, wset), Node__isolated#sm(ref2, wset2) }
  Node__isolated#sm(ref, wset) == Node__isolated#sm(ref2, wset2) ==> ref == ref2 && wset == wset2
);

axiom (forall Heap: HeapType, ref: Ref, wset: (Set Ref) ::
  { Node__isolated#trigger(Heap, Node__isolated(ref, wset)) }
  Node__isolated#everUsed(Node__isolated(ref, wset))
);

// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in wset) } (r in wset) ==> acc(r.data, write)) in predicate Node__isolated
// ==================================================

function  Node__isolated#condqp1(Heap: HeapType, ref_1_1_1: Ref, wset_1_1: (Set Ref)): int;
function  sk_Node__isolated#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, ref: Ref, wset: (Set Ref) ::
  { Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset), succHeapTrans(Heap2Heap, Heap1Heap) }
  (wset[sk_Node__isolated#condqp1(Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset))] && NoPerm < FullPerm <==> wset[sk_Node__isolated#condqp1(Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset))] && NoPerm < FullPerm) && (wset[sk_Node__isolated#condqp1(Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset))] && NoPerm < FullPerm ==> Heap2Heap[sk_Node__isolated#condqp1(Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset)), data] == Heap1Heap[sk_Node__isolated#condqp1(Node__isolated#condqp1(Heap2Heap, ref, wset), Node__isolated#condqp1(Heap1Heap, ref, wset)), data]) ==> Node__isolated#condqp1(Heap2Heap, ref, wset) == Node__isolated#condqp1(Heap1Heap, ref, wset)
);

// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in wset) } (r in wset) ==> acc(Node__isolated(r, wset), write)) in predicate Node__isolated
// ==================================================

function  Node__isolated#condqp2(Heap: HeapType, ref_1_1_1: Ref, wset_1_1: (Set Ref)): int;
function  sk_Node__isolated#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, ref: Ref, wset: (Set Ref) ::
  { Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset), succHeapTrans(Heap2Heap, Heap1Heap) }
  (wset[sk_Node__isolated#condqp2(Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset))] && NoPerm < FullPerm <==> wset[sk_Node__isolated#condqp2(Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset))] && NoPerm < FullPerm) && (wset[sk_Node__isolated#condqp2(Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset))] && NoPerm < FullPerm ==> Heap2Heap[null, Node__isolated(sk_Node__isolated#condqp2(Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset)), wset)] == Heap1Heap[null, Node__isolated(sk_Node__isolated#condqp2(Node__isolated#condqp2(Heap2Heap, ref, wset), Node__isolated#condqp2(Heap1Heap, ref, wset)), wset)]) ==> Node__isolated#condqp2(Heap2Heap, ref, wset) == Node__isolated#condqp2(Heap1Heap, ref, wset)
);

procedure Node__isolated#definedness(ref: Ref, wset: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of Node__isolated
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[ref, $allocated];
    
    // -- Check definedness of (forall r: Ref :: { (r in wset) } (r in wset) ==> acc(r.data, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource r.data might not be injective. (0178.vpr@6.1--9.2) [192527]"}
      (forall r_3_2: Ref, r_3_3: Ref ::
      
      (((r_3_2 != r_3_3 && wset[r_3_2]) && wset[r_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_3_2 != r_3_3
    );
    
    // -- Define Inverse Function
      assume (forall r_3_2: Ref ::
        { Heap[r_3_2, data] } { QPMask[r_3_2, data] } { wset[r_3_2] }
        wset[r_3_2] && NoPerm < FullPerm ==> qpRange1(r_3_2) && invRecv1(r_3_2) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (wset[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3_2: Ref ::
        { Heap[r_3_2, data] } { QPMask[r_3_2, data] } { wset[r_3_2] }
        wset[r_3_2] ==> r_3_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, data] }
        ((wset[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, data] == Mask[o_4, data] + FullPerm) && (!((wset[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, data] == Mask[o_4, data])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != data ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in wset) } (r in wset) ==> acc(Node__isolated(r, wset), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Node__isolated(r, wset), write) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource Node__isolated(r, wset) might not be injective. (0178.vpr@6.1--9.2) [192528]"}
        (forall r_5: Ref, r_5_1: Ref ::
        { neverTriggered2(r_5), neverTriggered2(r_5_1) }
        (((r_5 != r_5_1 && wset[r_5]) && wset[r_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_5 != r_5_1 || wset != wset
      );
    
    // -- Define Inverse Function
      assume (forall r_5: Ref ::
        { Heap[null, Node__isolated(r_5, wset)] } { Mask[null, Node__isolated(r_5, wset)] } { wset[r_5] }
        wset[r_5] && NoPerm < FullPerm ==> invRecv2(r_5, wset) == r_5 && qpRange2(r_5, wset)
      );
      assume (forall ref_2_1: Ref, wset_2_1: (Set Ref) ::
        { invRecv2(ref_2_1, wset_2_1) }
        (wset[invRecv2(ref_2_1, wset_2_1)] && NoPerm < FullPerm) && qpRange2(ref_2_1, wset_2_1) ==> invRecv2(ref_2_1, wset_2_1) == ref_2_1 && wset == wset_2_1
      );
    
    // -- Define updated permissions
      assume (forall ref_2_1: Ref, wset_2_1: (Set Ref) ::
        { QPMask[null, Node__isolated(ref_2_1, wset_2_1)] }
        (wset[invRecv2(ref_2_1, wset_2_1)] && NoPerm < FullPerm) && qpRange2(ref_2_1, wset_2_1) ==> (NoPerm < FullPerm ==> invRecv2(ref_2_1, wset_2_1) == ref_2_1 && wset == wset_2_1) && QPMask[null, Node__isolated(ref_2_1, wset_2_1)] == Mask[null, Node__isolated(ref_2_1, wset_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall ref_2_1: Ref, wset_2_1: (Set Ref) ::
        { QPMask[null, Node__isolated(ref_2_1, wset_2_1)] }
        !((wset[invRecv2(ref_2_1, wset_2_1)] && NoPerm < FullPerm) && qpRange2(ref_2_1, wset_2_1)) ==> QPMask[null, Node__isolated(ref_2_1, wset_2_1)] == Mask[null, Node__isolated(ref_2_1, wset_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(x: Ref, x__wset: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Node__isolated(x, x__wset):=Mask[null, Node__isolated(x, x__wset)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(Node__isolated(x, x__wset), write) -- 0178.vpr@14.5--14.43
    assume Node__isolated#trigger(Heap, Node__isolated(x, x__wset));
    assume Heap[null, Node__isolated(x, x__wset)] == CombineFrames(FrameFragment(Node__isolated#condqp1(Heap, x, x__wset)), FrameFragment(Node__isolated#condqp2(Heap, x, x__wset)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Node__isolated(x, x__wset) might fail. There might be insufficient permission to access Node__isolated(x, x__wset) (0178.vpr@14.5--14.43) [192531]"}
        perm <= Mask[null, Node__isolated(x, x__wset)];
    }
    Mask := Mask[null, Node__isolated(x, x__wset):=Mask[null, Node__isolated(x, x__wset)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node__isolated(x, x__wset))) {
        havoc newVersion;
        Heap := Heap[null, Node__isolated(x, x__wset):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding Node__isolated(x, x__wset) might fail. Quantified resource r.data might not be injective. (0178.vpr@14.5--14.43) [192532]"}
      (forall r_1: Ref, r_2: Ref ::
      
      (((r_1 != r_2 && x__wset[r_1]) && x__wset[r_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_2
    );
    
    // -- Define Inverse Function
      assume (forall r_1: Ref ::
        { Heap[r_1, data] } { QPMask[r_1, data] } { x__wset[r_1] }
        x__wset[r_1] && NoPerm < FullPerm ==> qpRange3(r_1) && invRecv3(r_1) == r_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (x__wset[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_1: Ref ::
        { Heap[r_1, data] } { QPMask[r_1, data] } { x__wset[r_1] }
        x__wset[r_1] ==> r_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, data] }
        ((x__wset[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, data] == Mask[o_4, data] + FullPerm) && (!((x__wset[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, data] == Mask[o_4, data])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != data ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    
    // -- check if receiver acc(Node__isolated(r, x__wset), write) is injective
      assert {:msg "  Unfolding Node__isolated(x, x__wset) might fail. Quantified resource Node__isolated(r, x__wset) might not be injective. (0178.vpr@14.5--14.43) [192533]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered4(r_1_1), neverTriggered4(r_1_2) }
        (((r_1_1 != r_1_2 && x__wset[r_1_1]) && x__wset[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || x__wset != x__wset
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, Node__isolated(r_1_1, x__wset)] } { Mask[null, Node__isolated(r_1_1, x__wset)] } { x__wset[r_1_1] }
        x__wset[r_1_1] && NoPerm < FullPerm ==> invRecv4(r_1_1, x__wset) == r_1_1 && qpRange4(r_1_1, x__wset)
      );
      assume (forall ref: Ref, wset: (Set Ref) ::
        { invRecv4(ref, wset) }
        (x__wset[invRecv4(ref, wset)] && NoPerm < FullPerm) && qpRange4(ref, wset) ==> invRecv4(ref, wset) == ref && x__wset == wset
      );
    
    // -- Define updated permissions
      assume (forall ref: Ref, wset: (Set Ref) ::
        { QPMask[null, Node__isolated(ref, wset)] }
        (x__wset[invRecv4(ref, wset)] && NoPerm < FullPerm) && qpRange4(ref, wset) ==> (NoPerm < FullPerm ==> invRecv4(ref, wset) == ref && x__wset == wset) && QPMask[null, Node__isolated(ref, wset)] == Mask[null, Node__isolated(ref, wset)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall ref: Ref, wset: (Set Ref) ::
        { QPMask[null, Node__isolated(ref, wset)] }
        !((x__wset[invRecv4(ref, wset)] && NoPerm < FullPerm) && qpRange4(ref, wset)) ==> QPMask[null, Node__isolated(ref, wset)] == Mask[null, Node__isolated(ref, wset)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Node__isolated(x, x__wset), write) -- 0178.vpr@15.5--15.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver r is injective
      assert {:msg "  Folding Node__isolated(x, x__wset) might fail. Quantified resource r.data might not be injective. (0178.vpr@15.5--15.41) [192536]"}
        (forall r_3_2: Ref, r_3_3: Ref ::
        { neverTriggered5(r_3_2), neverTriggered5(r_3_3) }
        (((r_3_2 != r_3_3 && x__wset[r_3_2]) && x__wset[r_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_3_2 != r_3_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding Node__isolated(x, x__wset) might fail. There might be insufficient permission to access r.data (0178.vpr@15.5--15.41) [192537]"}
        (forall r_3_2: Ref ::
        { Heap[r_3_2, data] } { QPMask[r_3_2, data] } { x__wset[r_3_2] }
        x__wset[r_3_2] ==> Mask[r_3_2, data] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver r
      assume (forall r_3_2: Ref ::
        { Heap[r_3_2, data] } { QPMask[r_3_2, data] } { x__wset[r_3_2] }
        x__wset[r_3_2] && NoPerm < FullPerm ==> qpRange5(r_3_2) && invRecv5(r_3_2) == r_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        x__wset[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field data
      assume (forall o_4: Ref ::
        { QPMask[o_4, data] }
        (x__wset[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, data] == Mask[o_4, data] - FullPerm) && (!(x__wset[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, data] == Mask[o_4, data])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != data ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(Node__isolated(r, x__wset), write) is injective
      assert {:msg "  Folding Node__isolated(x, x__wset) might fail. Quantified resource Node__isolated(r, x__wset) might not be injective. (0178.vpr@15.5--15.41) [192539]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered6(r_4), neverTriggered6(r_4_1) }
        (((r_4 != r_4_1 && x__wset[r_4]) && x__wset[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1 || x__wset != x__wset
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding Node__isolated(x, x__wset) might fail. There might be insufficient permission to access Node__isolated(r, x__wset) (0178.vpr@15.5--15.41) [192540]"}
        (forall r_4: Ref ::
        { Heap[null, Node__isolated(r_4, x__wset)] } { Mask[null, Node__isolated(r_4, x__wset)] } { x__wset[r_4] }
        x__wset[r_4] ==> Mask[null, Node__isolated(r_4, x__wset)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(Node__isolated(r, x__wset), write)
      assume (forall r_4: Ref ::
        { Heap[null, Node__isolated(r_4, x__wset)] } { Mask[null, Node__isolated(r_4, x__wset)] } { x__wset[r_4] }
        x__wset[r_4] && NoPerm < FullPerm ==> invRecv6(r_4, x__wset) == r_4 && qpRange6(r_4, x__wset)
      );
      assume (forall ref_1_1: Ref, wset_1: (Set Ref) ::
        { invRecv6(ref_1_1, wset_1) }
        (x__wset[invRecv6(ref_1_1, wset_1)] && NoPerm < FullPerm) && qpRange6(ref_1_1, wset_1) ==> invRecv6(ref_1_1, wset_1) == ref_1_1 && x__wset == wset_1
      );
    
    // -- assume permission updates
      assume (forall ref_1_1: Ref, wset_1: (Set Ref) ::
        { QPMask[null, Node__isolated(ref_1_1, wset_1)] }
        (x__wset[invRecv6(ref_1_1, wset_1)] && NoPerm < FullPerm) && qpRange6(ref_1_1, wset_1) ==> (invRecv6(ref_1_1, wset_1) == ref_1_1 && x__wset == wset_1) && QPMask[null, Node__isolated(ref_1_1, wset_1)] == Mask[null, Node__isolated(ref_1_1, wset_1)] - FullPerm
      );
      assume (forall ref_1_1: Ref, wset_1: (Set Ref) ::
        { QPMask[null, Node__isolated(ref_1_1, wset_1)] }
        !((x__wset[invRecv6(ref_1_1, wset_1)] && NoPerm < FullPerm) && qpRange6(ref_1_1, wset_1)) ==> QPMask[null, Node__isolated(ref_1_1, wset_1)] == Mask[null, Node__isolated(ref_1_1, wset_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, Node__isolated(x, x__wset):=Mask[null, Node__isolated(x, x__wset)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Node__isolated#trigger(Heap, Node__isolated(x, x__wset));
    assume Heap[null, Node__isolated(x, x__wset)] == CombineFrames(FrameFragment(Node__isolated#condqp1(Heap, x, x__wset)), FrameFragment(Node__isolated#condqp2(Heap, x, x__wset)));
    if (!HasDirectPerm(Mask, null, Node__isolated(x, x__wset))) {
      Heap := Heap[null, Node__isolated#sm(x, x__wset):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Node__isolated(x, x__wset):=freshVersion];
    }
    // register all known folded permissions guarded by predicate Node__isolated
    havoc newPMask;
    assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
      { newPMask[o_16, f_21] }
      Heap[null, Node__isolated#sm(x, x__wset)][o_16, f_21] ==> newPMask[o_16, f_21]
    );
    assume (forall r_5: Ref ::
      
      x__wset[r_5] ==> newPMask[r_5, data]
    );
    Heap := Heap[null, Node__isolated#sm(x, x__wset):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}