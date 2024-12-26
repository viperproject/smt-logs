// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:50:52
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/heap_dependent_triggers.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/heap_dependent_triggers-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_24: Ref, f_26: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_24, f_26] }
  Heap[o_24, $allocated] ==> Heap[Heap[o_24, f_26], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref, f_41: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, f_41] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_36, f_41) ==> Heap[o_36, f_41] == ExhaleHeap[o_36, f_41]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32), ExhaleHeap[null, PredicateMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> Heap[null, PredicateMaskField(pm_f_32)] == ExhaleHeap[null, PredicateMaskField(pm_f_32)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_41: (Field A B) ::
    { ExhaleHeap[o2_32, f_41] }
    Heap[null, PredicateMaskField(pm_f_32)][o2_32, f_41] ==> Heap[o2_32, f_41] == ExhaleHeap[o2_32, f_41]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_41: (Field A B) ::
    { ExhaleHeap[o2_32, f_41] }
    Heap[null, WandMaskField(pm_f_32)][o2_32, f_41] ==> Heap[o2_32, f_41] == ExhaleHeap[o2_32, f_41]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_36, $allocated] ==> ExhaleHeap[o_36, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_24: Ref, f_48: (Field A B), v: B ::
  { Heap[o_24, f_48:=v] }
  succHeap(Heap, Heap[o_24, f_48:=v])
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

function  neverTriggered1(x_3: Ref): bool;
function  neverTriggered2(x_3: Ref): bool;
function  neverTriggered3(x_3: Ref): bool;
function  neverTriggered4(x_3: Ref): bool;
function  neverTriggered5(x_3: Ref): bool;
function  neverTriggered6(cell_3: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_2_2: Ref): bool;
function  neverTriggered9(x_3: Ref): bool;
function  neverTriggered10(x_1: Ref): bool;
function  neverTriggered11(x$0_1: Ref): bool;
function  neverTriggered12(x_2_2: Ref): bool;
function  neverTriggered13(x_3: Ref): bool;
function  neverTriggered14(x_4: Ref): bool;
function  neverTriggered15(x_5: Ref): bool;
function  neverTriggered16(x_1: Ref): bool;
function  neverTriggered17(x$0_1: Ref): bool;
function  neverTriggered18(x_2_2: Ref): bool;
function  neverTriggered19(x_3: Ref): bool;
function  neverTriggered20(x_4: Ref): bool;
function  neverTriggered21(x_5: Ref): bool;
function  neverTriggered22(x_6: Ref): bool;
function  neverTriggered23(x_7: Ref): bool;
function  neverTriggered24(cell_1: Ref): bool;
function  neverTriggered25(cell_2: Ref): bool;
function  neverTriggered26(cell_3: Ref): bool;
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
function  invRecv24(recv: Ref): Ref;
function  invRecv25(recv: Ref): Ref;
function  invRecv26(recv: Ref): Ref;
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
function  qpRange24(recv: Ref): bool;
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: fun01
// - height 4: foo
// - height 3: hm2m
// - height 2: bar01
// - height 1: bar02
// - height 0: fun02
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
// Translation of domain Matrix
// ==================================================

// The type for domain Matrix
type MatrixDomainType;

// Translation of domain function get
function  get_1(M_1: MatrixDomainType, x_8: int, y_6: int): int;

// ==================================================
// Translation of domain HeapMatrix
// ==================================================

// The type for domain HeapMatrix
type HeapMatrixDomainType;

// Translation of domain function loc
function  loc(hm: HeapMatrixDomainType, i_79: int, j_41: int): Ref;

// Translation of domain function height
function  height(hm: HeapMatrixDomainType): int;

// Translation of domain function width
function  width(hm: HeapMatrixDomainType): int;

// Translation of domain function hm_in_range
function  hm_in_range(hm: HeapMatrixDomainType, i_79: int, j_41: int): bool;

// Translation of domain function rev_loc_hm
function  rev_loc_hm(cell: Ref): HeapMatrixDomainType;

// Translation of domain function rev_loc_i
function  rev_loc_i(cell: Ref): int;

// Translation of domain function rev_loc_j
function  rev_loc_j(cell: Ref): int;

// Translation of domain function hm2set
function  hm2set(hm: HeapMatrixDomainType): Set Ref;

// Translation of domain axiom heapmat_height
axiom (forall hm_1: HeapMatrixDomainType ::
  { (height(hm_1): int) }
  (height(hm_1): int) >= 0
);

// Translation of domain axiom heapmat_width
axiom (forall hm_1: HeapMatrixDomainType ::
  { (width(hm_1): int) }
  (width(hm_1): int) >= 0
);

// Translation of domain axiom heapmat_injectivity
axiom (forall hm_1: HeapMatrixDomainType, i: int, j_9: int ::
  { (loc(hm_1, i, j_9): Ref) }
  (rev_loc_hm((loc(hm_1, i, j_9): Ref)): HeapMatrixDomainType) == hm_1 && ((rev_loc_i((loc(hm_1, i, j_9): Ref)): int) == i && (rev_loc_j((loc(hm_1, i, j_9): Ref)): int) == j_9)
);

// Translation of domain axiom heapmat_in_range
axiom (forall hm_1: HeapMatrixDomainType, i: int, j_9: int ::
  { (hm_in_range(hm_1, i, j_9): bool) }
  (hm_in_range(hm_1, i, j_9): bool) == (0 <= i && (i < (height(hm_1): int) && (0 <= j_9 && j_9 < (width(hm_1): int))))
);

// Translation of domain axiom heapmat_to_set
axiom (forall hm_1: HeapMatrixDomainType, i: int, j_9: int ::
  { (loc(hm_1, i, j_9): Ref) }
  (hm_in_range(hm_1, i, j_9): bool) == (hm2set(hm_1): Set Ref)[(loc(hm_1, i, j_9): Ref)]
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique cell_value: Field NormalField int;
axiom !IsPredicateField(cell_value);
axiom !IsWandField(cell_value);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType, xs: (Set Ref), i: int): bool;
function  foo'(Heap: HeapType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { foo_2(Heap, xs, i) }
  foo_2(Heap, xs, i) == foo'(Heap, xs, i) && dummyFunction(foo#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { foo'(Heap, xs, i) }
  dummyFunction(foo#triggerStateless(xs, i))
);

// Framing axioms
function  foo#frame(frame: FrameType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), i: int ::
  { state(Heap, Mask), foo'(Heap, xs, i) }
  state(Heap, Mask) ==> foo'(Heap, xs, i) == foo#frame(FrameFragment(foo#condqp1(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function foo
// ==================================================

function  foo#condqp1(Heap: HeapType, xs_1_1: (Set Ref), i_1_1_1: int): int;
function  sk_foo#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), i: int ::
  { foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_foo#condqp1(foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i))] && NoPerm < FullPerm <==> xs[sk_foo#condqp1(foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i))] && NoPerm < FullPerm) && (xs[sk_foo#condqp1(foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i))] && NoPerm < FullPerm ==> Heap2Heap[sk_foo#condqp1(foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i)), f_7] == Heap1Heap[sk_foo#condqp1(foo#condqp1(Heap2Heap, xs, i), foo#condqp1(Heap1Heap, xs, i)), f_7]) ==> foo#condqp1(Heap2Heap, xs, i) == foo#condqp1(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType, xs: (Set Ref), i: int): bool;

// State-independent trigger function
function  foo#triggerStateless(xs: (Set Ref), i: int): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(xs: (Set Ref), i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@7.12--7.49) [69895]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange1(x_3) && invRecv1(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
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
}

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, xs: (Set Ref), i: int): bool;
function  fun01'(Heap: HeapType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { fun01(Heap, xs, i) }
  fun01(Heap, xs, i) == fun01'(Heap, xs, i) && dummyFunction(fun01#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { fun01'(Heap, xs, i) }
  dummyFunction(fun01#triggerStateless(xs, i))
);

