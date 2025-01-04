// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:51:15
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/qp_exhale.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/qp_exhale-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(r_1_1: Ref): bool;
function  neverTriggered2(r_4: Ref): bool;
function  neverTriggered3(r_1_1: Ref): bool;
function  neverTriggered4(r_4: Ref): bool;
function  neverTriggered5(r_1_1: Ref): bool;
function  neverTriggered6(r_4: Ref): bool;
function  neverTriggered7(r_1_1: Ref): bool;
function  neverTriggered8(r_4: Ref): bool;
function  neverTriggered9(r_1_1: Ref): bool;
function  neverTriggered10(r_4: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1_1: Ref): Ref;
function  invRecv2(r_5_1_1: Ref): Ref;
function  invRecv3(r_2_1_1: Ref): Ref;
function  invRecv4(r_5_1_1: Ref): Ref;
function  invRecv5(r_2_1_1: Ref): Ref;
function  invRecv6(r_5_1_1: Ref): Ref;
function  invRecv7(r_2_1_1: Ref): Ref;
function  invRecv8(r_5_1_1: Ref): Ref;
function  invRecv9(r_2_1_1: Ref): Ref;
function  invRecv10(r_5_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1_1: Ref): bool;
function  qpRange2(r_5_1_1: Ref): bool;
function  qpRange3(r_2_1_1: Ref): bool;
function  qpRange4(r_5_1_1: Ref): bool;
function  qpRange5(r_2_1_1: Ref): bool;
function  qpRange6(r_5_1_1: Ref): bool;
function  qpRange7(r_2_1_1: Ref): bool;
function  qpRange8(r_5_1_1: Ref): bool;
function  qpRange9(r_2_1_1: Ref): bool;
function  qpRange10(r_5_1_1: Ref): bool;

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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(): Field PredicateType_p1 FrameType;
function  p1#sm(): Field PredicateType_p1 PMaskType;
axiom PredicateMaskField(p1()) == p1#sm();
axiom IsPredicateField(p1());
axiom getPredWandId(p1()) == 0;
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { p1#trigger(Heap, p1()) }
  p1#everUsed(p1())
);

procedure p1#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

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
  getPredWandId(p2(r_1)) == 1
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p3
// ==================================================

type PredicateType_p3;
function  p3(r_1: Ref): Field PredicateType_p3 FrameType;
function  p3#sm(r_1: Ref): Field PredicateType_p3 PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(p3(r_1)) }
  PredicateMaskField(p3(r_1)) == p3#sm(r_1)
);
axiom (forall r_1: Ref ::
  { p3(r_1) }
  IsPredicateField(p3(r_1))
);
axiom (forall r_1: Ref ::
  { p3(r_1) }
  getPredWandId(p3(r_1)) == 2
);
function  p3#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p3#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { p3(r_1), p3(r2) }
  p3(r_1) == p3(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { p3#sm(r_1), p3#sm(r2) }
  p3#sm(r_1) == p3#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { p3#trigger(Heap, p3(r_1)) }
  p3#everUsed(p3(r_1))
);

procedure p3#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p3
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (qp_exhale.vpr@18.1--21.2) [108060]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p4
// ==================================================

type PredicateType_p4;
function  p4(r_1: Ref, i: int): Field PredicateType_p4 FrameType;
function  p4#sm(r_1: Ref, i: int): Field PredicateType_p4 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p4(r_1, i)) }
  PredicateMaskField(p4(r_1, i)) == p4#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p4(r_1, i) }
  IsPredicateField(p4(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p4(r_1, i) }
  getPredWandId(p4(r_1, i)) == 3
);
function  p4#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p4#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p4(r_1, i), p4(r2, i2_1) }
  p4(r_1, i) == p4(r2, i2_1) ==> r_1 == r2 && i == i2_1
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p4#sm(r_1, i), p4#sm(r2, i2_1) }
  p4#sm(r_1, i) == p4#sm(r2, i2_1) ==> r_1 == r2 && i == i2_1
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p4#trigger(Heap, p4(r_1, i)) }
  p4#everUsed(p4(r_1, i))
);

