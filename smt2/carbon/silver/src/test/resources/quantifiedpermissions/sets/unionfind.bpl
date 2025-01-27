// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:38:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/unionfind.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/unionfind-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_29: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_29] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_29], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_18: Ref, f_26: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_18, f_26] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_18, f_26) ==> Heap[o_18, f_26] == ExhaleHeap[o_18, f_26]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_8, f_26] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_26] ==> Heap[o2_8, f_26] == ExhaleHeap[o2_8, f_26]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_8, f_26] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_26] ==> Heap[o2_8, f_26] == ExhaleHeap[o2_8, f_26]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_18: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_18, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_18, $allocated] ==> ExhaleHeap[o_18, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_30: (Field A B), v: B ::
  { Heap[o_20, f_30:=v] }
  succHeap(Heap, Heap[o_20, f_30:=v])
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

function  neverTriggered1(n: Ref): bool;
function  neverTriggered2(n: Ref): bool;
function  neverTriggered3(n_2: Ref): bool;
function  neverTriggered4(n: Ref): bool;
function  neverTriggered5(n_1: Ref): bool;
function  neverTriggered6(n_3: Ref): bool;
function  neverTriggered7(n_5: Ref): bool;
function  neverTriggered8(n_6: Ref): bool;
function  neverTriggered9(n_8: Ref): bool;
function  neverTriggered10(n: Ref): bool;
function  neverTriggered11(n_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: allNodes
// - height 0: find
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

const unique parent: Field NormalField Ref;
axiom !IsPredicateField(parent);
axiom !IsWandField(parent);
const unique nodes_1: Field NormalField (Set Ref);
axiom !IsPredicateField(nodes_1);
axiom !IsWandField(nodes_1);

// ==================================================
// Translation of function find
// ==================================================

// Uninterpreted function definitions
function  find(Heap: HeapType, struct: Ref, this: Ref): Ref;
function  find'(Heap: HeapType, struct: Ref, this: Ref): Ref;
axiom (forall Heap: HeapType, struct: Ref, this: Ref ::
  { find(Heap, struct, this) }
  find(Heap, struct, this) == find'(Heap, struct, this) && dummyFunction(find#triggerStateless(struct, this))
);
axiom (forall Heap: HeapType, struct: Ref, this: Ref ::
  { find'(Heap, struct, this) }
  dummyFunction(find#triggerStateless(struct, this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, struct: Ref, this: Ref ::
  { state(Heap, Mask), find(Heap, struct, this) } { state(Heap, Mask), find#triggerStateless(struct, this), inv#trigger(Heap, inv(struct)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (struct != null && this != null) && allNodes(Heap, struct)[this] ==> find(Heap, struct, this) == (if this == Heap[this, parent] then this else find'(Heap, struct, Heap[this, parent]))
);

// Framing axioms
function  find#frame(frame: FrameType, struct: Ref, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, struct: Ref, this: Ref ::
  { state(Heap, Mask), find'(Heap, struct, this) } { state(Heap, Mask), find#triggerStateless(struct, this), inv#trigger(Heap, inv(struct)) }
  state(Heap, Mask) ==> find'(Heap, struct, this) == find#frame(Heap[null, inv(struct)], struct, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, struct: Ref, this: Ref ::
  { state(Heap, Mask), find'(Heap, struct, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || find#trigger(Heap[null, inv(struct)], struct, this)) ==> (struct != null && this != null) && allNodes(Heap, struct)[this] ==> find'(Heap, struct, this) != null
);
axiom (forall Heap: HeapType, Mask: MaskType, struct: Ref, this: Ref ::
  { state(Heap, Mask), find'(Heap, struct, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || find#trigger(Heap[null, inv(struct)], struct, this)) ==> (struct != null && this != null) && allNodes(Heap, struct)[this] ==> allNodes(Heap, struct)[find'(Heap, struct, this)]
);

// Trigger function (controlling recursive postconditions)
function  find#trigger(frame: FrameType, struct: Ref, this: Ref): bool;

// State-independent trigger function
function  find#triggerStateless(struct: Ref, this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure find#definedness(struct: Ref, this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var QPMask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[struct, $allocated];
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume struct != null;
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in allNodes(struct))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@11.20--11.36) [181629]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume allNodes(Heap, struct)[this];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(struct), wildcard) in (this == this.parent ? this : find(struct, this.parent)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(struct));
      assume UnfoldingHeap[null, inv(struct)] == CombineFrames(FrameFragment(UnfoldingHeap[struct, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, struct)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(struct) (unionfind.vpr@8.1--16.2) [181630]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(struct)];
      havoc wildcard;
      perm := wildcard;
      assume struct != null;
      UnfoldingMask := UnfoldingMask[struct, nodes_1:=UnfoldingMask[struct, nodes_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume !UnfoldingHeap[struct, nodes_1][null];
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource n.parent might not be injective. (unionfind.vpr@8.1--16.2) [181631]"}
        (forall n: Ref, n_89: Ref ::
        
        (((n != n_89 && UnfoldingHeap[struct, nodes_1][n]) && UnfoldingHeap[struct, nodes_1][n_89]) && NoPerm < wildcard) && NoPerm < wildcard ==> n != n_89
      );
      
      // -- Define Inverse Function
        assume (forall n: Ref ::
          { UnfoldingHeap[n, parent] } { QPMask[n, parent] } { UnfoldingHeap[struct, nodes_1][n] }
          UnfoldingHeap[struct, nodes_1][n] ==> qpRange1(n) && invRecv1(n) == n
        );
        assume (forall o_9: Ref ::
          { invRecv1(o_9) }
          UnfoldingHeap[struct, nodes_1][invRecv1(o_9)] && qpRange1(o_9) ==> invRecv1(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n: Ref ::
          { UnfoldingHeap[n, parent] } { QPMask[n, parent] } { UnfoldingHeap[struct, nodes_1][n] }
          UnfoldingHeap[struct, nodes_1][n] && wildcard > NoPerm ==> n != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, parent] }
          (UnfoldingHeap[struct, nodes_1][invRecv1(o_9)] && qpRange1(o_9) ==> invRecv1(o_9) == o_9 && UnfoldingMask[o_9, parent] < QPMask[o_9, parent]) && (!(UnfoldingHeap[struct, nodes_1][invRecv1(o_9)] && qpRange1(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall q_1: Ref ::
        { UnfoldingHeap[struct, nodes_1][q_1] } { UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_1, parent]] }
        UnfoldingHeap[struct, nodes_1][q_1] ==> UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_1, parent]]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.parent (unionfind.vpr@8.1--16.2) [181632]"}
        HasDirectPerm(UnfoldingMask, this, parent);
      if (this == UnfoldingHeap[this, parent]) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.parent (unionfind.vpr@8.1--16.2) [181633]"}
          HasDirectPerm(UnfoldingMask, this, parent);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@15.72--15.97) [181634]"}
            struct != null;
          assert {:msg "  Precondition of function find might not hold. Assertion this.parent != null might not hold. (unionfind.vpr@15.72--15.97) [181635]"}
            UnfoldingHeap[this, parent] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@15.72--15.97) [181636]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(struct)];
          assert {:msg "  Precondition of function find might not hold. Assertion (this.parent in allNodes(struct)) might not hold. (unionfind.vpr@15.72--15.97) [181637]"}
            allNodes(UnfoldingHeap, struct)[UnfoldingHeap[this, parent]];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume find#trigger(UnfoldingHeap[null, inv(struct)], struct, UnfoldingHeap[this, parent]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
          { newPMask[o_5, f_11] }
          Heap[null, inv#sm(struct)][o_5, f_11] ==> newPMask[o_5, f_11]
        );
        assume (forall n_1: Ref ::
          
          Heap[struct, nodes_1][n_1] ==> newPMask[n_1, parent]
        );
        Heap := Heap[null, inv#sm(struct):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if this == Heap[this, parent] then this else find(Heap, struct, Heap[this, parent]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of find might not hold. Assertion result != null might not hold. (unionfind.vpr@12.11--12.25) [181638]"}
      Result != null;
    
    // -- Check definedness of (result in allNodes(struct))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@13.21--13.37) [181639]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of find might not hold. Assertion (result in allNodes(struct)) might not hold. (unionfind.vpr@13.11--13.37) [181640]"}
      allNodes(Heap, struct)[Result];
}

// ==================================================
// Translation of function allNodes
// ==================================================

// Uninterpreted function definitions
function  allNodes(Heap: HeapType, this: Ref): Set Ref;
function  allNodes'(Heap: HeapType, this: Ref): Set Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { allNodes(Heap, this) }
  allNodes(Heap, this) == allNodes'(Heap, this) && dummyFunction(allNodes#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { allNodes'(Heap, this) }
  dummyFunction(allNodes#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), allNodes(Heap, this) } { state(Heap, Mask), allNodes#triggerStateless(this), inv#trigger(Heap, inv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> allNodes(Heap, this) == Heap[this, nodes_1]
);

