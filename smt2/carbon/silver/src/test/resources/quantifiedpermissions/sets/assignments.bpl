// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:13:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/assignments.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/assignments-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(z_1: Ref): bool;
function  neverTriggered2(z_3: Ref): bool;
function  neverTriggered3(z_4: Ref): bool;
function  neverTriggered4(z_1: Ref): bool;
function  neverTriggered5(z_1: Ref): bool;
function  neverTriggered6(z_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

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

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@8.12--8.49) [1266]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange1(z_1) && invRecv1(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@9.11--9.48) [1267]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { PostHeap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
        xs[z_3] && NoPerm < FullPerm ==> qpRange2(z_3) && invRecv2(z_3) == z_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { PostHeap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
        xs[z_3] ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == x
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (assignments.vpr@10.11--10.19) [1268]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == x;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: x.f := x -- assignments.vpr@11.3--11.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (assignments.vpr@11.3--11.11) [1269]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=x];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@9.11--9.48) [1270]"}
        (forall z_4: Ref, z_4_1: Ref ::
        { neverTriggered3(z_4), neverTriggered3(z_4_1) }
        (((z_4 != z_4_1 && xs[z_4]) && xs[z_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_4 != z_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access z.f (assignments.vpr@9.11--9.48) [1271]"}
        (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] ==> Mask[z_4, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] && NoPerm < FullPerm ==> qpRange3(z_4) && invRecv3(z_4) == z_4
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        xs[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test01 might not hold. Assertion x.f == x might not hold. (assignments.vpr@10.11--10.19) [1272]"}
      Heap[x, f_7] == x;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@15.12--15.49) [1273]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange4(z_1) && invRecv4(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: x.f := x -- assignments.vpr@17.3--17.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (assignments.vpr@17.3--17.11) [1274]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- assignments.vpr@18.3--18.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (assignments.vpr@18.10--18.18) [1276]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == x -- assignments.vpr@21.3--21.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f == x
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (assignments.vpr@21.10--21.18) [1277]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == x might not hold. (assignments.vpr@21.10--21.18) [1278]"}
      Heap[x, f_7] == x;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@26.12--26.49) [1279]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange5(z_1) && invRecv5(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of y.f == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (assignments.vpr@27.12--27.20) [1280]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[y, f_7] == y;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale x != y -- assignments.vpr@29.10--29.16
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x -- assignments.vpr@31.3--31.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (assignments.vpr@31.3--31.11) [1281]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- assignments.vpr@32.3--32.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (assignments.vpr@32.10--32.18) [1283]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == x -- assignments.vpr@35.3--35.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f == x
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (assignments.vpr@35.10--35.18) [1284]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == x might not hold. (assignments.vpr@35.10--35.18) [1285]"}
      Heap[x, f_7] == x;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (assignments.vpr@40.12--40.49) [1286]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange6(z_1) && invRecv6(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (xs[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of y.f == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (assignments.vpr@41.12--41.20) [1287]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[y, f_7] == y;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale x != y -- assignments.vpr@43.10--43.16
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x -- assignments.vpr@45.3--45.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (assignments.vpr@45.3--45.11) [1288]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == y -- assignments.vpr@46.3--46.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.f == y
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (assignments.vpr@46.10--46.18) [1289]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == y might not hold. (assignments.vpr@46.10--46.18) [1290]"}
      Heap[y, f_7] == y;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- assignments.vpr@47.3--47.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (assignments.vpr@47.10--47.18) [1292]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == y -- assignments.vpr@48.3--48.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.f == y
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (assignments.vpr@48.10--48.18) [1293]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == y might not hold. (assignments.vpr@48.10--48.18) [1294]"}
      Heap[y, f_7] == y;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == x -- assignments.vpr@51.3--51.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f == x
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (assignments.vpr@51.10--51.18) [1295]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == x might not hold. (assignments.vpr@51.10--51.18) [1296]"}
      Heap[x, f_7] == x;
    assume state(Heap, Mask);
}