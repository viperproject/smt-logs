// 
// Translation of Viper program.
// 
// Date:         2025-01-07 13:53:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/forall_exhale.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/forall_exhale-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_9: Ref, f_13: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_9, f_13] }
  Heap[o_9, $allocated] ==> Heap[Heap[o_9, f_13], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref, f_14: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, f_14] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_10, f_14) ==> Heap[o_10, f_14] == ExhaleHeap[o_10, f_14]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_10, $allocated] ==> ExhaleHeap[o_10, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_9: Ref, f_15: (Field A B), v: B ::
  { Heap[o_9, f_15:=v] }
  succHeap(Heap, Heap[o_9, f_15:=v])
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

function  neverTriggered1(y_1: Ref): bool;
function  neverTriggered2(z_1: Ref): bool;
function  neverTriggered3(w_1: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(u_1: Ref): bool;
function  neverTriggered6(q_1_1: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(y_1: Ref): bool;
function  neverTriggered9(z_1: Ref): bool;
function  neverTriggered10(a_1_1: Ref): bool;
function  neverTriggered11(x_1: Ref): bool;
function  neverTriggered12(y_1: Ref): bool;
function  neverTriggered13(z_1: Ref): bool;
function  neverTriggered14(b_1_2: Ref): bool;
function  neverTriggered15(c_1: Ref): bool;
function  neverTriggered16(x_1: Ref): bool;
function  neverTriggered17(y_1: Ref): bool;
function  neverTriggered18(z_1: Ref): bool;
function  neverTriggered19(a_1_1: Ref): bool;
function  neverTriggered20(b_1_2: Ref): bool;
function  neverTriggered21(x_1: Ref): bool;
function  neverTriggered22(y_1: Ref): bool;
function  neverTriggered23(z_1: Ref): bool;
function  neverTriggered24(x_1: Ref): bool;
function  neverTriggered25(y_1: Ref): bool;
function  neverTriggered26(y_2: Ref): bool;
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
// Translation of method t1
// ==================================================

procedure t1(xs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } (y in xs) ==> acc(y.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@7.10--7.53) [1406]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && xs[y_1]) && xs[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { xs[y_1] }
        xs[y_1] && NoPerm < FullPerm ==> qpRange1(y_1) && invRecv1(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (xs[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { xs[y_1] }
        xs[y_1] ==> y_1 != null
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
  
  // -- Translating statement: exhale (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write)) -- forall_exhale.vpr@9.5--9.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in xs) } (z in xs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (forall_exhale.vpr@9.12--9.55) [1408]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered2(z_1), neverTriggered2(z_1_1) }
        (((z_1 != z_1_1 && xs[z_1]) && xs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (forall_exhale.vpr@9.12--9.55) [1409]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { xs[z_1] }
        xs[z_1] && NoPerm < FullPerm ==> qpRange2(z_1) && invRecv2(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        xs[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4)) ==> invRecv2(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(xs[invRecv2(o_4)] && (NoPerm < FullPerm && qpRange2(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall w: Ref :: { (w in xs) } (w in xs) ==> acc(w.f, write)) -- forall_exhale.vpr@11.5--11.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall w: Ref :: { (w in xs) } (w in xs) ==> acc(w.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver w is injective
      assert {:msg "  Exhale might fail. Quantified resource w.f might not be injective. (forall_exhale.vpr@11.12--11.55) [1411]"}
        (forall w_1: Ref, w_1_1: Ref ::
        { neverTriggered3(w_1), neverTriggered3(w_1_1) }
        (((w_1 != w_1_1 && xs[w_1]) && xs[w_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> w_1 != w_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access w.f (forall_exhale.vpr@11.12--11.55) [1412]"}
        (forall w_1: Ref ::
        { Heap[w_1, f_7] } { QPMask[w_1, f_7] } { xs[w_1] }
        xs[w_1] ==> Mask[w_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver w
      assume (forall w_1: Ref ::
        { Heap[w_1, f_7] } { QPMask[w_1, f_7] } { xs[w_1] }
        xs[w_1] && NoPerm < FullPerm ==> qpRange3(w_1) && invRecv3(w_1) == w_1
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
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(zs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in zs) } (x in zs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@15.10--15.53) [1413]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && zs[x_1]) && zs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { zs[x_1] }
        zs[x_1] && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (zs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { zs[x_1] }
        zs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((zs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((zs[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Subset(ys, zs);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall u: Ref :: { (u in ys) } (u in ys) ==> acc(u.f, write)) -- forall_exhale.vpr@18.5--18.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall u: Ref :: { (u in ys) } (u in ys) ==> acc(u.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver u is injective
      assert {:msg "  Exhale might fail. Quantified resource u.f might not be injective. (forall_exhale.vpr@18.12--18.55) [1415]"}
        (forall u_1: Ref, u_1_1: Ref ::
        { neverTriggered5(u_1), neverTriggered5(u_1_1) }
        (((u_1 != u_1_1 && ys[u_1]) && ys[u_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> u_1 != u_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access u.f (forall_exhale.vpr@18.12--18.55) [1416]"}
        (forall u_1: Ref ::
        { Heap[u_1, f_7] } { QPMask[u_1, f_7] } { ys[u_1] }
        ys[u_1] ==> Mask[u_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver u
      assume (forall u_1: Ref ::
        { Heap[u_1, f_7] } { QPMask[u_1, f_7] } { ys[u_1] }
        ys[u_1] && NoPerm < FullPerm ==> qpRange5(u_1) && invRecv5(u_1) == u_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        ys[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (ys[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(ys[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall q: Ref :: { (q in zs) } (q in zs) ==> acc(q.f, write)) -- forall_exhale.vpr@20.5--20.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall q: Ref :: { (q in zs) } (q in zs) ==> acc(q.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver q is injective
      assert {:msg "  Exhale might fail. Quantified resource q.f might not be injective. (forall_exhale.vpr@20.12--20.55) [1418]"}
        (forall q_1_1: Ref, q_1_2: Ref ::
        { neverTriggered6(q_1_1), neverTriggered6(q_1_2) }
        (((q_1_1 != q_1_2 && zs[q_1_1]) && zs[q_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> q_1_1 != q_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access q.f (forall_exhale.vpr@20.12--20.55) [1419]"}
        (forall q_1_1: Ref ::
        { Heap[q_1_1, f_7] } { QPMask[q_1_1, f_7] } { zs[q_1_1] }
        zs[q_1_1] ==> Mask[q_1_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver q
      assume (forall q_1_1: Ref ::
        { Heap[q_1_1, f_7] } { QPMask[q_1_1, f_7] } { zs[q_1_1] }
        zs[q_1_1] && NoPerm < FullPerm ==> qpRange6(q_1_1) && invRecv6(q_1_1) == q_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        zs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (zs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(zs[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(xs: (Set Ref), ys: (Set Ref), zs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@24.10--24.53) [1420]"}
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
    
    // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@25.10--25.53) [1421]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] && NoPerm < FullPerm ==> qpRange8(y_1) && invRecv8(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        (ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> invRecv8(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4) ==> (NoPerm < FullPerm ==> invRecv8(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((ys[invRecv8(o_4)] && NoPerm < FullPerm) && qpRange8(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Subset(zs, Set#Union(xs, ys));
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write)) -- forall_exhale.vpr@28.4--28.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (forall_exhale.vpr@28.11--28.54) [1423]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered9(z_1), neverTriggered9(z_1_1) }
        (((z_1 != z_1_1 && zs[z_1]) && zs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (forall_exhale.vpr@28.11--28.54) [1424]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
        zs[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
        zs[z_1] && NoPerm < FullPerm ==> qpRange9(z_1) && invRecv9(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        zs[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (zs[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(zs[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall a: Ref :: { (a in ys) } (a in ys) ==> acc(a.f, write)) -- forall_exhale.vpr@30.4--30.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a: Ref :: { (a in ys) } (a in ys) ==> acc(a.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a is injective
      assert {:msg "  Exhale might fail. Quantified resource a.f might not be injective. (forall_exhale.vpr@30.11--30.54) [1426]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered10(a_1_1), neverTriggered10(a_1_2) }
        (((a_1_1 != a_1_2 && ys[a_1_1]) && ys[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (forall_exhale.vpr@30.11--30.54) [1427]"}
        (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { ys[a_1_1] }
        ys[a_1_1] ==> Mask[a_1_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { ys[a_1_1] }
        ys[a_1_1] && NoPerm < FullPerm ==> qpRange10(a_1_1) && invRecv10(a_1_1) == a_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ys[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (ys[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(ys[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(xs: (Set Ref), ys: (Set Ref), zs: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@34.10--34.53) [1428]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange11(x_1) && invRecv11(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (xs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
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
    
    // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@35.10--35.53) [1429]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] && NoPerm < FullPerm ==> qpRange12(y_1) && invRecv12(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (ys[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((ys[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> invRecv12(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((ys[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Subset(zs, Set#Union(xs, ys));
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write)) -- forall_exhale.vpr@38.3--38.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in zs) } (z in zs) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (forall_exhale.vpr@38.10--38.53) [1431]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered13(z_1), neverTriggered13(z_1_1) }
        (((z_1 != z_1_1 && zs[z_1]) && zs[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (forall_exhale.vpr@38.10--38.53) [1432]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
        zs[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { zs[z_1] }
        zs[z_1] && NoPerm < FullPerm ==> qpRange13(z_1) && invRecv13(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        zs[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (zs[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(zs[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall b: Ref ::
  //     { (b in (xs setminus zs)) }
  //     (b in (xs setminus zs)) ==> acc(b.f, write)) -- forall_exhale.vpr@40.3--40.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall b: Ref :: { (b in (xs setminus zs)) } (b in (xs setminus zs)) ==> acc(b.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b is injective
      assert {:msg "  Exhale might fail. Quantified resource b.f might not be injective. (forall_exhale.vpr@40.10--40.67) [1434]"}
        (forall b_1_2: Ref, b_1_3: Ref ::
        { neverTriggered14(b_1_2), neverTriggered14(b_1_3) }
        (((b_1_2 != b_1_3 && Set#Difference(xs, zs)[b_1_2]) && Set#Difference(xs, zs)[b_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> b_1_2 != b_1_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.f (forall_exhale.vpr@40.10--40.67) [1435]"}
        (forall b_1_2: Ref ::
        { Heap[b_1_2, f_7] } { QPMask[b_1_2, f_7] } { Set#Difference(xs, zs)[b_1_2] }
        Set#Difference(xs, zs)[b_1_2] ==> Mask[b_1_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b
      assume (forall b_1_2: Ref ::
        { Heap[b_1_2, f_7] } { QPMask[b_1_2, f_7] } { Set#Difference(xs, zs)[b_1_2] }
        Set#Difference(xs, zs)[b_1_2] && NoPerm < FullPerm ==> qpRange14(b_1_2) && invRecv14(b_1_2) == b_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        Set#Difference(xs, zs)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Difference(xs, zs)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> invRecv14(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Difference(xs, zs)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall c: Ref ::
  //     { (c in (ys setminus xs)) }
  //     (c in (ys setminus xs)) ==> acc(c.f, write)) -- forall_exhale.vpr@43.3--43.68
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall c: Ref :: { (c in (ys setminus xs)) } (c in (ys setminus xs)) ==> acc(c.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver c is injective
      assert {:msg "  Exhale might fail. Quantified resource c.f might not be injective. (forall_exhale.vpr@43.10--43.67) [1437]"}
        (forall c_1: Ref, c_1_1: Ref ::
        { neverTriggered15(c_1), neverTriggered15(c_1_1) }
        (((c_1 != c_1_1 && Set#Difference(ys, xs)[c_1]) && Set#Difference(ys, xs)[c_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> c_1 != c_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c.f (forall_exhale.vpr@43.10--43.67) [1438]"}
        (forall c_1: Ref ::
        { Heap[c_1, f_7] } { QPMask[c_1, f_7] } { Set#Difference(ys, xs)[c_1] }
        Set#Difference(ys, xs)[c_1] ==> Mask[c_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver c
      assume (forall c_1: Ref ::
        { Heap[c_1, f_7] } { QPMask[c_1, f_7] } { Set#Difference(ys, xs)[c_1] }
        Set#Difference(ys, xs)[c_1] && NoPerm < FullPerm ==> qpRange15(c_1) && invRecv15(c_1) == c_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        Set#Difference(ys, xs)[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Difference(ys, xs)[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Difference(ys, xs)[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method t5
// ==================================================

procedure t5(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@47.10--47.53) [1439]"}
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
    
    // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@48.10--48.53) [1440]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] && NoPerm < FullPerm ==> qpRange17(y_1) && invRecv17(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (ys[invRecv17(o_4)] && NoPerm < FullPerm) && qpRange17(o_4) ==> invRecv17(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] ==> y_1 != null
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall z: Ref ::
  //     { (z in (xs intersection ys)) }
  //     (z in (xs intersection ys)) ==> acc(z.f, write)) -- forall_exhale.vpr@50.5--50.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in (xs intersection ys)) } (z in (xs intersection ys)) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (forall_exhale.vpr@50.12--50.73) [1442]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered18(z_1), neverTriggered18(z_1_1) }
        (((z_1 != z_1_1 && Set#Intersection(xs, ys)[z_1]) && Set#Intersection(xs, ys)[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (forall_exhale.vpr@50.12--50.73) [1443]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Intersection(xs, ys)[z_1] }
        Set#Intersection(xs, ys)[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Intersection(xs, ys)[z_1] }
        Set#Intersection(xs, ys)[z_1] && NoPerm < FullPerm ==> qpRange18(z_1) && invRecv18(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Set#Intersection(xs, ys)[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Intersection(xs, ys)[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Intersection(xs, ys)[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall a: Ref ::
  //     { (a in (xs setminus (xs intersection ys))) }
  //     (a in (xs setminus (xs intersection ys))) ==> acc(a.f, write)) -- forall_exhale.vpr@51.5--51.88
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall a: Ref :: { (a in (xs setminus (xs intersection ys))) } (a in (xs setminus (xs intersection ys))) ==> acc(a.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a is injective
      assert {:msg "  Exhale might fail. Quantified resource a.f might not be injective. (forall_exhale.vpr@51.12--51.87) [1445]"}
        (forall a_1_1: Ref, a_1_2: Ref ::
        { neverTriggered19(a_1_1), neverTriggered19(a_1_2) }
        (((a_1_1 != a_1_2 && Set#Difference(xs, Set#Intersection(xs, ys))[a_1_1]) && Set#Difference(xs, Set#Intersection(xs, ys))[a_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> a_1_1 != a_1_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access a.f (forall_exhale.vpr@51.12--51.87) [1446]"}
        (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { Set#Difference(xs, Set#Intersection(xs, ys))[a_1_1] }
        Set#Difference(xs, Set#Intersection(xs, ys))[a_1_1] ==> Mask[a_1_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a
      assume (forall a_1_1: Ref ::
        { Heap[a_1_1, f_7] } { QPMask[a_1_1, f_7] } { Set#Difference(xs, Set#Intersection(xs, ys))[a_1_1] }
        Set#Difference(xs, Set#Intersection(xs, ys))[a_1_1] && NoPerm < FullPerm ==> qpRange19(a_1_1) && invRecv19(a_1_1) == a_1_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        Set#Difference(xs, Set#Intersection(xs, ys))[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Difference(xs, Set#Intersection(xs, ys))[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Difference(xs, Set#Intersection(xs, ys))[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall b: Ref ::
  //     { (b in (ys setminus (ys intersection xs))) }
  //     (b in (ys setminus (ys intersection xs))) ==> acc(b.f, write)) -- forall_exhale.vpr@52.5--52.88
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall b: Ref :: { (b in (ys setminus (ys intersection xs))) } (b in (ys setminus (ys intersection xs))) ==> acc(b.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver b is injective
      assert {:msg "  Exhale might fail. Quantified resource b.f might not be injective. (forall_exhale.vpr@52.12--52.87) [1448]"}
        (forall b_1_2: Ref, b_1_3: Ref ::
        { neverTriggered20(b_1_2), neverTriggered20(b_1_3) }
        (((b_1_2 != b_1_3 && Set#Difference(ys, Set#Intersection(ys, xs))[b_1_2]) && Set#Difference(ys, Set#Intersection(ys, xs))[b_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> b_1_2 != b_1_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access b.f (forall_exhale.vpr@52.12--52.87) [1449]"}
        (forall b_1_2: Ref ::
        { Heap[b_1_2, f_7] } { QPMask[b_1_2, f_7] } { Set#Difference(ys, Set#Intersection(ys, xs))[b_1_2] }
        Set#Difference(ys, Set#Intersection(ys, xs))[b_1_2] ==> Mask[b_1_2, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver b
      assume (forall b_1_2: Ref ::
        { Heap[b_1_2, f_7] } { QPMask[b_1_2, f_7] } { Set#Difference(ys, Set#Intersection(ys, xs))[b_1_2] }
        Set#Difference(ys, Set#Intersection(ys, xs))[b_1_2] && NoPerm < FullPerm ==> qpRange20(b_1_2) && invRecv20(b_1_2) == b_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        Set#Difference(ys, Set#Intersection(ys, xs))[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Difference(ys, Set#Intersection(ys, xs))[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4)) ==> invRecv20(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Difference(ys, Set#Intersection(ys, xs))[invRecv20(o_4)] && (NoPerm < FullPerm && qpRange20(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@56.10--56.51) [1450]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < 1 / 2 ==> qpRange21(x_1) && invRecv21(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (xs[invRecv21(o_4)] && NoPerm < 1 / 2) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (forall_exhale.vpr@56.10--56.51) [1451]"}
      (forall x_1: Ref ::
      { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
      xs[x_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && 1 / 2 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv21(o_4)] && NoPerm < 1 / 2) && qpRange21(o_4) ==> (NoPerm < 1 / 2 ==> invRecv21(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 2) && (!((xs[invRecv21(o_4)] && NoPerm < 1 / 2) && qpRange21(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall y: Ref :: { (y in ys) } (y in ys) ==> acc(y.f, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@57.10--57.51) [1452]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && ys[y_1]) && ys[y_1_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] && NoPerm < 1 / 2 ==> qpRange22(y_1) && invRecv22(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        (ys[invRecv22(o_4)] && NoPerm < 1 / 2) && qpRange22(o_4) ==> invRecv22(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (forall_exhale.vpr@57.10--57.51) [1453]"}
      (forall y_1: Ref ::
      { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
      ys[y_1] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { Heap[y_1, f_7] } { QPMask[y_1, f_7] } { ys[y_1] }
        ys[y_1] && 1 / 2 > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((ys[invRecv22(o_4)] && NoPerm < 1 / 2) && qpRange22(o_4) ==> (NoPerm < 1 / 2 ==> invRecv22(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 2) && (!((ys[invRecv22(o_4)] && NoPerm < 1 / 2) && qpRange22(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: exhale (forall z: Ref ::
  //     { (z in (xs intersection ys)) }
  //     (z in (xs intersection ys)) ==> acc(z.f, write)) -- forall_exhale.vpr@59.5--59.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall z: Ref :: { (z in (xs intersection ys)) } (z in (xs intersection ys)) ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver z is injective
      assert {:msg "  Exhale might fail. Quantified resource z.f might not be injective. (forall_exhale.vpr@59.12--59.73) [1455]"}
        (forall z_1: Ref, z_1_1: Ref ::
        { neverTriggered23(z_1), neverTriggered23(z_1_1) }
        (((z_1 != z_1_1 && Set#Intersection(xs, ys)[z_1]) && Set#Intersection(xs, ys)[z_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access z.f (forall_exhale.vpr@59.12--59.73) [1456]"}
        (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Intersection(xs, ys)[z_1] }
        Set#Intersection(xs, ys)[z_1] ==> Mask[z_1, f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver z
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] } { Set#Intersection(xs, ys)[z_1] }
        Set#Intersection(xs, ys)[z_1] && NoPerm < FullPerm ==> qpRange23(z_1) && invRecv23(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        Set#Intersection(xs, ys)[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Intersection(xs, ys)[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Intersection(xs, ys)[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}

// ==================================================
// Translation of method t7
// ==================================================

procedure t7(xs: (Set Ref)) returns ()
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
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, 1 / 3))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (forall_exhale.vpr@63.10--63.51) [1457]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < 1 / 3) && NoPerm < 1 / 3 ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < 1 / 3 ==> qpRange24(x_1) && invRecv24(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        (xs[invRecv24(o_4)] && NoPerm < 1 / 3) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (forall_exhale.vpr@63.10--63.51) [1458]"}
      (forall x_1: Ref ::
      { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
      xs[x_1] ==> 1 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && 1 / 3 > NoPerm ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv24(o_4)] && NoPerm < 1 / 3) && qpRange24(o_4) ==> (NoPerm < 1 / 3 ==> invRecv24(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + 1 / 3) && (!((xs[invRecv24(o_4)] && NoPerm < 1 / 3) && qpRange24(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
    
    // -- Check definedness of (forall y: Ref :: { (y in xs) } (y in xs) ==> acc(y.f, 1 / 3))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@64.9--64.50) [1459]"}
      (forall y_1: Ref, y_1_1: Ref ::
      
      (((y_1 != y_1_1 && xs[y_1]) && xs[y_1_1]) && NoPerm < 1 / 3) && NoPerm < 1 / 3 ==> y_1 != y_1_1
    );
    
    // -- Define Inverse Function
      assume (forall y_1: Ref ::
        { PostHeap[y_1, f_7] } { QPMask[y_1, f_7] } { xs[y_1] }
        xs[y_1] && NoPerm < 1 / 3 ==> qpRange25(y_1) && invRecv25(y_1) == y_1
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        (xs[invRecv25(o_4)] && NoPerm < 1 / 3) && qpRange25(o_4) ==> invRecv25(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (forall_exhale.vpr@64.9--64.50) [1460]"}
      (forall y_1: Ref ::
      { PostHeap[y_1, f_7] } { QPMask[y_1, f_7] } { xs[y_1] }
      xs[y_1] ==> 1 / 3 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall y_1: Ref ::
        { PostHeap[y_1, f_7] } { QPMask[y_1, f_7] } { xs[y_1] }
        xs[y_1] && 1 / 3 > NoPerm ==> y_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv25(o_4)] && NoPerm < 1 / 3) && qpRange25(o_4) ==> (NoPerm < 1 / 3 ==> invRecv25(o_4) == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + 1 / 3) && (!((xs[invRecv25(o_4)] && NoPerm < 1 / 3) && qpRange25(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
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
      assert {:msg "  Postcondition of t7 might not hold. Fraction 1 / 3 might be negative. (forall_exhale.vpr@64.9--64.50) [1461]"}
        (forall y_2: Ref ::
        { Heap[y_2, f_7] } { QPMask[y_2, f_7] } { xs[y_2] }
        xs[y_2] && dummyFunction(Heap[y_2, f_7]) ==> 1 / 3 >= NoPerm
      );
    
    // -- check if receiver y is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (forall_exhale.vpr@64.9--64.50) [1462]"}
        (forall y_2: Ref, y_2_1: Ref ::
        { neverTriggered26(y_2), neverTriggered26(y_2_1) }
        (((y_2 != y_2_1 && xs[y_2]) && xs[y_2_1]) && NoPerm < 1 / 3) && NoPerm < 1 / 3 ==> y_2 != y_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t7 might not hold. There might be insufficient permission to access y.f (forall_exhale.vpr@64.9--64.50) [1463]"}
        (forall y_2: Ref ::
        { Heap[y_2, f_7] } { QPMask[y_2, f_7] } { xs[y_2] }
        xs[y_2] ==> Mask[y_2, f_7] >= 1 / 3
      );
    
    // -- assumptions for inverse of receiver y
      assume (forall y_2: Ref ::
        { Heap[y_2, f_7] } { QPMask[y_2, f_7] } { xs[y_2] }
        xs[y_2] && NoPerm < 1 / 3 ==> qpRange26(y_2) && invRecv26(y_2) == y_2
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        xs[invRecv26(o_4)] && (NoPerm < 1 / 3 && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (xs[invRecv26(o_4)] && (NoPerm < 1 / 3 && qpRange26(o_4)) ==> invRecv26(o_4) == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - 1 / 3) && (!(xs[invRecv26(o_4)] && (NoPerm < 1 / 3 && qpRange26(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
}