// Framing axioms
function  allNodes#frame(frame: FrameType, this: Ref): Set Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), allNodes'(Heap, this) }
  state(Heap, Mask) ==> allNodes'(Heap, this) == allNodes#frame(Heap[null, inv(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  allNodes#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  allNodes#triggerStateless(this: Ref): Set Ref;

// Check contract well-formedness and postcondition
procedure allNodes#definedness(this: Ref) returns (Result: (Set Ref))
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(this), wildcard) in this.nodes)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, this)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(this) (unionfind.vpr@119.1--123.2) [181641]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, nodes_1:=UnfoldingMask[this, nodes_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume !UnfoldingHeap[this, nodes_1][null];
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource n.parent might not be injective. (unionfind.vpr@119.1--123.2) [181642]"}
        (forall n: Ref, n_89: Ref ::
        
        (((n != n_89 && UnfoldingHeap[this, nodes_1][n]) && UnfoldingHeap[this, nodes_1][n_89]) && NoPerm < wildcard) && NoPerm < wildcard ==> n != n_89
      );
      
      // -- Define Inverse Function
        assume (forall n: Ref ::
          { UnfoldingHeap[n, parent] } { QPMask[n, parent] } { UnfoldingHeap[this, nodes_1][n] }
          UnfoldingHeap[this, nodes_1][n] ==> qpRange2(n) && invRecv2(n) == n
        );
        assume (forall o_9: Ref ::
          { invRecv2(o_9) }
          UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && qpRange2(o_9) ==> invRecv2(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n: Ref ::
          { UnfoldingHeap[n, parent] } { QPMask[n, parent] } { UnfoldingHeap[this, nodes_1][n] }
          UnfoldingHeap[this, nodes_1][n] && wildcard > NoPerm ==> n != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, parent] }
          (UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && qpRange2(o_9) ==> invRecv2(o_9) == o_9 && UnfoldingMask[o_9, parent] < QPMask[o_9, parent]) && (!(UnfoldingHeap[this, nodes_1][invRecv2(o_9)] && qpRange2(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall q_1: Ref ::
        { UnfoldingHeap[this, nodes_1][q_1] } { UnfoldingHeap[this, nodes_1][UnfoldingHeap[q_1, parent]] }
        UnfoldingHeap[this, nodes_1][q_1] ==> UnfoldingHeap[this, nodes_1][UnfoldingHeap[q_1, parent]]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.nodes (unionfind.vpr@119.1--123.2) [181643]"}
        HasDirectPerm(UnfoldingMask, this, nodes_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, nodes_1:=true]];
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, inv#sm(this)][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        assume (forall n_1: Ref ::
          
          Heap[this, nodes_1][n_1] ==> newPMask[n_1, parent]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, nodes_1];
}

// ==================================================
// Translation of predicate inv
// ==================================================

type PredicateType_inv;
function  inv(this: Ref): Field PredicateType_inv FrameType;
function  inv#sm(this: Ref): Field PredicateType_inv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(inv(this)) }
  PredicateMaskField(inv(this)) == inv#sm(this)
);
axiom (forall this: Ref ::
  { inv(this) }
  IsPredicateField(inv(this))
);
axiom (forall this: Ref ::
  { inv(this) }
  getPredWandId(inv(this)) == 0
);
function  inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { inv(this), inv(this2) }
  inv(this) == inv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { inv#sm(this), inv#sm(this2) }
  inv#sm(this) == inv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { inv#trigger(Heap, inv(this)) }
  inv#everUsed(inv(this))
);

// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { (n in this.nodes) } (n in this.nodes) ==> acc(n.parent, write)) in predicate inv
// ==================================================

