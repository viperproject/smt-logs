// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:45:42
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/snapshots1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_23: Ref, f_25: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_23, f_25] }
  Heap[o_23, $allocated] ==> Heap[Heap[o_23, f_25], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref, f_26: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, f_26] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_24, f_26) ==> Heap[o_24, f_26] == ExhaleHeap[o_24, f_26]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7), ExhaleHeap[null, PredicateMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> Heap[null, PredicateMaskField(pm_f_7)] == ExhaleHeap[null, PredicateMaskField(pm_f_7)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsPredicateField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_7, f_26] }
    Heap[null, PredicateMaskField(pm_f_7)][o2_7, f_26] ==> Heap[o2_7, f_26] == ExhaleHeap[o2_7, f_26]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7), ExhaleHeap[null, WandMaskField(pm_f_7)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> Heap[null, WandMaskField(pm_f_7)] == ExhaleHeap[null, WandMaskField(pm_f_7)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_7: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_7) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_7) && IsWandField(pm_f_7) ==> (forall <A, B> o2_7: Ref, f_26: (Field A B) ::
    { ExhaleHeap[o2_7, f_26] }
    Heap[null, WandMaskField(pm_f_7)][o2_7, f_26] ==> Heap[o2_7, f_26] == ExhaleHeap[o2_7, f_26]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_24, $allocated] ==> ExhaleHeap[o_24, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_23: Ref, f_27: (Field A B), v: B ::
  { Heap[o_23, f_27:=v] }
  succHeap(Heap, Heap[o_23, f_27:=v])
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
function  neverTriggered2(z: Ref): bool;
function  neverTriggered3(z_2: Ref): bool;
function  neverTriggered4(z_1: Ref): bool;
function  neverTriggered5(z_2: Ref): bool;
function  neverTriggered6(z_3: Ref): bool;
function  neverTriggered7(z_4: Ref): bool;
function  neverTriggered8(z_5: Ref): bool;
function  neverTriggered9(z_1: Ref): bool;
function  neverTriggered10(z_3: Ref): bool;
function  neverTriggered11(z_1: Ref): bool;
function  neverTriggered12(z_2: Ref): bool;
function  neverTriggered13(z_3: Ref): bool;
function  neverTriggered14(z_4: Ref): bool;
function  neverTriggered15(z_5: Ref): bool;
function  neverTriggered16(z_6: Ref): bool;
function  neverTriggered17(z_7: Ref): bool;
function  neverTriggered18(z: Ref): bool;
function  neverTriggered19(z_1: Ref): bool;
function  neverTriggered20(z_1: Ref): bool;
function  neverTriggered21(z_2: Ref): bool;
function  neverTriggered22(z_4: Ref): bool;
function  neverTriggered23(z_5: Ref): bool;
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
function  invRecv23(recv: Ref): Ref;
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
function  qpRange23(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: fun2
// - height 0: fun1
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> xs[x] ==> fun1(Heap, xs, x) == Heap[x, f_7]
);

// Framing axioms
function  fun1#frame(frame: FrameType, xs: (Set Ref), x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref ::
  { state(Heap, Mask), fun1'(Heap, xs, x) }
  state(Heap, Mask) ==> fun1'(Heap, xs, x) == fun1#frame(FrameFragment(fun1#condqp1(Heap, xs, x)), xs, x)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write)) in function fun1
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
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume xs[x];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@8.12--8.49) [2913]"}
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
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (snapshots1.vpr@6.1--9.8) [2914]"}
        HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, xs: (Set Ref), x: Ref): int;
