// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:39:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(r_4_1: Ref): bool;
function  neverTriggered2(r_4_1: Ref): bool;
function  neverTriggered3(r_4_1: Ref): bool;
function  neverTriggered4(r_5_1: Ref): bool;
function  neverTriggered5(r_1: Ref): bool;
function  neverTriggered6(r_1: Ref): bool;
function  neverTriggered7(r_1: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: fun2
// - height 4: fun1
// - height 3: fun6
// - height 2: fun4
// - height 1: fun3
// - height 0: fun5
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, xs: (Set Ref), x: Ref): int;
function  fun1'(Heap: HeapType, xs: (Set Ref), x: Ref): int;
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref ::
  { fun1(Heap, xs, x) }
  fun1(Heap, xs, x) == fun1'(Heap, xs, x) && dummyFunction(fun1#triggerStateless(xs, x))
);
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref ::
  { fun1'(Heap, xs, x) }
  dummyFunction(fun1#triggerStateless(xs, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref ::
  { state(Heap, Mask), fun1(Heap, xs, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> xs[x] ==> fun1(Heap, xs, x) == Heap[x, f_7]
);

// Framing axioms
function  fun1#frame(frame: FrameType, xs: (Set Ref), x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref ::
  { state(Heap, Mask), fun1'(Heap, xs, x) }
  state(Heap, Mask) ==> fun1'(Heap, xs, x) == fun1#frame(FrameFragment(fun1#condqp1(Heap, xs, x)), xs, x)
);
// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(r.f, write)) in function fun1
// ==================================================

function  fun1#condqp1(Heap: HeapType, xs_1_1: (Set Ref), x_1_1_1: Ref): int;
function  sk_fun1#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), x: Ref ::
  { fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x))] && NoPerm < FullPerm <==> xs[sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x))] && NoPerm < FullPerm) && (xs[sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x)), f_7] == Heap1Heap[sk_fun1#condqp1(fun1#condqp1(Heap2Heap, xs, x), fun1#condqp1(Heap1Heap, xs, x)), f_7]) ==> fun1#condqp1(Heap2Heap, xs, x) == fun1#condqp1(Heap1Heap, xs, x)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, xs: (Set Ref), x: Ref): bool;

// State-independent trigger function
function  fun1#triggerStateless(xs: (Set Ref), x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(xs: (Set Ref), x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (functions.vpr@8.12--8.49) [182790]"}
      (forall r_4_1: Ref, r_4_2: Ref ::
      
      (((r_4_1 != r_4_2 && xs[r_4_1]) && xs[r_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4_1 != r_4_2
    );
    
    // -- Define Inverse Function
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { xs[r_4_1] }
        xs[r_4_1] && NoPerm < FullPerm ==> qpRange1(r_4_1) && invRecv1(r_4_1) == r_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { xs[r_4_1] }
        xs[r_4_1] ==> r_4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@6.1--9.8) [182791]"}
        HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, xs: (Set Ref), x: Ref, y: Ref): int;
function  fun2'(Heap: HeapType, xs: (Set Ref), x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref, y: Ref ::
  { fun2(Heap, xs, x, y) }
  fun2(Heap, xs, x, y) == fun2'(Heap, xs, x, y) && dummyFunction(fun2#triggerStateless(xs, x, y))
);
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref, y: Ref ::
  { fun2'(Heap, xs, x, y) }
  dummyFunction(fun2#triggerStateless(xs, x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref, y: Ref ::
  { state(Heap, Mask), fun2(Heap, xs, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> xs[x] ==> fun2(Heap, xs, x, y) == Heap[x, f_7] + (if xs[y] then Heap[y, f_7] else Heap[x, f_7])
);

// Framing axioms
function  fun2#frame(frame: FrameType, xs: (Set Ref), x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref, y: Ref ::
  { state(Heap, Mask), fun2'(Heap, xs, x, y) }
  state(Heap, Mask) ==> fun2'(Heap, xs, x, y) == fun2#frame(FrameFragment(fun2#condqp2(Heap, xs, x, y)), xs, x, y)
);
// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(r.f, write)) in function fun2
// ==================================================

function  fun2#condqp2(Heap: HeapType, xs_1_1: (Set Ref), x_1_1_1: Ref, y_1_1_1: Ref): int;
function  sk_fun2#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), x: Ref, y: Ref ::
  { fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun2#condqp2(fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y))] && NoPerm < FullPerm <==> xs[sk_fun2#condqp2(fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y))] && NoPerm < FullPerm) && (xs[sk_fun2#condqp2(fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun2#condqp2(fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y)), f_7] == Heap1Heap[sk_fun2#condqp2(fun2#condqp2(Heap2Heap, xs, x, y), fun2#condqp2(Heap1Heap, xs, x, y)), f_7]) ==> fun2#condqp2(Heap2Heap, xs, x, y) == fun2#condqp2(Heap1Heap, xs, x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, xs: (Set Ref), x: Ref, y: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(xs: (Set Ref), x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(xs: (Set Ref), x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in xs) } (r in xs) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (functions.vpr@13.12--13.49) [182792]"}
      (forall r_4_1: Ref, r_4_2: Ref ::
      
      (((r_4_1 != r_4_2 && xs[r_4_1]) && xs[r_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4_1 != r_4_2
    );
    
    // -- Define Inverse Function
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { xs[r_4_1] }
        xs[r_4_1] && NoPerm < FullPerm ==> qpRange2(r_4_1) && invRecv2(r_4_1) == r_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { xs[r_4_1] }
        xs[r_4_1] ==> r_4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + ((y in xs) ? y.f : x.f)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@11.1--14.32) [182793]"}
        HasDirectPerm(Mask, x, f_7);
      if (xs[y]) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@11.1--14.32) [182794]"}
          HasDirectPerm(Mask, y, f_7);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@11.1--14.32) [182795]"}
          HasDirectPerm(Mask, x, f_7);
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + (if xs[y] then Heap[y, f_7] else Heap[x, f_7]);
}

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
function  fun3'(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun3(Heap, x, y, z) }
  fun3(Heap, x, y, z) == fun3'(Heap, x, y, z) && dummyFunction(fun3#triggerStateless(x, y, z))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun3'(Heap, x, y, z) }
  dummyFunction(fun3#triggerStateless(x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun3(Heap, x, y, z) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> x != null && (y != null && z != null) ==> fun3(Heap, x, y, z) == Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun2(Heap, Set#UnionOne(Set#Singleton(z), x), x, y)
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun3'(Heap, x, y, z) }
  state(Heap, Mask) ==> fun3'(Heap, x, y, z) == fun3#frame(FrameFragment(fun3#condqp3(Heap, x, y, z)), x, y, z)
);
// ==================================================
// Function used for framing of quantified permission (forall r: Ref :: { (r in Set(x, y, z)) } (r in Set(x, y, z)) ==> acc(r.f, write)) in function fun3
// ==================================================

function  fun3#condqp3(Heap: HeapType, x_1_1_1: Ref, y_1_1_1: Ref, z_1_1_1: Ref): int;
function  sk_fun3#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z), succHeapTrans(Heap2Heap, Heap1Heap) }
  (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[sk_fun3#condqp3(fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z))] && NoPerm < FullPerm <==> Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[sk_fun3#condqp3(fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z))] && NoPerm < FullPerm) && (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[sk_fun3#condqp3(fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun3#condqp3(fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z)), f_7] == Heap1Heap[sk_fun3#condqp3(fun3#condqp3(Heap2Heap, x, y, z), fun3#condqp3(Heap1Heap, x, y, z)), f_7]) ==> fun3#condqp3(Heap2Heap, x, y, z) == fun3#condqp3(Heap1Heap, x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, x: Ref, y: Ref, z: Ref): bool;

// State-independent trigger function
function  fun3#triggerStateless(x: Ref, y: Ref, z: Ref): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(x: Ref, y: Ref, z: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall r: Ref :: { (r in Set(x, y, z)) } (r in Set(x, y, z)) ==> acc(r.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource r.f might not be injective. (functions.vpr@17.12--17.59) [182796]"}
      (forall r_4_1: Ref, r_4_2: Ref ::
      
      (((r_4_1 != r_4_2 && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1]) && Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_4_1 != r_4_2
    );
    
    // -- Define Inverse Function
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1] && NoPerm < FullPerm ==> qpRange3(r_4_1) && invRecv3(r_4_1) == r_4_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall r_4_1: Ref ::
        { Heap[r_4_1, f_7] } { QPMask[r_4_1, f_7] } { Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1] }
        Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[r_4_1] ==> r_4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Set#UnionOne(Set#UnionOne(Set#Singleton(z), y), x)[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x != null;
    assume y != null;
    assume z != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + y.f + z.f + fun2(Set(x, z), x, y)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@16.1--19.44) [182797]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@16.1--19.44) [182798]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (functions.vpr@16.1--19.44) [182799]"}
        HasDirectPerm(Mask, z, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun2 might not hold. Assertion (x in Set(x, z)) might not hold. (functions.vpr@19.21--19.42) [182800]"}
          Set#UnionOne(Set#Singleton(z), x)[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Precondition of function fun2 might not hold. Quantified resource r.f might not be injective. (functions.vpr@19.21--19.42) [182801]"}
            (forall r_5_1: Ref, r_5_2: Ref ::
            { neverTriggered4(r_5_1), neverTriggered4(r_5_2) }
            (((r_5_1 != r_5_2 && Set#UnionOne(Set#Singleton(z), x)[r_5_1]) && Set#UnionOne(Set#Singleton(z), x)[r_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_5_1 != r_5_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access r.f (functions.vpr@19.21--19.42) [182802]"}
            (forall r_5_1: Ref ::
            { Heap[r_5_1, f_7] } { QPMask[r_5_1, f_7] } { Set#UnionOne(Set#Singleton(z), x)[r_5_1] }
            Set#UnionOne(Set#Singleton(z), x)[r_5_1] ==> FullPerm > NoPerm ==> Mask[r_5_1, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_5_1: Ref ::
            { Heap[r_5_1, f_7] } { QPMask[r_5_1, f_7] } { Set#UnionOne(Set#Singleton(z), x)[r_5_1] }
            Set#UnionOne(Set#Singleton(z), x)[r_5_1] && NoPerm < FullPerm ==> qpRange4(r_5_1) && invRecv4(r_5_1) == r_5_1
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            Set#UnionOne(Set#Singleton(z), x)[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> invRecv4(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun2(Heap, Set#UnionOne(Set#Singleton(z), x), x, y);
}

// ==================================================
// Translation of function fun4
// ==================================================

// Uninterpreted function definitions
function  fun4(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
function  fun4'(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun4(Heap, x, y, z) }
  fun4(Heap, x, y, z) == fun4'(Heap, x, y, z) && dummyFunction(fun4#triggerStateless(x, y, z))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun4'(Heap, x, y, z) }
  dummyFunction(fun4#triggerStateless(x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun4(Heap, x, y, z) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun4(Heap, x, y, z) == Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun1(Heap, Set#Singleton(x), x)
);

// Framing axioms
function  fun4#frame(frame: FrameType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun4'(Heap, x, y, z) }
  state(Heap, Mask) ==> fun4'(Heap, x, y, z) == fun4#frame(CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[y, f_7]), FrameFragment(Heap[z, f_7]))), x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  fun4#trigger(frame: FrameType, x: Ref, y: Ref, z: Ref): bool;

// State-independent trigger function
function  fun4#triggerStateless(x: Ref, y: Ref, z: Ref): int;

// Check contract well-formedness and postcondition
procedure fun4#definedness(x: Ref, y: Ref, z: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + y.f + z.f + fun1(Set(x), x)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@21.1--23.38) [182803]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@21.1--23.38) [182804]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (functions.vpr@21.1--23.38) [182805]"}
        HasDirectPerm(Mask, z, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in Set(x)) might not hold. (functions.vpr@23.21--23.36) [182806]"}
          Set#Singleton(x)[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource r.f might not be injective. (functions.vpr@23.21--23.36) [182807]"}
            (forall r_1: Ref, r_52: Ref ::
            { neverTriggered5(r_1), neverTriggered5(r_52) }
            (((r_1 != r_52 && Set#Singleton(x)[r_1]) && Set#Singleton(x)[r_52]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_52
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access r.f (functions.vpr@23.21--23.36) [182808]"}
            (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#Singleton(x)[r_1] }
            Set#Singleton(x)[r_1] ==> FullPerm > NoPerm ==> Mask[r_1, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#Singleton(x)[r_1] }
            Set#Singleton(x)[r_1] && NoPerm < FullPerm ==> qpRange5(r_1) && invRecv5(r_1) == r_1
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            Set#Singleton(x)[invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun1(Heap, Set#Singleton(x), x);
}

// ==================================================
// Translation of function fun5
// ==================================================

// Uninterpreted function definitions
function  fun5(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
function  fun5'(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun5(Heap, x, y, z) }
  fun5(Heap, x, y, z) == fun5'(Heap, x, y, z) && dummyFunction(fun5#triggerStateless(x, y, z))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun5'(Heap, x, y, z) }
  dummyFunction(fun5#triggerStateless(x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun5(Heap, x, y, z) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun5(Heap, x, y, z) == Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun1(Heap, Set#UnionOne(Set#Singleton(y), x), x)
);

// Framing axioms
function  fun5#frame(frame: FrameType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun5'(Heap, x, y, z) }
  state(Heap, Mask) ==> fun5'(Heap, x, y, z) == fun5#frame(CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[y, f_7]), FrameFragment(Heap[z, f_7]))), x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  fun5#trigger(frame: FrameType, x: Ref, y: Ref, z: Ref): bool;

// State-independent trigger function
function  fun5#triggerStateless(x: Ref, y: Ref, z: Ref): int;

// Check contract well-formedness and postcondition
procedure fun5#definedness(x: Ref, y: Ref, z: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + y.f + z.f + fun1(Set(x, y), x)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@25.1--27.41) [182809]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@25.1--27.41) [182810]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (functions.vpr@25.1--27.41) [182811]"}
        HasDirectPerm(Mask, z, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in Set(x, y)) might not hold. (functions.vpr@27.21--27.39) [182812]"}
          Set#UnionOne(Set#Singleton(y), x)[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource r.f might not be injective. (functions.vpr@27.21--27.39) [182813]"}
            (forall r_1: Ref, r_52: Ref ::
            { neverTriggered6(r_1), neverTriggered6(r_52) }
            (((r_1 != r_52 && Set#UnionOne(Set#Singleton(y), x)[r_1]) && Set#UnionOne(Set#Singleton(y), x)[r_52]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_52
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access r.f (functions.vpr@27.21--27.39) [182814]"}
            (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#UnionOne(Set#Singleton(y), x)[r_1] }
            Set#UnionOne(Set#Singleton(y), x)[r_1] ==> FullPerm > NoPerm ==> Mask[r_1, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#UnionOne(Set#Singleton(y), x)[r_1] }
            Set#UnionOne(Set#Singleton(y), x)[r_1] && NoPerm < FullPerm ==> qpRange6(r_1) && invRecv6(r_1) == r_1
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            Set#UnionOne(Set#Singleton(y), x)[invRecv6(o_9)] && (NoPerm < FullPerm && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun1(Heap, Set#UnionOne(Set#Singleton(y), x), x);
}

// ==================================================
// Translation of function fun6
// ==================================================

// Uninterpreted function definitions
function  fun6(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
function  fun6'(Heap: HeapType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun6(Heap, x, y, z) }
  fun6(Heap, x, y, z) == fun6'(Heap, x, y, z) && dummyFunction(fun6#triggerStateless(x, y, z))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { fun6'(Heap, x, y, z) }
  dummyFunction(fun6#triggerStateless(x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun6(Heap, x, y, z) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun6(Heap, x, y, z) == Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun2(Heap, Set#UnionOne(Set#Singleton(z), x), x, y)
);

// Framing axioms
function  fun6#frame(frame: FrameType, x: Ref, y: Ref, z: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, z: Ref ::
  { state(Heap, Mask), fun6'(Heap, x, y, z) }
  state(Heap, Mask) ==> fun6'(Heap, x, y, z) == fun6#frame(CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[y, f_7]), FrameFragment(Heap[z, f_7]))), x, y, z)
);

// Trigger function (controlling recursive postconditions)
function  fun6#trigger(frame: FrameType, x: Ref, y: Ref, z: Ref): bool;

// State-independent trigger function
function  fun6#triggerStateless(x: Ref, y: Ref, z: Ref): int;

// Check contract well-formedness and postcondition
procedure fun6#definedness(x: Ref, y: Ref, z: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f + y.f + z.f + fun2(Set(x, z), x, y)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@29.1--31.44) [182815]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@29.1--31.44) [182816]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (functions.vpr@29.1--31.44) [182817]"}
        HasDirectPerm(Mask, z, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function fun2 might not hold. Assertion (x in Set(x, z)) might not hold. (functions.vpr@31.21--31.42) [182818]"}
          Set#UnionOne(Set#Singleton(z), x)[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Precondition of function fun2 might not hold. Quantified resource r.f might not be injective. (functions.vpr@31.21--31.42) [182819]"}
            (forall r_1: Ref, r_52: Ref ::
            { neverTriggered7(r_1), neverTriggered7(r_52) }
            (((r_1 != r_52 && Set#UnionOne(Set#Singleton(z), x)[r_1]) && Set#UnionOne(Set#Singleton(z), x)[r_52]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_52
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access r.f (functions.vpr@31.21--31.42) [182820]"}
            (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#UnionOne(Set#Singleton(z), x)[r_1] }
            Set#UnionOne(Set#Singleton(z), x)[r_1] ==> FullPerm > NoPerm ==> Mask[r_1, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_1: Ref ::
            { Heap[r_1, f_7] } { QPMask[r_1, f_7] } { Set#UnionOne(Set#Singleton(z), x)[r_1] }
            Set#UnionOne(Set#Singleton(z), x)[r_1] && NoPerm < FullPerm ==> qpRange7(r_1) && invRecv7(r_1) == r_1
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            Set#UnionOne(Set#Singleton(z), x)[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7] + Heap[z, f_7] + fun2(Heap, Set#UnionOne(Set#Singleton(z), x), x, y);
}