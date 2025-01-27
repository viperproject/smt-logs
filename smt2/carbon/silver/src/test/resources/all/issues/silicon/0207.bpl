// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:22:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0207.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0207-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_51: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_51] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_51], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_21: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_21] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_21) ==> Heap[o_39, f_21] == ExhaleHeap[o_39, f_21]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_23: (Field A B), v: B ::
  { Heap[o_38, f_23:=v] }
  succHeap(Heap, Heap[o_38, f_23:=v])
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

function  neverTriggered1(r_1: Ref): bool;
function  neverTriggered2(r_1_1: Ref): bool;
function  neverTriggered3(r_3: Ref): bool;
function  neverTriggered4(r_5_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: length
// - height 0: set
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique nodes_1: Field NormalField (Set Ref);
axiom !IsPredicateField(nodes_1);
axiom !IsWandField(nodes_1);

// ==================================================
// Translation of function set
// ==================================================

// Uninterpreted function definitions
function  set_2(Heap: HeapType): Set Ref;
function  set'(Heap: HeapType): Set Ref;
axiom (forall Heap: HeapType ::
  { set_2(Heap) }
  set_2(Heap) == set'(Heap) && dummyFunction(set#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { set'(Heap) }
  dummyFunction(set#triggerStateless())
);

// Framing axioms
function  set#frame(frame: FrameType): Set Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), set'(Heap) }
  state(Heap, Mask) ==> set'(Heap) == set#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), set'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || set#trigger(EmptyFrame)) ==> Set#Card(set'(Heap)) == 0
);

// Trigger function (controlling recursive postconditions)
function  set#trigger(frame: FrameType): bool;

// State-independent trigger function
function  set#triggerStateless(): Set Ref;