function  fun2'(Heap: HeapType, xs: (Set Ref), x: Ref): int;
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref ::
  { fun2(Heap, xs, x) }
  fun2(Heap, xs, x) == fun2'(Heap, xs, x) && dummyFunction(fun2#triggerStateless(xs, x))
);
axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref ::
  { fun2'(Heap, xs, x) }
  dummyFunction(fun2#triggerStateless(xs, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref ::
  { state(Heap, Mask), fun2(Heap, xs, x) } { state(Heap, Mask), fun2#triggerStateless(xs, x), P#trigger(Heap, P(xs, x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun2(Heap, xs, x) == Heap[x, f_7]
);

// Framing axioms
function  fun2#frame(frame: FrameType, xs: (Set Ref), x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), x: Ref ::
  { state(Heap, Mask), fun2'(Heap, xs, x) }
  state(Heap, Mask) ==> fun2'(Heap, xs, x) == fun2#frame(Heap[null, P(xs, x)], xs, x)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, xs: (Set Ref), x: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(xs: (Set Ref), x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(xs: (Set Ref), x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(xs, x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(xs, x));
      assume UnfoldingHeap[null, P(xs, x)] == FrameFragment(P#condqp2(UnfoldingHeap, xs, x));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@66.1--68.35) [2915]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(xs, x)];
      assume xs[x];
      havoc QPMask;
      assert {:msg "  Function might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@66.1--68.35) [2916]"}
        (forall z: Ref, z_8: Ref ::
        
        (((z != z_8 && xs[z]) && xs[z_8]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_8
      );
      
      // -- Define Inverse Function
        assume (forall z: Ref ::
          { UnfoldingHeap[z, f_7] } { QPMask[z, f_7] } { xs[z] }
          xs[z] && NoPerm < FullPerm ==> qpRange2(z) && invRecv2(z) == z
        );
        assume (forall o_4: Ref ::
          { invRecv2(o_4) }
          (xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall z: Ref ::
          { UnfoldingHeap[z, f_7] } { QPMask[z, f_7] } { xs[z] }
          xs[z] ==> z != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          ((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7] + FullPerm) && (!((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == UnfoldingMask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (snapshots1.vpr@66.1--68.35) [2917]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        // register all known folded permissions guarded by predicate P
        havoc newPMask;
        assume (forall <A, B> o_25: Ref, f_28: (Field A B) ::
          { newPMask[o_25, f_28] }
          Heap[null, P#sm(xs, x)][o_25, f_28] ==> newPMask[o_25, f_28]
        );
        assume (forall z_1: Ref ::
          
          xs[z_1] ==> newPMask[z_1, f_7]
        );
        Heap := Heap[null, P#sm(xs, x):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(xs: (Set Ref), x: Ref): Field PredicateType_P FrameType;
function  P#sm(xs: (Set Ref), x: Ref): Field PredicateType_P PMaskType;
axiom (forall xs: (Set Ref), x: Ref ::
  { PredicateMaskField(P(xs, x)) }
  PredicateMaskField(P(xs, x)) == P#sm(xs, x)
);
axiom (forall xs: (Set Ref), x: Ref ::
  { P(xs, x) }
  IsPredicateField(P(xs, x))
);
axiom (forall xs: (Set Ref), x: Ref ::
  { P(xs, x) }
  getPredWandId(P(xs, x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Set Ref), x: Ref, xs2: (Set Ref), x2: Ref ::
  { P(xs, x), P(xs2, x2) }
  P(xs, x) == P(xs2, x2) ==> xs == xs2 && x == x2
);
axiom (forall xs: (Set Ref), x: Ref, xs2: (Set Ref), x2: Ref ::
  { P#sm(xs, x), P#sm(xs2, x2) }
  P#sm(xs, x) == P#sm(xs2, x2) ==> xs == xs2 && x == x2
);

axiom (forall Heap: HeapType, xs: (Set Ref), x: Ref ::
  { P#trigger(Heap, P(xs, x)) }
  P#everUsed(P(xs, x))
);

// ==================================================
// Function used for framing of quantified permission (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write)) in predicate P
// ==================================================

function  P#condqp2(Heap: HeapType, xs_2_1: (Set Ref), x_2_1: Ref): int;
function  sk_P#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), x: Ref ::
  { P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x))] && NoPerm < FullPerm <==> xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x))] && NoPerm < FullPerm) && (xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x))] && NoPerm < FullPerm ==> Heap2Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x)), f_7] == Heap1Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, x), P#condqp2(Heap1Heap, xs, x)), f_7]) ==> P#condqp2(Heap2Heap, xs, x) == P#condqp2(Heap1Heap, xs, x)
);

procedure P#definedness(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume xs[x];
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@62.1--64.2) [2918]"}
      (forall z_2: Ref, z_2_1: Ref ::
      
      (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
    );
    
    // -- Define Inverse Function
      assume (forall z_2: Ref ::
        { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
        xs[z_2] && NoPerm < FullPerm ==> qpRange3(z_2) && invRecv3(z_2) == z_2
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (xs[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_2: Ref ::
        { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
        xs[z_2] ==> z_2 != null
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
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var b_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@13.12--13.49) [2919]"}
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
  
  // -- Translating statement: a := fun1(xs, x) -- snapshots1.vpr@15.3--15.28
    
    // -- Check definedness of fun1(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@15.17--15.28) [2920]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@15.17--15.28) [2921]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered5(z_2), neverTriggered5(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@15.17--15.28) [2922]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange5(z_2) && invRecv5(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            xs[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun1(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun1(xs, x) -- snapshots1.vpr@16.3--16.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == fun1(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@16.15--16.26) [2923]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@16.15--16.26) [2924]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered6(z_3), neverTriggered6(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@16.15--16.26) [2925]"}
            (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { ExhaleWellDef0Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange6(z_3) && invRecv6(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            xs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun1(xs, x) might not hold. (snapshots1.vpr@16.10--16.26) [2926]"}
      a_2 == fun1(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun1(xs, x) -- snapshots1.vpr@18.3--18.28
    
    // -- Check definedness of fun1(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@18.17--18.28) [2927]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@18.17--18.28) [2928]"}
            (forall z_4: Ref, z_4_1: Ref ::
            { neverTriggered7(z_4), neverTriggered7(z_4_1) }
            (((z_4 != z_4_1 && xs[z_4]) && xs[z_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_4 != z_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@18.17--18.28) [2929]"}
            (forall z_4: Ref ::
            { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
            xs[z_4] ==> FullPerm > NoPerm ==> Mask[z_4, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_4: Ref ::
            { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
            xs[z_4] && NoPerm < FullPerm ==> qpRange7(z_4) && invRecv7(z_4) == z_4
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            xs[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun1(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun1(xs, x) -- snapshots1.vpr@19.3--19.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of b == fun1(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@19.15--19.26) [2930]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@19.15--19.26) [2931]"}
            (forall z_5: Ref, z_5_1: Ref ::
            { neverTriggered8(z_5), neverTriggered8(z_5_1) }
            (((z_5 != z_5_1 && xs[z_5]) && xs[z_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@19.15--19.26) [2932]"}
            (forall z_5: Ref ::
            { ExhaleWellDef0Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_5, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_5: Ref ::
            { ExhaleWellDef0Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] && NoPerm < FullPerm ==> qpRange8(z_5) && invRecv8(z_5) == z_5
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            xs[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun1(xs, x) might not hold. (snapshots1.vpr@19.10--19.26) [2933]"}
      b_24 == fun1(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@21.3--21.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@21.10--21.16) [2934]"}
      a_2 == b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(xs: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var yf: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@26.12--26.49) [2935]"}
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
    assume x != y;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: yf := y.f -- snapshots1.vpr@29.3--29.21
    
    // -- Check definedness of y.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots1.vpr@29.3--29.21) [2936]"}
        HasDirectPerm(Mask, y, f_7);
    yf := Heap[y, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- snapshots1.vpr@30.3--30.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (snapshots1.vpr@30.3--30.11) [2937]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.f == yf -- snapshots1.vpr@32.3--32.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y.f == yf
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.f (snapshots1.vpr@32.10--32.19) [2938]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Assert might fail. Assertion y.f == yf might not hold. (snapshots1.vpr@32.10--32.19) [2939]"}
      Heap[y, f_7] == yf;
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := yf + 1 -- snapshots1.vpr@34.3--34.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots1.vpr@34.3--34.16) [2940]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=yf + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write)) -- snapshots1.vpr@36.3--36.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@36.10--36.47) [2942]"}
        (forall z_3: Ref, z_3_1: Ref ::
        { neverTriggered10(z_3), neverTriggered10(z_3_1) }
        (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (snapshots1.vpr@36.10--36.47) [2943]"}
        (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
        xs[z_3] ==> Mask[z_3, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
        xs[z_3] && NoPerm < FullPerm ==> qpRange10(z_3) && invRecv10(z_3) == z_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        xs[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- snapshots1.vpr@39.3--39.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (snapshots1.vpr@39.10--39.15) [2944]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(xs: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var xf: int;
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
    assume xs[x];
    assume xs[y];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@44.12--44.49) [2945]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange11(z_1) && invRecv11(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (xs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x != y;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: xf := fun1(xs, x) -- snapshots1.vpr@47.3--47.29
    
    // -- Check definedness of fun1(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@47.18--47.29) [2946]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@47.18--47.29) [2947]"}
            (forall z_2: Ref, z_2_1: Ref ::
            { neverTriggered12(z_2), neverTriggered12(z_2_1) }
            (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@47.18--47.29) [2948]"}
            (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] ==> FullPerm > NoPerm ==> Mask[z_2, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_2: Ref ::
            { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
            xs[z_2] && NoPerm < FullPerm ==> qpRange12(z_2) && invRecv12(z_2) == z_2
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            xs[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    xf := fun1(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: yf := fun1(xs, y) -- snapshots1.vpr@48.3--48.29
    
    // -- Check definedness of fun1(xs, y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (y in xs) might not hold. (snapshots1.vpr@48.18--48.29) [2949]"}
          xs[y];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@48.18--48.29) [2950]"}
            (forall z_3: Ref, z_3_1: Ref ::
            { neverTriggered13(z_3), neverTriggered13(z_3_1) }
            (((z_3 != z_3_1 && xs[z_3]) && xs[z_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@48.18--48.29) [2951]"}
            (forall z_3: Ref ::
            { Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] ==> FullPerm > NoPerm ==> Mask[z_3, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_3: Ref ::
            { Heap[z_3, f_7] } { QPMask[z_3, f_7] } { xs[z_3] }
            xs[z_3] && NoPerm < FullPerm ==> qpRange13(z_3) && invRecv13(z_3) == z_3
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            xs[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    yf := fun1(Heap, xs, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := xf + 1 -- snapshots1.vpr@49.3--49.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (snapshots1.vpr@49.3--49.16) [2952]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=xf + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(xs, x) == xf + 1 -- snapshots1.vpr@51.3--51.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(xs, x) == xf + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@51.10--51.21) [2953]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@51.10--51.21) [2954]"}
            (forall z_4: Ref, z_4_1: Ref ::
            { neverTriggered14(z_4), neverTriggered14(z_4_1) }
            (((z_4 != z_4_1 && xs[z_4]) && xs[z_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_4 != z_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@51.10--51.21) [2955]"}
            (forall z_4: Ref ::
            { ExhaleWellDef0Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
            xs[z_4] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_4, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_4: Ref ::
            { ExhaleWellDef0Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
            xs[z_4] && NoPerm < FullPerm ==> qpRange14(z_4) && invRecv14(z_4) == z_4
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            xs[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(xs, x) == xf + 1 might not hold. (snapshots1.vpr@51.10--51.31) [2956]"}
      fun1(Heap, xs, x) == xf + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(xs, y) == yf -- snapshots1.vpr@52.3--52.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(xs, y) == yf
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (y in xs) might not hold. (snapshots1.vpr@52.10--52.21) [2957]"}
          xs[y];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@52.10--52.21) [2958]"}
            (forall z_5: Ref, z_5_1: Ref ::
            { neverTriggered15(z_5), neverTriggered15(z_5_1) }
            (((z_5 != z_5_1 && xs[z_5]) && xs[z_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@52.10--52.21) [2959]"}
            (forall z_5: Ref ::
            { ExhaleWellDef0Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_5, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_5: Ref ::
            { ExhaleWellDef0Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
            xs[z_5] && NoPerm < FullPerm ==> qpRange15(z_5) && invRecv15(z_5) == z_5
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            xs[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(xs, y) == yf might not hold. (snapshots1.vpr@52.10--52.27) [2960]"}
      fun1(Heap, xs, y) == yf;
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := yf + 1 -- snapshots1.vpr@54.3--54.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (snapshots1.vpr@54.3--54.16) [2961]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=yf + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(xs, x) == xf + 1 -- snapshots1.vpr@56.3--56.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(xs, x) == xf + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (x in xs) might not hold. (snapshots1.vpr@56.10--56.21) [2962]"}
          xs[x];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@56.10--56.21) [2963]"}
            (forall z_6: Ref, z_6_1: Ref ::
            { neverTriggered16(z_6), neverTriggered16(z_6_1) }
            (((z_6 != z_6_1 && xs[z_6]) && xs[z_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_6 != z_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@56.10--56.21) [2964]"}
            (forall z_6: Ref ::
            { ExhaleWellDef0Heap[z_6, f_7] } { QPMask[z_6, f_7] } { xs[z_6] }
            xs[z_6] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_6, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_6: Ref ::
            { ExhaleWellDef0Heap[z_6, f_7] } { QPMask[z_6, f_7] } { xs[z_6] }
            xs[z_6] && NoPerm < FullPerm ==> qpRange16(z_6) && invRecv16(z_6) == z_6
          );
          assume (forall o_4: Ref ::
            { invRecv16(o_4) }
            xs[invRecv16(o_4)] && (NoPerm < FullPerm && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(xs, x) == xf + 1 might not hold. (snapshots1.vpr@56.10--56.31) [2965]"}
      fun1(Heap, xs, x) == xf + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(xs, y) == yf -- snapshots1.vpr@59.3--59.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(xs, y) == yf
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function fun1 might not hold. Assertion (y in xs) might not hold. (snapshots1.vpr@59.10--59.21) [2966]"}
          xs[y];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver z is injective
          assert {:msg "  Precondition of function fun1 might not hold. Quantified resource z.f might not be injective. (snapshots1.vpr@59.10--59.21) [2967]"}
            (forall z_7: Ref, z_7_1: Ref ::
            { neverTriggered17(z_7), neverTriggered17(z_7_1) }
            (((z_7 != z_7_1 && xs[z_7]) && xs[z_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access z.f (snapshots1.vpr@59.10--59.21) [2968]"}
            (forall z_7: Ref ::
            { ExhaleWellDef0Heap[z_7, f_7] } { QPMask[z_7, f_7] } { xs[z_7] }
            xs[z_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[z_7, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver z
          assume (forall z_7: Ref ::
            { ExhaleWellDef0Heap[z_7, f_7] } { QPMask[z_7, f_7] } { xs[z_7] }
            xs[z_7] && NoPerm < FullPerm ==> qpRange17(z_7) && invRecv17(z_7) == z_7
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            xs[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(xs, y) == yf might not hold. (snapshots1.vpr@59.10--59.27) [2969]"}
      fun1(Heap, xs, y) == yf;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var b_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: a := fun2(xs, x) -- snapshots1.vpr@73.3--73.28
    
    // -- Check definedness of fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@73.17--73.28) [2970]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun2(xs, x) -- snapshots1.vpr@74.3--74.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@74.15--74.26) [2971]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun2(xs, x) might not hold. (snapshots1.vpr@74.10--74.26) [2972]"}
      a_2 == fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(xs, x), write) -- snapshots1.vpr@76.3--76.23
    assume P#trigger(Heap, P(xs, x));
    assume Heap[null, P(xs, x)] == FrameFragment(P#condqp2(Heap, xs, x));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, x) might fail. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@76.3--76.23) [2975]"}
        perm <= Mask[null, P(xs, x)];
    }
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, x))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, x):=newVersion];
      }
    assume xs[x];
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, x) might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@76.3--76.23) [2976]"}
      (forall z: Ref, z_8: Ref ::
      
      (((z != z_8 && xs[z]) && xs[z_8]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z != z_8
    );
    
    // -- Define Inverse Function
      assume (forall z: Ref ::
        { Heap[z, f_7] } { QPMask[z, f_7] } { xs[z] }
        xs[z] && NoPerm < FullPerm ==> qpRange18(z) && invRecv18(z) == z
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        (xs[invRecv18(o_4)] && NoPerm < FullPerm) && qpRange18(o_4) ==> invRecv18(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z: Ref ::
        { Heap[z, f_7] } { QPMask[z, f_7] } { xs[z] }
        xs[z] ==> z != null
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
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(xs, x), write) -- snapshots1.vpr@77.3--77.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding P(xs, x) might fail. Assertion (x in xs) might not hold. (snapshots1.vpr@77.3--77.21) [2978]"}
      xs[x];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Folding P(xs, x) might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@77.3--77.21) [2980]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered19(z_1), neverTriggered19(z_1_1) }
        (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs, x) might fail. There might be insufficient permission to access z.f (snapshots1.vpr@77.3--77.21) [2981]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange19(z_1) && invRecv19(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        xs[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs, x));
    assume Heap[null, P(xs, x)] == FrameFragment(P#condqp2(Heap, xs, x));
    if (!HasDirectPerm(Mask, null, P(xs, x))) {
      Heap := Heap[null, P#sm(xs, x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs, x):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
      { newPMask[o_26, f_29] }
      Heap[null, P#sm(xs, x)][o_26, f_29] ==> newPMask[o_26, f_29]
    );
    assume (forall z_2: Ref ::
      
      xs[z_2] ==> newPMask[z_2, f_7]
    );
    Heap := Heap[null, P#sm(xs, x):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun2(xs, x) -- snapshots1.vpr@79.3--79.28
    
    // -- Check definedness of fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@79.17--79.28) [2983]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun2(xs, x) -- snapshots1.vpr@80.3--80.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of b == fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@80.15--80.26) [2984]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun2(xs, x) might not hold. (snapshots1.vpr@80.10--80.26) [2985]"}
      b_24 == fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@82.3--82.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@82.10--82.16) [2986]"}
      a_2 == b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- snapshots1.vpr@85.3--85.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (snapshots1.vpr@85.10--85.15) [2987]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(xs: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var newVersion: FrameType;
  var b_24: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (snapshots1.vpr@90.12--90.49) [2988]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange20(z_1) && invRecv20(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (xs[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> invRecv20(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> invRecv20(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: fold acc(P(xs, x), write) -- snapshots1.vpr@92.3--92.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding P(xs, x) might fail. Assertion (x in xs) might not hold. (snapshots1.vpr@92.3--92.21) [2990]"}
      xs[x];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Folding P(xs, x) might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@92.3--92.21) [2992]"}
        (forall z_2: Ref, z_2_1: Ref ::
        { neverTriggered21(z_2), neverTriggered21(z_2_1) }
        (((z_2 != z_2_1 && xs[z_2]) && xs[z_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_2 != z_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs, x) might fail. There might be insufficient permission to access z.f (snapshots1.vpr@92.3--92.21) [2993]"}
        (forall z_2: Ref ::
        { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
        xs[z_2] ==> Mask[z_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_2: Ref ::
        { Heap[z_2, f_7] } { QPMask[z_2, f_7] } { xs[z_2] }
        xs[z_2] && NoPerm < FullPerm ==> qpRange21(z_2) && invRecv21(z_2) == z_2
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        xs[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4)) ==> invRecv21(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs, x));
    assume Heap[null, P(xs, x)] == FrameFragment(P#condqp2(Heap, xs, x));
    if (!HasDirectPerm(Mask, null, P(xs, x))) {
      Heap := Heap[null, P#sm(xs, x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs, x):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_5: Ref, f: (Field A B) ::
      { newPMask[o_5, f] }
      Heap[null, P#sm(xs, x)][o_5, f] ==> newPMask[o_5, f]
    );
    assume (forall z_3: Ref ::
      
      xs[z_3] ==> newPMask[z_3, f_7]
    );
    Heap := Heap[null, P#sm(xs, x):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := fun2(xs, x) -- snapshots1.vpr@94.3--94.28
    
    // -- Check definedness of fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@94.17--94.28) [2995]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == fun2(xs, x) -- snapshots1.vpr@95.3--95.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a == fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@95.15--95.26) [2996]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a == fun2(xs, x) might not hold. (snapshots1.vpr@95.10--95.26) [2997]"}
      a_2 == fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(xs, x), write) -- snapshots1.vpr@97.3--97.23
    assume P#trigger(Heap, P(xs, x));
    assume Heap[null, P(xs, x)] == FrameFragment(P#condqp2(Heap, xs, x));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, x) might fail. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@97.3--97.23) [3000]"}
        perm <= Mask[null, P(xs, x)];
    }
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, x))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, x):=newVersion];
      }
    assume xs[x];
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, x) might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@97.3--97.23) [3001]"}
      (forall z_4: Ref, z_4_1: Ref ::
      
      (((z_4 != z_4_1 && xs[z_4]) && xs[z_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_4 != z_4_1
    );
    
    // -- Define Inverse Function
      assume (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] && NoPerm < FullPerm ==> qpRange22(z_4) && invRecv22(z_4) == z_4
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        (xs[invRecv22(o_4)] && NoPerm < FullPerm) && qpRange22(o_4) ==> invRecv22(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_4: Ref ::
        { Heap[z_4, f_7] } { QPMask[z_4, f_7] } { xs[z_4] }
        xs[z_4] ==> z_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv22(o_4)] && NoPerm < FullPerm) && qpRange22(o_4) ==> (NoPerm < FullPerm ==> invRecv22(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv22(o_4)] && NoPerm < FullPerm) && qpRange22(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(xs, x), write) -- snapshots1.vpr@98.3--98.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding P(xs, x) might fail. Assertion (x in xs) might not hold. (snapshots1.vpr@98.3--98.21) [3003]"}
      xs[x];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Folding P(xs, x) might fail. Quantified resource z.f might not be injective. (snapshots1.vpr@98.3--98.21) [3005]"}
        (forall z_5: Ref, z_5_1: Ref ::
        { neverTriggered23(z_5), neverTriggered23(z_5_1) }
        (((z_5 != z_5_1 && xs[z_5]) && xs[z_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P(xs, x) might fail. There might be insufficient permission to access z.f (snapshots1.vpr@98.3--98.21) [3006]"}
        (forall z_5: Ref ::
        { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
        xs[z_5] ==> Mask[z_5, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_5: Ref ::
        { Heap[z_5, f_7] } { QPMask[z_5, f_7] } { xs[z_5] }
        xs[z_5] && NoPerm < FullPerm ==> qpRange23(z_5) && invRecv23(z_5) == z_5
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        xs[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P(xs, x):=Mask[null, P(xs, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(xs, x));
    assume Heap[null, P(xs, x)] == FrameFragment(P#condqp2(Heap, xs, x));
    if (!HasDirectPerm(Mask, null, P(xs, x))) {
      Heap := Heap[null, P#sm(xs, x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(xs, x):=freshVersion];
    }
    // register all known folded permissions guarded by predicate P
    havoc newPMask;
    assume (forall <A, B> o_20: Ref, f_10: (Field A B) ::
      { newPMask[o_20, f_10] }
      Heap[null, P#sm(xs, x)][o_20, f_10] ==> newPMask[o_20, f_10]
    );
    assume (forall z_6: Ref ::
      
      xs[z_6] ==> newPMask[z_6, f_7]
    );
    Heap := Heap[null, P#sm(xs, x):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := fun2(xs, x) -- snapshots1.vpr@100.3--100.28
    
    // -- Check definedness of fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@100.17--100.28) [3008]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    b_24 := fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b == fun2(xs, x) -- snapshots1.vpr@101.3--101.26
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of b == fun2(xs, x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access P(xs, x) (snapshots1.vpr@101.15--101.26) [3009]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(xs, x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion b == fun2(xs, x) might not hold. (snapshots1.vpr@101.10--101.26) [3010]"}
      b_24 == fun2(Heap, xs, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a == b -- snapshots1.vpr@103.3--103.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion a == b might not hold. (snapshots1.vpr@103.10--103.16) [3011]"}
      a_2 == b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- snapshots1.vpr@106.3--106.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (snapshots1.vpr@106.10--106.15) [3012]"}
      false;
    assume state(Heap, Mask);
}