function  inv#condqp1(Heap: HeapType, this_2_1: Ref): int;
function  sk_inv#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, this: Ref ::
  { inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Heap2Heap[this, nodes_1][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm <==> Heap1Heap[this, nodes_1][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm) && (Heap2Heap[this, nodes_1][sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this))] && NoPerm < FullPerm ==> Heap2Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), parent] == Heap1Heap[sk_inv#condqp1(inv#condqp1(Heap2Heap, this), inv#condqp1(Heap1Heap, this)), parent]) ==> inv#condqp1(Heap2Heap, this) == inv#condqp1(Heap1Heap, this)
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var q_11: Ref;
  
  // -- Check definedness of predicate body of inv
    
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
    
    // -- Check definedness of !((null in this.nodes))
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (unionfind.vpr@112.1--117.2) [181644]"}
        HasDirectPerm(Mask, this, nodes_1);
    assume !Heap[this, nodes_1][null];
    
    // -- Check definedness of (forall n: Ref :: { (n in this.nodes) } (n in this.nodes) ==> acc(n.parent, write))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (unionfind.vpr@112.1--117.2) [181645]"}
          HasDirectPerm(Mask, this, nodes_1);
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource n.parent might not be injective. (unionfind.vpr@112.1--117.2) [181646]"}
      (forall n_2: Ref, n_2_1: Ref ::
      
      (((n_2 != n_2_1 && Heap[this, nodes_1][n_2]) && Heap[this, nodes_1][n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
    );
    
    // -- Define Inverse Function
      assume (forall n_2: Ref ::
        { Heap[n_2, parent] } { QPMask[n_2, parent] } { Heap[this, nodes_1][n_2] }
        Heap[this, nodes_1][n_2] && NoPerm < FullPerm ==> qpRange3(n_2) && invRecv3(n_2) == n_2
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_2: Ref ::
        { Heap[n_2, parent] } { QPMask[n_2, parent] } { Heap[this, nodes_1][n_2] }
        Heap[this, nodes_1][n_2] ==> n_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, parent] }
        ((Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, parent] == Mask[o_9, parent] + FullPerm) && (!((Heap[this, nodes_1][invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, parent] == Mask[o_9, parent])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != parent ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall q: Ref :: { (q in this.nodes) } { (q.parent in this.nodes) } (q in this.nodes) ==> (q.parent in this.nodes))
      if (*) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (unionfind.vpr@112.1--117.2) [181647]"}
          HasDirectPerm(Mask, this, nodes_1);
        if (Heap[this, nodes_1][q_11]) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access q.parent (unionfind.vpr@112.1--117.2) [181648]"}
            HasDirectPerm(Mask, q_11, parent);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.nodes (unionfind.vpr@112.1--117.2) [181649]"}
            HasDirectPerm(Mask, this, nodes_1);
        }
        assume false;
      }
    assume (forall q_1_1: Ref ::
      { Heap[this, nodes_1][q_1_1] } { Heap[this, nodes_1][Heap[q_1_1, parent]] }
      Heap[this, nodes_1][q_1_1] ==> Heap[this, nodes_1][Heap[q_1_1, parent]]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method add
// ==================================================

procedure add_3(struct: Ref, this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var o_149: Ref;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var q_1_1: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var x_53: Ref;
  var x_1: Ref;
  var o_150: Ref;
  var o_2_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[struct, $allocated];
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, parent:=Mask[this, parent] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.parent == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.parent (unionfind.vpr@21.12--21.58) [181650]"}
        HasDirectPerm(Mask, this, parent);
    assume Heap[this, parent] == null;
    assume state(Heap, Mask);
    assume struct != null;
    perm := FullPerm;
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] + perm];
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
    PostMask := PostMask[null, inv(struct):=PostMask[null, inv(struct)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of allNodes(struct) == (old(allNodes(struct)) union Set(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@24.11--24.27) [181651]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@24.35--24.51) [181652]"}
          NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Set#Equal(allNodes(PostHeap, struct), Set#Union(allNodes(oldHeap, struct), Set#Singleton(this)));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this == find(struct, this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@25.19--25.37) [181653]"}
          struct != null;
        assert {:msg "  Precondition of function find might not hold. Assertion this != null might not hold. (unionfind.vpr@25.19--25.37) [181654]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@25.19--25.37) [181655]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
        assert {:msg "  Precondition of function find might not hold. Assertion (this in allNodes(struct)) might not hold. (unionfind.vpr@25.19--25.37) [181656]"}
          allNodes(PostHeap, struct)[this];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume this == find(PostHeap, struct, this);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall o: Ref :: { (o in old(allNodes(struct))) } { old(find(struct, o)) } (o in old(allNodes(struct))) ==> find(struct, o) == old(find(struct, o)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := oldMask;
          ExhaleWellDef0Heap := oldHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@31.37--31.53) [181657]"}
            NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
          // Finish exhale
          // Stop execution
          assume false;
        }
        if (allNodes(oldHeap, struct)[o_149]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@31.59--31.74) [181658]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion o != null might not hold. (unionfind.vpr@31.59--31.74) [181659]"}
              o_149 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@31.59--31.74) [181660]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (o in allNodes(struct)) might not hold. (unionfind.vpr@31.59--31.74) [181661]"}
              allNodes(PostHeap, struct)[o_149];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@31.82--31.97) [181662]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion o != null might not hold. (unionfind.vpr@31.82--31.97) [181663]"}
              o_149 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@31.82--31.97) [181664]"}
              NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (o in allNodes(struct)) might not hold. (unionfind.vpr@31.82--31.97) [181665]"}
              allNodes(oldHeap, struct)[o_149];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall o_1_1: Ref ::
      { allNodes#frame(oldHeap[null, inv(struct)], struct)[o_1_1] } { find#frame(oldHeap[null, inv(struct)], struct, o_1_1) }
      allNodes(oldHeap, struct)[o_1_1] ==> find(PostHeap, struct, o_1_1) == find(oldHeap, struct, o_1_1)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(inv(struct), write) -- unionfind.vpr@33.5--33.35
    assume inv#trigger(Heap, inv(struct));
    assume Heap[null, inv(struct)] == CombineFrames(FrameFragment(Heap[struct, nodes_1]), FrameFragment(inv#condqp1(Heap, struct)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(struct) might fail. There might be insufficient permission to access inv(struct) (unionfind.vpr@33.5--33.35) [181668]"}
        perm <= Mask[null, inv(struct)];
    }
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(struct))) {
        havoc newVersion;
        Heap := Heap[null, inv(struct):=newVersion];
      }
    perm := FullPerm;
    assume struct != null;
    Mask := Mask[struct, nodes_1:=Mask[struct, nodes_1] + perm];
    assume state(Heap, Mask);
    assume !Heap[struct, nodes_1][null];
    havoc QPMask;
    assert {:msg "  Unfolding inv(struct) might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@33.5--33.35) [181670]"}
      (forall n: Ref, n_89: Ref ::
      
      (((n != n_89 && Heap[struct, nodes_1][n]) && Heap[struct, nodes_1][n_89]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n != n_89
    );
    
    // -- Define Inverse Function
      assume (forall n: Ref ::
        { Heap[n, parent] } { QPMask[n, parent] } { Heap[struct, nodes_1][n] }
        Heap[struct, nodes_1][n] && NoPerm < FullPerm ==> qpRange4(n) && invRecv4(n) == n
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (Heap[struct, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n: Ref ::
        { Heap[n, parent] } { QPMask[n, parent] } { Heap[struct, nodes_1][n] }
        Heap[struct, nodes_1][n] ==> n != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, parent] }
        ((Heap[struct, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, parent] == Mask[o_9, parent] + FullPerm) && (!((Heap[struct, nodes_1][invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, parent] == Mask[o_9, parent])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != parent ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall q_1: Ref ::
      { Heap[struct, nodes_1][q_1] } { Heap[struct, nodes_1][Heap[q_1, parent]] }
      Heap[struct, nodes_1][q_1] ==> Heap[struct, nodes_1][Heap[q_1, parent]]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.parent := this -- unionfind.vpr@34.5--34.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.parent (unionfind.vpr@34.5--34.24) [181671]"}
      FullPerm == Mask[this, parent];
    Heap := Heap[this, parent:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: struct.nodes := (struct.nodes union Set(this)) -- unionfind.vpr@35.5--35.49
    
    // -- Check definedness of (struct.nodes union Set(this))
      assert {:msg "  Assignment might fail. There might be insufficient permission to access struct.nodes (unionfind.vpr@35.5--35.49) [181672]"}
        HasDirectPerm(Mask, struct, nodes_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access struct.nodes (unionfind.vpr@35.5--35.49) [181673]"}
      FullPerm == Mask[struct, nodes_1];
    Heap := Heap[struct, nodes_1:=Set#Union(Heap[struct, nodes_1], Set#Singleton(this))];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(struct), write) -- unionfind.vpr@36.5--36.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(struct) might fail. There might be insufficient permission to access struct.nodes (unionfind.vpr@36.5--36.33) [181676]"}
        perm <= Mask[struct, nodes_1];
    }
    Mask := Mask[struct, nodes_1:=Mask[struct, nodes_1] - perm];
    assert {:msg "  Folding inv(struct) might fail. Assertion !((null in struct.nodes)) might not hold. (unionfind.vpr@36.5--36.33) [181677]"}
      !Heap[struct, nodes_1][null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n is injective
      assert {:msg "  Folding inv(struct) might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@36.5--36.33) [181679]"}
        (forall n_1: Ref, n_1_1: Ref ::
        { neverTriggered5(n_1), neverTriggered5(n_1_1) }
        (((n_1 != n_1_1 && Heap[struct, nodes_1][n_1]) && Heap[struct, nodes_1][n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding inv(struct) might fail. There might be insufficient permission to access n.parent (unionfind.vpr@36.5--36.33) [181680]"}
        (forall n_1: Ref ::
        { Heap[n_1, parent] } { QPMask[n_1, parent] } { Heap[struct, nodes_1][n_1] }
        Heap[struct, nodes_1][n_1] ==> Mask[n_1, parent] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n
      assume (forall n_1: Ref ::
        { Heap[n_1, parent] } { QPMask[n_1, parent] } { Heap[struct, nodes_1][n_1] }
        Heap[struct, nodes_1][n_1] && NoPerm < FullPerm ==> qpRange5(n_1) && invRecv5(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        Heap[struct, nodes_1][invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
      );
    
    // -- assume permission updates for field parent
      assume (forall o_9: Ref ::
        { QPMask[o_9, parent] }
        (Heap[struct, nodes_1][invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9 && QPMask[o_9, parent] == Mask[o_9, parent] - FullPerm) && (!(Heap[struct, nodes_1][invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9))) ==> QPMask[o_9, parent] == Mask[o_9, parent])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != parent ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Heap[struct, nodes_1][q_1_1]) {
        assert {:msg "  Folding inv(struct) might fail. Assertion (q.parent in struct.nodes) might not hold. (unionfind.vpr@36.5--36.33) [181681]"}
          Heap[struct, nodes_1][Heap[q_1_1, parent]];
      }
      assume false;
    }
    assume (forall q_2_1_1: Ref ::
      { Heap[struct, nodes_1][q_2_1_1] } { Heap[struct, nodes_1][Heap[q_2_1_1, parent]] }
      Heap[struct, nodes_1][q_2_1_1] ==> Heap[struct, nodes_1][Heap[q_2_1_1, parent]]
    );
    perm := FullPerm;
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(struct));
    assume Heap[null, inv(struct)] == CombineFrames(FrameFragment(Heap[struct, nodes_1]), FrameFragment(inv#condqp1(Heap, struct)));
    if (!HasDirectPerm(Mask, null, inv(struct))) {
      Heap := Heap[null, inv#sm(struct):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(struct):=freshVersion];
    }
    Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
    // register all known folded permissions guarded by predicate inv
    havoc newPMask;
    assume (forall <A, B> o_65: Ref, f_74: (Field A B) ::
      { newPMask[o_65, f_74] }
      Heap[null, inv#sm(struct)][o_65, f_74] ==> newPMask[o_65, f_74]
    );
    assume (forall n_2: Ref ::
      
      Heap[struct, nodes_1][n_2] ==> newPMask[n_2, parent]
    );
    Heap := Heap[null, inv#sm(struct):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (unfolding acc(inv(struct), write) in this.parent == this) -- unionfind.vpr@38.2--38.65
    
    // -- Check definedness of (unfolding acc(inv(struct), write) in this.parent == this)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(struct));
      assume UnfoldingHeap[null, inv(struct)] == CombineFrames(FrameFragment(UnfoldingHeap[struct, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, struct)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access inv(struct) (unionfind.vpr@38.9--38.65) [181683]"}
          perm <= UnfoldingMask[null, inv(struct)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(struct):=UnfoldingMask[null, inv(struct)] - perm];
      perm := FullPerm;
      assume struct != null;
      UnfoldingMask := UnfoldingMask[struct, nodes_1:=UnfoldingMask[struct, nodes_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume !UnfoldingHeap[struct, nodes_1][null];
      havoc QPMask;
      assert {:msg "  Inhale might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@38.9--38.65) [181684]"}
        (forall n_3: Ref, n_3_1: Ref ::
        
        (((n_3 != n_3_1 && UnfoldingHeap[struct, nodes_1][n_3]) && UnfoldingHeap[struct, nodes_1][n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
      );
      
      // -- Define Inverse Function
        assume (forall n_3: Ref ::
          { UnfoldingHeap[n_3, parent] } { QPMask[n_3, parent] } { UnfoldingHeap[struct, nodes_1][n_3] }
          UnfoldingHeap[struct, nodes_1][n_3] && NoPerm < FullPerm ==> qpRange6(n_3) && invRecv6(n_3) == n_3
        );
        assume (forall o_9: Ref ::
          { invRecv6(o_9) }
          (UnfoldingHeap[struct, nodes_1][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n_3: Ref ::
          { UnfoldingHeap[n_3, parent] } { QPMask[n_3, parent] } { UnfoldingHeap[struct, nodes_1][n_3] }
          UnfoldingHeap[struct, nodes_1][n_3] ==> n_3 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, parent] }
          ((UnfoldingHeap[struct, nodes_1][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, parent] == UnfoldingMask[o_9, parent] + FullPerm) && (!((UnfoldingHeap[struct, nodes_1][invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall q_3: Ref ::
        { UnfoldingHeap[struct, nodes_1][q_3] } { UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_3, parent]] }
        UnfoldingHeap[struct, nodes_1][q_3] ==> UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_3, parent]]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access this.parent (unionfind.vpr@38.9--38.65) [181685]"}
        HasDirectPerm(UnfoldingMask, this, parent);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_74: Ref, f_83: (Field A B) ::
          { newPMask[o_74, f_83] }
          Heap[null, inv#sm(struct)][o_74, f_83] ==> newPMask[o_74, f_83]
        );
        assume (forall n_4: Ref ::
          
          Heap[struct, nodes_1][n_4] ==> newPMask[n_4, parent]
        );
        Heap := Heap[null, inv#sm(struct):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(struct));
      assume UnfoldingHeap[null, inv(struct)] == CombineFrames(FrameFragment(UnfoldingHeap[struct, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, struct)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inv(struct):=UnfoldingMask[null, inv(struct)] - perm];
      perm := FullPerm;
      assume struct != null;
      UnfoldingMask := UnfoldingMask[struct, nodes_1:=UnfoldingMask[struct, nodes_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume !UnfoldingHeap[struct, nodes_1][null];
      havoc QPMask;
      
      // -- Define Inverse Function
        assume (forall n_5: Ref ::
          { UnfoldingHeap[n_5, parent] } { QPMask[n_5, parent] } { UnfoldingHeap[struct, nodes_1][n_5] }
          UnfoldingHeap[struct, nodes_1][n_5] && NoPerm < FullPerm ==> qpRange7(n_5) && invRecv7(n_5) == n_5
        );
        assume (forall o_9: Ref ::
          { invRecv7(o_9) }
          (UnfoldingHeap[struct, nodes_1][invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n_5: Ref ::
          { UnfoldingHeap[n_5, parent] } { QPMask[n_5, parent] } { UnfoldingHeap[struct, nodes_1][n_5] }
          UnfoldingHeap[struct, nodes_1][n_5] ==> n_5 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, parent] }
          ((UnfoldingHeap[struct, nodes_1][invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> invRecv7(o_9) == o_9) && QPMask[o_9, parent] == UnfoldingMask[o_9, parent] + FullPerm) && (!((UnfoldingHeap[struct, nodes_1][invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall q_4_1: Ref ::
        { UnfoldingHeap[struct, nodes_1][q_4_1] } { UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_4_1, parent]] }
        UnfoldingHeap[struct, nodes_1][q_4_1] ==> UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_4_1, parent]]
      );
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, parent] == this;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Ref ::
  //     { (x in old(allNodes(struct))) }
  //     (x in old(allNodes(struct))) ==>
  //     (unfolding acc(inv(struct), write) in x.parent) ==
  //     old((unfolding acc(inv(struct), write) in x.parent))) -- unionfind.vpr@40.2--40.158
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall x: Ref :: { (x in old(allNodes(struct))) } (x in old(allNodes(struct))) ==> (unfolding acc(inv(struct), write) in x.parent) == old((unfolding acc(inv(struct), write) in x.parent)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := oldMask;
          ExhaleWellDef1Heap := oldHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@40.35--40.51) [181686]"}
            NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
          // Finish exhale
          // Stop execution
          assume false;
        }
        if (allNodes(oldHeap, struct)[x_53]) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume inv#trigger(UnfoldingHeap, inv(struct));
          assume UnfoldingHeap[null, inv(struct)] == CombineFrames(FrameFragment(UnfoldingHeap[struct, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, struct)));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access inv(struct) (unionfind.vpr@40.9--40.158) [181687]"}
              perm <= UnfoldingMask[null, inv(struct)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(struct):=UnfoldingMask[null, inv(struct)] - perm];
          perm := FullPerm;
          assume struct != null;
          UnfoldingMask := UnfoldingMask[struct, nodes_1:=UnfoldingMask[struct, nodes_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume !UnfoldingHeap[struct, nodes_1][null];
          havoc QPMask;
          assert {:msg "  Assert might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@40.9--40.158) [181688]"}
            (forall n_6: Ref, n_6_1: Ref ::
            
            (((n_6 != n_6_1 && UnfoldingHeap[struct, nodes_1][n_6]) && UnfoldingHeap[struct, nodes_1][n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
          
          // -- Define Inverse Function
            assume (forall n_6: Ref ::
              { UnfoldingHeap[n_6, parent] } { QPMask[n_6, parent] } { UnfoldingHeap[struct, nodes_1][n_6] }
              UnfoldingHeap[struct, nodes_1][n_6] && NoPerm < FullPerm ==> qpRange8(n_6) && invRecv8(n_6) == n_6
            );
            assume (forall o_9: Ref ::
              { invRecv8(o_9) }
              (UnfoldingHeap[struct, nodes_1][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n_6: Ref ::
              { UnfoldingHeap[n_6, parent] } { QPMask[n_6, parent] } { UnfoldingHeap[struct, nodes_1][n_6] }
              UnfoldingHeap[struct, nodes_1][n_6] ==> n_6 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, parent] }
              ((UnfoldingHeap[struct, nodes_1][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, parent] == UnfoldingMask[o_9, parent] + FullPerm) && (!((UnfoldingHeap[struct, nodes_1][invRecv8(o_9)] && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
            );
          UnfoldingMask := QPMask;
          assume state(UnfoldingHeap, UnfoldingMask);
          assume (forall q_5: Ref ::
            { UnfoldingHeap[struct, nodes_1][q_5] } { UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_5, parent]] }
            UnfoldingHeap[struct, nodes_1][q_5] ==> UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_5, parent]]
          );
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.parent (unionfind.vpr@40.9--40.158) [181689]"}
            HasDirectPerm(UnfoldingMask, x_53, parent);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
            // register all known folded permissions guarded by predicate inv
            havoc newPMask;
            assume (forall <A, B> o_56: Ref, f: (Field A B) ::
              { newPMask[o_56, f] }
              Heap[null, inv#sm(struct)][o_56, f] ==> newPMask[o_56, f]
            );
            assume (forall n_7: Ref ::
              
              Heap[struct, nodes_1][n_7] ==> newPMask[n_7, parent]
            );
            Heap := Heap[null, inv#sm(struct):=newPMask];
            assume state(Heap, Mask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume inv#trigger(UnfoldingHeap, inv(struct));
          assume UnfoldingHeap[null, inv(struct)] == CombineFrames(FrameFragment(UnfoldingHeap[struct, nodes_1]), FrameFragment(inv#condqp1(UnfoldingHeap, struct)));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access inv(struct) (unionfind.vpr@40.9--40.158) [181690]"}
              perm <= UnfoldingMask[null, inv(struct)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(struct):=UnfoldingMask[null, inv(struct)] - perm];
          perm := FullPerm;
          assume struct != null;
          UnfoldingMask := UnfoldingMask[struct, nodes_1:=UnfoldingMask[struct, nodes_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume !UnfoldingHeap[struct, nodes_1][null];
          havoc QPMask;
          assert {:msg "  Assert might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@40.9--40.158) [181691]"}
            (forall n_8: Ref, n_8_1: Ref ::
            
            (((n_8 != n_8_1 && UnfoldingHeap[struct, nodes_1][n_8]) && UnfoldingHeap[struct, nodes_1][n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
          );
          
          // -- Define Inverse Function
            assume (forall n_8: Ref ::
              { UnfoldingHeap[n_8, parent] } { QPMask[n_8, parent] } { UnfoldingHeap[struct, nodes_1][n_8] }
              UnfoldingHeap[struct, nodes_1][n_8] && NoPerm < FullPerm ==> qpRange9(n_8) && invRecv9(n_8) == n_8
            );
            assume (forall o_9: Ref ::
              { invRecv9(o_9) }
              (UnfoldingHeap[struct, nodes_1][invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n_8: Ref ::
              { UnfoldingHeap[n_8, parent] } { QPMask[n_8, parent] } { UnfoldingHeap[struct, nodes_1][n_8] }
              UnfoldingHeap[struct, nodes_1][n_8] ==> n_8 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, parent] }
              ((UnfoldingHeap[struct, nodes_1][invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, parent] == UnfoldingMask[o_9, parent] + FullPerm) && (!((UnfoldingHeap[struct, nodes_1][invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, parent] == UnfoldingMask[o_9, parent])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { UnfoldingMask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != parent ==> UnfoldingMask[o_9, f_5] == QPMask[o_9, f_5]
            );
          UnfoldingMask := QPMask;
          assume state(UnfoldingHeap, UnfoldingMask);
          assume (forall q_6_1: Ref ::
            { UnfoldingHeap[struct, nodes_1][q_6_1] } { UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_6_1, parent]] }
            UnfoldingHeap[struct, nodes_1][q_6_1] ==> UnfoldingHeap[struct, nodes_1][UnfoldingHeap[q_6_1, parent]]
          );
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.parent (unionfind.vpr@40.9--40.158) [181692]"}
            HasDirectPerm(UnfoldingMask, x_53, parent);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
            // register all known folded permissions guarded by predicate inv
            havoc newPMask;
            assume (forall <A, B> o_54: Ref, f_22: (Field A B) ::
              { newPMask[o_54, f_22] }
              Heap[null, inv#sm(struct)][o_54, f_22] ==> newPMask[o_54, f_22]
            );
            assume (forall n_9: Ref ::
              
              Heap[struct, nodes_1][n_9] ==> newPMask[n_9, parent]
            );
            Heap := Heap[null, inv#sm(struct):=newPMask];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (allNodes(oldHeap, struct)[x_1]) {
        assert {:msg "  Assert might fail. Assertion (unfolding acc(inv(struct), write) in x.parent) == old((unfolding acc(inv(struct), write) in x.parent)) might not hold. (unionfind.vpr@40.9--40.158) [181693]"}
          Heap[x_1, parent] == oldHeap[x_1, parent];
      }
      assume false;
    }
    assume (forall x_2_1: Ref ::
      { allNodes#frame(oldHeap[null, inv(struct)], struct)[x_2_1] }
      allNodes(oldHeap, struct)[x_2_1] ==> Heap[x_2_1, parent] == oldHeap[x_2_1, parent]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall o: Ref ::
  //     { (o in old(allNodes(struct))) }
  //     { old(find(struct, o)) }
  //     (o in old(allNodes(struct))) ==>
  //     find(struct, o) == old(find(struct, o))) -- unionfind.vpr@42.2--42.96
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall o: Ref :: { (o in old(allNodes(struct))) } { old(find(struct, o)) } (o in old(allNodes(struct))) ==> find(struct, o) == old(find(struct, o)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := oldMask;
          ExhaleWellDef0Heap := oldHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@42.35--42.51) [181694]"}
            NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
          // Finish exhale
          // Stop execution
          assume false;
        }
        if (allNodes(oldHeap, struct)[o_150]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@42.57--42.72) [181695]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion o != null might not hold. (unionfind.vpr@42.57--42.72) [181696]"}
              o_150 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@42.57--42.72) [181697]"}
              NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (o in allNodes(struct)) might not hold. (unionfind.vpr@42.57--42.72) [181698]"}
              allNodes(Heap, struct)[o_150];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@42.80--42.95) [181699]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion o != null might not hold. (unionfind.vpr@42.80--42.95) [181700]"}
              o_150 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@42.80--42.95) [181701]"}
              NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (o in allNodes(struct)) might not hold. (unionfind.vpr@42.80--42.95) [181702]"}
              allNodes(oldHeap, struct)[o_150];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall o_5_1: Ref ::
      { allNodes#frame(oldHeap[null, inv(struct)], struct)[o_5_1] } { find#frame(oldHeap[null, inv(struct)], struct, o_5_1) }
      allNodes(oldHeap, struct)[o_5_1] ==> find(Heap, struct, o_5_1) == find(oldHeap, struct, o_5_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of add might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@23.11--23.34) [181703]"}
        perm <= Mask[null, inv(struct)];
    }
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] - perm];
    assert {:msg "  Postcondition of add might not hold. Assertion allNodes(struct) == (old(allNodes(struct)) union Set(this)) might not hold. (unionfind.vpr@24.11--24.68) [181704]"}
      Set#Equal(allNodes(Heap, struct), Set#Union(allNodes(oldHeap, struct), Set#Singleton(this)));
    assert {:msg "  Postcondition of add might not hold. Assertion this == find(struct, this) might not hold. (unionfind.vpr@25.11--25.37) [181705]"}
      this == find(Heap, struct, this);
    if (*) {
      if (allNodes(oldHeap, struct)[o_2_1]) {
        assert {:msg "  Postcondition of add might not hold. Assertion find(struct, o) == old(find(struct, o)) might not hold. (unionfind.vpr@31.11--31.98) [181706]"}
          find(Heap, struct, o_2_1) == find(oldHeap, struct, o_2_1);
      }
      assume false;
    }
    assume (forall o_3_1: Ref ::
      { allNodes#frame(oldHeap[null, inv(struct)], struct)[o_3_1] } { find#frame(oldHeap[null, inv(struct)], struct, o_3_1) }
      allNodes(oldHeap, struct)[o_3_1] ==> find(Heap, struct, o_3_1) == find(oldHeap, struct, o_3_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unionn
// ==================================================

procedure unionn(struct: Ref, this: Ref, other: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var p_14: Ref;
  var q_12: Ref;
  var p_15: Ref;
  var q_13: Ref;
  var p_16: Ref;
  var q_14: Ref;
  var this1: Ref;
  var other1: Ref;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var q_13_1: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var p_17: Ref;
  var p_18: Ref;
  var p_6: Ref;
  var q_6_1: Ref;
  var p_8: Ref;
  var q_8_1: Ref;
  var p_10_1: Ref;
  var q_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[struct, $allocated];
    assume Heap[this, $allocated];
    assume Heap[other, $allocated];
  
  // -- Checked inhaling of precondition
    assume struct != null;
    perm := FullPerm;
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume this != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of (this in allNodes(struct))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@83.36--83.52) [181707]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume allNodes(Heap, struct)[this];
    assume state(Heap, Mask);
    assume other != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of (other in allNodes(struct))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@84.38--84.54) [181708]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume allNodes(Heap, struct)[other];
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
    PostMask := PostMask[null, inv(struct):=PostMask[null, inv(struct)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of allNodes(struct) == old(allNodes(struct))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@86.11--86.27) [181709]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@86.35--86.51) [181710]"}
          NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Set#Equal(allNodes(PostHeap, struct), allNodes(oldHeap, struct));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall p: Ref, q: Ref :: { (p in allNodes(struct)), (q in allNodes(struct)) } { (p in allNodes(struct)), old(find(struct, q)) } { (p in allNodes(struct)), find(struct, q) } { (q in allNodes(struct)), old(find(struct, p)) } { (q in allNodes(struct)), find(struct, p) } { old(find(struct, p)), old(find(struct, q)) } { old(find(struct, p)), find(struct, q) } { old(find(struct, q)), find(struct, p) } (p in allNodes(struct)) && ((q in allNodes(struct)) && old(find(struct, p) == find(struct, q))) ==> find(struct, p) == find(struct, q))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.41--90.57) [181711]"}
            NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (allNodes(PostHeap, struct)[p_14]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.66--90.82) [181712]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (allNodes(PostHeap, struct)[q_12]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@90.90--90.105) [181713]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@90.90--90.105) [181714]"}
                p_14 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.90--90.105) [181715]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@90.90--90.105) [181716]"}
                allNodes(oldHeap, struct)[p_14];
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@90.109--90.124) [181717]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@90.109--90.124) [181718]"}
                q_12 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.109--90.124) [181719]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@90.109--90.124) [181720]"}
                allNodes(oldHeap, struct)[q_12];
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
        }
        if (allNodes(PostHeap, struct)[p_14] && (allNodes(PostHeap, struct)[q_12] && find(oldHeap, struct, p_14) == find(oldHeap, struct, q_12))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@90.130--90.145) [181721]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@90.130--90.145) [181722]"}
              p_14 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.130--90.145) [181723]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@90.130--90.145) [181724]"}
              allNodes(PostHeap, struct)[p_14];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@90.149--90.164) [181725]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@90.149--90.164) [181726]"}
              q_12 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@90.149--90.164) [181727]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@90.149--90.164) [181728]"}
              allNodes(PostHeap, struct)[q_12];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall p_1_1: Ref, q_1_1: Ref ::
      { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_1_1], allNodes#frame(PostHeap[null, inv(struct)], struct)[q_1_1] } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_1_1], find#frame(oldHeap[null, inv(struct)], struct, q_1_1) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_1_1], find#frame(PostHeap[null, inv(struct)], struct, q_1_1) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_1_1], find#frame(oldHeap[null, inv(struct)], struct, p_1_1) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_1_1], find#frame(PostHeap[null, inv(struct)], struct, p_1_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_1_1), find#frame(oldHeap[null, inv(struct)], struct, q_1_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_1_1), find#frame(PostHeap[null, inv(struct)], struct, q_1_1) } { find#frame(oldHeap[null, inv(struct)], struct, q_1_1), find#frame(PostHeap[null, inv(struct)], struct, p_1_1) }
      allNodes(PostHeap, struct)[p_1_1] && (allNodes(PostHeap, struct)[q_1_1] && find(oldHeap, struct, p_1_1) == find(oldHeap, struct, q_1_1)) ==> find(PostHeap, struct, p_1_1) == find(PostHeap, struct, q_1_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall p: Ref, q: Ref :: { (p in allNodes(struct)), (q in allNodes(struct)) } { (p in allNodes(struct)), old(find(struct, q)) } { (p in allNodes(struct)), find(struct, q) } { (q in allNodes(struct)), old(find(struct, p)) } { (q in allNodes(struct)), find(struct, p) } { old(find(struct, p)), old(find(struct, q)) } { old(find(struct, p)), find(struct, q) } { old(find(struct, q)), find(struct, p) } (p in allNodes(struct)) && ((q in allNodes(struct)) && (old(find(struct, p) == find(struct, this)) && old(find(struct, q) == find(struct, other)))) ==> find(struct, p) == find(struct, q))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.41--91.57) [181729]"}
            NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (allNodes(PostHeap, struct)[p_15]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.66--91.82) [181730]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (allNodes(PostHeap, struct)[q_13]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.90--91.105) [181731]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@91.90--91.105) [181732]"}
                p_15 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.90--91.105) [181733]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@91.90--91.105) [181734]"}
                allNodes(oldHeap, struct)[p_15];
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.109--91.127) [181735]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion this != null might not hold. (unionfind.vpr@91.109--91.127) [181736]"}
                this != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.109--91.127) [181737]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (this in allNodes(struct)) might not hold. (unionfind.vpr@91.109--91.127) [181738]"}
                allNodes(oldHeap, struct)[this];
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (find(oldHeap, struct, p_15) == find(oldHeap, struct, this)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.136--91.151) [181739]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@91.136--91.151) [181740]"}
                  q_13 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.136--91.151) [181741]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@91.136--91.151) [181742]"}
                  allNodes(oldHeap, struct)[q_13];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.155--91.174) [181743]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion other != null might not hold. (unionfind.vpr@91.155--91.174) [181744]"}
                  other != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.155--91.174) [181745]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (other in allNodes(struct)) might not hold. (unionfind.vpr@91.155--91.174) [181746]"}
                  allNodes(oldHeap, struct)[other];
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
          }
        }
        if (allNodes(PostHeap, struct)[p_15] && (allNodes(PostHeap, struct)[q_13] && (find(oldHeap, struct, p_15) == find(oldHeap, struct, this) && find(oldHeap, struct, q_13) == find(oldHeap, struct, other)))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.180--91.195) [181747]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@91.180--91.195) [181748]"}
              p_15 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.180--91.195) [181749]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@91.180--91.195) [181750]"}
              allNodes(PostHeap, struct)[p_15];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@91.199--91.214) [181751]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@91.199--91.214) [181752]"}
              q_13 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@91.199--91.214) [181753]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@91.199--91.214) [181754]"}
              allNodes(PostHeap, struct)[q_13];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall p_3_2: Ref, q_3: Ref ::
      { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_3_2], allNodes#frame(PostHeap[null, inv(struct)], struct)[q_3] } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_3_2], find#frame(oldHeap[null, inv(struct)], struct, q_3) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_3_2], find#frame(PostHeap[null, inv(struct)], struct, q_3) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_3], find#frame(oldHeap[null, inv(struct)], struct, p_3_2) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_3], find#frame(PostHeap[null, inv(struct)], struct, p_3_2) } { find#frame(oldHeap[null, inv(struct)], struct, p_3_2), find#frame(oldHeap[null, inv(struct)], struct, q_3) } { find#frame(oldHeap[null, inv(struct)], struct, p_3_2), find#frame(PostHeap[null, inv(struct)], struct, q_3) } { find#frame(oldHeap[null, inv(struct)], struct, q_3), find#frame(PostHeap[null, inv(struct)], struct, p_3_2) }
      allNodes(PostHeap, struct)[p_3_2] && (allNodes(PostHeap, struct)[q_3] && (find(oldHeap, struct, p_3_2) == find(oldHeap, struct, this) && find(oldHeap, struct, q_3) == find(oldHeap, struct, other))) ==> find(PostHeap, struct, p_3_2) == find(PostHeap, struct, q_3)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall p: Ref, q: Ref :: { (p in allNodes(struct)), (q in allNodes(struct)) } { (p in allNodes(struct)), old(find(struct, q)) } { (p in allNodes(struct)), find(struct, q) } { (q in allNodes(struct)), old(find(struct, p)) } { (q in allNodes(struct)), find(struct, p) } { old(find(struct, p)), old(find(struct, q)) } { old(find(struct, p)), find(struct, q) } { old(find(struct, q)), old(find(struct, p)) } { old(find(struct, q)), find(struct, p) } (p in allNodes(struct)) && ((q in allNodes(struct)) && (old(find(struct, p) != find(struct, this)) && (old(find(struct, q) != find(struct, other)) && old(find(struct, p) == find(struct, q))))) ==> find(struct, p) == find(struct, q))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.10--93.26) [181755]"}
            NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (allNodes(PostHeap, struct)[p_16]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.35--93.51) [181756]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (allNodes(PostHeap, struct)[q_14]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.59--93.74) [181757]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@93.59--93.74) [181758]"}
                p_16 != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.59--93.74) [181759]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@93.59--93.74) [181760]"}
                allNodes(oldHeap, struct)[p_16];
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := oldMask;
              ExhaleWellDef0Heap := oldHeap;
              assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.78--93.96) [181761]"}
                struct != null;
              assert {:msg "  Precondition of function find might not hold. Assertion this != null might not hold. (unionfind.vpr@93.78--93.96) [181762]"}
                this != null;
              perm := FullPerm;
              assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.78--93.96) [181763]"}
                NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
              assert {:msg "  Precondition of function find might not hold. Assertion (this in allNodes(struct)) might not hold. (unionfind.vpr@93.78--93.96) [181764]"}
                allNodes(oldHeap, struct)[this];
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (find(oldHeap, struct, p_16) != find(oldHeap, struct, this)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.105--93.120) [181765]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@93.105--93.120) [181766]"}
                  q_14 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.105--93.120) [181767]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@93.105--93.120) [181768]"}
                  allNodes(oldHeap, struct)[q_14];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.124--93.143) [181769]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion other != null might not hold. (unionfind.vpr@93.124--93.143) [181770]"}
                  other != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.124--93.143) [181771]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (other in allNodes(struct)) might not hold. (unionfind.vpr@93.124--93.143) [181772]"}
                  allNodes(oldHeap, struct)[other];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (find(oldHeap, struct, q_14) != find(oldHeap, struct, other)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.152--93.167) [181773]"}
                    struct != null;
                  assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@93.152--93.167) [181774]"}
                    p_16 != null;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.152--93.167) [181775]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                  assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@93.152--93.167) [181776]"}
                    allNodes(oldHeap, struct)[p_16];
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Mask := oldMask;
                  ExhaleWellDef0Heap := oldHeap;
                  assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.171--93.186) [181777]"}
                    struct != null;
                  assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@93.171--93.186) [181778]"}
                    q_14 != null;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.171--93.186) [181779]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                  assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@93.171--93.186) [181780]"}
                    allNodes(oldHeap, struct)[q_14];
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
          }
        }
        if (allNodes(PostHeap, struct)[p_16] && (allNodes(PostHeap, struct)[q_14] && (find(oldHeap, struct, p_16) != find(oldHeap, struct, this) && (find(oldHeap, struct, q_14) != find(oldHeap, struct, other) && find(oldHeap, struct, p_16) == find(oldHeap, struct, q_14))))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.192--93.207) [181781]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@93.192--93.207) [181782]"}
              p_16 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.192--93.207) [181783]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@93.192--93.207) [181784]"}
              allNodes(PostHeap, struct)[p_16];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@93.211--93.226) [181785]"}
              struct != null;
            assert {:msg "  Precondition of function find might not hold. Assertion q != null might not hold. (unionfind.vpr@93.211--93.226) [181786]"}
              q_14 != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@93.211--93.226) [181787]"}
              NoPerm < perm ==> NoPerm < PostMask[null, inv(struct)];
            assert {:msg "  Precondition of function find might not hold. Assertion (q in allNodes(struct)) might not hold. (unionfind.vpr@93.211--93.226) [181788]"}
              allNodes(PostHeap, struct)[q_14];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall p_5_2: Ref, q_5: Ref ::
      { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_5_2], allNodes#frame(PostHeap[null, inv(struct)], struct)[q_5] } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_5_2], find#frame(oldHeap[null, inv(struct)], struct, q_5) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[p_5_2], find#frame(PostHeap[null, inv(struct)], struct, q_5) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_5], find#frame(oldHeap[null, inv(struct)], struct, p_5_2) } { allNodes#frame(PostHeap[null, inv(struct)], struct)[q_5], find#frame(PostHeap[null, inv(struct)], struct, p_5_2) } { find#frame(oldHeap[null, inv(struct)], struct, p_5_2), find#frame(oldHeap[null, inv(struct)], struct, q_5) } { find#frame(oldHeap[null, inv(struct)], struct, p_5_2), find#frame(PostHeap[null, inv(struct)], struct, q_5) } { find#frame(oldHeap[null, inv(struct)], struct, q_5), find#frame(oldHeap[null, inv(struct)], struct, p_5_2) } { find#frame(oldHeap[null, inv(struct)], struct, q_5), find#frame(PostHeap[null, inv(struct)], struct, p_5_2) }
      allNodes(PostHeap, struct)[p_5_2] && (allNodes(PostHeap, struct)[q_5] && (find(oldHeap, struct, p_5_2) != find(oldHeap, struct, this) && (find(oldHeap, struct, q_5) != find(oldHeap, struct, other) && find(oldHeap, struct, p_5_2) == find(oldHeap, struct, q_5)))) ==> find(PostHeap, struct, p_5_2) == find(PostHeap, struct, q_5)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[this1, $allocated];
    assume Heap[other1, $allocated];
  
  // -- Translating statement: this1 := find(struct, this) -- unionfind.vpr@95.2--95.37
    
    // -- Check definedness of find(struct, this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@95.19--95.37) [181789]"}
          struct != null;
        assert {:msg "  Precondition of function find might not hold. Assertion this != null might not hold. (unionfind.vpr@95.19--95.37) [181790]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@95.19--95.37) [181791]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
        assert {:msg "  Precondition of function find might not hold. Assertion (this in allNodes(struct)) might not hold. (unionfind.vpr@95.19--95.37) [181792]"}
          allNodes(Heap, struct)[this];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    this1 := find(Heap, struct, this);
    assume state(Heap, Mask);
  
  // -- Translating statement: other1 := find(struct, other) -- unionfind.vpr@96.2--96.39
    
    // -- Check definedness of find(struct, other)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@96.20--96.39) [181793]"}
          struct != null;
        assert {:msg "  Precondition of function find might not hold. Assertion other != null might not hold. (unionfind.vpr@96.20--96.39) [181794]"}
          other != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@96.20--96.39) [181795]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
        assert {:msg "  Precondition of function find might not hold. Assertion (other in allNodes(struct)) might not hold. (unionfind.vpr@96.20--96.39) [181796]"}
          allNodes(Heap, struct)[other];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    other1 := find(Heap, struct, other);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (other1 != this1) -- unionfind.vpr@97.2--106.3
    if (other1 != this1) {
      
      // -- Translating statement: unfold acc(inv(struct), write) -- unionfind.vpr@99.4--99.34
        assume inv#trigger(Heap, inv(struct));
        assume Heap[null, inv(struct)] == CombineFrames(FrameFragment(Heap[struct, nodes_1]), FrameFragment(inv#condqp1(Heap, struct)));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding inv(struct) might fail. There might be insufficient permission to access inv(struct) (unionfind.vpr@99.4--99.34) [181799]"}
            perm <= Mask[null, inv(struct)];
        }
        Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, inv(struct))) {
            havoc newVersion;
            Heap := Heap[null, inv(struct):=newVersion];
          }
        perm := FullPerm;
        assume struct != null;
        Mask := Mask[struct, nodes_1:=Mask[struct, nodes_1] + perm];
        assume state(Heap, Mask);
        assume !Heap[struct, nodes_1][null];
        havoc QPMask;
        assert {:msg "  Unfolding inv(struct) might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@99.4--99.34) [181801]"}
          (forall n: Ref, n_89: Ref ::
          
          (((n != n_89 && Heap[struct, nodes_1][n]) && Heap[struct, nodes_1][n_89]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n != n_89
        );
        
        // -- Define Inverse Function
          assume (forall n: Ref ::
            { Heap[n, parent] } { QPMask[n, parent] } { Heap[struct, nodes_1][n] }
            Heap[struct, nodes_1][n] && NoPerm < FullPerm ==> qpRange10(n) && invRecv10(n) == n
          );
          assume (forall o_9: Ref ::
            { invRecv10(o_9) }
            (Heap[struct, nodes_1][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> invRecv10(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n: Ref ::
            { Heap[n, parent] } { QPMask[n, parent] } { Heap[struct, nodes_1][n] }
            Heap[struct, nodes_1][n] ==> n != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, parent] }
            ((Heap[struct, nodes_1][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> invRecv10(o_9) == o_9) && QPMask[o_9, parent] == Mask[o_9, parent] + FullPerm) && (!((Heap[struct, nodes_1][invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, parent] == Mask[o_9, parent])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != parent ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall q_12_1: Ref ::
          { Heap[struct, nodes_1][q_12_1] } { Heap[struct, nodes_1][Heap[q_12_1, parent]] }
          Heap[struct, nodes_1][q_12_1] ==> Heap[struct, nodes_1][Heap[q_12_1, parent]]
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this1.parent := other1 -- unionfind.vpr@100.4--100.26
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this1.parent (unionfind.vpr@100.4--100.26) [181802]"}
          FullPerm == Mask[this1, parent];
        Heap := Heap[this1, parent:=other1];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(inv(struct), write) -- unionfind.vpr@101.4--101.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding inv(struct) might fail. There might be insufficient permission to access struct.nodes (unionfind.vpr@101.4--101.32) [181805]"}
            perm <= Mask[struct, nodes_1];
        }
        Mask := Mask[struct, nodes_1:=Mask[struct, nodes_1] - perm];
        assert {:msg "  Folding inv(struct) might fail. Assertion !((null in struct.nodes)) might not hold. (unionfind.vpr@101.4--101.32) [181806]"}
          !Heap[struct, nodes_1][null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Folding inv(struct) might fail. Quantified resource n.parent might not be injective. (unionfind.vpr@101.4--101.32) [181808]"}
            (forall n_1: Ref, n_1_1: Ref ::
            { neverTriggered11(n_1), neverTriggered11(n_1_1) }
            (((n_1 != n_1_1 && Heap[struct, nodes_1][n_1]) && Heap[struct, nodes_1][n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Folding inv(struct) might fail. There might be insufficient permission to access n.parent (unionfind.vpr@101.4--101.32) [181809]"}
            (forall n_1: Ref ::
            { Heap[n_1, parent] } { QPMask[n_1, parent] } { Heap[struct, nodes_1][n_1] }
            Heap[struct, nodes_1][n_1] ==> Mask[n_1, parent] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_1: Ref ::
            { Heap[n_1, parent] } { QPMask[n_1, parent] } { Heap[struct, nodes_1][n_1] }
            Heap[struct, nodes_1][n_1] && NoPerm < FullPerm ==> qpRange11(n_1) && invRecv11(n_1) == n_1
          );
          assume (forall o_9: Ref ::
            { invRecv11(o_9) }
            Heap[struct, nodes_1][invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
          );
        
        // -- assume permission updates for field parent
          assume (forall o_9: Ref ::
            { QPMask[o_9, parent] }
            (Heap[struct, nodes_1][invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9 && QPMask[o_9, parent] == Mask[o_9, parent] - FullPerm) && (!(Heap[struct, nodes_1][invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, parent] == Mask[o_9, parent])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != parent ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (Heap[struct, nodes_1][q_13_1]) {
            assert {:msg "  Folding inv(struct) might fail. Assertion (q.parent in struct.nodes) might not hold. (unionfind.vpr@101.4--101.32) [181810]"}
              Heap[struct, nodes_1][Heap[q_13_1, parent]];
          }
          assume false;
        }
        assume (forall q_14_1: Ref ::
          { Heap[struct, nodes_1][q_14_1] } { Heap[struct, nodes_1][Heap[q_14_1, parent]] }
          Heap[struct, nodes_1][q_14_1] ==> Heap[struct, nodes_1][Heap[q_14_1, parent]]
        );
        perm := FullPerm;
        Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume inv#trigger(Heap, inv(struct));
        assume Heap[null, inv(struct)] == CombineFrames(FrameFragment(Heap[struct, nodes_1]), FrameFragment(inv#condqp1(Heap, struct)));
        if (!HasDirectPerm(Mask, null, inv(struct))) {
          Heap := Heap[null, inv#sm(struct):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, inv(struct):=freshVersion];
        }
        Heap := Heap[null, inv#sm(struct):=Heap[null, inv#sm(struct)][struct, nodes_1:=true]];
        // register all known folded permissions guarded by predicate inv
        havoc newPMask;
        assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
          { newPMask[o_4, f_54] }
          Heap[null, inv#sm(struct)][o_4, f_54] ==> newPMask[o_4, f_54]
        );
        assume (forall n_2: Ref ::
          
          Heap[struct, nodes_1][n_2] ==> newPMask[n_2, parent]
        );
        Heap := Heap[null, inv#sm(struct):=newPMask];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall p: Ref ::
  //     { (p in allNodes(struct)) }
  //     { old(find(struct, p)) }
  //     (p in allNodes(struct)) && old(find(struct, p)) == this1 ==>
  //     find(struct, p) == other1) -- unionfind.vpr@104.7--104.115
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall p: Ref :: { (p in allNodes(struct)) } { old(find(struct, p)) } (p in allNodes(struct)) && old(find(struct, p)) == this1 ==> find(struct, p) == other1)
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@104.36--104.52) [181812]"}
                NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (allNodes(Heap, struct)[p_17]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@104.60--104.75) [181813]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@104.60--104.75) [181814]"}
                  p_17 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@104.60--104.75) [181815]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@104.60--104.75) [181816]"}
                  allNodes(oldHeap, struct)[p_17];
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
            if (allNodes(Heap, struct)[p_17] && find(oldHeap, struct, p_17) == this1) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@104.90--104.105) [181817]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@104.90--104.105) [181818]"}
                  p_17 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@104.90--104.105) [181819]"}
                  NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@104.90--104.105) [181820]"}
                  allNodes(Heap, struct)[p_17];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall p_13_1: Ref ::
          { allNodes#frame(Heap[null, inv(struct)], struct)[p_13_1] } { find#frame(oldHeap[null, inv(struct)], struct, p_13_1) }
          allNodes(Heap, struct)[p_13_1] && find(oldHeap, struct, p_13_1) == this1 ==> find(Heap, struct, p_13_1) == other1
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale (forall p: Ref ::
  //     { (p in allNodes(struct)) }
  //     { old(find(struct, p)) }
  //     (p in allNodes(struct)) && old(find(struct, p)) != this1 ==>
  //     find(struct, p) == old(find(struct, p))) -- unionfind.vpr@105.7--105.129
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall p: Ref :: { (p in allNodes(struct)) } { old(find(struct, p)) } (p in allNodes(struct)) && old(find(struct, p)) != this1 ==> find(struct, p) == old(find(struct, p)))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function allNodes might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@105.36--105.52) [181821]"}
                NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (allNodes(Heap, struct)[p_18]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@105.60--105.75) [181822]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@105.60--105.75) [181823]"}
                  p_18 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@105.60--105.75) [181824]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@105.60--105.75) [181825]"}
                  allNodes(oldHeap, struct)[p_18];
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
            if (allNodes(Heap, struct)[p_18] && find(oldHeap, struct, p_18) != this1) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@105.90--105.105) [181826]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@105.90--105.105) [181827]"}
                  p_18 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@105.90--105.105) [181828]"}
                  NoPerm < perm ==> NoPerm < Mask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@105.90--105.105) [181829]"}
                  allNodes(Heap, struct)[p_18];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := oldMask;
                ExhaleWellDef0Heap := oldHeap;
                assert {:msg "  Precondition of function find might not hold. Assertion struct != null might not hold. (unionfind.vpr@105.113--105.128) [181830]"}
                  struct != null;
                assert {:msg "  Precondition of function find might not hold. Assertion p != null might not hold. (unionfind.vpr@105.113--105.128) [181831]"}
                  p_18 != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function find might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@105.113--105.128) [181832]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, inv(struct)];
                assert {:msg "  Precondition of function find might not hold. Assertion (p in allNodes(struct)) might not hold. (unionfind.vpr@105.113--105.128) [181833]"}
                  allNodes(oldHeap, struct)[p_18];
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall p_15_1: Ref ::
          { allNodes#frame(Heap[null, inv(struct)], struct)[p_15_1] } { find#frame(oldHeap[null, inv(struct)], struct, p_15_1) }
          allNodes(Heap, struct)[p_15_1] && find(oldHeap, struct, p_15_1) != this1 ==> find(Heap, struct, p_15_1) == find(oldHeap, struct, p_15_1)
        );
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unionn might not hold. There might be insufficient permission to access inv(struct) (unionfind.vpr@85.11--85.34) [181834]"}
        perm <= Mask[null, inv(struct)];
    }
    Mask := Mask[null, inv(struct):=Mask[null, inv(struct)] - perm];
    assert {:msg "  Postcondition of unionn might not hold. Assertion allNodes(struct) == old(allNodes(struct)) might not hold. (unionfind.vpr@86.11--86.52) [181835]"}
      Set#Equal(allNodes(Heap, struct), allNodes(oldHeap, struct));
    if (*) {
      if (allNodes(Heap, struct)[p_6] && (allNodes(Heap, struct)[q_6_1] && find(oldHeap, struct, p_6) == find(oldHeap, struct, q_6_1))) {
        assert {:msg "  Postcondition of unionn might not hold. Assertion find(struct, p) == find(struct, q) might not hold. (unionfind.vpr@90.11--90.164) [181836]"}
          find(Heap, struct, p_6) == find(Heap, struct, q_6_1);
      }
      assume false;
    }
    assume (forall p_7_1_1: Ref, q_7_1: Ref ::
      { allNodes#frame(Heap[null, inv(struct)], struct)[p_7_1_1], allNodes#frame(Heap[null, inv(struct)], struct)[q_7_1] } { allNodes#frame(Heap[null, inv(struct)], struct)[p_7_1_1], find#frame(oldHeap[null, inv(struct)], struct, q_7_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[p_7_1_1], find#frame(Heap[null, inv(struct)], struct, q_7_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_7_1], find#frame(oldHeap[null, inv(struct)], struct, p_7_1_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_7_1], find#frame(Heap[null, inv(struct)], struct, p_7_1_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_7_1_1), find#frame(oldHeap[null, inv(struct)], struct, q_7_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_7_1_1), find#frame(Heap[null, inv(struct)], struct, q_7_1) } { find#frame(oldHeap[null, inv(struct)], struct, q_7_1), find#frame(Heap[null, inv(struct)], struct, p_7_1_1) }
      allNodes(Heap, struct)[p_7_1_1] && (allNodes(Heap, struct)[q_7_1] && find(oldHeap, struct, p_7_1_1) == find(oldHeap, struct, q_7_1)) ==> find(Heap, struct, p_7_1_1) == find(Heap, struct, q_7_1)
    );
    if (*) {
      if (allNodes(Heap, struct)[p_8] && (allNodes(Heap, struct)[q_8_1] && (find(oldHeap, struct, p_8) == find(oldHeap, struct, this) && find(oldHeap, struct, q_8_1) == find(oldHeap, struct, other)))) {
        assert {:msg "  Postcondition of unionn might not hold. Assertion find(struct, p) == find(struct, q) might not hold. (unionfind.vpr@91.11--91.214) [181837]"}
          find(Heap, struct, p_8) == find(Heap, struct, q_8_1);
      }
      assume false;
    }
    assume (forall p_9_1_1: Ref, q_9_1: Ref ::
      { allNodes#frame(Heap[null, inv(struct)], struct)[p_9_1_1], allNodes#frame(Heap[null, inv(struct)], struct)[q_9_1] } { allNodes#frame(Heap[null, inv(struct)], struct)[p_9_1_1], find#frame(oldHeap[null, inv(struct)], struct, q_9_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[p_9_1_1], find#frame(Heap[null, inv(struct)], struct, q_9_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_9_1], find#frame(oldHeap[null, inv(struct)], struct, p_9_1_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_9_1], find#frame(Heap[null, inv(struct)], struct, p_9_1_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_9_1_1), find#frame(oldHeap[null, inv(struct)], struct, q_9_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_9_1_1), find#frame(Heap[null, inv(struct)], struct, q_9_1) } { find#frame(oldHeap[null, inv(struct)], struct, q_9_1), find#frame(Heap[null, inv(struct)], struct, p_9_1_1) }
      allNodes(Heap, struct)[p_9_1_1] && (allNodes(Heap, struct)[q_9_1] && (find(oldHeap, struct, p_9_1_1) == find(oldHeap, struct, this) && find(oldHeap, struct, q_9_1) == find(oldHeap, struct, other))) ==> find(Heap, struct, p_9_1_1) == find(Heap, struct, q_9_1)
    );
    if (*) {
      if (allNodes(Heap, struct)[p_10_1] && (allNodes(Heap, struct)[q_10_1] && (find(oldHeap, struct, p_10_1) != find(oldHeap, struct, this) && (find(oldHeap, struct, q_10_1) != find(oldHeap, struct, other) && find(oldHeap, struct, p_10_1) == find(oldHeap, struct, q_10_1))))) {
        assert {:msg "  Postcondition of unionn might not hold. Assertion find(struct, p) == find(struct, q) might not hold. (unionfind.vpr@92.11--93.226) [181838]"}
          find(Heap, struct, p_10_1) == find(Heap, struct, q_10_1);
      }
      assume false;
    }
    assume (forall p_11_1: Ref, q_11_1: Ref ::
      { allNodes#frame(Heap[null, inv(struct)], struct)[p_11_1], allNodes#frame(Heap[null, inv(struct)], struct)[q_11_1] } { allNodes#frame(Heap[null, inv(struct)], struct)[p_11_1], find#frame(oldHeap[null, inv(struct)], struct, q_11_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[p_11_1], find#frame(Heap[null, inv(struct)], struct, q_11_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_11_1], find#frame(oldHeap[null, inv(struct)], struct, p_11_1) } { allNodes#frame(Heap[null, inv(struct)], struct)[q_11_1], find#frame(Heap[null, inv(struct)], struct, p_11_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_11_1), find#frame(oldHeap[null, inv(struct)], struct, q_11_1) } { find#frame(oldHeap[null, inv(struct)], struct, p_11_1), find#frame(Heap[null, inv(struct)], struct, q_11_1) } { find#frame(oldHeap[null, inv(struct)], struct, q_11_1), find#frame(oldHeap[null, inv(struct)], struct, p_11_1) } { find#frame(oldHeap[null, inv(struct)], struct, q_11_1), find#frame(Heap[null, inv(struct)], struct, p_11_1) }
      allNodes(Heap, struct)[p_11_1] && (allNodes(Heap, struct)[q_11_1] && (find(oldHeap, struct, p_11_1) != find(oldHeap, struct, this) && (find(oldHeap, struct, q_11_1) != find(oldHeap, struct, other) && find(oldHeap, struct, p_11_1) == find(oldHeap, struct, q_11_1)))) ==> find(Heap, struct, p_11_1) == find(Heap, struct, q_11_1)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}