// Check contract well-formedness and postcondition
procedure set#definedness() returns (Result: (Set Ref))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume Set#Card(Result) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length_1(Heap, this) }
  length_1(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length_1(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length_1(Heap, this) == Set#Card(Heap[this, nodes_1])
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, List(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in |this.nodes|)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, nodes_1]), CombineFrames(FrameFragment(List#condqp1(UnfoldingHeap, this)), FrameFragment(List#condqp2(UnfoldingHeap, this))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (0207.vpr@18.1--22.2) [80474]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, nodes_1:=UnfoldingMask[this, nodes_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource r.val might not be injective. (0207.vpr@18.1--22.2) [80475]"}
        (forall r_1: Ref, r_52: Ref ::
        
        (((r_1 != r_52 && UnfoldingHeap[this, nodes_1][r_1]) && UnfoldingHeap[this, nodes_1][r_52]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_52
      );
      
      // -- Define Inverse Function
        assume (forall r_1: Ref ::
          { UnfoldingHeap[r_1, val] } { QPMask[r_1, val] } { UnfoldingHeap[this, nodes_1][r_1] }
          UnfoldingHeap[this, nodes_1][r_1] && NoPerm < FullPerm ==> qpRange1(r_1) && invRecv1(r_1) == r_1
        );
        assume (forall o_9: Ref ::
          { invRecv1(o_9) }
          (UnfoldingHeap[this, nodes_1][invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_1: Ref ::
          { UnfoldingHeap[r_1, val] } { QPMask[r_1, val] } { UnfoldingHeap[this, nodes_1][r_1] }
          UnfoldingHeap[this, nodes_1][r_1] ==> r_1 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((UnfoldingHeap[this, nodes_1][invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, val] == UnfoldingMask[o_9, val] + FullPerm) && (!((UnfoldingHeap[this, nodes_1][invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == UnfoldingMask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource r.next might not be injective. (0207.vpr@18.1--22.2) [80476]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        
        (((r_1_1 != r_1_2 && UnfoldingHeap[this, nodes_1][r_1_1]) && UnfoldingHeap[this, nodes_1][r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2
      );
      
      // -- Define Inverse Function
        assume (forall r_1_1: Ref ::
          { UnfoldingHeap[r_1_1, next] } { QPMask[r_1_1, next] } { UnfoldingHeap[this, nodes_1][r_1_1] }
          UnfoldingHeap[this, nodes_1][r_1_1] && NoPerm < FullPerm ==> qpRange2(r_1_1) && invRecv2(r_1_1) == r_1_1
        );
        assume (forall o_9: Ref ::
          { invRecv2(o_9) }
          (UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_1_1: Ref ::
          { UnfoldingHeap[r_1_1, next] } { QPMask[r_1_1, next] } { UnfoldingHeap[this, nodes_1][r_1_1] }
          UnfoldingHeap[this, nodes_1][r_1_1] ==> r_1_1 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, next] == UnfoldingMask[o_9, next] + FullPerm) && (!((UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, next] == UnfoldingMask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall r_2: Ref ::
        { UnfoldingHeap[r_2, next] }
        UnfoldingHeap[this, nodes_1][r_2] && UnfoldingHeap[r_2, next] != null ==> UnfoldingHeap[this, nodes_1][UnfoldingHeap[r_2, next]]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.nodes (0207.vpr@18.1--22.2) [80477]"}
        HasDirectPerm(UnfoldingMask, this, nodes_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, nodes_1:=true]];
        // register all known folded permissions guarded by predicate List
        havoc newPMask;
        assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
          { newPMask[o_5, f_11] }
          Heap[null, List#sm(this)][o_5, f_11] ==> newPMask[o_5, f_11]
        );
        assume (forall r_3: Ref ::
          
          Heap[this, nodes_1][r_3] ==> newPMask[r_3, val]
        );
        Heap := Heap[null, List#sm(this):=newPMask];
        // register all known folded permissions guarded by predicate List
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, List#sm(this)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        assume (forall r_4_1: Ref ::
          
          Heap[this, nodes_1][r_4_1] ==> newPMask[r_4_1, next]
        );
        Heap := Heap[null, List#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Set#Card(Heap[this, nodes_1]);
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(this: Ref): Field PredicateType_List FrameType;
function  List#sm(this: Ref): Field PredicateType_List PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(List(this)) }
  PredicateMaskField(List(this)) == List#sm(this)
);
axiom (forall this: Ref ::
  { List(this) }
  IsPredicateField(List(this))
);
axiom (forall this: Ref ::
  { List(this) }
  getPredWandId(List(this)) == 0
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { List(this), List(this2) }
  List(this) == List(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { List#sm(this), List#sm(this2) }
  List#sm(this) == List#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { List#trigger(Heap, List(this)) }
  List#everUsed(List(this))
);

// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in this.nodes) } (r in this.nodes) ==> acc(r.val, write)) in predicate List
// ==================================================

function  List#condqp1(Heap: HeapType, this_2_1: Ref): int;
function  sk_List#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, nodes_1][sk_List#condqp1(List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this))] && NoPerm < FullPerm <==> Heap1Heap[this, nodes_1][sk_List#condqp1(List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this))] && NoPerm < FullPerm) && (Heap2Heap[this, nodes_1][sk_List#condqp1(List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this))] && NoPerm < FullPerm ==> Heap2Heap[sk_List#condqp1(List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this)), val] == Heap1Heap[sk_List#condqp1(List#condqp1(Heap2Heap, this), List#condqp1(Heap1Heap, this)), val]) ==> List#condqp1(Heap2Heap, this) == List#condqp1(Heap1Heap, this)
);

// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in this.nodes) } (r in this.nodes) ==> acc(r.next, write)) in predicate List
// ==================================================

function  List#condqp2(Heap: HeapType, this_2_1: Ref): int;
function  sk_List#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, nodes_1][sk_List#condqp2(List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this))] && NoPerm < FullPerm <==> Heap1Heap[this, nodes_1][sk_List#condqp2(List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this))] && NoPerm < FullPerm) && (Heap2Heap[this, nodes_1][sk_List#condqp2(List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this))] && NoPerm < FullPerm ==> Heap2Heap[sk_List#condqp2(List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this)), next] == Heap1Heap[sk_List#condqp2(List#condqp2(Heap2Heap, this), List#condqp2(Heap1Heap, this)), next]) ==> List#condqp2(Heap2Heap, this) == List#condqp2(Heap1Heap, this)
);

procedure List#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var r_24: Ref;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, nodes_1:=Mask[this, nodes_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in this.nodes) } (r in this.nodes) ==> acc(r.val, write))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (0207.vpr@11.1--16.2) [80478]"}
          HasDirectPerm(Mask, this, nodes_1);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource r.val might not be injective. (0207.vpr@11.1--16.2) [80479]"}
      (forall r_3: Ref, r_3_2: Ref ::
      
      (((r_3 != r_3_2 && Heap[this, nodes_1][r_3]) && Heap[this, nodes_1][r_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_3 != r_3_2
    );
    
    // -- Define Inverse Function
      assume (forall r_3: Ref ::
        { Heap[r_3, val] } { QPMask[r_3, val] } { Heap[this, nodes_1][r_3] }
        Heap[this, nodes_1][r_3] && NoPerm < FullPerm ==> qpRange3(r_3) && invRecv3(r_3) == r_3
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_3: Ref ::
        { Heap[r_3, val] } { QPMask[r_3, val] } { Heap[this, nodes_1][r_3] }
        Heap[this, nodes_1][r_3] ==> r_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in this.nodes) } (r in this.nodes) ==> acc(r.next, write))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (0207.vpr@11.1--16.2) [80480]"}
          HasDirectPerm(Mask, this, nodes_1);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource r.next might not be injective. (0207.vpr@11.1--16.2) [80481]"}
      (forall r_5_1: Ref, r_5_2: Ref ::
      
      (((r_5_1 != r_5_2 && Heap[this, nodes_1][r_5_1]) && Heap[this, nodes_1][r_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_5_1 != r_5_2
    );
    
    // -- Define Inverse Function
      assume (forall r_5_1: Ref ::
        { Heap[r_5_1, next] } { QPMask[r_5_1, next] } { Heap[this, nodes_1][r_5_1] }
        Heap[this, nodes_1][r_5_1] && NoPerm < FullPerm ==> qpRange4(r_5_1) && invRecv4(r_5_1) == r_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Heap[this, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_5_1: Ref ::
        { Heap[r_5_1, next] } { QPMask[r_5_1, next] } { Heap[this, nodes_1][r_5_1] }
        Heap[this, nodes_1][r_5_1] ==> r_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Heap[this, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((Heap[this, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { r.next } (r in this.nodes) && r.next != null ==> (r.next in this.nodes))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (0207.vpr@11.1--16.2) [80482]"}
          HasDirectPerm(Mask, this, nodes_1);
        if (Heap[this, nodes_1][r_24]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (0207.vpr@11.1--16.2) [80483]"}
            HasDirectPerm(Mask, r_24, next);
        }
        if (Heap[this, nodes_1][r_24] && Heap[r_24, next] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (0207.vpr@11.1--16.2) [80484]"}
            HasDirectPerm(Mask, r_24, next);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (0207.vpr@11.1--16.2) [80485]"}
            HasDirectPerm(Mask, this, nodes_1);
        }
        assume false;
      }
    assume (forall r_7: Ref ::
      { Heap[r_7, next] }
      Heap[this, nodes_1][r_7] && Heap[r_7, next] != null ==> Heap[this, nodes_1][Heap[r_7, next]]
    );
    assume state(Heap, Mask);
}