// Framing axioms
function  fun01#frame(frame: FrameType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), i: int ::
  { state(Heap, Mask), fun01'(Heap, xs, i) }
  state(Heap, Mask) ==> fun01'(Heap, xs, i) == fun01#frame(FrameFragment(fun01#condqp2(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function fun01
// ==================================================

function  fun01#condqp2(Heap: HeapType, xs_1_1: (Set Ref), i_1_1_1: int): int;
function  sk_fun01#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), i: int ::
  { fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun01#condqp2(fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i))] && NoPerm < FullPerm <==> xs[sk_fun01#condqp2(fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i))] && NoPerm < FullPerm) && (xs[sk_fun01#condqp2(fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun01#condqp2(fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i)), f_7] == Heap1Heap[sk_fun01#condqp2(fun01#condqp2(Heap2Heap, xs, i), fun01#condqp2(Heap1Heap, xs, i)), f_7]) ==> fun01#condqp2(Heap2Heap, xs, i) == fun01#condqp2(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, xs: (Set Ref), i: int): bool;

// State-independent trigger function
function  fun01#triggerStateless(xs: (Set Ref), i: int): bool;

// Check contract well-formedness and postcondition
procedure fun01#definedness(xs: (Set Ref), i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@20.12--20.17) [69896]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange2(x_3) && invRecv2(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, xs: (Set Ref), i: int): bool;
function  fun02'(Heap: HeapType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { fun02(Heap, xs, i) }
  fun02(Heap, xs, i) == fun02'(Heap, xs, i) && dummyFunction(fun02#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { fun02'(Heap, xs, i) }
  dummyFunction(fun02#triggerStateless(xs, i))
);

// Framing axioms
function  fun02#frame(frame: FrameType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), i: int ::
  { state(Heap, Mask), fun02'(Heap, xs, i) }
  state(Heap, Mask) ==> fun02'(Heap, xs, i) == fun02#frame(FrameFragment(fun02#condqp3(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function fun02
// ==================================================

function  fun02#condqp3(Heap: HeapType, xs_1_1: (Set Ref), i_1_1_1: int): int;
function  sk_fun02#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), i: int ::
  { fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i))] && NoPerm < FullPerm <==> xs[sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i))] && NoPerm < FullPerm) && (xs[sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i))] && NoPerm < FullPerm ==> Heap2Heap[sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i)), f_7] == Heap1Heap[sk_fun02#condqp3(fun02#condqp3(Heap2Heap, xs, i), fun02#condqp3(Heap1Heap, xs, i)), f_7]) ==> fun02#condqp3(Heap2Heap, xs, i) == fun02#condqp3(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, xs: (Set Ref), i: int): bool;

// State-independent trigger function
function  fun02#triggerStateless(xs: (Set Ref), i: int): bool;

// Check contract well-formedness and postcondition
procedure fun02#definedness(xs: (Set Ref), i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@23.12--23.17) [69897]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange3(x_3) && invRecv3(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (xs[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
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
// Translation of function bar01
// ==================================================

// Uninterpreted function definitions
function  bar01(Heap: HeapType, xs: (Set Ref), i: int): bool;
function  bar01'(Heap: HeapType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { bar01(Heap, xs, i) }
  bar01(Heap, xs, i) == bar01'(Heap, xs, i) && dummyFunction(bar01#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { bar01'(Heap, xs, i) }
  dummyFunction(bar01#triggerStateless(xs, i))
);

