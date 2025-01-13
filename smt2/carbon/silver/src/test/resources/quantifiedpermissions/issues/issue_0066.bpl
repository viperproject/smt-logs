// 
// Translation of Viper program.
// 
// Date:         2025-01-13 17:57:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/issues/issue_0066-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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

function  neverTriggered1(s_1: Ref): bool;
function  neverTriggered2(s_3: Ref): bool;
function  neverTriggered3(s_5_1: Ref): bool;
function  neverTriggered4(s_1: Ref): bool;
function  neverTriggered5(s_3: Ref): bool;
function  neverTriggered6(s_1: Ref): bool;
function  neverTriggered7(s_3: Ref): bool;
function  neverTriggered8(s_5_1: Ref): bool;
function  neverTriggered9(s_7_1: Ref): bool;
function  neverTriggered10(s_8_1: Ref): bool;
function  neverTriggered11(s_9_1: Ref): bool;
function  neverTriggered12(s_1: Ref): bool;
function  neverTriggered13(s_3: Ref): bool;
function  neverTriggered14(s_5_1: Ref): bool;
function  neverTriggered15(s_7_1: Ref): bool;
function  neverTriggered16(s_8_1: Ref): bool;
function  neverTriggered17(s_9_1: Ref): bool;
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
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(recv: Ref): Ref;
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
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;

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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(S: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var s1_1: Ref;
  var s2_1: Ref;
  var s_7: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s_14: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write)) -- issue_0066.vpr@8.3--8.46
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource s.f might not be injective. (issue_0066.vpr@8.10--8.46) [77071]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange1(s_1) && invRecv1(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((S[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall s1: Ref, s2: Ref ::
  //     { (s1 in S), (s2 in S) }
  //     (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f) -- issue_0066.vpr@9.3--9.86
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
      if (*) {
        if (S[s1_1] && (S[s2_1] && s1_1 != s2_1)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access s1.f (issue_0066.vpr@9.10--9.86) [77072]"}
            HasDirectPerm(Mask, s1_1, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access s2.f (issue_0066.vpr@9.10--9.86) [77073]"}
            HasDirectPerm(Mask, s2_1, f_7);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { S[s1_1_1], S[s2_1_1] }
      S[s1_1_1] && (S[s2_1_1] && s1_1_1 != s2_1_1) ==> Heap[s1_1_1, f_7] != Heap[s2_1_1, f_7]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write)) -- issue_0066.vpr@10.3--10.48
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write))
      if (*) {
        if (S[s_7]) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access s.f (issue_0066.vpr@10.10--10.48) [77074]"}
            HasDirectPerm(Mask, s_7, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource s.f.g might not be injective. (issue_0066.vpr@10.10--10.48) [77075]"}
      (forall s_3: Ref, s_3_1: Ref ::
      
      (((s_3 != s_3_1 && S[s_3]) && S[s_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[s_3, f_7] != Heap[s_3_1, f_7]
    );
    
    // -- Define Inverse Function
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] && NoPerm < FullPerm ==> qpRange2(Heap[s_3, f_7]) && invRecv2(Heap[s_3, f_7]) == s_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (S[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> Heap[invRecv2(o_4), f_7] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] ==> Heap[s_3, f_7] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((S[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv2(o_4), f_7] == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((S[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write)) -- issue_0066.vpr@11.3--11.48
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write))
      if (*) {
        if (S[s_14]) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access s.f (issue_0066.vpr@11.10--11.48) [77076]"}
            HasDirectPerm(ExhaleWellDef0Mask, s_14, f_7);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s.f is injective
      assert {:msg "  Exhale might fail. Quantified resource s.f.g might not be injective. (issue_0066.vpr@11.10--11.48) [77078]"}
        (forall s_5_1: Ref, s_5_2: Ref ::
        { neverTriggered3(s_5_1), neverTriggered3(s_5_2) }
        (((s_5_1 != s_5_2 && S[s_5_1]) && S[s_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[s_5_1, f_7] != Heap[s_5_2, f_7]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access s.f.g (issue_0066.vpr@11.10--11.48) [77079]"}
        (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] ==> Mask[Heap[s_5_1, f_7], g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s.f
      assume (forall s_5_1: Ref ::
        { Heap[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] && NoPerm < FullPerm ==> qpRange3(Heap[s_5_1, f_7]) && invRecv3(Heap[s_5_1, f_7]) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        S[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> Heap[invRecv3(o_4), f_7] == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (S[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> Heap[invRecv3(o_4), f_7] == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(S[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var s1: Ref;
  var s2: Ref;
  var s3: Ref;
  var freshObj: Ref;
  var S: (Set Ref);
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var s_9: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[s1, $allocated];
    assume Heap[s2, $allocated];
    assume Heap[s3, $allocated];
  
  // -- Translating statement: s1 := new(f, g) -- issue_0066.vpr@15.16--15.28
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    s1 := freshObj;
    Mask := Mask[s1, f_7:=Mask[s1, f_7] + FullPerm];
    Mask := Mask[s1, g:=Mask[s1, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: s2 := new(f, g) -- issue_0066.vpr@16.16--16.28
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    s2 := freshObj;
    Mask := Mask[s2, f_7:=Mask[s2, f_7] + FullPerm];
    Mask := Mask[s2, g:=Mask[s2, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: s3 := new(f, g) -- issue_0066.vpr@17.16--17.28
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    s3 := freshObj;
    Mask := Mask[s3, f_7:=Mask[s3, f_7] + FullPerm];
    Mask := Mask[s3, g:=Mask[s3, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: S := Set(s1, s2, s3) -- issue_0066.vpr@18.3--18.37
    S := Set#UnionOne(Set#UnionOne(Set#Singleton(s3), s2), s1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write)) -- issue_0066.vpr@20.3--20.46
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s is injective
      assert {:msg "  Assert might fail. Quantified resource s.f might not be injective. (issue_0066.vpr@20.10--20.46) [77081]"}
        (forall s_1: Ref, s_1_1: Ref ::
        { neverTriggered4(s_1), neverTriggered4(s_1_1) }
        (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access s.f (issue_0066.vpr@20.10--20.46) [77082]"}
        (forall s_1: Ref ::
        { AssertHeap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] ==> AssertMask[s_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s
      assume (forall s_1: Ref ::
        { AssertHeap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange4(s_1) && invRecv4(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        S[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (S[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4)) ==> invRecv4(o_4) == o_4 && QPMask[o_4, f_7] == AssertMask[o_4, f_7] - FullPerm) && (!(S[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4))) ==> QPMask[o_4, f_7] == AssertMask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale s1.f != null && (s2.f != null && s3.f != null) -- issue_0066.vpr@22.3--22.54
    
    // -- Check definedness of s1.f != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access s1.f (issue_0066.vpr@22.10--22.54) [77083]"}
        HasDirectPerm(Mask, s1, f_7);
    assume Heap[s1, f_7] != null;
    
    // -- Check definedness of s2.f != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access s2.f (issue_0066.vpr@22.10--22.54) [77084]"}
        HasDirectPerm(Mask, s2, f_7);
    assume Heap[s2, f_7] != null;
    
    // -- Check definedness of s3.f != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access s3.f (issue_0066.vpr@22.10--22.54) [77085]"}
        HasDirectPerm(Mask, s3, f_7);
    assume Heap[s3, f_7] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write)) -- issue_0066.vpr@27.3--27.48
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write))
      if (*) {
        if (S[s_9]) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access s.f (issue_0066.vpr@27.10--27.48) [77086]"}
            HasDirectPerm(ExhaleWellDef0Mask, s_9, f_7);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s.f is injective
      assert {:msg "  Assert might fail. Quantified resource s.f.g might not be injective. (issue_0066.vpr@27.10--27.48) [77088]"}
        (forall s_3: Ref, s_3_1: Ref ::
        { neverTriggered5(s_3), neverTriggered5(s_3_1) }
        (((s_3 != s_3_1 && S[s_3]) && S[s_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> AssertHeap[s_3, f_7] != AssertHeap[s_3_1, f_7]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Assert might fail. There might be insufficient permission to access s.f.g (issue_0066.vpr@27.10--27.48) [77089]"}
        (forall s_3: Ref ::
        { AssertHeap[s_3, f_7] } { S[s_3] }
        S[s_3] ==> AssertMask[AssertHeap[s_3, f_7], g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s.f
      assume (forall s_3: Ref ::
        { AssertHeap[s_3, f_7] } { S[s_3] }
        S[s_3] && NoPerm < FullPerm ==> qpRange5(AssertHeap[s_3, f_7]) && invRecv5(AssertHeap[s_3, f_7]) == s_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        S[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> AssertHeap[invRecv5(o_4), f_7] == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (S[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> AssertHeap[invRecv5(o_4), f_7] == o_4 && QPMask[o_4, g] == AssertMask[o_4, g] - FullPerm) && (!(S[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, g] == AssertMask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> AssertMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    AssertMask := QPMask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(S: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s1_2: Ref;
  var s2_2: Ref;
  var s_11: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var s1_3: Ref;
  var s2_3: Ref;
  var s_13: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s1_4: Ref;
  var s2_4: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@31.12--31.48) [77090]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] && NoPerm < FullPerm ==> qpRange6(s_1) && invRecv6(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (S[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((S[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((S[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
      if (*) {
        if (S[s1_2] && (S[s2_2] && s1_2 != s2_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s1.f (issue_0066.vpr@32.12--32.88) [77091]"}
            HasDirectPerm(Mask, s1_2, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s2.f (issue_0066.vpr@32.12--32.88) [77092]"}
            HasDirectPerm(Mask, s2_2, f_7);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { S[s1_1_1], S[s2_1_1] }
      S[s1_1_1] && (S[s2_1_1] && s1_1_1 != s2_1_1) ==> Heap[s1_1_1, f_7] != Heap[s2_1_1, f_7]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write))
      if (*) {
        if (S[s_11]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.f (issue_0066.vpr@33.12--33.50) [77093]"}
            HasDirectPerm(Mask, s_11, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@33.12--33.50) [77094]"}
      (forall s_3: Ref, s_3_1: Ref ::
      
      (((s_3 != s_3_1 && S[s_3]) && S[s_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[s_3, f_7] != Heap[s_3_1, f_7]
    );
    
    // -- Define Inverse Function
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] && NoPerm < FullPerm ==> qpRange7(Heap[s_3, f_7]) && invRecv7(Heap[s_3, f_7]) == s_3
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> Heap[invRecv7(o_4), f_7] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] ==> Heap[s_3, f_7] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv7(o_4), f_7] == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((S[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@34.12--34.48) [77095]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && S[s_5_1]) && S[s_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { PostHeap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] && NoPerm < FullPerm ==> qpRange8(s_5_1) && invRecv8(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (S[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { PostHeap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((S[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((S[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
      if (*) {
        if (S[s1_3] && (S[s2_3] && s1_3 != s2_3)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s1.f (issue_0066.vpr@35.11--35.87) [77096]"}
            HasDirectPerm(PostMask, s1_3, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s2.f (issue_0066.vpr@35.11--35.87) [77097]"}
            HasDirectPerm(PostMask, s2_3, f_7);
        }
        assume false;
      }
    assume (forall s1_3_1: Ref, s2_3_1: Ref ::
      { S[s1_3_1], S[s2_3_1] }
      S[s1_3_1] && (S[s2_3_1] && s1_3_1 != s2_3_1) ==> PostHeap[s1_3_1, f_7] != PostHeap[s2_3_1, f_7]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, write))
      if (*) {
        if (S[s_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.f (issue_0066.vpr@36.12--36.50) [77098]"}
            HasDirectPerm(PostMask, s_13, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@36.12--36.50) [77099]"}
      (forall s_7_1: Ref, s_7_2: Ref ::
      
      (((s_7_1 != s_7_2 && S[s_7_1]) && S[s_7_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[s_7_1, f_7] != PostHeap[s_7_2, f_7]
    );
    
    // -- Define Inverse Function
      assume (forall s_7_1: Ref ::
        { PostHeap[s_7_1, f_7] } { S[s_7_1] }
        S[s_7_1] && NoPerm < FullPerm ==> qpRange9(PostHeap[s_7_1, f_7]) && invRecv9(PostHeap[s_7_1, f_7]) == s_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (S[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> PostHeap[invRecv9(o_4), f_7] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall s_7_1: Ref ::
        { PostHeap[s_7_1, f_7] } { S[s_7_1] }
        S[s_7_1] ==> PostHeap[s_7_1, f_7] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((S[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> PostHeap[invRecv9(o_4), f_7] == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((S[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
      
    
    // -- check if receiver s is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@34.12--34.48) [77100]"}
        (forall s_8_1: Ref, s_8_2: Ref ::
        { neverTriggered10(s_8_1), neverTriggered10(s_8_2) }
        (((s_8_1 != s_8_2 && S[s_8_1]) && S[s_8_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> s_8_1 != s_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access s.f (issue_0066.vpr@34.12--34.48) [77101]"}
        (forall s_8_1: Ref ::
        { Heap[s_8_1, f_7] } { QPMask[s_8_1, f_7] } { S[s_8_1] }
        S[s_8_1] ==> Mask[s_8_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s
      assume (forall s_8_1: Ref ::
        { Heap[s_8_1, f_7] } { QPMask[s_8_1, f_7] } { S[s_8_1] }
        S[s_8_1] && NoPerm < FullPerm ==> qpRange10(s_8_1) && invRecv10(s_8_1) == s_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        S[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (S[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(S[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[s1_4] && (S[s2_4] && s1_4 != s2_4)) {
        assert {:msg "  Postcondition of test01 might not hold. Assertion s1.f != s2.f might not hold. (issue_0066.vpr@35.11--35.87) [77102]"}
          Heap[s1_4, f_7] != Heap[s2_4, f_7];
      }
      assume false;
    }
    assume (forall s1_5_1: Ref, s2_5_1: Ref ::
      { S[s1_5_1], S[s2_5_1] }
      S[s1_5_1] && (S[s2_5_1] && s1_5_1 != s2_5_1) ==> Heap[s1_5_1, f_7] != Heap[s2_5_1, f_7]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver s.f is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@36.12--36.50) [77103]"}
        (forall s_9_1: Ref, s_9_2: Ref ::
        { neverTriggered11(s_9_1), neverTriggered11(s_9_2) }
        (((s_9_1 != s_9_2 && S[s_9_1]) && S[s_9_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[s_9_1, f_7] != Heap[s_9_2, f_7]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access s.f.g (issue_0066.vpr@36.12--36.50) [77104]"}
        (forall s_9_1: Ref ::
        { Heap[s_9_1, f_7] } { S[s_9_1] }
        S[s_9_1] ==> Mask[Heap[s_9_1, f_7], g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver s.f
      assume (forall s_9_1: Ref ::
        { Heap[s_9_1, f_7] } { S[s_9_1] }
        S[s_9_1] && NoPerm < FullPerm ==> qpRange11(Heap[s_9_1, f_7]) && invRecv11(Heap[s_9_1, f_7]) == s_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        S[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> Heap[invRecv11(o_4), f_7] == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (S[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> Heap[invRecv11(o_4), f_7] == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(S[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(S: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var s1_5: Ref;
  var s2_5: Ref;
  var s_15: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var s1_6: Ref;
  var s2_6: Ref;
  var s_16: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var s1_4: Ref;
  var s2_4: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@40.12--40.53) [77105]"}
      (forall s_1: Ref, s_1_1: Ref ::
      
      (((s_1 != s_1_1 && S[s_1]) && S[s_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> s_1 != s_1_1
    );
    
    // -- Define Inverse Function
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] && NoPerm < 1 / 2 ==> qpRange12(s_1) && invRecv12(s_1) == s_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (S[invRecv12(o_4)] && NoPerm < 1 / 2) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0066.vpr@40.12--40.53) [77106]"}
      (forall s_1: Ref ::
      { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
      S[s_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_1: Ref ::
        { Heap[s_1, f_7] } { QPMask[s_1, f_7] } { S[s_1] }
        S[s_1] && 1 / 2 > NoPerm ==> s_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((S[invRecv12(o_4)] && NoPerm < 1 / 2) && qpRange12(o_4) ==> (NoPerm < 1 / 2 ==> invRecv12(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 2) && (!((S[invRecv12(o_4)] && NoPerm < 1 / 2) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
      if (*) {
        if (S[s1_5] && (S[s2_5] && s1_5 != s2_5)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s1.f (issue_0066.vpr@41.12--41.88) [77107]"}
            HasDirectPerm(Mask, s1_5, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s2.f (issue_0066.vpr@41.12--41.88) [77108]"}
            HasDirectPerm(Mask, s2_5, f_7);
        }
        assume false;
      }
    assume (forall s1_1_1: Ref, s2_1_1: Ref ::
      { S[s1_1_1], S[s2_1_1] }
      S[s1_1_1] && (S[s2_1_1] && s1_1_1 != s2_1_1) ==> Heap[s1_1_1, f_7] != Heap[s2_1_1, f_7]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, 1 / 2))
      if (*) {
        if (S[s_15]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.f (issue_0066.vpr@42.12--42.55) [77109]"}
            HasDirectPerm(Mask, s_15, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@42.12--42.55) [77110]"}
      (forall s_3: Ref, s_3_1: Ref ::
      
      (((s_3 != s_3_1 && S[s_3]) && S[s_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[s_3, f_7] != Heap[s_3_1, f_7]
    );
    
    // -- Define Inverse Function
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] && NoPerm < 1 / 2 ==> qpRange13(Heap[s_3, f_7]) && invRecv13(Heap[s_3, f_7]) == s_3
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (S[invRecv13(o_4)] && NoPerm < 1 / 2) && qpRange13(o_4) ==> Heap[invRecv13(o_4), f_7] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0066.vpr@42.12--42.55) [77111]"}
      (forall s_3: Ref ::
      { Heap[s_3, f_7] } { S[s_3] }
      S[s_3] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_3: Ref ::
        { Heap[s_3, f_7] } { S[s_3] }
        S[s_3] && 1 / 2 > NoPerm ==> Heap[s_3, f_7] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((S[invRecv13(o_4)] && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Heap[invRecv13(o_4), f_7] == o_4) && QPMask[o_4, g] == Mask[o_4, g] + 1 / 2) && (!((S[invRecv13(o_4)] && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@43.12--43.53) [77112]"}
      (forall s_5_1: Ref, s_5_2: Ref ::
      
      (((s_5_1 != s_5_2 && S[s_5_1]) && S[s_5_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> s_5_1 != s_5_2
    );
    
    // -- Define Inverse Function
      assume (forall s_5_1: Ref ::
        { PostHeap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] && NoPerm < 1 / 2 ==> qpRange14(s_5_1) && invRecv14(s_5_1) == s_5_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (S[invRecv14(o_4)] && NoPerm < 1 / 2) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0066.vpr@43.12--43.53) [77113]"}
      (forall s_5_1: Ref ::
      { PostHeap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
      S[s_5_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_5_1: Ref ::
        { PostHeap[s_5_1, f_7] } { QPMask[s_5_1, f_7] } { S[s_5_1] }
        S[s_5_1] && 1 / 2 > NoPerm ==> s_5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((S[invRecv14(o_4)] && NoPerm < 1 / 2) && qpRange14(o_4) ==> (NoPerm < 1 / 2 ==> invRecv14(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + 1 / 2) && (!((S[invRecv14(o_4)] && NoPerm < 1 / 2) && qpRange14(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall s1: Ref, s2: Ref :: { (s1 in S), (s2 in S) } (s1 in S) && ((s2 in S) && s1 != s2) ==> s1.f != s2.f)
      if (*) {
        if (S[s1_6] && (S[s2_6] && s1_6 != s2_6)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s1.f (issue_0066.vpr@44.11--44.87) [77114]"}
            HasDirectPerm(PostMask, s1_6, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s2.f (issue_0066.vpr@44.11--44.87) [77115]"}
            HasDirectPerm(PostMask, s2_6, f_7);
        }
        assume false;
      }
    assume (forall s1_3_1: Ref, s2_3_1: Ref ::
      { S[s1_3_1], S[s2_3_1] }
      S[s1_3_1] && (S[s2_3_1] && s1_3_1 != s2_3_1) ==> PostHeap[s1_3_1, f_7] != PostHeap[s2_3_1, f_7]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall s: Ref :: { (s in S) } (s in S) ==> acc(s.f.g, 1 / 2))
      if (*) {
        if (S[s_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.f (issue_0066.vpr@45.12--45.55) [77116]"}
            HasDirectPerm(PostMask, s_16, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@45.12--45.55) [77117]"}
      (forall s_7_1: Ref, s_7_2: Ref ::
      
      (((s_7_1 != s_7_2 && S[s_7_1]) && S[s_7_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> PostHeap[s_7_1, f_7] != PostHeap[s_7_2, f_7]
    );
    
    // -- Define Inverse Function
      assume (forall s_7_1: Ref ::
        { PostHeap[s_7_1, f_7] } { S[s_7_1] }
        S[s_7_1] && NoPerm < 1 / 2 ==> qpRange15(PostHeap[s_7_1, f_7]) && invRecv15(PostHeap[s_7_1, f_7]) == s_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (S[invRecv15(o_4)] && NoPerm < 1 / 2) && qpRange15(o_4) ==> PostHeap[invRecv15(o_4), f_7] == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (issue_0066.vpr@45.12--45.55) [77118]"}
      (forall s_7_1: Ref ::
      { PostHeap[s_7_1, f_7] } { S[s_7_1] }
      S[s_7_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall s_7_1: Ref ::
        { PostHeap[s_7_1, f_7] } { S[s_7_1] }
        S[s_7_1] && 1 / 2 > NoPerm ==> PostHeap[s_7_1, f_7] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((S[invRecv15(o_4)] && NoPerm < 1 / 2) && qpRange15(o_4) ==> (NoPerm < 1 / 2 ==> PostHeap[invRecv15(o_4), f_7] == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + 1 / 2) && (!((S[invRecv15(o_4)] && NoPerm < 1 / 2) && qpRange15(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
      assert {:msg "  Postcondition of test02 might not hold. Fraction 1 / 2 might be negative. (issue_0066.vpr@43.12--43.53) [77119]"}
        (forall s_8_1: Ref ::
        { Heap[s_8_1, f_7] } { QPMask[s_8_1, f_7] } { S[s_8_1] }
        S[s_8_1] && dummyFunction(Heap[s_8_1, f_7]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver s is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s.f might not be injective. (issue_0066.vpr@43.12--43.53) [77120]"}
        (forall s_8_1: Ref, s_8_2: Ref ::
        { neverTriggered16(s_8_1), neverTriggered16(s_8_2) }
        (((s_8_1 != s_8_2 && S[s_8_1]) && S[s_8_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> s_8_1 != s_8_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access s.f (issue_0066.vpr@43.12--43.53) [77121]"}
        (forall s_8_1: Ref ::
        { Heap[s_8_1, f_7] } { QPMask[s_8_1, f_7] } { S[s_8_1] }
        S[s_8_1] ==> Mask[s_8_1, f_7] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver s
      assume (forall s_8_1: Ref ::
        { Heap[s_8_1, f_7] } { QPMask[s_8_1, f_7] } { S[s_8_1] }
        S[s_8_1] && NoPerm < 1 / 2 ==> qpRange16(s_8_1) && invRecv16(s_8_1) == s_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        S[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (S[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> invRecv16(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - 1 / 2) && (!(S[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (S[s1_4] && (S[s2_4] && s1_4 != s2_4)) {
        assert {:msg "  Postcondition of test02 might not hold. Assertion s1.f != s2.f might not hold. (issue_0066.vpr@44.11--44.87) [77122]"}
          Heap[s1_4, f_7] != Heap[s2_4, f_7];
      }
      assume false;
    }
    assume (forall s1_5_1: Ref, s2_5_1: Ref ::
      { S[s1_5_1], S[s2_5_1] }
      S[s1_5_1] && (S[s2_5_1] && s1_5_1 != s2_5_1) ==> Heap[s1_5_1, f_7] != Heap[s2_5_1, f_7]
    );
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test02 might not hold. Fraction 1 / 2 might be negative. (issue_0066.vpr@45.12--45.55) [77123]"}
        (forall s_9_1: Ref ::
        { Heap[s_9_1, f_7] } { S[s_9_1] }
        S[s_9_1] && dummyFunction(Heap[Heap[s_9_1, f_7], g]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver s.f is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource s.f.g might not be injective. (issue_0066.vpr@45.12--45.55) [77124]"}
        (forall s_9_1: Ref, s_9_2: Ref ::
        { neverTriggered17(s_9_1), neverTriggered17(s_9_2) }
        (((s_9_1 != s_9_2 && S[s_9_1]) && S[s_9_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Heap[s_9_1, f_7] != Heap[s_9_2, f_7]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access s.f.g (issue_0066.vpr@45.12--45.55) [77125]"}
        (forall s_9_1: Ref ::
        { Heap[s_9_1, f_7] } { S[s_9_1] }
        S[s_9_1] ==> Mask[Heap[s_9_1, f_7], g] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver s.f
      assume (forall s_9_1: Ref ::
        { Heap[s_9_1, f_7] } { S[s_9_1] }
        S[s_9_1] && NoPerm < 1 / 2 ==> qpRange17(Heap[s_9_1, f_7]) && invRecv17(Heap[s_9_1, f_7]) == s_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        S[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Heap[invRecv17(o_4), f_7] == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (S[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Heap[invRecv17(o_4), f_7] == o_4 && QPMask[o_4, g] == Mask[o_4, g] - 1 / 2) && (!(S[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}