procedure p4#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p4
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p5
// ==================================================

type PredicateType_p5;
function  p5(r_1: Ref, i: int): Field PredicateType_p5 FrameType;
function  p5#sm(r_1: Ref, i: int): Field PredicateType_p5 PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(p5(r_1, i)) }
  PredicateMaskField(p5(r_1, i)) == p5#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { p5(r_1, i) }
  IsPredicateField(p5(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { p5(r_1, i) }
  getPredWandId(p5(r_1, i)) == 4
);
function  p5#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p5#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p5(r_1, i), p5(r2, i2_1) }
  p5(r_1, i) == p5(r2, i2_1) ==> r_1 == r2 && i == i2_1
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { p5#sm(r_1, i), p5#sm(r2, i2_1) }
  p5#sm(r_1, i) == p5#sm(r2, i2_1) ==> r_1 == r2 && i == i2_1
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { p5#trigger(Heap, p5(r_1, i)) }
  p5#everUsed(p5(r_1, i))
);

procedure p5#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p5
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.f (qp_exhale.vpr@28.1--31.2) [108061]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(y):=Mask[null, p2(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] + perm];
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
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y, z)) } (r in Set(x, y, z)) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@37.9--37.57) [108062]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[null, p2(r_1_1)] } { PostMask[null, p2(r_1_1)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] && NoPerm < FullPerm ==> invRecv1(r_1_1) == r_1_1 && qpRange1(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv1(r_2_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1) ==> invRecv1(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv1(r_2_1_1)] && NoPerm < FullPerm) && qpRange1(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@37.9--37.57) [108063]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered2(r_4), neverTriggered2(r_4_1) }
        (((r_4 != r_4_1 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access p2(r) (qp_exhale.vpr@37.9--37.57) [108064]"}
        (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] ==> Mask[null, p2(r_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r), write)
      assume (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] && NoPerm < FullPerm ==> invRecv2(r_4) == r_4 && qpRange2(r_4)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv2(r_5_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv2(r_5_1_1)] && NoPerm < FullPerm) && qpRange2(r_5_1_1) ==> invRecv2(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv2(r_5_1_1)] && NoPerm < FullPerm) && qpRange2(r_5_1_1) ==> invRecv2(r_5_1_1) == r_5_1_1 && QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)] - FullPerm
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv2(r_5_1_1)] && NoPerm < FullPerm) && qpRange2(r_5_1_1)) ==> QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(y):=Mask[null, p2(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, p2(z):=PostMask[null, p2(z)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y)) } (r in Set(x, y)) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@45.9--45.54) [108065]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered3(r_1_1), neverTriggered3(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#Singleton(y), x)[r_1_1]) && Set#UnionOne(Set#Singleton(y), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[null, p2(r_1_1)] } { PostMask[null, p2(r_1_1)] } { Set#UnionOne(Set#Singleton(y), x)[r_1_1] }
        Set#UnionOne(Set#Singleton(y), x)[r_1_1] && NoPerm < FullPerm ==> invRecv3(r_1_1) == r_1_1 && qpRange3(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv3(r_2_1_1) }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv3(r_2_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1) ==> invRecv3(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv3(r_2_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv3(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((Set#UnionOne(Set#Singleton(y), x)[invRecv3(r_2_1_1)] && NoPerm < FullPerm) && qpRange3(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access p2(z) (qp_exhale.vpr@44.9--44.19) [108066]"}
        perm <= Mask[null, p2(z)];
    }
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@45.9--45.54) [108067]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered4(r_4), neverTriggered4(r_4_1) }
        (((r_4 != r_4_1 && Set#UnionOne(Set#Singleton(y), x)[r_4]) && Set#UnionOne(Set#Singleton(y), x)[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access p2(r) (qp_exhale.vpr@45.9--45.54) [108068]"}
        (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#Singleton(y), x)[r_4] }
        Set#UnionOne(Set#Singleton(y), x)[r_4] ==> Mask[null, p2(r_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r), write)
      assume (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#Singleton(y), x)[r_4] }
        Set#UnionOne(Set#Singleton(y), x)[r_4] && NoPerm < FullPerm ==> invRecv4(r_4) == r_4 && qpRange4(r_4)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv4(r_5_1_1) }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv4(r_5_1_1)] && NoPerm < FullPerm) && qpRange4(r_5_1_1) ==> invRecv4(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv4(r_5_1_1)] && NoPerm < FullPerm) && qpRange4(r_5_1_1) ==> invRecv4(r_5_1_1) == r_5_1_1 && QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)] - FullPerm
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        !((Set#UnionOne(Set#Singleton(y), x)[invRecv4(r_5_1_1)] && NoPerm < FullPerm) && qpRange4(r_5_1_1)) ==> QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(y):=Mask[null, p2(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] + perm];
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
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y)) } (r in Set(x, y)) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@52.9--52.54) [108069]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered5(r_1_1), neverTriggered5(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#Singleton(y), x)[r_1_1]) && Set#UnionOne(Set#Singleton(y), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[null, p2(r_1_1)] } { PostMask[null, p2(r_1_1)] } { Set#UnionOne(Set#Singleton(y), x)[r_1_1] }
        Set#UnionOne(Set#Singleton(y), x)[r_1_1] && NoPerm < FullPerm ==> invRecv5(r_1_1) == r_1_1 && qpRange5(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv5(r_2_1_1) }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv5(r_2_1_1)] && NoPerm < FullPerm) && qpRange5(r_2_1_1) ==> invRecv5(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv5(r_2_1_1)] && NoPerm < FullPerm) && qpRange5(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv5(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((Set#UnionOne(Set#Singleton(y), x)[invRecv5(r_2_1_1)] && NoPerm < FullPerm) && qpRange5(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, p2(z):=PostMask[null, p2(z)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@52.9--52.54) [108070]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered6(r_4), neverTriggered6(r_4_1) }
        (((r_4 != r_4_1 && Set#UnionOne(Set#Singleton(y), x)[r_4]) && Set#UnionOne(Set#Singleton(y), x)[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p2(r) (qp_exhale.vpr@52.9--52.54) [108071]"}
        (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#Singleton(y), x)[r_4] }
        Set#UnionOne(Set#Singleton(y), x)[r_4] ==> Mask[null, p2(r_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r), write)
      assume (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#Singleton(y), x)[r_4] }
        Set#UnionOne(Set#Singleton(y), x)[r_4] && NoPerm < FullPerm ==> invRecv6(r_4) == r_4 && qpRange6(r_4)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv6(r_5_1_1) }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv6(r_5_1_1)] && NoPerm < FullPerm) && qpRange6(r_5_1_1) ==> invRecv6(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        (Set#UnionOne(Set#Singleton(y), x)[invRecv6(r_5_1_1)] && NoPerm < FullPerm) && qpRange6(r_5_1_1) ==> invRecv6(r_5_1_1) == r_5_1_1 && QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)] - FullPerm
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        !((Set#UnionOne(Set#Singleton(y), x)[invRecv6(r_5_1_1)] && NoPerm < FullPerm) && qpRange6(r_5_1_1)) ==> QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p2(z) (qp_exhale.vpr@53.9--53.19) [108072]"}
        perm <= Mask[null, p2(z)];
    }
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(y):=Mask[null, p2(y)] + perm];
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
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y, z)) } (r in Set(x, y, z)) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@61.9--61.57) [108073]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered7(r_1_1), neverTriggered7(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[null, p2(r_1_1)] } { PostMask[null, p2(r_1_1)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] && NoPerm < FullPerm ==> invRecv7(r_1_1) == r_1_1 && qpRange7(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv7(r_2_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv7(r_2_1_1)] && NoPerm < FullPerm) && qpRange7(r_2_1_1) ==> invRecv7(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv7(r_2_1_1)] && NoPerm < FullPerm) && qpRange7(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv7(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv7(r_2_1_1)] && NoPerm < FullPerm) && qpRange7(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@61.9--61.57) [108074]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered8(r_4), neverTriggered8(r_4_1) }
        (((r_4 != r_4_1 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p2(r) (qp_exhale.vpr@61.9--61.57) [108075]"}
        (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] ==> Mask[null, p2(r_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r), write)
      assume (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] && NoPerm < FullPerm ==> invRecv8(r_4) == r_4 && qpRange8(r_4)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv8(r_5_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv8(r_5_1_1)] && NoPerm < FullPerm) && qpRange8(r_5_1_1) ==> invRecv8(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv8(r_5_1_1)] && NoPerm < FullPerm) && qpRange8(r_5_1_1) ==> invRecv8(r_5_1_1) == r_5_1_1 && QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)] - FullPerm
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv8(r_5_1_1)] && NoPerm < FullPerm) && qpRange8(r_5_1_1)) ==> QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p2(y):=Mask[null, p2(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(z):=Mask[null, p2(z)] + perm];
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
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y, z)) } (r in Set(x, y, z)) ==> acc(p2(r), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@69.9--69.57) [108076]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered9(r_1_1), neverTriggered9(r_1_2) }
        (((r_1_1 != r_1_2 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { PostHeap[null, p2(r_1_1)] } { PostMask[null, p2(r_1_1)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_1_1] && NoPerm < FullPerm ==> invRecv9(r_1_1) == r_1_1 && qpRange9(r_1_1)
      );
      assume (forall r_2_1_1: Ref ::
        { invRecv9(r_2_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv9(r_2_1_1)] && NoPerm < FullPerm) && qpRange9(r_2_1_1) ==> invRecv9(r_2_1_1) == r_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv9(r_2_1_1)] && NoPerm < FullPerm) && qpRange9(r_2_1_1) ==> (NoPerm < FullPerm ==> invRecv9(r_2_1_1) == r_2_1_1) && QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref ::
        { QPMask[null, p2(r_2_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv9(r_2_1_1)] && NoPerm < FullPerm) && qpRange9(r_2_1_1)) ==> QPMask[null, p2(r_2_1_1)] == PostMask[null, p2(r_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource p2(r) might not be injective. (qp_exhale.vpr@69.9--69.57) [108077]"}
        (forall r_4: Ref, r_4_1: Ref ::
        { neverTriggered10(r_4), neverTriggered10(r_4_1) }
        (((r_4 != r_4_1 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4 != r_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m5 might not hold. There might be insufficient permission to access p2(r) (qp_exhale.vpr@69.9--69.57) [108078]"}
        (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] ==> Mask[null, p2(r_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r), write)
      assume (forall r_4: Ref ::
        { Heap[null, p2(r_4)] } { Mask[null, p2(r_4)] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4] && NoPerm < FullPerm ==> invRecv10(r_4) == r_4 && qpRange10(r_4)
      );
      assume (forall r_5_1_1: Ref ::
        { invRecv10(r_5_1_1) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv10(r_5_1_1)] && NoPerm < FullPerm) && qpRange10(r_5_1_1) ==> invRecv10(r_5_1_1) == r_5_1_1
      );
    
    // -- assume permission updates
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv10(r_5_1_1)] && NoPerm < FullPerm) && qpRange10(r_5_1_1) ==> invRecv10(r_5_1_1) == r_5_1_1 && QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)] - FullPerm
      );
      assume (forall r_5_1_1: Ref ::
        { QPMask[null, p2(r_5_1_1)] }
        !((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv10(r_5_1_1)] && NoPerm < FullPerm) && qpRange10(r_5_1_1)) ==> QPMask[null, p2(r_5_1_1)] == Mask[null, p2(r_5_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}