// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:39:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
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

function  neverTriggered1(z_4: Ref): bool;
function  neverTriggered2(z_5: Ref): bool;
function  neverTriggered3(z_1: Ref): bool;
function  neverTriggered4(z_2: Ref): bool;
function  neverTriggered5(z_3: Ref): bool;
function  neverTriggered6(z_1: Ref): bool;
function  neverTriggered7(z_2: Ref): bool;
function  neverTriggered8(z_3: Ref): bool;
function  neverTriggered9(z_1: Ref): bool;
function  neverTriggered10(z_2: Ref): bool;
function  neverTriggered11(z_3: Ref): bool;
function  neverTriggered12(z_1: Ref): bool;
function  neverTriggered13(z_2: Ref): bool;
function  neverTriggered14(z_3: Ref): bool;
function  neverTriggered15(z_1: Ref): bool;
function  neverTriggered16(z_2: Ref): bool;
function  neverTriggered17(z_3: Ref): bool;
function  neverTriggered18(z_1: Ref): bool;
function  neverTriggered19(z_2: Ref): bool;
function  neverTriggered20(z_3: Ref): bool;
function  neverTriggered21(z_1: Ref): bool;
function  neverTriggered22(z_5: Ref): bool;
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
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(recv: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
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
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: fun
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
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, xs: (Set Ref), x: Ref, n: int): int;
function  fun'(Heap: HeapType, xs: (Set Ref), x: Ref, n: int): int;
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref, n: int ::
  { fun(Heap, xs, x, n) }
  fun(Heap, xs, x, n) == fun'(Heap, xs, x, n) && dummyFunction(fun#triggerStateless(xs, x, n))
);
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref, n: int ::
  { fun'(Heap, xs, x, n) }
  dummyFunction(fun#triggerStateless(xs, x, n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref, n: int ::
  { state(Heap, Mask), fun(Heap, xs, x, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> xs[x] && n >= 0 ==> fun(Heap, xs, x, n) == (if n == 0 then Heap[x, f_7] else fun'(Heap, xs, x, n - 1))
);

// Framing axioms
function  fun#frame(frame: FrameType, xs: (Set Ref), x: Ref, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref, n: int ::
  { state(Heap, Mask), fun'(Heap, xs, x, n) }
  state(Heap, Mask) ==> fun'(Heap, xs, x, n) == fun#frame(FrameFragment(fun#condqp1(Heap, xs, x, n)), xs, x, n)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write)) in function fun
// ==================================================

function  fun#condqp1(Heap: HeapType, xs_1_1: (Set Ref), x_1_1_1: Ref, n_1_1_1: int): int;
function  sk_fun#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), x: Ref, n: int ::
  { fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun#condqp1(fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n))] && NoPerm < FullPerm <==> xs[sk_fun#condqp1(fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n))] && NoPerm < FullPerm) && (xs[sk_fun#condqp1(fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun#condqp1(fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n)), f_7] == Heap1Heap[sk_fun#condqp1(fun#condqp1(Heap2Heap, xs, x, n), fun#condqp1(Heap1Heap, xs, x, n)), f_7]) ==> fun#condqp1(Heap2Heap, xs, x, n) == fun#condqp1(Heap1Heap, xs, x, n)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, xs: (Set Ref), x: Ref, n: int): bool;

// State-independent trigger function
function  fun#triggerStateless(xs: (Set Ref), x: Ref, n: int): int;

// Check contract well-formedness and postcondition
procedure fun#definedness(xs: (Set Ref), x: Ref, n: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@7.12--7.49) [3267]"}
      (forall z_4: Ref, z_4_1: Ref ::
      
      (((z_4 != z_4_1 && xs[z_4]) && xs[z_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_4 != z_4_1
    );
    
    // -- Define Inverse Function
      assume (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] && NoPerm < FullPerm ==> qpRange1(z_4) && invRecv1(z_4) == z_4
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] ==> z_4 != null
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
    assume xs[x];
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n == 0 ? x.f : fun(xs, x, n - 1))
      if (n == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (snapshots2.vpr@6.1--10.37) [3268]"}
          HasDirectPerm(Mask, x, f_7);
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver z is injective
            assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@10.18--10.35) [3269]"}
              (forall z_5: Ref, z_5_1: Ref ::
              { neverTriggered2(z_5), neverTriggered2(z_5_1) }
              (((z_5 != z_5_1 && xs[z_5]) && xs[z_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@10.18--10.35) [3270]"}
              (forall z_5: Ref ::
              { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
              xs[z_5] ==> FullPerm > NoPerm ==> Mask[z_5, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver z
            assume (forall z_5: Ref ::
              { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
              xs[z_5] && NoPerm < FullPerm ==> qpRange2(z_5) && invRecv2(z_5) == z_5
            );
            assume (forall o_4: Ref ::
              { invRecv2(o_4) }
              xs[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4
            );
          assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@10.18--10.35) [3271]"}
            xs[x];
          assert {:msg "  Precondition of function fun might not hold. Assertion n - 1 >= 0 might not hold. (snapshots2.vpr@10.18--10.35) [3272]"}
            n - 1 >= 0;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun#trigger(FrameFragment(fun#condqp1(Heap, xs, x, n - 1)), xs, x, n - 1);
        }
      }
  
  // -- Translate function body
    Result := (if n == 0 then Heap[x, f_7] else fun(Heap, xs, x, n - 1));
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), x: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@13.12--13.49) [3273]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange3(z_1) && invRecv3(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (xs[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@17.3--17.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@17.17--17.30) [3274]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered4(z_2), neverTriggered4(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@17.17--17.30) [3275]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange4(z_2) && invRecv4(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            xs[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@17.17--17.30) [3276]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@17.17--17.30) [3277]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, n) -- snapshots2.vpr@18.3--18.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@18.15--18.28) [3278]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered5(z_3), neverTriggered5(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@18.15--18.28) [3279]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange5(z_3) && invRecv5(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            xs[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@18.15--18.28) [3280]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@18.15--18.28) [3281]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, n) might not hold. (snapshots2.vpr@18.10--18.28) [3282]"}
      v_2 == fun(Heap, xs, x, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@22.12--22.49) [3283]"}
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
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@26.3--26.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@26.17--26.30) [3284]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered7(z_2), neverTriggered7(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@26.17--26.30) [3285]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange7(z_2) && invRecv7(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            xs[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@26.17--26.30) [3286]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@26.17--26.30) [3287]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- snapshots2.vpr@27.3--27.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@27.3--27.11) [3288]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, n) -- snapshots2.vpr@36.3--36.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@36.15--36.28) [3289]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered8(z_3), neverTriggered8(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@36.15--36.28) [3290]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange8(z_3) && invRecv8(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            xs[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@36.15--36.28) [3291]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@36.15--36.28) [3292]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, n) might not hold. (snapshots2.vpr@36.10--36.28) [3293]"}
      v_2 == fun(Heap, xs, x, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@40.12--40.49) [3294]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange9(z_1) && invRecv9(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (xs[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    assume x != y;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@45.3--45.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@45.17--45.30) [3295]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered10(z_2), neverTriggered10(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@45.17--45.30) [3296]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange10(z_2) && invRecv10(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            xs[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@45.17--45.30) [3297]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@45.17--45.30) [3298]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := y.f -- snapshots2.vpr@46.3--46.13
    
    // -- Check definedness of y.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@46.3--46.13) [3299]"}
        HasDirectPerm(Mask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@46.3--46.13) [3300]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=Heap[y, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, n) -- snapshots2.vpr@47.3--47.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@47.15--47.28) [3301]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered11(z_3), neverTriggered11(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@47.15--47.28) [3302]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange11(z_3) && invRecv11(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            xs[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@47.15--47.28) [3303]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@47.15--47.28) [3304]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, n) might not hold. (snapshots2.vpr@47.10--47.28) [3305]"}
      v_2 == fun(Heap, xs, x, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(xs: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var yf: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@51.12--51.49) [3306]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange12(z_1) && invRecv12(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (xs[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> invRecv12(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    assume x != y;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@56.3--56.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@56.17--56.30) [3307]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered13(z_2), neverTriggered13(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@56.17--56.30) [3308]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange13(z_2) && invRecv13(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            xs[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@56.17--56.30) [3309]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@56.17--56.30) [3310]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: yf := y.f -- snapshots2.vpr@57.3--57.21
    
    // -- Check definedness of y.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@57.3--57.21) [3311]"}
        HasDirectPerm(Mask, y, f_7);
    yf := Heap[y, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- snapshots2.vpr@58.3--58.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@58.3--58.11) [3312]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := yf -- snapshots2.vpr@59.3--59.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@59.3--59.12) [3313]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=yf];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, n) -- snapshots2.vpr@60.3--60.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@60.15--60.28) [3314]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered14(z_3), neverTriggered14(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@60.15--60.28) [3315]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange14(z_3) && invRecv14(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            xs[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@60.15--60.28) [3316]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@60.15--60.28) [3317]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, n) might not hold. (snapshots2.vpr@60.10--60.28) [3318]"}
      v_2 == fun(Heap, xs, x, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(xs: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@64.12--64.49) [3319]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange15(z_1) && invRecv15(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (xs[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> invRecv15(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> invRecv15(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv15(o_4)] && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    assume x != y;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@69.3--69.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@69.17--69.30) [3320]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered16(z_2), neverTriggered16(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@69.17--69.30) [3321]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange16(z_2) && invRecv16(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            xs[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@69.17--69.30) [3322]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@69.17--69.30) [3323]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- snapshots2.vpr@70.3--70.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@70.3--70.11) [3324]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := old(y.f) -- snapshots2.vpr@71.3--71.18
    
    // -- Check definedness of old(y.f)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@71.3--71.18) [3325]"}
        HasDirectPerm(oldMask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@71.3--71.18) [3326]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=oldHeap[y, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, n) -- snapshots2.vpr@72.3--72.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@72.15--72.28) [3327]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered17(z_3), neverTriggered17(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@72.15--72.28) [3328]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange17(z_3) && invRecv17(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            xs[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@72.15--72.28) [3329]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@72.15--72.28) [3330]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, n) might not hold. (snapshots2.vpr@72.10--72.28) [3331]"}
      v_2 == fun(Heap, xs, x, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@76.12--76.49) [3332]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange18(z_1) && invRecv18(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        (xs[invRecv18(o_4)] && NoPerm < FullPerm) && qpRange18(o_4) ==> invRecv18(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv18(o_4)] && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> invRecv18(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv18(o_4)] && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    assume x != y;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := fun(xs, x, 0) -- snapshots2.vpr@81.3--81.30
    
    // -- Check definedness of fun(xs, x, 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@81.17--81.30) [3333]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered19(z_2), neverTriggered19(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@81.17--81.30) [3334]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange19(z_2) && invRecv19(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            xs[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@81.17--81.30) [3335]"}
          xs[x];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, 0);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- snapshots2.vpr@82.3--82.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@82.3--82.11) [3336]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert v == fun(xs, x, 0) -- snapshots2.vpr@83.3--83.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of v == fun(xs, x, 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@83.15--83.28) [3337]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered20(z_3), neverTriggered20(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@83.15--83.28) [3338]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange20(z_3) && invRecv20(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv20(o_4) }
            xs[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@83.15--83.28) [3339]"}
          xs[x];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion v == fun(xs, x, 0) might not hold. (snapshots2.vpr@83.10--83.28) [3340]"}
      v_2 == fun(Heap, xs, x, 0);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Set Ref), ys: (Set Ref), x: Ref, y: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var z_3: Ref;
  var ExhaleHeap: HeapType;
  var v_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref :: { (z in (xs union ys)) } (z in (xs union ys)) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots2.vpr@87.12--87.60) [3341]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && Set#Union(xs, ys)[z_1]) && Set#Union(xs, ys)[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Union(xs, ys)[z_1] }
        Set#Union(xs, ys)[z_1] && NoPerm < FullPerm ==> qpRange21(z_1) && invRecv21(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (Set#Union(xs, ys)[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Union(xs, ys)[z_1] }
        Set#Union(xs, ys)[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Set#Union(xs, ys)[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> invRecv21(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Set#Union(xs, ys)[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[x];
    assume ys[y];
    assume state(Heap, Mask);
    assume !ys[x];
    assume !xs[y];
    assume state(Heap, Mask);
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall z: Ref ::
  //     { (z in (xs union ys)) }
  //     { (z in xs) }
  //     (z in (xs union ys)) ==> z != null) -- snapshots2.vpr@94.3--94.89
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in (xs union ys)) } { (z in xs) } (z in (xs union ys)) ==> z != null)
      if (*) {
        assume false;
      }
    if (*) {
      if (Set#Union(xs, ys)[z_3]) {
        assert {:msg "  Assert might fail. Assertion z != null might not hold. (snapshots2.vpr@94.10--94.89) [3342]"}
          z_3 != null;
      }
      assume false;
    }
    assume (forall z_4_1_1: Ref ::
      { Set#Union(xs, ys)[z_4_1_1] } { xs[z_4_1_1] }
      Set#Union(xs, ys)[z_4_1_1] ==> z_4_1_1 != null
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: v := fun(xs, x, n) -- snapshots2.vpr@95.3--95.30
    
    // -- Check definedness of fun(xs, x, n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun might not hold. Quantified resource z.f might not be injective. (snapshots2.vpr@95.17--95.30) [3343]"}
            (forall z_5: Ref, z_5_1: Ref ::
            { neverTriggered22(z_5), neverTriggered22(z_5_1) }
            (((z_5 != z_5_1 && xs[z_5]) && xs[z_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access z.f (snapshots2.vpr@95.17--95.30) [3344]"}
            (forall z_5: Ref ::
            { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] ==> FullPerm > NoPerm ==> Mask[z_5, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_5: Ref ::
            { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] && NoPerm < FullPerm ==> qpRange22(z_5) && invRecv22(z_5) == z_5
          );
          assume (forall o_4: Ref ::
            { invRecv22(o_4) }
            xs[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
          );
        assert {:msg "  Precondition of function fun might not hold. Assertion (x in xs) might not hold. (snapshots2.vpr@95.17--95.30) [3345]"}
          xs[x];
        assert {:msg "  Precondition of function fun might not hold. Assertion n >= 0 might not hold. (snapshots2.vpr@95.17--95.30) [3346]"}
          n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    v_2 := fun(Heap, xs, x, n);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- snapshots2.vpr@96.3--96.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots2.vpr@96.3--96.11) [3347]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
}