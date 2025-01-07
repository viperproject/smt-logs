// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:19:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QPpred.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QPpred-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_28: Ref, f_32: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_28, f_32] }
  Heap[o_28, $allocated] ==> Heap[Heap[o_28, f_32], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref, f_33: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, f_33] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_29, f_33) ==> Heap[o_29, f_33] == ExhaleHeap[o_29, f_33]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_10, f_33] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_33] ==> Heap[o2_10, f_33] == ExhaleHeap[o2_10, f_33]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_29: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_29, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_29, $allocated] ==> ExhaleHeap[o_29, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_28: Ref, f_34: (Field A B), v: B ::
  { Heap[o_28, f_34:=v] }
  succHeap(Heap, Heap[o_28, f_34:=v])
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

function  neverTriggered3(x_1: Ref, y_1: Ref, z_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref): Ref;
function  invRecv2(x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref): Ref;
function  invRecv3(x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange3(x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref): bool;

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
// Translation of domain Inverse_45
// ==================================================

// The type for domain Inverse_45
type Inverse_45DomainType;

// Translation of domain function inv_45_0
function  inv_45_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_45_1
function  inv_45_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_45_2
function  inv_45_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_46
// ==================================================

// The type for domain Inverse_46
type Inverse_46DomainType;

// Translation of domain function inv_46_0
function  inv_46_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_46_1
function  inv_46_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_46_2
function  inv_46_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_47
// ==================================================

// The type for domain Inverse_47
type Inverse_47DomainType;

// Translation of domain function inv_47_0
function  inv_47_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_47_1
function  inv_47_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_47_2
function  inv_47_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_48
// ==================================================

// The type for domain Inverse_48
type Inverse_48DomainType;

// Translation of domain function inv_48_0
function  inv_48_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_48_1
function  inv_48_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_48_2
function  inv_48_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_49
// ==================================================

// The type for domain Inverse_49
type Inverse_49DomainType;

// Translation of domain function inv_49_0
function  inv_49_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_49_1
function  inv_49_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_49_2
function  inv_49_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_50
// ==================================================

// The type for domain Inverse_50
type Inverse_50DomainType;

// Translation of domain function inv_50_0
function  inv_50_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_50_1
function  inv_50_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_50_2
function  inv_50_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_51
// ==================================================

// The type for domain Inverse_51
type Inverse_51DomainType;

// Translation of domain function inv_51_0
function  inv_51_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_51_1
function  inv_51_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_51_2
function  inv_51_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_52
// ==================================================

// The type for domain Inverse_52
type Inverse_52DomainType;

// Translation of domain function inv_52_0
function  inv_52_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_52_1
function  inv_52_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_52_2
function  inv_52_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_53
// ==================================================

// The type for domain Inverse_53
type Inverse_53DomainType;

// Translation of domain function inv_53_0
function  inv_53_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_53_1
function  inv_53_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_53_2
function  inv_53_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_54
// ==================================================

// The type for domain Inverse_54
type Inverse_54DomainType;

// Translation of domain function inv_54_0
function  inv_54_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_54_1
function  inv_54_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_54_2
function  inv_54_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain Inverse_55
// ==================================================

// The type for domain Inverse_55
type Inverse_55DomainType;

// Translation of domain function inv_55_0
function  inv_55_0(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_55_1
function  inv_55_1(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// Translation of domain function inv_55_2
function  inv_55_2(x_8: Ref, y_6: Ref, z_26: Ref): Ref;

// ==================================================
// Translation of domain __ns__impure_assume_rewriter
// ==================================================

// The type for domain __ns__impure_assume_rewriter
type __ns__impure_assume_rewriterDomainType;

// Translation of domain function __iar__assume_helper_1
function  __iar__assume_helper_1(c_1_2: bool, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_2
function  __iar__assume_helper_2(c_2_2: bool, c_1_2: bool, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_3
function  __iar__assume_helper_3(c_3_2: bool, c_2_2: bool, c_1_2: bool, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_4
function  __iar__assume_helper_4(c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_5
function  __iar__assume_helper_5(c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_6
function  __iar__assume_helper_6(c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_7
function  __iar__assume_helper_7(c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_8
function  __iar__assume_helper_8(c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_9
function  __iar__assume_helper_9(c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_10
function  __iar__assume_helper_10(c_10_1: bool, c_9_2: bool, c_8_2: bool, c_7_2: bool, c_6_2: bool, c_5_2: bool, c_4_1: bool, c_3_2: bool, c_2_2: bool, c_1_2: bool, p_10_1: Perm, p_9_2: Perm, p_8_1: Perm, p_7_2: Perm, p_6_2: Perm, p_5_1: Perm, p_4_2: Perm, p_3_2: Perm, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain axiom __iar__assume_helper_1_axiom
axiom (forall c_1: bool, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_2_axiom
axiom (forall c_2: bool, c_1: bool, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_3_axiom
axiom (forall c_3: bool, c_2: bool, c_1: bool, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_3(c_3, c_2, c_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_4_axiom
axiom (forall c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_4(c_4_2, c_3, c_2, c_1, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_5_axiom
axiom (forall c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_5(c_5_1, c_4_2, c_3, c_2, c_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_6_axiom
axiom (forall c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_6(c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_7_axiom
axiom (forall c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_7(c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_8_axiom
axiom (forall c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_8(c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_9_axiom
axiom (forall c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_9(c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_10_axiom
axiom (forall c_10_2: bool, c_9: bool, c_8: bool, c_7: bool, c_6: bool, c_5_1: bool, c_4_2: bool, c_3: bool, c_2: bool, c_1: bool, p_10: Perm, p_9_3: Perm, p_8: Perm, p_7_3: Perm, p_6_1: Perm, p_5: Perm, p_4_1: Perm, p_3_1: Perm, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_10(c_10_2, c_9, c_8, c_7, c_6, c_5_1, c_4_2, c_3, c_2, c_1, p_10, p_9_3, p_8, p_7_3, p_6_1, p_5, p_4_1, p_3_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm) + (if c_3 then p_3_1 else NoPerm) + (if c_4_2 then p_4_1 else NoPerm) + (if c_5_1 then p_5 else NoPerm) + (if c_6 then p_6_1 else NoPerm) + (if c_7 then p_7_3 else NoPerm) + (if c_8 then p_8 else NoPerm) + (if c_9 then p_9_3 else NoPerm) + (if c_10_2 then p_10 else NoPerm)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(x: Ref, y: Ref, z: Ref): Field PredicateType_p FrameType;
function  p#sm(x: Ref, y: Ref, z: Ref): Field PredicateType_p PMaskType;
axiom (forall x: Ref, y: Ref, z: Ref ::
  { PredicateMaskField(p_14(x, y, z)) }
  PredicateMaskField(p_14(x, y, z)) == p#sm(x, y, z)
);
axiom (forall x: Ref, y: Ref, z: Ref ::
  { p_14(x, y, z) }
  IsPredicateField(p_14(x, y, z))
);
axiom (forall x: Ref, y: Ref, z: Ref ::
  { p_14(x, y, z) }
  getPredWandId(p_14(x, y, z)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, z: Ref, x2: Ref, y2: Ref, z2: Ref ::
  { p_14(x, y, z), p_14(x2, y2, z2) }
  p_14(x, y, z) == p_14(x2, y2, z2) ==> x == x2 && (y == y2 && z == z2)
);
axiom (forall x: Ref, y: Ref, z: Ref, x2: Ref, y2: Ref, z2: Ref ::
  { p#sm(x, y, z), p#sm(x2, y2, z2) }
  p#sm(x, y, z) == p#sm(x2, y2, z2) ==> x == x2 && (y == y2 && z == z2)
);

axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { p#trigger(Heap, p_14(x, y, z)) }
  p#everUsed(p_14(x, y, z))
);

// ==================================================
// Translation of method m
// ==================================================

procedure m(xs1: (Set Ref), xs2: (Set Ref), xs3: (Set Ref), xs4: (Set Ref), xs5: (Set Ref), xs6: (Set Ref), xs7: (Set Ref), xs8: (Set Ref), xs9: (Set Ref), xs10: (Set Ref), xs11: (Set Ref), ys1: (Set Ref), ys2: (Set Ref), ys3: (Set Ref), ys4: (Set Ref), ys5: (Set Ref), ys6: (Set Ref), ys7: (Set Ref), ys8: (Set Ref), ys9: (Set Ref), ys10: (Set Ref), ys11: (Set Ref), zs1: (Set Ref), zs2: (Set Ref), zs3: (Set Ref), zs4: (Set Ref), zs5: (Set Ref), zs6: (Set Ref), zs7: (Set Ref), zs8: (Set Ref), zs9: (Set Ref), zs10: (Set Ref), zs11: (Set Ref), xs: (Set Ref), ys: (Set Ref), zs: (Set Ref), q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var QPMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Translating statement: inhale none <= q -- assume10QPpred.vpr@15.3--15.19
    assume NoPerm <= q_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { (x in xs), (y in ys), (z in zs) }
  //     (x in xs) && ((y in ys) && (z in zs)) ==> acc(p(x, y, z), q)) -- assume10QPpred.vpr@16.3--17.65
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { (x in xs), (y in ys), (z in zs) } (x in xs) && ((y in ys) && (z in zs)) ==> acc(p(x, y, z), q))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p(x, y, z), q) is injective
      assert {:msg "  Inhale might fail. Quantified resource p(x, y, z) might not be injective. (assume10QPpred.vpr@16.10--17.65) [149709]"}
        (forall x_1: Ref, y_1: Ref, z_1: Ref, x_1_1: Ref, y_1_1: Ref, z_1_1: Ref ::
        { neverTriggered3(x_1, y_1, z_1), neverTriggered3(x_1_1, y_1_1, z_1_1) }
        (((((x_1 != x_1_1 && y_1 != y_1_1) && z_1 != z_1_1) && (xs[x_1] && (ys[y_1] && zs[z_1]))) && (xs[x_1_1] && (ys[y_1_1] && zs[z_1_1]))) && NoPerm < q_1) && NoPerm < q_1 ==> (x_1 != x_1_1 || y_1 != y_1_1) || z_1 != z_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref, y_1: Ref, z_1: Ref ::
        { Heap[null, p_14(x_1, y_1, z_1)] } { Mask[null, p_14(x_1, y_1, z_1)] } { xs[x_1], ys[y_1], zs[z_1] }
        (xs[x_1] && (ys[y_1] && zs[z_1])) && NoPerm < q_1 ==> ((invRecv1(x_1, y_1, z_1) == x_1 && invRecv2(x_1, y_1, z_1) == y_1) && invRecv3(x_1, y_1, z_1) == z_1) && qpRange3(x_1, y_1, z_1)
      );
      assume (forall x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref ::
        { invRecv1(x_2_1, y_2_1_1, z_2_1_1), invRecv2(x_2_1, y_2_1_1, z_2_1_1), invRecv3(x_2_1, y_2_1_1, z_2_1_1) }
        ((xs[invRecv1(x_2_1, y_2_1_1, z_2_1_1)] && (ys[invRecv2(x_2_1, y_2_1_1, z_2_1_1)] && zs[invRecv3(x_2_1, y_2_1_1, z_2_1_1)])) && NoPerm < q_1) && qpRange3(x_2_1, y_2_1_1, z_2_1_1) ==> (invRecv1(x_2_1, y_2_1_1, z_2_1_1) == x_2_1 && invRecv2(x_2_1, y_2_1_1, z_2_1_1) == y_2_1_1) && invRecv3(x_2_1, y_2_1_1, z_2_1_1) == z_2_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction q might be negative. (assume10QPpred.vpr@16.10--17.65) [149710]"}
      (forall x_1: Ref, y_1: Ref, z_1: Ref ::
      { Heap[null, p_14(x_1, y_1, z_1)] } { Mask[null, p_14(x_1, y_1, z_1)] } { xs[x_1], ys[y_1], zs[z_1] }
      xs[x_1] && (ys[y_1] && zs[z_1]) ==> q_1 >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref ::
        { QPMask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)] }
        ((xs[invRecv1(x_2_1, y_2_1_1, z_2_1_1)] && (ys[invRecv2(x_2_1, y_2_1_1, z_2_1_1)] && zs[invRecv3(x_2_1, y_2_1_1, z_2_1_1)])) && NoPerm < q_1) && qpRange3(x_2_1, y_2_1_1, z_2_1_1) ==> (NoPerm < q_1 ==> (invRecv1(x_2_1, y_2_1_1, z_2_1_1) == x_2_1 && invRecv2(x_2_1, y_2_1_1, z_2_1_1) == y_2_1_1) && invRecv3(x_2_1, y_2_1_1, z_2_1_1) == z_2_1_1) && QPMask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)] == Mask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)] + q_1
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_2_1: Ref, y_2_1_1: Ref, z_2_1_1: Ref ::
        { QPMask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)] }
        !(((xs[invRecv1(x_2_1, y_2_1_1, z_2_1_1)] && (ys[invRecv2(x_2_1, y_2_1_1, z_2_1_1)] && zs[invRecv3(x_2_1, y_2_1_1, z_2_1_1)])) && NoPerm < q_1) && qpRange3(x_2_1, y_2_1_1, z_2_1_1)) ==> QPMask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)] == Mask[null, p_14(x_2_1, y_2_1_1, z_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x1: Ref, y1: Ref, z1: Ref ::
  //     { p(x1, y1, z1) }
  //     (x1 in xs1) && ((y1 in ys1) && (z1 in zs1)) ==>
  //     inv_45_0(x1, y1, z1) == x1 && inv_45_1(x1, y1, z1) == y1 &&
  //     inv_45_2(x1, y1, z1) == z1) -- assume10QPpred.vpr@20.9--20.122
    
    // -- Check definedness of (forall x1: Ref, y1: Ref, z1: Ref :: { p(x1, y1, z1) } (x1 in xs1) && ((y1 in ys1) && (z1 in zs1)) ==> inv_45_0(x1, y1, z1) == x1 && inv_45_1(x1, y1, z1) == y1 && inv_45_2(x1, y1, z1) == z1)
      if (*) {
        assume false;
      }
    assume (forall x1_1: Ref, y1_1: Ref, z1_1: Ref ::
      { Heap[null, p_14(x1_1, y1_1, z1_1)] }
      xs1[x1_1] && (ys1[y1_1] && zs1[z1_1]) ==> ((inv_45_0(x1_1, y1_1, z1_1): Ref) == x1_1 && (inv_45_1(x1_1, y1_1, z1_1): Ref) == y1_1) && (inv_45_2(x1_1, y1_1, z1_1): Ref) == z1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_45_0(x, y, z), inv_45_1(x, y, z), inv_45_2(x, y, z) }
  //     (inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) ==>
  //     inv_45_0(x, y, z) == x && inv_45_1(x, y, z) == y &&
  //     inv_45_2(x, y, z) == z) -- assume10QPpred.vpr@20.9--20.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_45_0(x, y, z), inv_45_1(x, y, z), inv_45_2(x, y, z) } (inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) ==> inv_45_0(x, y, z) == x && inv_45_1(x, y, z) == y && inv_45_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_5: Ref, y_5_2: Ref, z_5: Ref ::
      { (inv_45_0(x_5, y_5_2, z_5): Ref), (inv_45_1(x_5, y_5_2, z_5): Ref), (inv_45_2(x_5, y_5_2, z_5): Ref) }
      xs1[(inv_45_0(x_5, y_5_2, z_5): Ref)] && (ys1[(inv_45_1(x_5, y_5_2, z_5): Ref)] && zs1[(inv_45_2(x_5, y_5_2, z_5): Ref)]) ==> ((inv_45_0(x_5, y_5_2, z_5): Ref) == x_5 && (inv_45_1(x_5, y_5_2, z_5): Ref) == y_5_2) && (inv_45_2(x_5, y_5_2, z_5): Ref) == z_5
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_45_0(x, y, z), inv_45_1(x, y, z), inv_45_2(x, y, z) }
  //     (inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) ==>
  //     perm(p(x, y, z)) >= q) -- assume10QPpred.vpr@20.9--20.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_45_0(x, y, z), inv_45_1(x, y, z), inv_45_2(x, y, z) } (inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) ==> perm(p(x, y, z)) >= q)
      if (*) {
        assume false;
      }
    assume (forall x_7: Ref, y_7_2: Ref, z_7: Ref ::
      { (inv_45_0(x_7, y_7_2, z_7): Ref), (inv_45_1(x_7, y_7_2, z_7): Ref), (inv_45_2(x_7, y_7_2, z_7): Ref) }
      xs1[(inv_45_0(x_7, y_7_2, z_7): Ref)] && (ys1[(inv_45_1(x_7, y_7_2, z_7): Ref)] && zs1[(inv_45_2(x_7, y_7_2, z_7): Ref)]) ==> q_1 <= Mask[null, p_14(x_7, y_7_2, z_7)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x2: Ref, y2: Ref, z2: Ref ::
  //     { p(x2, y2, z2) }
  //     (x2 in xs2) && ((y2 in ys2) && (z2 in zs2)) ==>
  //     inv_46_0(x2, y2, z2) == x2 && inv_46_1(x2, y2, z2) == y2 &&
  //     inv_46_2(x2, y2, z2) == z2) -- assume10QPpred.vpr@21.9--21.122
    
    // -- Check definedness of (forall x2: Ref, y2: Ref, z2: Ref :: { p(x2, y2, z2) } (x2 in xs2) && ((y2 in ys2) && (z2 in zs2)) ==> inv_46_0(x2, y2, z2) == x2 && inv_46_1(x2, y2, z2) == y2 && inv_46_2(x2, y2, z2) == z2)
      if (*) {
        assume false;
      }
    assume (forall x2_1_1: Ref, y2_1: Ref, z2_1: Ref ::
      { Heap[null, p_14(x2_1_1, y2_1, z2_1)] }
      xs2[x2_1_1] && (ys2[y2_1] && zs2[z2_1]) ==> ((inv_46_0(x2_1_1, y2_1, z2_1): Ref) == x2_1_1 && (inv_46_1(x2_1_1, y2_1, z2_1): Ref) == y2_1) && (inv_46_2(x2_1_1, y2_1, z2_1): Ref) == z2_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_46_0(x, y, z), inv_46_1(x, y, z), inv_46_2(x, y, z) }
  //     (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) ==>
  //     inv_46_0(x, y, z) == x && inv_46_1(x, y, z) == y &&
  //     inv_46_2(x, y, z) == z) -- assume10QPpred.vpr@21.9--21.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_46_0(x, y, z), inv_46_1(x, y, z), inv_46_2(x, y, z) } (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) ==> inv_46_0(x, y, z) == x && inv_46_1(x, y, z) == y && inv_46_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_9_2: Ref, y_9_1: Ref, z_9_1: Ref ::
      { (inv_46_0(x_9_2, y_9_1, z_9_1): Ref), (inv_46_1(x_9_2, y_9_1, z_9_1): Ref), (inv_46_2(x_9_2, y_9_1, z_9_1): Ref) }
      xs2[(inv_46_0(x_9_2, y_9_1, z_9_1): Ref)] && (ys2[(inv_46_1(x_9_2, y_9_1, z_9_1): Ref)] && zs2[(inv_46_2(x_9_2, y_9_1, z_9_1): Ref)]) ==> ((inv_46_0(x_9_2, y_9_1, z_9_1): Ref) == x_9_2 && (inv_46_1(x_9_2, y_9_1, z_9_1): Ref) == y_9_1) && (inv_46_2(x_9_2, y_9_1, z_9_1): Ref) == z_9_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_46_0(x, y, z), inv_46_1(x, y, z), inv_46_2(x, y, z) }
  //     (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_1((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), q, q)) -- assume10QPpred.vpr@21.9--21.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_46_0(x, y, z), inv_46_1(x, y, z), inv_46_2(x, y, z) } (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) ==> perm(p(x, y, z)) >= __iar__assume_helper_1((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), q, q))
      if (*) {
        assume false;
      }
    assume (forall x_11_1: Ref, y_11_1: Ref, z_11_2: Ref ::
      { (inv_46_0(x_11_1, y_11_1, z_11_2): Ref), (inv_46_1(x_11_1, y_11_1, z_11_2): Ref), (inv_46_2(x_11_1, y_11_1, z_11_2): Ref) }
      xs2[(inv_46_0(x_11_1, y_11_1, z_11_2): Ref)] && (ys2[(inv_46_1(x_11_1, y_11_1, z_11_2): Ref)] && zs2[(inv_46_2(x_11_1, y_11_1, z_11_2): Ref)]) ==> (__iar__assume_helper_1((xs1[(inv_45_0(x_11_1, y_11_1, z_11_2): Ref)] && (ys1[(inv_45_1(x_11_1, y_11_1, z_11_2): Ref)] && zs1[(inv_45_2(x_11_1, y_11_1, z_11_2): Ref)])) && ((x_11_1 == x_11_1 && y_11_1 == y_11_1) && z_11_2 == z_11_2), q_1, q_1): Perm) <= Mask[null, p_14(x_11_1, y_11_1, z_11_2)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x3: Ref, y3: Ref, z3: Ref ::
  //     { p(x3, y3, z3) }
  //     (x3 in xs3) && ((y3 in ys3) && (z3 in zs3)) ==>
  //     inv_47_0(x3, y3, z3) == x3 && inv_47_1(x3, y3, z3) == y3 &&
  //     inv_47_2(x3, y3, z3) == z3) -- assume10QPpred.vpr@22.9--22.122
    
    // -- Check definedness of (forall x3: Ref, y3: Ref, z3: Ref :: { p(x3, y3, z3) } (x3 in xs3) && ((y3 in ys3) && (z3 in zs3)) ==> inv_47_0(x3, y3, z3) == x3 && inv_47_1(x3, y3, z3) == y3 && inv_47_2(x3, y3, z3) == z3)
      if (*) {
        assume false;
      }
    assume (forall x3_1_1: Ref, y3_1: Ref, z3_1: Ref ::
      { Heap[null, p_14(x3_1_1, y3_1, z3_1)] }
      xs3[x3_1_1] && (ys3[y3_1] && zs3[z3_1]) ==> ((inv_47_0(x3_1_1, y3_1, z3_1): Ref) == x3_1_1 && (inv_47_1(x3_1_1, y3_1, z3_1): Ref) == y3_1) && (inv_47_2(x3_1_1, y3_1, z3_1): Ref) == z3_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_47_0(x, y, z), inv_47_1(x, y, z), inv_47_2(x, y, z) }
  //     (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) ==>
  //     inv_47_0(x, y, z) == x && inv_47_1(x, y, z) == y &&
  //     inv_47_2(x, y, z) == z) -- assume10QPpred.vpr@22.9--22.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_47_0(x, y, z), inv_47_1(x, y, z), inv_47_2(x, y, z) } (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) ==> inv_47_0(x, y, z) == x && inv_47_1(x, y, z) == y && inv_47_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_13_2: Ref, y_13_1: Ref, z_13_1: Ref ::
      { (inv_47_0(x_13_2, y_13_1, z_13_1): Ref), (inv_47_1(x_13_2, y_13_1, z_13_1): Ref), (inv_47_2(x_13_2, y_13_1, z_13_1): Ref) }
      xs3[(inv_47_0(x_13_2, y_13_1, z_13_1): Ref)] && (ys3[(inv_47_1(x_13_2, y_13_1, z_13_1): Ref)] && zs3[(inv_47_2(x_13_2, y_13_1, z_13_1): Ref)]) ==> ((inv_47_0(x_13_2, y_13_1, z_13_1): Ref) == x_13_2 && (inv_47_1(x_13_2, y_13_1, z_13_1): Ref) == y_13_1) && (inv_47_2(x_13_2, y_13_1, z_13_1): Ref) == z_13_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_47_0(x, y, z), inv_47_1(x, y, z), inv_47_2(x, y, z) }
  //     (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_2((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), q, q, q)) -- assume10QPpred.vpr@22.9--22.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_47_0(x, y, z), inv_47_1(x, y, z), inv_47_2(x, y, z) } (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) ==> perm(p(x, y, z)) >= __iar__assume_helper_2((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_15_2: Ref, y_15_1: Ref, z_15_1: Ref ::
      { (inv_47_0(x_15_2, y_15_1, z_15_1): Ref), (inv_47_1(x_15_2, y_15_1, z_15_1): Ref), (inv_47_2(x_15_2, y_15_1, z_15_1): Ref) }
      xs3[(inv_47_0(x_15_2, y_15_1, z_15_1): Ref)] && (ys3[(inv_47_1(x_15_2, y_15_1, z_15_1): Ref)] && zs3[(inv_47_2(x_15_2, y_15_1, z_15_1): Ref)]) ==> (__iar__assume_helper_2((xs1[(inv_45_0(x_15_2, y_15_1, z_15_1): Ref)] && (ys1[(inv_45_1(x_15_2, y_15_1, z_15_1): Ref)] && zs1[(inv_45_2(x_15_2, y_15_1, z_15_1): Ref)])) && ((x_15_2 == x_15_2 && y_15_1 == y_15_1) && z_15_1 == z_15_1), (xs2[(inv_46_0(x_15_2, y_15_1, z_15_1): Ref)] && (ys2[(inv_46_1(x_15_2, y_15_1, z_15_1): Ref)] && zs2[(inv_46_2(x_15_2, y_15_1, z_15_1): Ref)])) && ((x_15_2 == x_15_2 && y_15_1 == y_15_1) && z_15_1 == z_15_1), q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_15_2, y_15_1, z_15_1)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x4: Ref, y4: Ref, z4: Ref ::
  //     { p(x4, y4, z4) }
  //     (x4 in xs4) && ((y4 in ys4) && (z4 in zs4)) ==>
  //     inv_48_0(x4, y4, z4) == x4 && inv_48_1(x4, y4, z4) == y4 &&
  //     inv_48_2(x4, y4, z4) == z4) -- assume10QPpred.vpr@23.9--23.122
    
    // -- Check definedness of (forall x4: Ref, y4: Ref, z4: Ref :: { p(x4, y4, z4) } (x4 in xs4) && ((y4 in ys4) && (z4 in zs4)) ==> inv_48_0(x4, y4, z4) == x4 && inv_48_1(x4, y4, z4) == y4 && inv_48_2(x4, y4, z4) == z4)
      if (*) {
        assume false;
      }
    assume (forall x4_1_1: Ref, y4_1: Ref, z4_1: Ref ::
      { Heap[null, p_14(x4_1_1, y4_1, z4_1)] }
      xs4[x4_1_1] && (ys4[y4_1] && zs4[z4_1]) ==> ((inv_48_0(x4_1_1, y4_1, z4_1): Ref) == x4_1_1 && (inv_48_1(x4_1_1, y4_1, z4_1): Ref) == y4_1) && (inv_48_2(x4_1_1, y4_1, z4_1): Ref) == z4_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_48_0(x, y, z), inv_48_1(x, y, z), inv_48_2(x, y, z) }
  //     (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) ==>
  //     inv_48_0(x, y, z) == x && inv_48_1(x, y, z) == y &&
  //     inv_48_2(x, y, z) == z) -- assume10QPpred.vpr@23.9--23.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_48_0(x, y, z), inv_48_1(x, y, z), inv_48_2(x, y, z) } (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) ==> inv_48_0(x, y, z) == x && inv_48_1(x, y, z) == y && inv_48_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_17_1: Ref, y_17: Ref, z_17_2: Ref ::
      { (inv_48_0(x_17_1, y_17, z_17_2): Ref), (inv_48_1(x_17_1, y_17, z_17_2): Ref), (inv_48_2(x_17_1, y_17, z_17_2): Ref) }
      xs4[(inv_48_0(x_17_1, y_17, z_17_2): Ref)] && (ys4[(inv_48_1(x_17_1, y_17, z_17_2): Ref)] && zs4[(inv_48_2(x_17_1, y_17, z_17_2): Ref)]) ==> ((inv_48_0(x_17_1, y_17, z_17_2): Ref) == x_17_1 && (inv_48_1(x_17_1, y_17, z_17_2): Ref) == y_17) && (inv_48_2(x_17_1, y_17, z_17_2): Ref) == z_17_2
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_48_0(x, y, z), inv_48_1(x, y, z), inv_48_2(x, y, z) }
  //     (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_3((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), q, q, q, q)) -- assume10QPpred.vpr@23.9--23.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_48_0(x, y, z), inv_48_1(x, y, z), inv_48_2(x, y, z) } (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) ==> perm(p(x, y, z)) >= __iar__assume_helper_3((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_19_1: Ref, y_19: Ref, z_19_1: Ref ::
      { (inv_48_0(x_19_1, y_19, z_19_1): Ref), (inv_48_1(x_19_1, y_19, z_19_1): Ref), (inv_48_2(x_19_1, y_19, z_19_1): Ref) }
      xs4[(inv_48_0(x_19_1, y_19, z_19_1): Ref)] && (ys4[(inv_48_1(x_19_1, y_19, z_19_1): Ref)] && zs4[(inv_48_2(x_19_1, y_19, z_19_1): Ref)]) ==> (__iar__assume_helper_3((xs1[(inv_45_0(x_19_1, y_19, z_19_1): Ref)] && (ys1[(inv_45_1(x_19_1, y_19, z_19_1): Ref)] && zs1[(inv_45_2(x_19_1, y_19, z_19_1): Ref)])) && ((x_19_1 == x_19_1 && y_19 == y_19) && z_19_1 == z_19_1), (xs2[(inv_46_0(x_19_1, y_19, z_19_1): Ref)] && (ys2[(inv_46_1(x_19_1, y_19, z_19_1): Ref)] && zs2[(inv_46_2(x_19_1, y_19, z_19_1): Ref)])) && ((x_19_1 == x_19_1 && y_19 == y_19) && z_19_1 == z_19_1), (xs3[(inv_47_0(x_19_1, y_19, z_19_1): Ref)] && (ys3[(inv_47_1(x_19_1, y_19, z_19_1): Ref)] && zs3[(inv_47_2(x_19_1, y_19, z_19_1): Ref)])) && ((x_19_1 == x_19_1 && y_19 == y_19) && z_19_1 == z_19_1), q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_19_1, y_19, z_19_1)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x5: Ref, y5: Ref, z5: Ref ::
  //     { p(x5, y5, z5) }
  //     (x5 in xs5) && ((y5 in ys5) && (z5 in zs5)) ==>
  //     inv_49_0(x5, y5, z5) == x5 && inv_49_1(x5, y5, z5) == y5 &&
  //     inv_49_2(x5, y5, z5) == z5) -- assume10QPpred.vpr@24.9--24.122
    
    // -- Check definedness of (forall x5: Ref, y5: Ref, z5: Ref :: { p(x5, y5, z5) } (x5 in xs5) && ((y5 in ys5) && (z5 in zs5)) ==> inv_49_0(x5, y5, z5) == x5 && inv_49_1(x5, y5, z5) == y5 && inv_49_2(x5, y5, z5) == z5)
      if (*) {
        assume false;
      }
    assume (forall x5_1_1: Ref, y5_1: Ref, z5_1: Ref ::
      { Heap[null, p_14(x5_1_1, y5_1, z5_1)] }
      xs5[x5_1_1] && (ys5[y5_1] && zs5[z5_1]) ==> ((inv_49_0(x5_1_1, y5_1, z5_1): Ref) == x5_1_1 && (inv_49_1(x5_1_1, y5_1, z5_1): Ref) == y5_1) && (inv_49_2(x5_1_1, y5_1, z5_1): Ref) == z5_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_49_0(x, y, z), inv_49_1(x, y, z), inv_49_2(x, y, z) }
  //     (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) ==>
  //     inv_49_0(x, y, z) == x && inv_49_1(x, y, z) == y &&
  //     inv_49_2(x, y, z) == z) -- assume10QPpred.vpr@24.9--24.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_49_0(x, y, z), inv_49_1(x, y, z), inv_49_2(x, y, z) } (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) ==> inv_49_0(x, y, z) == x && inv_49_1(x, y, z) == y && inv_49_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_21_1: Ref, y_21: Ref, z_21: Ref ::
      { (inv_49_0(x_21_1, y_21, z_21): Ref), (inv_49_1(x_21_1, y_21, z_21): Ref), (inv_49_2(x_21_1, y_21, z_21): Ref) }
      xs5[(inv_49_0(x_21_1, y_21, z_21): Ref)] && (ys5[(inv_49_1(x_21_1, y_21, z_21): Ref)] && zs5[(inv_49_2(x_21_1, y_21, z_21): Ref)]) ==> ((inv_49_0(x_21_1, y_21, z_21): Ref) == x_21_1 && (inv_49_1(x_21_1, y_21, z_21): Ref) == y_21) && (inv_49_2(x_21_1, y_21, z_21): Ref) == z_21
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_49_0(x, y, z), inv_49_1(x, y, z), inv_49_2(x, y, z) }
  //     (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_4((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q)) -- assume10QPpred.vpr@24.9--24.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_49_0(x, y, z), inv_49_1(x, y, z), inv_49_2(x, y, z) } (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) ==> perm(p(x, y, z)) >= __iar__assume_helper_4((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_23_1: Ref, y_23: Ref, z_23: Ref ::
      { (inv_49_0(x_23_1, y_23, z_23): Ref), (inv_49_1(x_23_1, y_23, z_23): Ref), (inv_49_2(x_23_1, y_23, z_23): Ref) }
      xs5[(inv_49_0(x_23_1, y_23, z_23): Ref)] && (ys5[(inv_49_1(x_23_1, y_23, z_23): Ref)] && zs5[(inv_49_2(x_23_1, y_23, z_23): Ref)]) ==> (__iar__assume_helper_4((xs1[(inv_45_0(x_23_1, y_23, z_23): Ref)] && (ys1[(inv_45_1(x_23_1, y_23, z_23): Ref)] && zs1[(inv_45_2(x_23_1, y_23, z_23): Ref)])) && ((x_23_1 == x_23_1 && y_23 == y_23) && z_23 == z_23), (xs2[(inv_46_0(x_23_1, y_23, z_23): Ref)] && (ys2[(inv_46_1(x_23_1, y_23, z_23): Ref)] && zs2[(inv_46_2(x_23_1, y_23, z_23): Ref)])) && ((x_23_1 == x_23_1 && y_23 == y_23) && z_23 == z_23), (xs3[(inv_47_0(x_23_1, y_23, z_23): Ref)] && (ys3[(inv_47_1(x_23_1, y_23, z_23): Ref)] && zs3[(inv_47_2(x_23_1, y_23, z_23): Ref)])) && ((x_23_1 == x_23_1 && y_23 == y_23) && z_23 == z_23), (xs4[(inv_48_0(x_23_1, y_23, z_23): Ref)] && (ys4[(inv_48_1(x_23_1, y_23, z_23): Ref)] && zs4[(inv_48_2(x_23_1, y_23, z_23): Ref)])) && ((x_23_1 == x_23_1 && y_23 == y_23) && z_23 == z_23), q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_23_1, y_23, z_23)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x6: Ref, y6: Ref, z6: Ref ::
  //     { p(x6, y6, z6) }
  //     (x6 in xs6) && ((y6 in ys6) && (z6 in zs6)) ==>
  //     inv_50_0(x6, y6, z6) == x6 && inv_50_1(x6, y6, z6) == y6 &&
  //     inv_50_2(x6, y6, z6) == z6) -- assume10QPpred.vpr@25.9--25.122
    
    // -- Check definedness of (forall x6: Ref, y6: Ref, z6: Ref :: { p(x6, y6, z6) } (x6 in xs6) && ((y6 in ys6) && (z6 in zs6)) ==> inv_50_0(x6, y6, z6) == x6 && inv_50_1(x6, y6, z6) == y6 && inv_50_2(x6, y6, z6) == z6)
      if (*) {
        assume false;
      }
    assume (forall x6_1_1: Ref, y6_1: Ref, z6_1: Ref ::
      { Heap[null, p_14(x6_1_1, y6_1, z6_1)] }
      xs6[x6_1_1] && (ys6[y6_1] && zs6[z6_1]) ==> ((inv_50_0(x6_1_1, y6_1, z6_1): Ref) == x6_1_1 && (inv_50_1(x6_1_1, y6_1, z6_1): Ref) == y6_1) && (inv_50_2(x6_1_1, y6_1, z6_1): Ref) == z6_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_50_0(x, y, z), inv_50_1(x, y, z), inv_50_2(x, y, z) }
  //     (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) ==>
  //     inv_50_0(x, y, z) == x && inv_50_1(x, y, z) == y &&
  //     inv_50_2(x, y, z) == z) -- assume10QPpred.vpr@25.9--25.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_50_0(x, y, z), inv_50_1(x, y, z), inv_50_2(x, y, z) } (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) ==> inv_50_0(x, y, z) == x && inv_50_1(x, y, z) == y && inv_50_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_25_2: Ref, y_25: Ref, z_25_1: Ref ::
      { (inv_50_0(x_25_2, y_25, z_25_1): Ref), (inv_50_1(x_25_2, y_25, z_25_1): Ref), (inv_50_2(x_25_2, y_25, z_25_1): Ref) }
      xs6[(inv_50_0(x_25_2, y_25, z_25_1): Ref)] && (ys6[(inv_50_1(x_25_2, y_25, z_25_1): Ref)] && zs6[(inv_50_2(x_25_2, y_25, z_25_1): Ref)]) ==> ((inv_50_0(x_25_2, y_25, z_25_1): Ref) == x_25_2 && (inv_50_1(x_25_2, y_25, z_25_1): Ref) == y_25) && (inv_50_2(x_25_2, y_25, z_25_1): Ref) == z_25_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_50_0(x, y, z), inv_50_1(x, y, z), inv_50_2(x, y, z) }
  //     (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_5((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q)) -- assume10QPpred.vpr@25.9--25.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_50_0(x, y, z), inv_50_1(x, y, z), inv_50_2(x, y, z) } (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) ==> perm(p(x, y, z)) >= __iar__assume_helper_5((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_27_1: Ref, y_27: Ref, z_27: Ref ::
      { (inv_50_0(x_27_1, y_27, z_27): Ref), (inv_50_1(x_27_1, y_27, z_27): Ref), (inv_50_2(x_27_1, y_27, z_27): Ref) }
      xs6[(inv_50_0(x_27_1, y_27, z_27): Ref)] && (ys6[(inv_50_1(x_27_1, y_27, z_27): Ref)] && zs6[(inv_50_2(x_27_1, y_27, z_27): Ref)]) ==> (__iar__assume_helper_5((xs1[(inv_45_0(x_27_1, y_27, z_27): Ref)] && (ys1[(inv_45_1(x_27_1, y_27, z_27): Ref)] && zs1[(inv_45_2(x_27_1, y_27, z_27): Ref)])) && ((x_27_1 == x_27_1 && y_27 == y_27) && z_27 == z_27), (xs2[(inv_46_0(x_27_1, y_27, z_27): Ref)] && (ys2[(inv_46_1(x_27_1, y_27, z_27): Ref)] && zs2[(inv_46_2(x_27_1, y_27, z_27): Ref)])) && ((x_27_1 == x_27_1 && y_27 == y_27) && z_27 == z_27), (xs3[(inv_47_0(x_27_1, y_27, z_27): Ref)] && (ys3[(inv_47_1(x_27_1, y_27, z_27): Ref)] && zs3[(inv_47_2(x_27_1, y_27, z_27): Ref)])) && ((x_27_1 == x_27_1 && y_27 == y_27) && z_27 == z_27), (xs4[(inv_48_0(x_27_1, y_27, z_27): Ref)] && (ys4[(inv_48_1(x_27_1, y_27, z_27): Ref)] && zs4[(inv_48_2(x_27_1, y_27, z_27): Ref)])) && ((x_27_1 == x_27_1 && y_27 == y_27) && z_27 == z_27), (xs5[(inv_49_0(x_27_1, y_27, z_27): Ref)] && (ys5[(inv_49_1(x_27_1, y_27, z_27): Ref)] && zs5[(inv_49_2(x_27_1, y_27, z_27): Ref)])) && ((x_27_1 == x_27_1 && y_27 == y_27) && z_27 == z_27), q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_27_1, y_27, z_27)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x7: Ref, y7: Ref, z7: Ref ::
  //     { p(x7, y7, z7) }
  //     (x7 in xs7) && ((y7 in ys7) && (z7 in zs7)) ==>
  //     inv_51_0(x7, y7, z7) == x7 && inv_51_1(x7, y7, z7) == y7 &&
  //     inv_51_2(x7, y7, z7) == z7) -- assume10QPpred.vpr@26.9--26.122
    
    // -- Check definedness of (forall x7: Ref, y7: Ref, z7: Ref :: { p(x7, y7, z7) } (x7 in xs7) && ((y7 in ys7) && (z7 in zs7)) ==> inv_51_0(x7, y7, z7) == x7 && inv_51_1(x7, y7, z7) == y7 && inv_51_2(x7, y7, z7) == z7)
      if (*) {
        assume false;
      }
    assume (forall x7_1: Ref, y7_1: Ref, z7_1: Ref ::
      { Heap[null, p_14(x7_1, y7_1, z7_1)] }
      xs7[x7_1] && (ys7[y7_1] && zs7[z7_1]) ==> ((inv_51_0(x7_1, y7_1, z7_1): Ref) == x7_1 && (inv_51_1(x7_1, y7_1, z7_1): Ref) == y7_1) && (inv_51_2(x7_1, y7_1, z7_1): Ref) == z7_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_51_0(x, y, z), inv_51_1(x, y, z), inv_51_2(x, y, z) }
  //     (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) ==>
  //     inv_51_0(x, y, z) == x && inv_51_1(x, y, z) == y &&
  //     inv_51_2(x, y, z) == z) -- assume10QPpred.vpr@26.9--26.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_51_0(x, y, z), inv_51_1(x, y, z), inv_51_2(x, y, z) } (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) ==> inv_51_0(x, y, z) == x && inv_51_1(x, y, z) == y && inv_51_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_29_1: Ref, y_29: Ref, z_29: Ref ::
      { (inv_51_0(x_29_1, y_29, z_29): Ref), (inv_51_1(x_29_1, y_29, z_29): Ref), (inv_51_2(x_29_1, y_29, z_29): Ref) }
      xs7[(inv_51_0(x_29_1, y_29, z_29): Ref)] && (ys7[(inv_51_1(x_29_1, y_29, z_29): Ref)] && zs7[(inv_51_2(x_29_1, y_29, z_29): Ref)]) ==> ((inv_51_0(x_29_1, y_29, z_29): Ref) == x_29_1 && (inv_51_1(x_29_1, y_29, z_29): Ref) == y_29) && (inv_51_2(x_29_1, y_29, z_29): Ref) == z_29
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_51_0(x, y, z), inv_51_1(x, y, z), inv_51_2(x, y, z) }
  //     (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_6((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q, q)) -- assume10QPpred.vpr@26.9--26.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_51_0(x, y, z), inv_51_1(x, y, z), inv_51_2(x, y, z) } (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) ==> perm(p(x, y, z)) >= __iar__assume_helper_6((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) && (x == x && y == y && z == z), q, q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_31_1: Ref, y_31: Ref, z_31: Ref ::
      { (inv_51_0(x_31_1, y_31, z_31): Ref), (inv_51_1(x_31_1, y_31, z_31): Ref), (inv_51_2(x_31_1, y_31, z_31): Ref) }
      xs7[(inv_51_0(x_31_1, y_31, z_31): Ref)] && (ys7[(inv_51_1(x_31_1, y_31, z_31): Ref)] && zs7[(inv_51_2(x_31_1, y_31, z_31): Ref)]) ==> (__iar__assume_helper_6((xs1[(inv_45_0(x_31_1, y_31, z_31): Ref)] && (ys1[(inv_45_1(x_31_1, y_31, z_31): Ref)] && zs1[(inv_45_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), (xs2[(inv_46_0(x_31_1, y_31, z_31): Ref)] && (ys2[(inv_46_1(x_31_1, y_31, z_31): Ref)] && zs2[(inv_46_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), (xs3[(inv_47_0(x_31_1, y_31, z_31): Ref)] && (ys3[(inv_47_1(x_31_1, y_31, z_31): Ref)] && zs3[(inv_47_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), (xs4[(inv_48_0(x_31_1, y_31, z_31): Ref)] && (ys4[(inv_48_1(x_31_1, y_31, z_31): Ref)] && zs4[(inv_48_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), (xs5[(inv_49_0(x_31_1, y_31, z_31): Ref)] && (ys5[(inv_49_1(x_31_1, y_31, z_31): Ref)] && zs5[(inv_49_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), (xs6[(inv_50_0(x_31_1, y_31, z_31): Ref)] && (ys6[(inv_50_1(x_31_1, y_31, z_31): Ref)] && zs6[(inv_50_2(x_31_1, y_31, z_31): Ref)])) && ((x_31_1 == x_31_1 && y_31 == y_31) && z_31 == z_31), q_1, q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_31_1, y_31, z_31)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x8: Ref, y8: Ref, z8: Ref ::
  //     { p(x8, y8, z8) }
  //     (x8 in xs8) && ((y8 in ys8) && (z8 in zs8)) ==>
  //     inv_52_0(x8, y8, z8) == x8 && inv_52_1(x8, y8, z8) == y8 &&
  //     inv_52_2(x8, y8, z8) == z8) -- assume10QPpred.vpr@27.9--27.122
    
    // -- Check definedness of (forall x8: Ref, y8: Ref, z8: Ref :: { p(x8, y8, z8) } (x8 in xs8) && ((y8 in ys8) && (z8 in zs8)) ==> inv_52_0(x8, y8, z8) == x8 && inv_52_1(x8, y8, z8) == y8 && inv_52_2(x8, y8, z8) == z8)
      if (*) {
        assume false;
      }
    assume (forall x8_1: Ref, y8_1: Ref, z8_1: Ref ::
      { Heap[null, p_14(x8_1, y8_1, z8_1)] }
      xs8[x8_1] && (ys8[y8_1] && zs8[z8_1]) ==> ((inv_52_0(x8_1, y8_1, z8_1): Ref) == x8_1 && (inv_52_1(x8_1, y8_1, z8_1): Ref) == y8_1) && (inv_52_2(x8_1, y8_1, z8_1): Ref) == z8_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_52_0(x, y, z), inv_52_1(x, y, z), inv_52_2(x, y, z) }
  //     (inv_52_0(x, y, z) in xs8) &&
  //     ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) ==>
  //     inv_52_0(x, y, z) == x && inv_52_1(x, y, z) == y &&
  //     inv_52_2(x, y, z) == z) -- assume10QPpred.vpr@27.9--27.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_52_0(x, y, z), inv_52_1(x, y, z), inv_52_2(x, y, z) } (inv_52_0(x, y, z) in xs8) && ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) ==> inv_52_0(x, y, z) == x && inv_52_1(x, y, z) == y && inv_52_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_33_2: Ref, y_33: Ref, z_33: Ref ::
      { (inv_52_0(x_33_2, y_33, z_33): Ref), (inv_52_1(x_33_2, y_33, z_33): Ref), (inv_52_2(x_33_2, y_33, z_33): Ref) }
      xs8[(inv_52_0(x_33_2, y_33, z_33): Ref)] && (ys8[(inv_52_1(x_33_2, y_33, z_33): Ref)] && zs8[(inv_52_2(x_33_2, y_33, z_33): Ref)]) ==> ((inv_52_0(x_33_2, y_33, z_33): Ref) == x_33_2 && (inv_52_1(x_33_2, y_33, z_33): Ref) == y_33) && (inv_52_2(x_33_2, y_33, z_33): Ref) == z_33
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_52_0(x, y, z), inv_52_1(x, y, z), inv_52_2(x, y, z) }
  //     (inv_52_0(x, y, z) in xs8) &&
  //     ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_7((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) &&
  //     (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q, q, q)) -- assume10QPpred.vpr@27.9--27.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_52_0(x, y, z), inv_52_1(x, y, z), inv_52_2(x, y, z) } (inv_52_0(x, y, z) in xs8) && ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) ==> perm(p(x, y, z)) >= __iar__assume_helper_7((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) && (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) && (x == x && y == y && z == z), q, q, q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_35_2: Ref, y_35: Ref, z_35: Ref ::
      { (inv_52_0(x_35_2, y_35, z_35): Ref), (inv_52_1(x_35_2, y_35, z_35): Ref), (inv_52_2(x_35_2, y_35, z_35): Ref) }
      xs8[(inv_52_0(x_35_2, y_35, z_35): Ref)] && (ys8[(inv_52_1(x_35_2, y_35, z_35): Ref)] && zs8[(inv_52_2(x_35_2, y_35, z_35): Ref)]) ==> (__iar__assume_helper_7((xs1[(inv_45_0(x_35_2, y_35, z_35): Ref)] && (ys1[(inv_45_1(x_35_2, y_35, z_35): Ref)] && zs1[(inv_45_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs2[(inv_46_0(x_35_2, y_35, z_35): Ref)] && (ys2[(inv_46_1(x_35_2, y_35, z_35): Ref)] && zs2[(inv_46_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs3[(inv_47_0(x_35_2, y_35, z_35): Ref)] && (ys3[(inv_47_1(x_35_2, y_35, z_35): Ref)] && zs3[(inv_47_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs4[(inv_48_0(x_35_2, y_35, z_35): Ref)] && (ys4[(inv_48_1(x_35_2, y_35, z_35): Ref)] && zs4[(inv_48_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs5[(inv_49_0(x_35_2, y_35, z_35): Ref)] && (ys5[(inv_49_1(x_35_2, y_35, z_35): Ref)] && zs5[(inv_49_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs6[(inv_50_0(x_35_2, y_35, z_35): Ref)] && (ys6[(inv_50_1(x_35_2, y_35, z_35): Ref)] && zs6[(inv_50_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), (xs7[(inv_51_0(x_35_2, y_35, z_35): Ref)] && (ys7[(inv_51_1(x_35_2, y_35, z_35): Ref)] && zs7[(inv_51_2(x_35_2, y_35, z_35): Ref)])) && ((x_35_2 == x_35_2 && y_35 == y_35) && z_35 == z_35), q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_35_2, y_35, z_35)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x9: Ref, y9: Ref, z9: Ref ::
  //     { p(x9, y9, z9) }
  //     (x9 in xs9) && ((y9 in ys9) && (z9 in zs9)) ==>
  //     inv_53_0(x9, y9, z9) == x9 && inv_53_1(x9, y9, z9) == y9 &&
  //     inv_53_2(x9, y9, z9) == z9) -- assume10QPpred.vpr@28.9--28.122
    
    // -- Check definedness of (forall x9: Ref, y9: Ref, z9: Ref :: { p(x9, y9, z9) } (x9 in xs9) && ((y9 in ys9) && (z9 in zs9)) ==> inv_53_0(x9, y9, z9) == x9 && inv_53_1(x9, y9, z9) == y9 && inv_53_2(x9, y9, z9) == z9)
      if (*) {
        assume false;
      }
    assume (forall x9_1: Ref, y9_1: Ref, z9_1: Ref ::
      { Heap[null, p_14(x9_1, y9_1, z9_1)] }
      xs9[x9_1] && (ys9[y9_1] && zs9[z9_1]) ==> ((inv_53_0(x9_1, y9_1, z9_1): Ref) == x9_1 && (inv_53_1(x9_1, y9_1, z9_1): Ref) == y9_1) && (inv_53_2(x9_1, y9_1, z9_1): Ref) == z9_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_53_0(x, y, z), inv_53_1(x, y, z), inv_53_2(x, y, z) }
  //     (inv_53_0(x, y, z) in xs9) &&
  //     ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) ==>
  //     inv_53_0(x, y, z) == x && inv_53_1(x, y, z) == y &&
  //     inv_53_2(x, y, z) == z) -- assume10QPpred.vpr@28.9--28.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_53_0(x, y, z), inv_53_1(x, y, z), inv_53_2(x, y, z) } (inv_53_0(x, y, z) in xs9) && ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) ==> inv_53_0(x, y, z) == x && inv_53_1(x, y, z) == y && inv_53_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_37_2: Ref, y_37: Ref, z_37: Ref ::
      { (inv_53_0(x_37_2, y_37, z_37): Ref), (inv_53_1(x_37_2, y_37, z_37): Ref), (inv_53_2(x_37_2, y_37, z_37): Ref) }
      xs9[(inv_53_0(x_37_2, y_37, z_37): Ref)] && (ys9[(inv_53_1(x_37_2, y_37, z_37): Ref)] && zs9[(inv_53_2(x_37_2, y_37, z_37): Ref)]) ==> ((inv_53_0(x_37_2, y_37, z_37): Ref) == x_37_2 && (inv_53_1(x_37_2, y_37, z_37): Ref) == y_37) && (inv_53_2(x_37_2, y_37, z_37): Ref) == z_37
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_53_0(x, y, z), inv_53_1(x, y, z), inv_53_2(x, y, z) }
  //     (inv_53_0(x, y, z) in xs9) &&
  //     ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_8((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) &&
  //     (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) &&
  //     (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) &&
  //     ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q)) -- assume10QPpred.vpr@28.9--28.122
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_53_0(x, y, z), inv_53_1(x, y, z), inv_53_2(x, y, z) } (inv_53_0(x, y, z) in xs9) && ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) ==> perm(p(x, y, z)) >= __iar__assume_helper_8((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) && (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) && (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) && ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) && (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_39_1: Ref, y_39: Ref, z_39: Ref ::
      { (inv_53_0(x_39_1, y_39, z_39): Ref), (inv_53_1(x_39_1, y_39, z_39): Ref), (inv_53_2(x_39_1, y_39, z_39): Ref) }
      xs9[(inv_53_0(x_39_1, y_39, z_39): Ref)] && (ys9[(inv_53_1(x_39_1, y_39, z_39): Ref)] && zs9[(inv_53_2(x_39_1, y_39, z_39): Ref)]) ==> (__iar__assume_helper_8((xs1[(inv_45_0(x_39_1, y_39, z_39): Ref)] && (ys1[(inv_45_1(x_39_1, y_39, z_39): Ref)] && zs1[(inv_45_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs2[(inv_46_0(x_39_1, y_39, z_39): Ref)] && (ys2[(inv_46_1(x_39_1, y_39, z_39): Ref)] && zs2[(inv_46_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs3[(inv_47_0(x_39_1, y_39, z_39): Ref)] && (ys3[(inv_47_1(x_39_1, y_39, z_39): Ref)] && zs3[(inv_47_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs4[(inv_48_0(x_39_1, y_39, z_39): Ref)] && (ys4[(inv_48_1(x_39_1, y_39, z_39): Ref)] && zs4[(inv_48_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs5[(inv_49_0(x_39_1, y_39, z_39): Ref)] && (ys5[(inv_49_1(x_39_1, y_39, z_39): Ref)] && zs5[(inv_49_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs6[(inv_50_0(x_39_1, y_39, z_39): Ref)] && (ys6[(inv_50_1(x_39_1, y_39, z_39): Ref)] && zs6[(inv_50_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs7[(inv_51_0(x_39_1, y_39, z_39): Ref)] && (ys7[(inv_51_1(x_39_1, y_39, z_39): Ref)] && zs7[(inv_51_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), (xs8[(inv_52_0(x_39_1, y_39, z_39): Ref)] && (ys8[(inv_52_1(x_39_1, y_39, z_39): Ref)] && zs8[(inv_52_2(x_39_1, y_39, z_39): Ref)])) && ((x_39_1 == x_39_1 && y_39 == y_39) && z_39 == z_39), q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_39_1, y_39, z_39)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x10: Ref, y10: Ref, z10: Ref ::
  //     { p(x10, y10, z10) }
  //     (x10 in xs10) && ((y10 in ys10) && (z10 in zs10)) ==>
  //     inv_54_0(x10, y10, z10) == x10 && inv_54_1(x10, y10, z10) == y10 &&
  //     inv_54_2(x10, y10, z10) == z10) -- assume10QPpred.vpr@29.9--29.137
    
    // -- Check definedness of (forall x10: Ref, y10: Ref, z10: Ref :: { p(x10, y10, z10) } (x10 in xs10) && ((y10 in ys10) && (z10 in zs10)) ==> inv_54_0(x10, y10, z10) == x10 && inv_54_1(x10, y10, z10) == y10 && inv_54_2(x10, y10, z10) == z10)
      if (*) {
        assume false;
      }
    assume (forall x10_1: Ref, y10_1: Ref, z10_1: Ref ::
      { Heap[null, p_14(x10_1, y10_1, z10_1)] }
      xs10[x10_1] && (ys10[y10_1] && zs10[z10_1]) ==> ((inv_54_0(x10_1, y10_1, z10_1): Ref) == x10_1 && (inv_54_1(x10_1, y10_1, z10_1): Ref) == y10_1) && (inv_54_2(x10_1, y10_1, z10_1): Ref) == z10_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_54_0(x, y, z), inv_54_1(x, y, z), inv_54_2(x, y, z) }
  //     (inv_54_0(x, y, z) in xs10) &&
  //     ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) ==>
  //     inv_54_0(x, y, z) == x && inv_54_1(x, y, z) == y &&
  //     inv_54_2(x, y, z) == z) -- assume10QPpred.vpr@29.9--29.137
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_54_0(x, y, z), inv_54_1(x, y, z), inv_54_2(x, y, z) } (inv_54_0(x, y, z) in xs10) && ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) ==> inv_54_0(x, y, z) == x && inv_54_1(x, y, z) == y && inv_54_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_41_1: Ref, y_41: Ref, z_41: Ref ::
      { (inv_54_0(x_41_1, y_41, z_41): Ref), (inv_54_1(x_41_1, y_41, z_41): Ref), (inv_54_2(x_41_1, y_41, z_41): Ref) }
      xs10[(inv_54_0(x_41_1, y_41, z_41): Ref)] && (ys10[(inv_54_1(x_41_1, y_41, z_41): Ref)] && zs10[(inv_54_2(x_41_1, y_41, z_41): Ref)]) ==> ((inv_54_0(x_41_1, y_41, z_41): Ref) == x_41_1 && (inv_54_1(x_41_1, y_41, z_41): Ref) == y_41) && (inv_54_2(x_41_1, y_41, z_41): Ref) == z_41
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_54_0(x, y, z), inv_54_1(x, y, z), inv_54_2(x, y, z) }
  //     (inv_54_0(x, y, z) in xs10) &&
  //     ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_9((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) &&
  //     (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) &&
  //     (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) &&
  //     ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) &&
  //     (x == x && y == y && z == z), (inv_53_0(x, y, z) in xs9) &&
  //     ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q, q)) -- assume10QPpred.vpr@29.9--29.137
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_54_0(x, y, z), inv_54_1(x, y, z), inv_54_2(x, y, z) } (inv_54_0(x, y, z) in xs10) && ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) ==> perm(p(x, y, z)) >= __iar__assume_helper_9((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) && (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) && (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) && ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) && (x == x && y == y && z == z), (inv_53_0(x, y, z) in xs9) && ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) && (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_43_1: Ref, y_43: Ref, z_43: Ref ::
      { (inv_54_0(x_43_1, y_43, z_43): Ref), (inv_54_1(x_43_1, y_43, z_43): Ref), (inv_54_2(x_43_1, y_43, z_43): Ref) }
      xs10[(inv_54_0(x_43_1, y_43, z_43): Ref)] && (ys10[(inv_54_1(x_43_1, y_43, z_43): Ref)] && zs10[(inv_54_2(x_43_1, y_43, z_43): Ref)]) ==> (__iar__assume_helper_9((xs1[(inv_45_0(x_43_1, y_43, z_43): Ref)] && (ys1[(inv_45_1(x_43_1, y_43, z_43): Ref)] && zs1[(inv_45_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs2[(inv_46_0(x_43_1, y_43, z_43): Ref)] && (ys2[(inv_46_1(x_43_1, y_43, z_43): Ref)] && zs2[(inv_46_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs3[(inv_47_0(x_43_1, y_43, z_43): Ref)] && (ys3[(inv_47_1(x_43_1, y_43, z_43): Ref)] && zs3[(inv_47_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs4[(inv_48_0(x_43_1, y_43, z_43): Ref)] && (ys4[(inv_48_1(x_43_1, y_43, z_43): Ref)] && zs4[(inv_48_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs5[(inv_49_0(x_43_1, y_43, z_43): Ref)] && (ys5[(inv_49_1(x_43_1, y_43, z_43): Ref)] && zs5[(inv_49_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs6[(inv_50_0(x_43_1, y_43, z_43): Ref)] && (ys6[(inv_50_1(x_43_1, y_43, z_43): Ref)] && zs6[(inv_50_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs7[(inv_51_0(x_43_1, y_43, z_43): Ref)] && (ys7[(inv_51_1(x_43_1, y_43, z_43): Ref)] && zs7[(inv_51_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs8[(inv_52_0(x_43_1, y_43, z_43): Ref)] && (ys8[(inv_52_1(x_43_1, y_43, z_43): Ref)] && zs8[(inv_52_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), (xs9[(inv_53_0(x_43_1, y_43, z_43): Ref)] && (ys9[(inv_53_1(x_43_1, y_43, z_43): Ref)] && zs9[(inv_53_2(x_43_1, y_43, z_43): Ref)])) && ((x_43_1 == x_43_1 && y_43 == y_43) && z_43 == z_43), q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_43_1, y_43, z_43)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x11: Ref, y11: Ref, z11: Ref ::
  //     { p(x11, y11, z11) }
  //     (x11 in xs11) && ((y11 in ys11) && (z11 in zs11)) ==>
  //     inv_55_0(x11, y11, z11) == x11 && inv_55_1(x11, y11, z11) == y11 &&
  //     inv_55_2(x11, y11, z11) == z11) -- assume10QPpred.vpr@30.9--30.137
    
    // -- Check definedness of (forall x11: Ref, y11: Ref, z11: Ref :: { p(x11, y11, z11) } (x11 in xs11) && ((y11 in ys11) && (z11 in zs11)) ==> inv_55_0(x11, y11, z11) == x11 && inv_55_1(x11, y11, z11) == y11 && inv_55_2(x11, y11, z11) == z11)
      if (*) {
        assume false;
      }
    assume (forall x11_1: Ref, y11_1: Ref, z11_1: Ref ::
      { Heap[null, p_14(x11_1, y11_1, z11_1)] }
      xs11[x11_1] && (ys11[y11_1] && zs11[z11_1]) ==> ((inv_55_0(x11_1, y11_1, z11_1): Ref) == x11_1 && (inv_55_1(x11_1, y11_1, z11_1): Ref) == y11_1) && (inv_55_2(x11_1, y11_1, z11_1): Ref) == z11_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_55_0(x, y, z), inv_55_1(x, y, z), inv_55_2(x, y, z) }
  //     (inv_55_0(x, y, z) in xs11) &&
  //     ((inv_55_1(x, y, z) in ys11) && (inv_55_2(x, y, z) in zs11)) ==>
  //     inv_55_0(x, y, z) == x && inv_55_1(x, y, z) == y &&
  //     inv_55_2(x, y, z) == z) -- assume10QPpred.vpr@30.9--30.137
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_55_0(x, y, z), inv_55_1(x, y, z), inv_55_2(x, y, z) } (inv_55_0(x, y, z) in xs11) && ((inv_55_1(x, y, z) in ys11) && (inv_55_2(x, y, z) in zs11)) ==> inv_55_0(x, y, z) == x && inv_55_1(x, y, z) == y && inv_55_2(x, y, z) == z)
      if (*) {
        assume false;
      }
    assume (forall x_45_2: Ref, y_45: Ref, z_45: Ref ::
      { (inv_55_0(x_45_2, y_45, z_45): Ref), (inv_55_1(x_45_2, y_45, z_45): Ref), (inv_55_2(x_45_2, y_45, z_45): Ref) }
      xs11[(inv_55_0(x_45_2, y_45, z_45): Ref)] && (ys11[(inv_55_1(x_45_2, y_45, z_45): Ref)] && zs11[(inv_55_2(x_45_2, y_45, z_45): Ref)]) ==> ((inv_55_0(x_45_2, y_45, z_45): Ref) == x_45_2 && (inv_55_1(x_45_2, y_45, z_45): Ref) == y_45) && (inv_55_2(x_45_2, y_45, z_45): Ref) == z_45
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { inv_55_0(x, y, z), inv_55_1(x, y, z), inv_55_2(x, y, z) }
  //     (inv_55_0(x, y, z) in xs11) &&
  //     ((inv_55_1(x, y, z) in ys11) && (inv_55_2(x, y, z) in zs11)) ==>
  //     perm(p(x, y, z)) >=
  //     __iar__assume_helper_10((inv_45_0(x, y, z) in xs1) &&
  //     ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) &&
  //     (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) &&
  //     ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) &&
  //     (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) &&
  //     ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) &&
  //     (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) &&
  //     ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) &&
  //     (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) &&
  //     ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) &&
  //     (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) &&
  //     ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) &&
  //     (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) &&
  //     ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) &&
  //     (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) &&
  //     ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) &&
  //     (x == x && y == y && z == z), (inv_53_0(x, y, z) in xs9) &&
  //     ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) &&
  //     (x == x && y == y && z == z), (inv_54_0(x, y, z) in xs10) &&
  //     ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) &&
  //     (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q, q, q)) -- assume10QPpred.vpr@30.9--30.137
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { inv_55_0(x, y, z), inv_55_1(x, y, z), inv_55_2(x, y, z) } (inv_55_0(x, y, z) in xs11) && ((inv_55_1(x, y, z) in ys11) && (inv_55_2(x, y, z) in zs11)) ==> perm(p(x, y, z)) >= __iar__assume_helper_10((inv_45_0(x, y, z) in xs1) && ((inv_45_1(x, y, z) in ys1) && (inv_45_2(x, y, z) in zs1)) && (x == x && y == y && z == z), (inv_46_0(x, y, z) in xs2) && ((inv_46_1(x, y, z) in ys2) && (inv_46_2(x, y, z) in zs2)) && (x == x && y == y && z == z), (inv_47_0(x, y, z) in xs3) && ((inv_47_1(x, y, z) in ys3) && (inv_47_2(x, y, z) in zs3)) && (x == x && y == y && z == z), (inv_48_0(x, y, z) in xs4) && ((inv_48_1(x, y, z) in ys4) && (inv_48_2(x, y, z) in zs4)) && (x == x && y == y && z == z), (inv_49_0(x, y, z) in xs5) && ((inv_49_1(x, y, z) in ys5) && (inv_49_2(x, y, z) in zs5)) && (x == x && y == y && z == z), (inv_50_0(x, y, z) in xs6) && ((inv_50_1(x, y, z) in ys6) && (inv_50_2(x, y, z) in zs6)) && (x == x && y == y && z == z), (inv_51_0(x, y, z) in xs7) && ((inv_51_1(x, y, z) in ys7) && (inv_51_2(x, y, z) in zs7)) && (x == x && y == y && z == z), (inv_52_0(x, y, z) in xs8) && ((inv_52_1(x, y, z) in ys8) && (inv_52_2(x, y, z) in zs8)) && (x == x && y == y && z == z), (inv_53_0(x, y, z) in xs9) && ((inv_53_1(x, y, z) in ys9) && (inv_53_2(x, y, z) in zs9)) && (x == x && y == y && z == z), (inv_54_0(x, y, z) in xs10) && ((inv_54_1(x, y, z) in ys10) && (inv_54_2(x, y, z) in zs10)) && (x == x && y == y && z == z), q, q, q, q, q, q, q, q, q, q, q))
      if (*) {
        assume false;
      }
    assume (forall x_47: Ref, y_47: Ref, z_47: Ref ::
      { (inv_55_0(x_47, y_47, z_47): Ref), (inv_55_1(x_47, y_47, z_47): Ref), (inv_55_2(x_47, y_47, z_47): Ref) }
      xs11[(inv_55_0(x_47, y_47, z_47): Ref)] && (ys11[(inv_55_1(x_47, y_47, z_47): Ref)] && zs11[(inv_55_2(x_47, y_47, z_47): Ref)]) ==> (__iar__assume_helper_10((xs1[(inv_45_0(x_47, y_47, z_47): Ref)] && (ys1[(inv_45_1(x_47, y_47, z_47): Ref)] && zs1[(inv_45_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs2[(inv_46_0(x_47, y_47, z_47): Ref)] && (ys2[(inv_46_1(x_47, y_47, z_47): Ref)] && zs2[(inv_46_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs3[(inv_47_0(x_47, y_47, z_47): Ref)] && (ys3[(inv_47_1(x_47, y_47, z_47): Ref)] && zs3[(inv_47_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs4[(inv_48_0(x_47, y_47, z_47): Ref)] && (ys4[(inv_48_1(x_47, y_47, z_47): Ref)] && zs4[(inv_48_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs5[(inv_49_0(x_47, y_47, z_47): Ref)] && (ys5[(inv_49_1(x_47, y_47, z_47): Ref)] && zs5[(inv_49_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs6[(inv_50_0(x_47, y_47, z_47): Ref)] && (ys6[(inv_50_1(x_47, y_47, z_47): Ref)] && zs6[(inv_50_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs7[(inv_51_0(x_47, y_47, z_47): Ref)] && (ys7[(inv_51_1(x_47, y_47, z_47): Ref)] && zs7[(inv_51_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs8[(inv_52_0(x_47, y_47, z_47): Ref)] && (ys8[(inv_52_1(x_47, y_47, z_47): Ref)] && zs8[(inv_52_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs9[(inv_53_0(x_47, y_47, z_47): Ref)] && (ys9[(inv_53_1(x_47, y_47, z_47): Ref)] && zs9[(inv_53_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), (xs10[(inv_54_0(x_47, y_47, z_47): Ref)] && (ys10[(inv_54_1(x_47, y_47, z_47): Ref)] && zs10[(inv_54_2(x_47, y_47, z_47): Ref)])) && ((x_47 == x_47 && y_47 == y_47) && z_47 == z_47), q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1, q_1): Perm) <= Mask[null, p_14(x_47, y_47, z_47)]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a in xs1) -- assume10QPpred.vpr@36.10--36.18
    assume xs1[a_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b in ys1) -- assume10QPpred.vpr@36.22--36.30
    assume ys1[b_24];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (c in zs1) -- assume10QPpred.vpr@36.34--36.42
    assume zs1[c];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a in xs2) -- assume10QPpred.vpr@37.10--37.18
    assume xs2[a_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b in ys2) -- assume10QPpred.vpr@37.22--37.30
    assume ys2[b_24];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (c in zs2) -- assume10QPpred.vpr@37.34--37.42
    assume zs2[c];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(p(a, b, c), q) -- assume10QPpred.vpr@40.3--40.26
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := q_1;
    assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPpred.vpr@40.10--40.26) [149711]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access p(a, b, c) (assume10QPpred.vpr@40.10--40.26) [149712]"}
        perm <= AssertMask[null, p_14(a_2, b_24, c)];
    }
    AssertMask := AssertMask[null, p_14(a_2, b_24, c):=AssertMask[null, p_14(a_2, b_24, c)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert q > none ==> false -- assume10QPpred.vpr@43.3--43.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (NoPerm < q_1) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (assume10QPpred.vpr@43.10--43.28) [149713]"}
        false;
    }
    assume state(Heap, Mask);
}