// Framing axioms
function  bar01#frame(frame: FrameType, xs: (Set Ref), i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), i: int ::
  { state(Heap, Mask), bar01'(Heap, xs, i) }
  state(Heap, Mask) ==> bar01'(Heap, xs, i) == bar01#frame(FrameFragment(bar01#condqp4(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function bar01
// ==================================================

function  bar01#condqp4(Heap: HeapType, xs_1_1: (Set Ref), i_1_1_1: int): int;
function  sk_bar01#condqp4(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), i: int ::
  { bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_bar01#condqp4(bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i))] && NoPerm < FullPerm <==> xs[sk_bar01#condqp4(bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i))] && NoPerm < FullPerm) && (xs[sk_bar01#condqp4(bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i))] && NoPerm < FullPerm ==> Heap2Heap[sk_bar01#condqp4(bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i)), f_7] == Heap1Heap[sk_bar01#condqp4(bar01#condqp4(Heap2Heap, xs, i), bar01#condqp4(Heap1Heap, xs, i)), f_7]) ==> bar01#condqp4(Heap2Heap, xs, i) == bar01#condqp4(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  bar01#trigger(frame: FrameType, xs: (Set Ref), i: int): bool;

// State-independent trigger function
function  bar01#triggerStateless(xs: (Set Ref), i: int): bool;

// Check contract well-formedness and postcondition
procedure bar01#definedness(xs: (Set Ref), i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@37.12--37.17) [69898]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange4(x_3) && invRecv4(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (xs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
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
}

// ==================================================
// Translation of function bar02
// ==================================================

// Uninterpreted function definitions
function  bar02(Heap: HeapType, xs: (Set Ref), i: int): int;
function  bar02'(Heap: HeapType, xs: (Set Ref), i: int): int;
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { bar02(Heap, xs, i) }
  bar02(Heap, xs, i) == bar02'(Heap, xs, i) && dummyFunction(bar02#triggerStateless(xs, i))
);
axiom (forall Heap: HeapType, xs: (Set Ref), i: int ::
  { bar02'(Heap, xs, i) }
  dummyFunction(bar02#triggerStateless(xs, i))
);

// Framing axioms
function  bar02#frame(frame: FrameType, xs: (Set Ref), i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: (Set Ref), i: int ::
  { state(Heap, Mask), bar02'(Heap, xs, i) }
  state(Heap, Mask) ==> bar02'(Heap, xs, i) == bar02#frame(FrameFragment(bar02#condqp5(Heap, xs, i)), xs, i)
);
// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) in function bar02
// ==================================================

function  bar02#condqp5(Heap: HeapType, xs_1_1: (Set Ref), i_1_1_1: int): int;
function  sk_bar02#condqp5(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), i: int ::
  { bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i), succHeapTrans(Heap2Heap, Heap1Heap) }
  (xs[sk_bar02#condqp5(bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i))] && NoPerm < FullPerm <==> xs[sk_bar02#condqp5(bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i))] && NoPerm < FullPerm) && (xs[sk_bar02#condqp5(bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i))] && NoPerm < FullPerm ==> Heap2Heap[sk_bar02#condqp5(bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i)), f_7] == Heap1Heap[sk_bar02#condqp5(bar02#condqp5(Heap2Heap, xs, i), bar02#condqp5(Heap1Heap, xs, i)), f_7]) ==> bar02#condqp5(Heap2Heap, xs, i) == bar02#condqp5(Heap1Heap, xs, i)
);

// Trigger function (controlling recursive postconditions)
function  bar02#trigger(frame: FrameType, xs: (Set Ref), i: int): bool;

// State-independent trigger function
function  bar02#triggerStateless(xs: (Set Ref), i: int): int;

// Check contract well-formedness and postcondition
procedure bar02#definedness(xs: (Set Ref), i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@40.12--40.17) [69899]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange5(x_3) && invRecv5(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
        xs[x_3] ==> x_3 != null
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
}

// ==================================================
// Translation of function hm2m
// ==================================================

// Uninterpreted function definitions
function  hm2m(Heap: HeapType, hm_1: HeapMatrixDomainType): MatrixDomainType;
function  hm2m'(Heap: HeapType, hm_1: HeapMatrixDomainType): MatrixDomainType;
axiom (forall Heap: HeapType, hm_1: HeapMatrixDomainType ::
  { hm2m(Heap, hm_1) }
  hm2m(Heap, hm_1) == hm2m'(Heap, hm_1) && dummyFunction(hm2m#triggerStateless(hm_1))
);
axiom (forall Heap: HeapType, hm_1: HeapMatrixDomainType ::
  { hm2m'(Heap, hm_1) }
  dummyFunction(hm2m#triggerStateless(hm_1))
);

// Framing axioms
function  hm2m#frame(frame: FrameType, hm_1: HeapMatrixDomainType): MatrixDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, hm_1: HeapMatrixDomainType ::
  { state(Heap, Mask), hm2m'(Heap, hm_1) }
  state(Heap, Mask) ==> hm2m'(Heap, hm_1) == hm2m#frame(FrameFragment(hm2m#condqp6(Heap, hm_1)), hm_1)
);
// ==================================================
// Function used for framing of quantified permission (forall cell: Ref :: { (cell in hm2set(hm)) } (cell in hm2set(hm)) ==> acc(cell.cell_value, 1 / 2)) in function hm2m
// ==================================================

function  hm2m#condqp6(Heap: HeapType, hm_1_1: HeapMatrixDomainType): int;
function  sk_hm2m#condqp6(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, hm_1: HeapMatrixDomainType ::
  { hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((hm2set(hm_1): Set Ref)[sk_hm2m#condqp6(hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1))] && NoPerm < 1 / 2 <==> (hm2set(hm_1): Set Ref)[sk_hm2m#condqp6(hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1))] && NoPerm < 1 / 2) && ((hm2set(hm_1): Set Ref)[sk_hm2m#condqp6(hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_hm2m#condqp6(hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1)), cell_value] == Heap1Heap[sk_hm2m#condqp6(hm2m#condqp6(Heap2Heap, hm_1), hm2m#condqp6(Heap1Heap, hm_1)), cell_value]) ==> hm2m#condqp6(Heap2Heap, hm_1) == hm2m#condqp6(Heap1Heap, hm_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, hm_1: HeapMatrixDomainType ::
  { state(Heap, Mask), hm2m'(Heap, hm_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || hm2m#trigger(FrameFragment(hm2m#condqp6(Heap, hm_1)), hm_1)) ==> (forall i: int, j_9: int ::
    { Heap[(loc(hm_1, i, j_9): Ref), cell_value] } { (get_1(hm2m'(Heap, hm_1), i, j_9): int) }
    (hm_in_range(hm_1, i, j_9): bool) ==> (get_1(hm2m'(Heap, hm_1), i, j_9): int) == Heap[(loc(hm_1, i, j_9): Ref), cell_value]
  )
);

// Trigger function (controlling recursive postconditions)
function  hm2m#trigger(frame: FrameType, hm_1: HeapMatrixDomainType): bool;

// State-independent trigger function
function  hm2m#triggerStateless(hm_1: HeapMatrixDomainType): MatrixDomainType;

// Check contract well-formedness and postcondition
procedure hm2m#definedness(hm_1: HeapMatrixDomainType) returns (Result: MatrixDomainType)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_9: int;
  var j_10: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall cell: Ref :: { (cell in hm2set(hm)) } (cell in hm2set(hm)) ==> acc(cell.cell_value, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cell.cell_value might not be injective. (heap_dependent_triggers.vpr@111.14--111.82) [69900]"}
      (forall cell_3: Ref, cell_3_1: Ref ::
      
      (((cell_3 != cell_3_1 && (hm2set(hm_1): Set Ref)[cell_3]) && (hm2set(hm_1): Set Ref)[cell_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> cell_3 != cell_3_1
    );
    
    // -- Define Inverse Function
      assume (forall cell_3: Ref ::
        { Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(hm_1): Set Ref)[cell_3] }
        (hm2set(hm_1): Set Ref)[cell_3] && NoPerm < 1 / 2 ==> qpRange6(cell_3) && invRecv6(cell_3) == cell_3
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((hm2set(hm_1): Set Ref)[invRecv6(o_4)] && NoPerm < 1 / 2) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (heap_dependent_triggers.vpr@111.14--111.82) [69901]"}
      (forall cell_3: Ref ::
      { Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(hm_1): Set Ref)[cell_3] }
      (hm2set(hm_1): Set Ref)[cell_3] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall cell_3: Ref ::
        { Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(hm_1): Set Ref)[cell_3] }
        (hm2set(hm_1): Set Ref)[cell_3] && 1 / 2 > NoPerm ==> cell_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, cell_value] }
        (((hm2set(hm_1): Set Ref)[invRecv6(o_4)] && NoPerm < 1 / 2) && qpRange6(o_4) ==> (NoPerm < 1 / 2 ==> invRecv6(o_4) == o_4) && QPMask[o_4, cell_value] == Mask[o_4, cell_value] + 1 / 2) && (!(((hm2set(hm_1): Set Ref)[invRecv6(o_4)] && NoPerm < 1 / 2) && qpRange6(o_4)) ==> QPMask[o_4, cell_value] == Mask[o_4, cell_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != cell_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall i: Int, j: Int :: { loc(hm, i, j).cell_value } { get(result, i, j) } hm_in_range(hm, i, j) ==> get(result, i, j) == loc(hm, i, j).cell_value)
      if (*) {
        if ((hm_in_range(hm_1, i_9, j_10): bool)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(hm, i, j).cell_value (heap_dependent_triggers.vpr@112.13--115.84) [69902]"}
            HasDirectPerm(Mask, (loc(hm_1, i_9, j_10): Ref), cell_value);
        }
        assume false;
      }
    assume (forall i_2_1: int, j_2_1: int ::
      { Heap[(loc(hm_1, i_2_1, j_2_1): Ref), cell_value] } { (get_1(Result, i_2_1, j_2_1): int) }
      (hm_in_range(hm_1, i_2_1, j_2_1): bool) ==> (get_1(Result, i_2_1, j_2_1): int) == Heap[(loc(hm_1, i_2_1, j_2_1): Ref), cell_value]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_3: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- heap_dependent_triggers.vpr@10.3--10.47
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@10.10--10.47) [69903]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { foo(xs, i) } foo(xs, i)) -- heap_dependent_triggers.vpr@11.10--11.37
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { foo(xs, i) } foo(xs, i))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function foo might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@11.27--11.37) [69904]"}
              (forall x_2_2: Ref, x_2_3: Ref ::
              { neverTriggered8(x_2_2), neverTriggered8(x_2_3) }
              (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@11.27--11.37) [69905]"}
              (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
              xs[x_2_2] ==> FullPerm > NoPerm ==> Mask[x_2_2, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
              xs[x_2_2] && NoPerm < FullPerm ==> qpRange8(x_2_2) && invRecv8(x_2_2) == x_2_2
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              xs[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { foo#frame(FrameFragment(foo#condqp1(Heap, xs, i_1)), xs, i_1) }
      foo_2(Heap, xs, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { foo(xs, i) } foo(xs, i)) -- heap_dependent_triggers.vpr@12.3--12.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int :: { foo(xs, i) } foo(xs, i))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function foo might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@12.27--12.37) [69906]"}
              (forall x_3: Ref, x_3_1: Ref ::
              { neverTriggered9(x_3), neverTriggered9(x_3_1) }
              (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@12.27--12.37) [69907]"}
              (forall x_3: Ref ::
              { ExhaleWellDef0Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
              xs[x_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_3, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_3: Ref ::
              { ExhaleWellDef0Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
              xs[x_3] && NoPerm < FullPerm ==> qpRange9(x_3) && invRecv9(x_3) == x_3
            );
            assume (forall o_4: Ref ::
              { invRecv9(o_4) }
              xs[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion foo(xs, i) might not hold. (heap_dependent_triggers.vpr@12.10--12.37) [69908]"}
        foo_2(Heap, xs, i_3);
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { foo#frame(FrameFragment(foo#condqp1(Heap, xs, i_4_1_1)), xs, i_4_1_1) }
      foo_2(Heap, xs, i_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var j_3_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- heap_dependent_triggers.vpr@26.3--26.15
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@26.10--26.15) [69909]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange10(x_1) && invRecv10(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (xs[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4) ==> invRecv10(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> invRecv10(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x$0: Ref ::
  //     { (x$0 in ys) }
  //     (x$0 in ys) ==> acc(x$0.f, write)) -- heap_dependent_triggers.vpr@27.3--27.15
    
    // -- Check definedness of (forall x$0: Ref :: { (x$0 in ys) } (x$0 in ys) ==> acc(x$0.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x$0.f might not be injective. (heap_dependent_triggers.vpr@27.10--27.15) [69910]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && ys[x$0_1]) && ys[x$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, f_7] } { QPMask[x$0_1, f_7] } { ys[x$0_1] }
        ys[x$0_1] && NoPerm < FullPerm ==> qpRange11(x$0_1) && invRecv11(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (ys[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, f_7] } { QPMask[x$0_1, f_7] } { ys[x$0_1] }
        ys[x$0_1] ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((ys[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((ys[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int ::
  //     { fun01(xs, j) }
  //     { fun02(ys, j) }
  //     fun01(xs, j) == fun02(ys, j)) -- heap_dependent_triggers.vpr@29.3--29.55
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { fun01(xs, j) } { fun02(ys, j) } fun01(xs, j) == fun02(ys, j))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function fun01 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@29.27--29.39) [69911]"}
              (forall x_2_2: Ref, x_2_3: Ref ::
              { neverTriggered12(x_2_2), neverTriggered12(x_2_3) }
              (((x_2_2 != x_2_3 && xs[x_2_2]) && xs[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@29.27--29.39) [69912]"}
              (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
              xs[x_2_2] ==> FullPerm > NoPerm ==> Mask[x_2_2, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { xs[x_2_2] }
              xs[x_2_2] && NoPerm < FullPerm ==> qpRange12(x_2_2) && invRecv12(x_2_2) == x_2_2
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
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function fun02 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@29.43--29.55) [69913]"}
              (forall x_3: Ref, x_3_1: Ref ::
              { neverTriggered13(x_3), neverTriggered13(x_3_1) }
              (((x_3 != x_3_1 && ys[x_3]) && ys[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@29.43--29.55) [69914]"}
              (forall x_3: Ref ::
              { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { ys[x_3] }
              ys[x_3] ==> FullPerm > NoPerm ==> Mask[x_3, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_3: Ref ::
              { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { ys[x_3] }
              ys[x_3] && NoPerm < FullPerm ==> qpRange13(x_3) && invRecv13(x_3) == x_3
            );
            assume (forall o_4: Ref ::
              { invRecv13(o_4) }
              ys[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall j_1: int ::
      { fun01#frame(FrameFragment(fun01#condqp2(Heap, xs, j_1)), xs, j_1) } { fun02#frame(FrameFragment(fun02#condqp3(Heap, ys, j_1)), ys, j_1) }
      fun01(Heap, xs, j_1) == fun02(Heap, ys, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall j: Int ::
  //     { fun01(xs, j) }
  //     { fun02(ys, j) }
  //     fun01(xs, j) == fun02(ys, j)) -- heap_dependent_triggers.vpr@30.3--30.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { fun01(xs, j) } { fun02(ys, j) } fun01(xs, j) == fun02(ys, j))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function fun01 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@30.27--30.39) [69915]"}
              (forall x_4: Ref, x_4_1: Ref ::
              { neverTriggered14(x_4), neverTriggered14(x_4_1) }
              (((x_4 != x_4_1 && xs[x_4]) && xs[x_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@30.27--30.39) [69916]"}
              (forall x_4: Ref ::
              { ExhaleWellDef0Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
              xs[x_4] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_4, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_4: Ref ::
              { ExhaleWellDef0Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
              xs[x_4] && NoPerm < FullPerm ==> qpRange14(x_4) && invRecv14(x_4) == x_4
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
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function fun02 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@30.43--30.55) [69917]"}
              (forall x_5: Ref, x_5_1: Ref ::
              { neverTriggered15(x_5), neverTriggered15(x_5_1) }
              (((x_5 != x_5_1 && ys[x_5]) && ys[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@30.43--30.55) [69918]"}
              (forall x_5: Ref ::
              { ExhaleWellDef0Heap[x_5, f_7] } { QPMask[x_5, f_7] } { ys[x_5] }
              ys[x_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_5, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_5: Ref ::
              { ExhaleWellDef0Heap[x_5, f_7] } { QPMask[x_5, f_7] } { ys[x_5] }
              ys[x_5] && NoPerm < FullPerm ==> qpRange15(x_5) && invRecv15(x_5) == x_5
            );
            assume (forall o_4: Ref ::
              { invRecv15(o_4) }
              ys[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Exhale might fail. Assertion fun01(xs, j) == fun02(ys, j) might not hold. (heap_dependent_triggers.vpr@30.10--30.55) [69919]"}
        fun01(Heap, xs, j_3_1) == fun02(Heap, ys, j_3_1);
      assume false;
    }
    assume (forall j_4_1_1: int ::
      { fun01#frame(FrameFragment(fun01#condqp2(Heap, xs, j_4_1_1)), xs, j_4_1_1) } { fun02#frame(FrameFragment(fun02#condqp3(Heap, ys, j_4_1_1)), ys, j_4_1_1) }
      fun01(Heap, xs, j_4_1_1) == fun02(Heap, ys, j_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test20
// ==================================================

procedure test20(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var j_3_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write)) -- heap_dependent_triggers.vpr@43.3--43.15
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@43.10--43.15) [69920]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange16(x_1) && invRecv16(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (xs[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> invRecv16(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x$0: Ref ::
  //     { (x$0 in ys) }
  //     (x$0 in ys) ==> acc(x$0.f, write)) -- heap_dependent_triggers.vpr@44.3--44.15
    
    // -- Check definedness of (forall x$0: Ref :: { (x$0 in ys) } (x$0 in ys) ==> acc(x$0.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource x$0.f might not be injective. (heap_dependent_triggers.vpr@44.10--44.15) [69921]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && ys[x$0_1]) && ys[x$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, f_7] } { QPMask[x$0_1, f_7] } { ys[x$0_1] }
        ys[x$0_1] && NoPerm < FullPerm ==> qpRange17(x$0_1) && invRecv17(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (ys[invRecv17(o_4)] && NoPerm < FullPerm) && qpRange17(o_4) ==> invRecv17(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, f_7] } { QPMask[x$0_1, f_7] } { ys[x$0_1] }
        ys[x$0_1] ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((ys[invRecv17(o_4)] && NoPerm < FullPerm) && qpRange17(o_4) ==> (NoPerm < FullPerm ==> invRecv17(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((ys[invRecv17(o_4)] && NoPerm < FullPerm) && qpRange17(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int ::
  //     { bar01(xs, bar02(ys, j)) }
  //     { foo(xs, j) }
  //     bar01(xs, bar02(ys, j)) == foo(xs, j)) -- heap_dependent_triggers.vpr@46.3--49.44
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { bar01(xs, bar02(ys, j)) } { foo(xs, j) } bar01(xs, bar02(ys, j)) == foo(xs, j))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function bar02 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@49.17--49.29) [69922]"}
              (forall x_2_2: Ref, x_2_3: Ref ::
              { neverTriggered18(x_2_2), neverTriggered18(x_2_3) }
              (((x_2_2 != x_2_3 && ys[x_2_2]) && ys[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function bar02 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@49.17--49.29) [69923]"}
              (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { ys[x_2_2] }
              ys[x_2_2] ==> FullPerm > NoPerm ==> Mask[x_2_2, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_2_2: Ref ::
              { Heap[x_2_2, f_7] } { QPMask[x_2_2, f_7] } { ys[x_2_2] }
              ys[x_2_2] && NoPerm < FullPerm ==> qpRange18(x_2_2) && invRecv18(x_2_2) == x_2_2
            );
            assume (forall o_4: Ref ::
              { invRecv18(o_4) }
              ys[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function bar01 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@49.7--49.30) [69924]"}
              (forall x_3: Ref, x_3_1: Ref ::
              { neverTriggered19(x_3), neverTriggered19(x_3_1) }
              (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function bar01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@49.7--49.30) [69925]"}
              (forall x_3: Ref ::
              { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
              xs[x_3] ==> FullPerm > NoPerm ==> Mask[x_3, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_3: Ref ::
              { Heap[x_3, f_7] } { QPMask[x_3, f_7] } { xs[x_3] }
              xs[x_3] && NoPerm < FullPerm ==> qpRange19(x_3) && invRecv19(x_3) == x_3
            );
            assume (forall o_4: Ref ::
              { invRecv19(o_4) }
              xs[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function foo might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@49.34--49.44) [69926]"}
              (forall x_4: Ref, x_4_1: Ref ::
              { neverTriggered20(x_4), neverTriggered20(x_4_1) }
              (((x_4 != x_4_1 && xs[x_4]) && xs[x_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@49.34--49.44) [69927]"}
              (forall x_4: Ref ::
              { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
              xs[x_4] ==> FullPerm > NoPerm ==> Mask[x_4, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_4: Ref ::
              { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] }
              xs[x_4] && NoPerm < FullPerm ==> qpRange20(x_4) && invRecv20(x_4) == x_4
            );
            assume (forall o_4: Ref ::
              { invRecv20(o_4) }
              xs[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall j_1: int ::
      { bar01#frame(FrameFragment(bar01#condqp4(Heap, xs, bar02(Heap, ys, j_1))), xs, bar02#frame(FrameFragment(bar02#condqp5(Heap, ys, j_1)), ys, j_1)) } { foo#frame(FrameFragment(foo#condqp1(Heap, xs, j_1)), xs, j_1) }
      bar01(Heap, xs, bar02(Heap, ys, j_1)) == foo_2(Heap, xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall j: Int ::
  //     { bar01(xs, bar02(ys, j)) }
  //     { foo(xs, j) }
  //     bar01(xs, bar02(ys, j)) == foo(xs, j)) -- heap_dependent_triggers.vpr@51.3--53.44
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall j: Int :: { bar01(xs, bar02(ys, j)) } { foo(xs, j) } bar01(xs, bar02(ys, j)) == foo(xs, j))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function bar02 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@53.17--53.29) [69928]"}
              (forall x_5: Ref, x_5_1: Ref ::
              { neverTriggered21(x_5), neverTriggered21(x_5_1) }
              (((x_5 != x_5_1 && ys[x_5]) && ys[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function bar02 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@53.17--53.29) [69929]"}
              (forall x_5: Ref ::
              { ExhaleWellDef0Heap[x_5, f_7] } { QPMask[x_5, f_7] } { ys[x_5] }
              ys[x_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_5, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_5: Ref ::
              { ExhaleWellDef0Heap[x_5, f_7] } { QPMask[x_5, f_7] } { ys[x_5] }
              ys[x_5] && NoPerm < FullPerm ==> qpRange21(x_5) && invRecv21(x_5) == x_5
            );
            assume (forall o_4: Ref ::
              { invRecv21(o_4) }
              ys[invRecv21(o_4)] && (NoPerm < FullPerm && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function bar01 might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@53.7--53.30) [69930]"}
              (forall x_6: Ref, x_6_1: Ref ::
              { neverTriggered22(x_6), neverTriggered22(x_6_1) }
              (((x_6 != x_6_1 && xs[x_6]) && xs[x_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function bar01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@53.7--53.30) [69931]"}
              (forall x_6: Ref ::
              { ExhaleWellDef0Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] }
              xs[x_6] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_6, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_6: Ref ::
              { ExhaleWellDef0Heap[x_6, f_7] } { QPMask[x_6, f_7] } { xs[x_6] }
              xs[x_6] && NoPerm < FullPerm ==> qpRange22(x_6) && invRecv22(x_6) == x_6
            );
            assume (forall o_4: Ref ::
              { invRecv22(o_4) }
              xs[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver x is injective
            assert {:msg "  Precondition of function foo might not hold. Quantified resource x.f might not be injective. (heap_dependent_triggers.vpr@53.34--53.44) [69932]"}
              (forall x_7: Ref, x_7_1: Ref ::
              { neverTriggered23(x_7), neverTriggered23(x_7_1) }
              (((x_7 != x_7_1 && xs[x_7]) && xs[x_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_7 != x_7_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@53.34--53.44) [69933]"}
              (forall x_7: Ref ::
              { ExhaleWellDef0Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
              xs[x_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[x_7, f_7] > NoPerm
            );
          
          // -- assumptions for inverse of receiver x
            assume (forall x_7: Ref ::
              { ExhaleWellDef0Heap[x_7, f_7] } { QPMask[x_7, f_7] } { xs[x_7] }
              xs[x_7] && NoPerm < FullPerm ==> qpRange23(x_7) && invRecv23(x_7) == x_7
            );
            assume (forall o_4: Ref ::
              { invRecv23(o_4) }
              xs[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Exhale might fail. Assertion bar01(xs, bar02(ys, j)) == foo(xs, j) might not hold. (heap_dependent_triggers.vpr@52.5--53.44) [69934]"}
        bar01(Heap, xs, bar02(Heap, ys, j_3_1)) == foo_2(Heap, xs, j_3_1);
      assume false;
    }
    assume (forall j_4_1_1: int ::
      { bar01#frame(FrameFragment(bar01#condqp4(Heap, xs, bar02(Heap, ys, j_4_1_1))), xs, bar02#frame(FrameFragment(bar02#condqp5(Heap, ys, j_4_1_1)), ys, j_4_1_1)) } { foo#frame(FrameFragment(foo#condqp1(Heap, xs, j_4_1_1)), xs, j_4_1_1) }
      bar01(Heap, xs, bar02(Heap, ys, j_4_1_1)) == foo_2(Heap, xs, j_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method MatrixMul
// ==================================================

procedure MatrixMul(C: HeapMatrixDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var z_3: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall cell: Ref :: { (cell in hm2set(C)) } (cell in hm2set(C)) ==> acc(cell.cell_value, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource cell.cell_value might not be injective. (heap_dependent_triggers.vpr@119.14--119.81) [69935]"}
      (forall cell_1: Ref, cell_1_1: Ref ::
      
      (((cell_1 != cell_1_1 && (hm2set(C): Set Ref)[cell_1]) && (hm2set(C): Set Ref)[cell_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> cell_1 != cell_1_1
    );
    
    // -- Define Inverse Function
      assume (forall cell_1: Ref ::
        { Heap[cell_1, cell_value] } { QPMask[cell_1, cell_value] } { (hm2set(C): Set Ref)[cell_1] }
        (hm2set(C): Set Ref)[cell_1] && NoPerm < 1 / 2 ==> qpRange24(cell_1) && invRecv24(cell_1) == cell_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((hm2set(C): Set Ref)[invRecv24(o_4)] && NoPerm < 1 / 2) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (heap_dependent_triggers.vpr@119.14--119.81) [69936]"}
      (forall cell_1: Ref ::
      { Heap[cell_1, cell_value] } { QPMask[cell_1, cell_value] } { (hm2set(C): Set Ref)[cell_1] }
      (hm2set(C): Set Ref)[cell_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall cell_1: Ref ::
        { Heap[cell_1, cell_value] } { QPMask[cell_1, cell_value] } { (hm2set(C): Set Ref)[cell_1] }
        (hm2set(C): Set Ref)[cell_1] && 1 / 2 > NoPerm ==> cell_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, cell_value] }
        (((hm2set(C): Set Ref)[invRecv24(o_4)] && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> invRecv24(o_4) == o_4) && QPMask[o_4, cell_value] == Mask[o_4, cell_value] + 1 / 2) && (!(((hm2set(C): Set Ref)[invRecv24(o_4)] && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, cell_value] == Mask[o_4, cell_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != cell_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Int :: { get(hm2m(C), z, z) } get(hm2m(C), z, z) == 0) -- heap_dependent_triggers.vpr@121.12--121.52
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { get(hm2m(C), z, z) } get(hm2m(C), z, z) == 0)
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function hm2m might not hold. Fraction 1 / 2 might be negative. (heap_dependent_triggers.vpr@121.33--121.40) [69937]"}
              (forall cell_2: Ref ::
              { Heap[cell_2, cell_value] } { QPMask[cell_2, cell_value] } { (hm2set(C): Set Ref)[cell_2] }
              (hm2set(C): Set Ref)[cell_2] && dummyFunction(Heap[cell_2, cell_value]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver cell is injective
            assert {:msg "  Precondition of function hm2m might not hold. Quantified resource cell.cell_value might not be injective. (heap_dependent_triggers.vpr@121.33--121.40) [69938]"}
              (forall cell_2: Ref, cell_2_1: Ref ::
              { neverTriggered25(cell_2), neverTriggered25(cell_2_1) }
              (((cell_2 != cell_2_1 && (hm2set(C): Set Ref)[cell_2]) && (hm2set(C): Set Ref)[cell_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> cell_2 != cell_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hm2m might not hold. There might be insufficient permission to access cell.cell_value (heap_dependent_triggers.vpr@121.33--121.40) [69939]"}
              (forall cell_2: Ref ::
              { Heap[cell_2, cell_value] } { QPMask[cell_2, cell_value] } { (hm2set(C): Set Ref)[cell_2] }
              (hm2set(C): Set Ref)[cell_2] ==> 1 / 2 > NoPerm ==> Mask[cell_2, cell_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver cell
            assume (forall cell_2: Ref ::
              { Heap[cell_2, cell_value] } { QPMask[cell_2, cell_value] } { (hm2set(C): Set Ref)[cell_2] }
              (hm2set(C): Set Ref)[cell_2] && NoPerm < 1 / 2 ==> qpRange25(cell_2) && invRecv25(cell_2) == cell_2
            );
            assume (forall o_4: Ref ::
              { invRecv25(o_4) }
              (hm2set(C): Set Ref)[invRecv25(o_4)] && (NoPerm < 1 / 2 && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall z_1: int ::
      { (get_1(hm2m#frame(FrameFragment(hm2m#condqp6(Heap, C)), C), z_1, z_1): int) }
      (get_1(hm2m(Heap, C), z_1, z_1): int) == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall z: Int :: { get(hm2m(C), z, z) } get(hm2m(C), z, z) == 0) -- heap_dependent_triggers.vpr@122.5--122.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall z: Int :: { get(hm2m(C), z, z) } get(hm2m(C), z, z) == 0)
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function hm2m might not hold. Fraction 1 / 2 might be negative. (heap_dependent_triggers.vpr@122.33--122.40) [69940]"}
              (forall cell_3: Ref ::
              { ExhaleWellDef0Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(C): Set Ref)[cell_3] }
              (hm2set(C): Set Ref)[cell_3] && dummyFunction(ExhaleWellDef0Heap[cell_3, cell_value]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver cell is injective
            assert {:msg "  Precondition of function hm2m might not hold. Quantified resource cell.cell_value might not be injective. (heap_dependent_triggers.vpr@122.33--122.40) [69941]"}
              (forall cell_3: Ref, cell_3_1: Ref ::
              { neverTriggered26(cell_3), neverTriggered26(cell_3_1) }
              (((cell_3 != cell_3_1 && (hm2set(C): Set Ref)[cell_3]) && (hm2set(C): Set Ref)[cell_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> cell_3 != cell_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function hm2m might not hold. There might be insufficient permission to access cell.cell_value (heap_dependent_triggers.vpr@122.33--122.40) [69942]"}
              (forall cell_3: Ref ::
              { ExhaleWellDef0Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(C): Set Ref)[cell_3] }
              (hm2set(C): Set Ref)[cell_3] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[cell_3, cell_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver cell
            assume (forall cell_3: Ref ::
              { ExhaleWellDef0Heap[cell_3, cell_value] } { QPMask[cell_3, cell_value] } { (hm2set(C): Set Ref)[cell_3] }
              (hm2set(C): Set Ref)[cell_3] && NoPerm < 1 / 2 ==> qpRange26(cell_3) && invRecv26(cell_3) == cell_3
            );
            assume (forall o_4: Ref ::
              { invRecv26(o_4) }
              (hm2set(C): Set Ref)[invRecv26(o_4)] && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion get(hm2m(C), z, z) == 0 might not hold. (heap_dependent_triggers.vpr@122.12--122.52) [69943]"}
        (get_1(hm2m(Heap, C), z_3, z_3): int) == 0;
      assume false;
    }
    assume (forall z_4_1_1: int ::
      { (get_1(hm2m#frame(FrameFragment(hm2m#condqp6(Heap, C)), C), z_4_1_1, z_4_1_1): int) }
      (get_1(hm2m(Heap, C), z_4_1_1, z_4_1_1): int) == 0
    );
    assume state(Heap, Mask);
}