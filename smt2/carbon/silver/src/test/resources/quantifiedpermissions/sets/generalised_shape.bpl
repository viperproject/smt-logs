// 
// Translation of Viper program.
// 
// Date:         2025-01-13 12:45:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/sets/generalised_shape-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

function  neverTriggered1(x_4: Ref): bool;
function  neverTriggered2(x_6: Ref): bool;
function  neverTriggered3(x_8_1: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_3: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_2_2: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
function  neverTriggered10(x_3: Ref): bool;
function  neverTriggered11(x_4: Ref): bool;
function  neverTriggered12(x_5: Ref): bool;
function  neverTriggered13(x_1: Ref): bool;
function  neverTriggered14(x_2_2: Ref): bool;
function  neverTriggered15(x_1: Ref): bool;
function  neverTriggered16(x_3: Ref): bool;
function  neverTriggered17(x_4: Ref): bool;
function  neverTriggered18(x_5: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_3: Ref): bool;
function  neverTriggered21(x_4: Ref): bool;
function  neverTriggered22(x_5: Ref): bool;
function  neverTriggered23(x: Ref): bool;
function  neverTriggered24(x_1: Ref): bool;
function  neverTriggered25(x_2_2: Ref): bool;
function  neverTriggered26(x_3: Ref): bool;
function  neverTriggered27(x_4: Ref): bool;
function  neverTriggered28(x_5: Ref): bool;
function  neverTriggered29(x_1: Ref): bool;
function  neverTriggered30(x_3: Ref): bool;
function  neverTriggered31(x$0: Ref): bool;
function  neverTriggered32(x$0_1: Ref): bool;
function  neverTriggered33(x$0_2: Ref): bool;
function  neverTriggered34(x$0: Ref): bool;
function  neverTriggered35(x$0_1: Ref): bool;
function  neverTriggered36(x$0_2: Ref): bool;
function  neverTriggered37(x$0: Ref): bool;
function  neverTriggered38(x$0_1: Ref): bool;
function  neverTriggered39(x$0_2: Ref): bool;
function  neverTriggered40(x$0: Ref): bool;
function  neverTriggered41(x$0_1: Ref): bool;
function  neverTriggered42(x$0_2: Ref): bool;
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
function  invRecv27(recv: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(recv: Ref): Ref;
function  invRecv30(recv: Ref): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(recv: Ref): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(recv: Ref): Ref;
function  invRecv37(recv: Ref): Ref;
function  invRecv38(recv: Ref): Ref;
function  invRecv39(recv: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
function  invRecv41(recv: Ref): Ref;
function  invRecv42(recv: Ref): Ref;
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
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(recv: Ref): bool;
function  qpRange34(recv: Ref): bool;
function  qpRange35(recv: Ref): bool;
function  qpRange36(recv: Ref): bool;
function  qpRange37(recv: Ref): bool;
function  qpRange38(recv: Ref): bool;
function  qpRange39(recv: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(recv: Ref): bool;
function  qpRange42(recv: Ref): bool;

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
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(xs: (Set Ref), ys: (Set Ref)): Field PredicateType_P FrameType;
function  P#sm(xs: (Set Ref), ys: (Set Ref)): Field PredicateType_P PMaskType;
axiom (forall xs: (Set Ref), ys: (Set Ref) ::
  { PredicateMaskField(P(xs, ys)) }
  PredicateMaskField(P(xs, ys)) == P#sm(xs, ys)
);
axiom (forall xs: (Set Ref), ys: (Set Ref) ::
  { P(xs, ys) }
  IsPredicateField(P(xs, ys))
);
axiom (forall xs: (Set Ref), ys: (Set Ref) ::
  { P(xs, ys) }
  getPredWandId(P(xs, ys)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: (Set Ref), ys: (Set Ref), xs2: (Set Ref), ys2: (Set Ref) ::
  { P(xs, ys), P(xs2, ys2) }
  P(xs, ys) == P(xs2, ys2) ==> xs == xs2 && ys == ys2
);
axiom (forall xs: (Set Ref), ys: (Set Ref), xs2: (Set Ref), ys2: (Set Ref) ::
  { P#sm(xs, ys), P#sm(xs2, ys2) }
  P#sm(xs, ys) == P#sm(xs2, ys2) ==> xs == xs2 && ys == ys2
);

axiom (forall Heap: HeapType, xs: (Set Ref), ys: (Set Ref) ::
  { P#trigger(Heap, P(xs, ys)) }
  P#everUsed(P(xs, ys))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && !((x in ys)) ==> acc(x.f, write)) in predicate P
// ==================================================

function  P#condqp1(Heap: HeapType, xs_1_1: (Set Ref), ys_1_1: (Set Ref)): int;
function  sk_P#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), ys: (Set Ref) ::
  { P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))] && !ys[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))]) && NoPerm < FullPerm <==> (xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))] && !ys[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))]) && NoPerm < FullPerm) && ((xs[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))] && !ys[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys))]) && NoPerm < FullPerm ==> Heap2Heap[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys)), f_7] == Heap1Heap[sk_P#condqp1(P#condqp1(Heap2Heap, xs, ys), P#condqp1(Heap1Heap, xs, ys)), f_7]) ==> P#condqp1(Heap2Heap, xs, ys) == P#condqp1(Heap1Heap, xs, ys)
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && (!((x in ys)) && x.f != 0) ==> acc(x.g, write)) in predicate P
// ==================================================

function  P#condqp2(Heap: HeapType, xs_1_1: (Set Ref), ys_1_1: (Set Ref)): int;
function  sk_P#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), ys: (Set Ref) ::
  { P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && Heap2Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys)), f_7] != 0)) && NoPerm < FullPerm <==> (xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && Heap1Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys)), f_7] != 0)) && NoPerm < FullPerm) && ((xs[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys))] && Heap2Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys)), f_7] != 0)) && NoPerm < FullPerm ==> Heap2Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys)), g] == Heap1Heap[sk_P#condqp2(P#condqp2(Heap2Heap, xs, ys), P#condqp2(Heap1Heap, xs, ys)), g]) ==> P#condqp2(Heap2Heap, xs, ys) == P#condqp2(Heap1Heap, xs, ys)
);

// ==================================================
// Function used for framing of quantified permission (forall x: Ref :: { (x in xs) } { (x in ys) } { (x.g in xs) } (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs)))) ==> acc(x.g.f, write)) in predicate P
// ==================================================

function  P#condqp3(Heap: HeapType, xs_1_1: (Set Ref), ys_1_1: (Set Ref)): int;
function  sk_P#condqp3(fnAppH1_2: int, fnAppH2_2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, xs: (Set Ref), ys: (Set Ref) ::
  { P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((xs[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (Heap2Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), f_7] != 0 && !xs[Heap2Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), g]]))) && NoPerm < FullPerm <==> (xs[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (Heap1Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), f_7] != 0 && !xs[Heap1Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), g]]))) && NoPerm < FullPerm) && ((xs[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (!ys[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys))] && (Heap2Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), f_7] != 0 && !xs[Heap2Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), g]]))) && NoPerm < FullPerm ==> Heap2Heap[Heap2Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), g], f_7] == Heap1Heap[Heap1Heap[sk_P#condqp3(P#condqp3(Heap2Heap, xs, ys), P#condqp3(Heap1Heap, xs, ys)), g], f_7]) ==> P#condqp3(Heap2Heap, xs, ys) == P#condqp3(Heap1Heap, xs, ys)
);

procedure P#definedness(xs: (Set Ref), ys: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_10: Ref;
  var x1: Ref;
  var x2_1: Ref;
  var x_11: Ref;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && !((x in ys)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@116.1--123.2) [4746]"}
      (forall x_4: Ref, x_4_1: Ref ::
      
      (((x_4 != x_4_1 && (xs[x_4] && !ys[x_4])) && (xs[x_4_1] && !ys[x_4_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
    );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] } { ys[x_4] }
        (xs[x_4] && !ys[x_4]) && NoPerm < FullPerm ==> qpRange1(x_4) && invRecv1(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((xs[invRecv1(o_4)] && !ys[invRecv1(o_4)]) && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4: Ref ::
        { Heap[x_4, f_7] } { QPMask[x_4, f_7] } { xs[x_4] } { ys[x_4] }
        xs[x_4] && !ys[x_4] ==> x_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv1(o_4)] && !ys[invRecv1(o_4)]) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv1(o_4)] && !ys[invRecv1(o_4)]) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && (!((x in ys)) && x.f != 0) ==> acc(x.g, write))
      if (*) {
        if (xs[x_10]) {
          if (!ys[x_10]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@116.1--123.2) [4747]"}
              HasDirectPerm(Mask, x_10, f_7);
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@116.1--123.2) [4748]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && (xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0))) && (xs[x_6_1] && (!ys[x_6_1] && Heap[x_6_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { Heap[x_6, g] } { QPMask[x_6, g] } { xs[x_6] } { ys[x_6] }
        (xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0)) && NoPerm < FullPerm ==> qpRange2(x_6) && invRecv2(x_6) == x_6
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((xs[invRecv2(o_4)] && (!ys[invRecv2(o_4)] && Heap[invRecv2(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { Heap[x_6, g] } { QPMask[x_6, g] } { xs[x_6] } { ys[x_6] }
        xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0) ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv2(o_4)] && (!ys[invRecv2(o_4)] && Heap[invRecv2(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv2(o_4)] && (!ys[invRecv2(o_4)] && Heap[invRecv2(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
      if (*) {
        if (xs[x1]) {
          if (!ys[x1]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.f (generalised_shape.vpr@116.1--123.2) [4749]"}
              HasDirectPerm(Mask, x1, f_7);
            if (Heap[x1, f_7] != 0) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@116.1--123.2) [4750]"}
                HasDirectPerm(Mask, x1, g);
              if (!xs[Heap[x1, g]]) {
                if (xs[x2_1]) {
                  if (!ys[x2_1]) {
                    assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.f (generalised_shape.vpr@116.1--123.2) [4751]"}
                      HasDirectPerm(Mask, x2_1, f_7);
                    if (Heap[x2_1, f_7] != 0) {
                      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@116.1--123.2) [4752]"}
                        HasDirectPerm(Mask, x2_1, g);
                    }
                  }
                }
              }
            }
          }
        }
        if (xs[x1] && (!ys[x1] && (Heap[x1, f_7] != 0 && (!xs[Heap[x1, g]] && (xs[x2_1] && (!ys[x2_1] && (Heap[x2_1, f_7] != 0 && (!xs[Heap[x2_1, g]] && x1 != x2_1)))))))) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@116.1--123.2) [4753]"}
            HasDirectPerm(Mask, x1, g);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@116.1--123.2) [4754]"}
            HasDirectPerm(Mask, x2_1, g);
        }
        assume false;
      }
    assume (forall x1_1: Ref, x2_1_1: Ref ::
      { xs[x1_1], xs[x2_1_1] } { xs[x1_1], ys[x2_1_1] } { xs[x1_1], xs[Heap[x2_1_1, g]] } { ys[x1_1], xs[x2_1_1] } { ys[x1_1], ys[x2_1_1] } { ys[x1_1], xs[Heap[x2_1_1, g]] } { xs[Heap[x1_1, g]], xs[x2_1_1] } { xs[Heap[x1_1, g]], ys[x2_1_1] } { xs[Heap[x1_1, g]], xs[Heap[x2_1_1, g]] }
      xs[x1_1] && (!ys[x1_1] && (Heap[x1_1, f_7] != 0 && (!xs[Heap[x1_1, g]] && (xs[x2_1_1] && (!ys[x2_1_1] && (Heap[x2_1_1, f_7] != 0 && (!xs[Heap[x2_1_1, g]] && x1_1 != x2_1_1))))))) ==> Heap[x1_1, g] != Heap[x2_1_1, g]
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } { (x.g in xs) } (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs)))) ==> acc(x.g.f, write))
      if (*) {
        if (xs[x_11]) {
          if (!ys[x_11]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@116.1--123.2) [4755]"}
              HasDirectPerm(Mask, x_11, f_7);
            if (Heap[x_11, f_7] != 0) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@116.1--123.2) [4756]"}
                HasDirectPerm(Mask, x_11, g);
            }
          }
        }
        if (xs[x_11] && (!ys[x_11] && (Heap[x_11, f_7] != 0 && !xs[Heap[x_11, g]]))) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@116.1--123.2) [4757]"}
            HasDirectPerm(Mask, x_11, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@116.1--123.2) [4758]"}
      (forall x_8_1: Ref, x_8_2: Ref ::
      
      (((x_8_1 != x_8_2 && (xs[x_8_1] && (!ys[x_8_1] && (Heap[x_8_1, f_7] != 0 && !xs[Heap[x_8_1, g]])))) && (xs[x_8_2] && (!ys[x_8_2] && (Heap[x_8_2, f_7] != 0 && !xs[Heap[x_8_2, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_8_1, g] != Heap[x_8_2, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, g] } { xs[x_8_1] } { ys[x_8_1] } { xs[Heap[x_8_1, g]] }
        (xs[x_8_1] && (!ys[x_8_1] && (Heap[x_8_1, f_7] != 0 && !xs[Heap[x_8_1, g]]))) && NoPerm < FullPerm ==> qpRange3(Heap[x_8_1, g]) && invRecv3(Heap[x_8_1, g]) == x_8_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        ((xs[invRecv3(o_4)] && (!ys[invRecv3(o_4)] && (Heap[invRecv3(o_4), f_7] != 0 && !xs[Heap[invRecv3(o_4), g]]))) && NoPerm < FullPerm) && qpRange3(o_4) ==> Heap[invRecv3(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_8_1: Ref ::
        { Heap[x_8_1, g] } { xs[x_8_1] } { ys[x_8_1] } { xs[Heap[x_8_1, g]] }
        xs[x_8_1] && (!ys[x_8_1] && (Heap[x_8_1, f_7] != 0 && !xs[Heap[x_8_1, g]])) ==> Heap[x_8_1, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv3(o_4)] && (!ys[invRecv3(o_4)] && (Heap[invRecv3(o_4), f_7] != 0 && !xs[Heap[invRecv3(o_4), g]]))) && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv3(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv3(o_4)] && (!ys[invRecv3(o_4)] && (Heap[invRecv3(o_4), f_7] != 0 && !xs[Heap[invRecv3(o_4), g]]))) && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
// Translation of method test05
// ==================================================

procedure test05(xs: (Set Ref), ys: (Set Ref), x1_2: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && !((x in ys)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@8.12--8.63) [4759]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (xs[x_1] && !ys[x_1])) && (xs[x_1_1] && !ys[x_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] } { ys[x_1] }
        (xs[x_1] && !ys[x_1]) && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        ((xs[invRecv4(o_4)] && !ys[invRecv4(o_4)]) && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] } { ys[x_1] }
        xs[x_1] && !ys[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv4(o_4)] && !ys[invRecv4(o_4)]) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv4(o_4)] && !ys[invRecv4(o_4)]) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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
  
  // -- Translating statement: inhale (x1 in xs) -- generalised_shape.vpr@10.10--10.18
    assume xs[x1_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x2 in xs) -- generalised_shape.vpr@10.22--10.30
    assume xs[x2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x1 in ys)) -- generalised_shape.vpr@11.10--11.21
    assume !ys[x1_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x1 != null -- generalised_shape.vpr@12.10--12.20
    assume x1_2 != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x2 != null -- generalised_shape.vpr@12.24--12.34
    assume x2 != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x1.f -- generalised_shape.vpr@13.3--13.21
    
    // -- Check definedness of x1.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.f (generalised_shape.vpr@13.3--13.21) [4760]"}
        HasDirectPerm(Mask, x1_2, f_7);
    a_2 := Heap[x1_2, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x2.f -- generalised_shape.vpr@16.3--16.12
    
    // -- Check definedness of x2.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.f (generalised_shape.vpr@16.3--16.12) [4761]"}
        HasDirectPerm(Mask, x2, f_7);
    a_2 := Heap[x2, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(xs: (Set Ref), y1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x_12: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var r_1: Ref;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@20.12--20.49) [4762]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange5(x_1) && invRecv5(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (xs[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && x.f != 0 ==> acc(x.g, write))
      if (*) {
        if (xs[x_12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@21.12--21.61) [4763]"}
            HasDirectPerm(Mask, x_12, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@21.12--21.61) [4764]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (xs[x_3] && Heap[x_3, f_7] != 0)) && (xs[x_3_1] && Heap[x_3_1, f_7] != 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { xs[x_3] }
        (xs[x_3] && Heap[x_3, f_7] != 0) && NoPerm < FullPerm ==> qpRange6(x_3) && invRecv6(x_3) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        ((xs[invRecv6(o_4)] && Heap[invRecv6(o_4), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { xs[x_3] }
        xs[x_3] && Heap[x_3, f_7] != 0 ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv6(o_4)] && Heap[invRecv6(o_4), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv6(o_4)] && Heap[invRecv6(o_4), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[y1];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[r_1, $allocated];
  
  // -- Translating statement: a := y1.f -- generalised_shape.vpr@24.3--24.21
    
    // -- Check definedness of y1.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.f (generalised_shape.vpr@24.3--24.21) [4765]"}
        HasDirectPerm(Mask, y1, f_7);
    a_2 := Heap[y1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: r := y1.g -- generalised_shape.vpr@27.3--27.21
    
    // -- Check definedness of y1.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@27.3--27.21) [4766]"}
        HasDirectPerm(Mask, y1, g);
    r_1 := Heap[y1, g];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test12
// ==================================================

procedure test12(x1_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@32.11--32.53) [4767]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1_2)[x_1]) && Set#Singleton(x1_2)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (Set#Singleton(x1_2)[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> invRecv7(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Set#Singleton(x1_2)[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4) ==> (NoPerm < FullPerm ==> invRecv7(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Set#Singleton(x1_2)[invRecv7(o_4)] && NoPerm < FullPerm) && qpRange7(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x1_2 != null;
    PostMask := PostMask[x1_2, g:=PostMask[x1_2, g] + perm];
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
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@32.11--32.53) [4768]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered8(x_2_2), neverTriggered8(x_2_3) }
        (((x_2_2 != x_2_3 && Set#Singleton(x1_2)[x_2_2]) && Set#Singleton(x1_2)[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test12 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@32.11--32.53) [4769]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#Singleton(x1_2)[x_2_2] }
        Set#Singleton(x1_2)[x_2_2] ==> Mask[x_2_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#Singleton(x1_2)[x_2_2] }
        Set#Singleton(x1_2)[x_2_2] && NoPerm < FullPerm ==> qpRange8(x_2_2) && invRecv8(x_2_2) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv8(o_4) }
        Set#Singleton(x1_2)[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#Singleton(x1_2)[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Set#Singleton(x1_2)[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test12 might not hold. There might be insufficient permission to access x1.g (generalised_shape.vpr@34.11--34.20) [4770]"}
        perm <= Mask[x1_2, g];
    }
    Mask := Mask[x1_2, g:=Mask[x1_2, g] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test14
// ==================================================

procedure test14(x1_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_13: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@38.12--38.36) [4771]"}
        HasDirectPerm(Mask, x1_2, g);
    perm := FullPerm;
    assume Heap[x1_2, g] != null;
    Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@39.11--39.53) [4772]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1_2)[x_1]) && Set#Singleton(x1_2)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] && NoPerm < FullPerm ==> qpRange9(x_1) && invRecv9(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Set#Singleton(x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((Set#Singleton(x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, g] == PostMask[o_4, g] + FullPerm) && (!((Set#Singleton(x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g.f, write))
      if (*) {
        if (Set#Singleton(x1_2)[x_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@40.11--40.55) [4773]"}
            HasDirectPerm(PostMask, x_13, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@40.11--40.55) [4774]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#Singleton(x1_2)[x_3]) && Set#Singleton(x1_2)[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#Singleton(x1_2)[x_3] }
        Set#Singleton(x1_2)[x_3] && NoPerm < FullPerm ==> qpRange10(PostHeap[x_3, g]) && invRecv10(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        (Set#Singleton(x1_2)[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4) ==> PostHeap[invRecv10(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#Singleton(x1_2)[x_3] }
        Set#Singleton(x1_2)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Set#Singleton(x1_2)[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4) ==> (NoPerm < FullPerm ==> PostHeap[invRecv10(o_4), g] == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Set#Singleton(x1_2)[invRecv10(o_4)] && NoPerm < FullPerm) && qpRange10(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@39.11--39.53) [4775]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered11(x_4), neverTriggered11(x_4_1) }
        (((x_4 != x_4_1 && Set#Singleton(x1_2)[x_4]) && Set#Singleton(x1_2)[x_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test14 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@39.11--39.53) [4776]"}
        (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#Singleton(x1_2)[x_4] }
        Set#Singleton(x1_2)[x_4] ==> Mask[x_4, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#Singleton(x1_2)[x_4] }
        Set#Singleton(x1_2)[x_4] && NoPerm < FullPerm ==> qpRange11(x_4) && invRecv11(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        Set#Singleton(x1_2)[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#Singleton(x1_2)[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4)) ==> invRecv11(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - FullPerm) && (!(Set#Singleton(x1_2)[invRecv11(o_4)] && (NoPerm < FullPerm && qpRange11(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@40.11--40.55) [4777]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered12(x_5), neverTriggered12(x_5_1) }
        (((x_5 != x_5_1 && Set#Singleton(x1_2)[x_5]) && Set#Singleton(x1_2)[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test14 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@40.11--40.55) [4778]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#Singleton(x1_2)[x_5] }
        Set#Singleton(x1_2)[x_5] ==> Mask[Heap[x_5, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#Singleton(x1_2)[x_5] }
        Set#Singleton(x1_2)[x_5] && NoPerm < FullPerm ==> qpRange12(Heap[x_5, g]) && invRecv12(Heap[x_5, g]) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        Set#Singleton(x1_2)[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> Heap[invRecv12(o_4), g] == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Singleton(x1_2)[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4)) ==> Heap[invRecv12(o_4), g] == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Singleton(x1_2)[invRecv12(o_4)] && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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

// ==================================================
// Translation of method test13
// ==================================================

procedure test13(x1_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_14: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@44.12--44.36) [4779]"}
        HasDirectPerm(Mask, x1_2, g);
    perm := FullPerm;
    assume Heap[x1_2, g] != null;
    Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g.f, write))
      if (*) {
        if (Set#Singleton(x1_2)[x_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@46.11--46.55) [4780]"}
            HasDirectPerm(PostMask, x_14, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@46.11--46.55) [4781]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1_2)[x_1]) && Set#Singleton(x1_2)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_1, g] != PostHeap[x_1_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] && NoPerm < FullPerm ==> qpRange13(PostHeap[x_1, g]) && invRecv13(PostHeap[x_1, g]) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        (Set#Singleton(x1_2)[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> PostHeap[invRecv13(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { Set#Singleton(x1_2)[x_1] }
        Set#Singleton(x1_2)[x_1] ==> PostHeap[x_1, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Set#Singleton(x1_2)[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> PostHeap[invRecv13(o_4), g] == o_4) && QPMask[o_4, f_7] == PostMask[o_4, f_7] + FullPerm) && (!((Set#Singleton(x1_2)[invRecv13(o_4)] && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@46.11--46.55) [4782]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered14(x_2_2), neverTriggered14(x_2_3) }
        (((x_2_2 != x_2_3 && Set#Singleton(x1_2)[x_2_2]) && Set#Singleton(x1_2)[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_2_2, g] != Heap[x_2_3, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test13 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@46.11--46.55) [4783]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { Set#Singleton(x1_2)[x_2_2] }
        Set#Singleton(x1_2)[x_2_2] ==> Mask[Heap[x_2_2, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { Set#Singleton(x1_2)[x_2_2] }
        Set#Singleton(x1_2)[x_2_2] && NoPerm < FullPerm ==> qpRange14(Heap[x_2_2, g]) && invRecv14(Heap[x_2_2, g]) == x_2_2
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        Set#Singleton(x1_2)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> Heap[invRecv14(o_4), g] == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#Singleton(x1_2)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4)) ==> Heap[invRecv14(o_4), g] == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - FullPerm) && (!(Set#Singleton(x1_2)[invRecv14(o_4)] && (NoPerm < FullPerm && qpRange14(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(x1_2: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > 0.000000000;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_15: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@50.12--50.46) [4784]"}
        HasDirectPerm(Mask, x1_2, g);
    havoc wildcard;
    perm := wildcard;
    assume Heap[x1_2, g] != null;
    Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@51.12--51.46) [4785]"}
        HasDirectPerm(Mask, x2, g);
    havoc wildcard;
    perm := wildcard;
    assume Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@52.12--52.68) [4786]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> qpRange15(x_1) && invRecv15(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv15(o_4)] && qpRange15(o_4) ==> invRecv15(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv15(o_4)] && qpRange15(o_4) ==> invRecv15(o_4) == o_4 && PostMask[o_4, g] < QPMask[o_4, g]) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv15(o_4)] && qpRange15(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, wildcard))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1_2)[x_15]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@54.12--54.70) [4787]"}
            HasDirectPerm(PostMask, x_15, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@54.12--54.70) [4788]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] ==> qpRange16(PostHeap[x_3, g]) && invRecv16(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv16(o_4)] && qpRange16(o_4) ==> PostHeap[invRecv16(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv16(o_4)] && qpRange16(o_4) ==> PostHeap[invRecv16(o_4), g] == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv16(o_4)] && qpRange16(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@52.12--52.68) [4789]"}
      (forall x_4: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> Mask[x_4, g] > NoPerm
    );
    assume (forall x_4: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> wildcard < Mask[x_4, g]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test10 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@52.12--52.68) [4790]"}
        (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] && dummyFunction(Heap[x_4, g]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@52.12--52.68) [4791]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered17(x_4), neverTriggered17(x_4_1) }
        (((x_4 != x_4_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_4]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_4_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@52.12--52.68) [4792]"}
        (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> Mask[x_4, g] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] && NoPerm < wildcard ==> qpRange17(x_4) && invRecv17(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv17(o_4)] && (NoPerm < wildcard && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv17(o_4)] && (NoPerm < wildcard && qpRange17(o_4)) ==> invRecv17(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv17(o_4)] && (NoPerm < wildcard && qpRange17(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@54.12--54.70) [4793]"}
      (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
    );
    assume (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> wildcard < Mask[Heap[x_5, g], f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test10 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@54.12--54.70) [4794]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && dummyFunction(Heap[Heap[x_5, g], f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@54.12--54.70) [4795]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered18(x_5), neverTriggered18(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@54.12--54.70) [4796]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && NoPerm < wildcard ==> qpRange18(Heap[x_5, g]) && invRecv18(Heap[x_5, g]) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv18(o_4)] && (NoPerm < wildcard && qpRange18(o_4)) ==> Heap[invRecv18(o_4), g] == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv18(o_4)] && (NoPerm < wildcard && qpRange18(o_4)) ==> Heap[invRecv18(o_4), g] == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv18(o_4)] && (NoPerm < wildcard && qpRange18(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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

// ==================================================
// Translation of method test15
// ==================================================

procedure test15(x1_2: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var x_16: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@58.12--58.41) [4797]"}
        HasDirectPerm(Mask, x1_2, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (generalised_shape.vpr@58.12--58.41) [4798]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x1_2, g] != null;
    Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@59.12--59.41) [4799]"}
        HasDirectPerm(Mask, x2, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (generalised_shape.vpr@59.12--59.41) [4800]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g, wildcard))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@60.11--60.67) [4801]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> qpRange19(x_1) && invRecv19(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv19(o_4)] && qpRange19(o_4) ==> invRecv19(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv19(o_4)] && qpRange19(o_4) ==> invRecv19(o_4) == o_4 && PostMask[o_4, g] < QPMask[o_4, g]) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv19(o_4)] && qpRange19(o_4)) ==> QPMask[o_4, g] == PostMask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x1.g != x2.g
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@61.11--61.23) [4802]"}
        HasDirectPerm(PostMask, x1_2, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@61.11--61.23) [4803]"}
        HasDirectPerm(PostMask, x2, g);
    assume PostHeap[x1_2, g] != PostHeap[x2, g];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, wildcard))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1_2)[x_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@62.11--62.69) [4804]"}
            HasDirectPerm(PostMask, x_16, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@62.11--62.69) [4805]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] ==> qpRange20(PostHeap[x_3, g]) && invRecv20(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv20(o_4)] && qpRange20(o_4) ==> PostHeap[invRecv20(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv20(o_4)] && qpRange20(o_4) ==> PostHeap[invRecv20(o_4), g] == o_4 && PostMask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv20(o_4)] && qpRange20(o_4)) ==> QPMask[o_4, f_7] == PostMask[o_4, f_7])
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
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@60.11--60.67) [4806]"}
      (forall x_4: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> Mask[x_4, g] > NoPerm
    );
    assume (forall x_4: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> wildcard < Mask[x_4, g]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test15 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@60.11--60.67) [4807]"}
        (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] && dummyFunction(Heap[x_4, g]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@60.11--60.67) [4808]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered21(x_4), neverTriggered21(x_4_1) }
        (((x_4 != x_4_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_4]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_4_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@60.11--60.67) [4809]"}
        (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] ==> Mask[x_4, g] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4: Ref ::
        { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_4] && NoPerm < wildcard ==> qpRange21(x_4) && invRecv21(x_4) == x_4
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv21(o_4)] && (NoPerm < wildcard && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
      );
    
    // -- assume permission updates for field g
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv21(o_4)] && (NoPerm < wildcard && qpRange21(o_4)) ==> invRecv21(o_4) == o_4 && QPMask[o_4, g] == Mask[o_4, g] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv21(o_4)] && (NoPerm < wildcard && qpRange21(o_4))) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test15 might not hold. Assertion x1.g != x2.g might not hold. (generalised_shape.vpr@61.11--61.23) [4810]"}
      Heap[x1_2, g] != Heap[x2, g];
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@62.11--62.69) [4811]"}
      (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
    );
    assume (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> wildcard < Mask[Heap[x_5, g], f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test15 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@62.11--62.69) [4812]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && dummyFunction(Heap[Heap[x_5, g], f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@62.11--62.69) [4813]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered22(x_5), neverTriggered22(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@62.11--62.69) [4814]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && NoPerm < wildcard ==> qpRange22(Heap[x_5, g]) && invRecv22(Heap[x_5, g]) == x_5
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv22(o_4)] && (NoPerm < wildcard && qpRange22(o_4)) ==> Heap[invRecv22(o_4), g] == o_4
      );
    
    // -- assume permission updates for field f
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv22(o_4)] && (NoPerm < wildcard && qpRange22(o_4)) ==> Heap[invRecv22(o_4), g] == o_4 && QPMask[o_4, f_7] == Mask[o_4, f_7] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv22(o_4)] && (NoPerm < wildcard && qpRange22(o_4))) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
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

// ==================================================
// Translation of method test11
// ==================================================

procedure test11(x1_2: Ref, x2: Ref, x3: Ref, x4: Ref, x5: Ref, x6: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleHeap: HeapType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
    assume Heap[x5, $allocated];
    assume Heap[x6, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, g:=Mask[x1_2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@66.12--66.36) [4815]"}
        HasDirectPerm(Mask, x1_2, g);
    perm := FullPerm;
    assume Heap[x1_2, g] != null;
    Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@67.12--67.36) [4816]"}
        HasDirectPerm(Mask, x2, g);
    perm := FullPerm;
    assume Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x3 != null;
    Mask := Mask[x3, g:=Mask[x3, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x3.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x3.g (generalised_shape.vpr@68.12--68.36) [4817]"}
        HasDirectPerm(Mask, x3, g);
    perm := FullPerm;
    assume Heap[x3, g] != null;
    Mask := Mask[Heap[x3, g], f_7:=Mask[Heap[x3, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x4 != null;
    Mask := Mask[x4, g:=Mask[x4, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x4.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x4.g (generalised_shape.vpr@69.12--69.36) [4818]"}
        HasDirectPerm(Mask, x4, g);
    perm := FullPerm;
    assume Heap[x4, g] != null;
    Mask := Mask[Heap[x4, g], f_7:=Mask[Heap[x4, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x5 != null;
    Mask := Mask[x5, g:=Mask[x5, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x5.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x5.g (generalised_shape.vpr@70.12--70.36) [4819]"}
        HasDirectPerm(Mask, x5, g);
    perm := FullPerm;
    assume Heap[x5, g] != null;
    Mask := Mask[Heap[x5, g], f_7:=Mask[Heap[x5, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x6 != null;
    Mask := Mask[x6, g:=Mask[x6, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x6.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x6.g (generalised_shape.vpr@71.12--71.36) [4820]"}
        HasDirectPerm(Mask, x6, g);
    perm := FullPerm;
    assume Heap[x6, g] != null;
    Mask := Mask[Heap[x6, g], f_7:=Mask[Heap[x6, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: test10(x1, x6) -- generalised_shape.vpr@74.3--74.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x1.g (generalised_shape.vpr@74.3--74.17) [4821]"}
          perm <= Mask[x1_2, g];
      }
      Mask := Mask[x1_2, g:=Mask[x1_2, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x1.g.f (generalised_shape.vpr@74.3--74.17) [4822]"}
        Mask[Heap[x1_2, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x1_2, g], f_7];
      Mask := Mask[Heap[x1_2, g], f_7:=Mask[Heap[x1_2, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x6.g (generalised_shape.vpr@74.3--74.17) [4823]"}
          perm <= Mask[x6, g];
      }
      Mask := Mask[x6, g:=Mask[x6, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x6.g.f (generalised_shape.vpr@74.3--74.17) [4824]"}
        Mask[Heap[x6, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x6, g], f_7];
      Mask := Mask[Heap[x6, g], f_7:=Mask[Heap[x6, g], f_7] - wildcard];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@74.3--74.17) [4825]"}
        (forall x: Ref, x_9: Ref ::
        
        (((x != x_9 && Set#UnionOne(Set#Singleton(x6), x1_2)[x]) && Set#UnionOne(Set#Singleton(x6), x1_2)[x_9]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_9
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { Heap[x, g] } { QPMask[x, g] } { Set#UnionOne(Set#Singleton(x6), x1_2)[x] }
          Set#UnionOne(Set#Singleton(x6), x1_2)[x] ==> qpRange23(x) && invRecv23(x) == x
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv23(o_4)] && qpRange23(o_4) ==> invRecv23(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { Heap[x, g] } { QPMask[x, g] } { Set#UnionOne(Set#Singleton(x6), x1_2)[x] }
          Set#UnionOne(Set#Singleton(x6), x1_2)[x] ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, g] }
          (Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv23(o_4)] && qpRange23(o_4) ==> invRecv23(o_4) == o_4 && Mask[o_4, g] < QPMask[o_4, g]) && (!(Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv23(o_4)] && qpRange23(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@74.3--74.17) [4826]"}
        (forall x_1: Ref, x_1_1: Ref ::
        
        (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x6), x1_2)[x_1]) && Set#UnionOne(Set#Singleton(x6), x1_2)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_1, g] != Heap[x_1_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_1: Ref ::
          { Heap[x_1, g] } { Set#UnionOne(Set#Singleton(x6), x1_2)[x_1] }
          Set#UnionOne(Set#Singleton(x6), x1_2)[x_1] ==> qpRange24(Heap[x_1, g]) && invRecv24(Heap[x_1, g]) == x_1
        );
        assume (forall o_4: Ref ::
          { invRecv24(o_4) }
          Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv24(o_4)] && qpRange24(o_4) ==> Heap[invRecv24(o_4), g] == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_1: Ref ::
          { Heap[x_1, g] } { Set#UnionOne(Set#Singleton(x6), x1_2)[x_1] }
          Set#UnionOne(Set#Singleton(x6), x1_2)[x_1] ==> Heap[x_1, g] != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv24(o_4)] && qpRange24(o_4) ==> Heap[invRecv24(o_4), g] == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#UnionOne(Set#Singleton(x6), x1_2)[invRecv24(o_4)] && qpRange24(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test10(x2, x5) -- generalised_shape.vpr@77.3--77.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x2.g (generalised_shape.vpr@77.3--77.17) [4827]"}
          perm <= Mask[x2, g];
      }
      Mask := Mask[x2, g:=Mask[x2, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x2.g.f (generalised_shape.vpr@77.3--77.17) [4828]"}
        Mask[Heap[x2, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x2, g], f_7];
      Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x5.g (generalised_shape.vpr@77.3--77.17) [4829]"}
          perm <= Mask[x5, g];
      }
      Mask := Mask[x5, g:=Mask[x5, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x5.g.f (generalised_shape.vpr@77.3--77.17) [4830]"}
        Mask[Heap[x5, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x5, g], f_7];
      Mask := Mask[Heap[x5, g], f_7:=Mask[Heap[x5, g], f_7] - wildcard];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@77.3--77.17) [4831]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        
        (((x_2_2 != x_2_3 && Set#UnionOne(Set#Singleton(x5), x2)[x_2_2]) && Set#UnionOne(Set#Singleton(x5), x2)[x_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_2_2 != x_2_3
      );
      
      // -- Define Inverse Function
        assume (forall x_2_2: Ref ::
          { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] ==> qpRange25(x_2_2) && invRecv25(x_2_2) == x_2_2
        );
        assume (forall o_4: Ref ::
          { invRecv25(o_4) }
          Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_4)] && qpRange25(o_4) ==> invRecv25(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_2_2: Ref ::
          { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] ==> x_2_2 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, g] }
          (Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_4)] && qpRange25(o_4) ==> invRecv25(o_4) == o_4 && Mask[o_4, g] < QPMask[o_4, g]) && (!(Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_4)] && qpRange25(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@77.3--77.17) [4832]"}
        (forall x_3: Ref, x_3_1: Ref ::
        
        (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x5), x2)[x_3]) && Set#UnionOne(Set#Singleton(x5), x2)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_3, g] != Heap[x_3_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_3: Ref ::
          { Heap[x_3, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_3] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_3] ==> qpRange26(Heap[x_3, g]) && invRecv26(Heap[x_3, g]) == x_3
        );
        assume (forall o_4: Ref ::
          { invRecv26(o_4) }
          Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_4)] && qpRange26(o_4) ==> Heap[invRecv26(o_4), g] == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_3: Ref ::
          { Heap[x_3, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_3] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_3] ==> Heap[x_3, g] != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_4)] && qpRange26(o_4) ==> Heap[invRecv26(o_4), g] == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_4)] && qpRange26(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test10(x3, x4) -- generalised_shape.vpr@80.3--80.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x3.g (generalised_shape.vpr@80.3--80.17) [4833]"}
          perm <= Mask[x3, g];
      }
      Mask := Mask[x3, g:=Mask[x3, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x3.g.f (generalised_shape.vpr@80.3--80.17) [4834]"}
        Mask[Heap[x3, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x3, g], f_7];
      Mask := Mask[Heap[x3, g], f_7:=Mask[Heap[x3, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x4.g (generalised_shape.vpr@80.3--80.17) [4835]"}
          perm <= Mask[x4, g];
      }
      Mask := Mask[x4, g:=Mask[x4, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x4.g.f (generalised_shape.vpr@80.3--80.17) [4836]"}
        Mask[Heap[x4, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x4, g], f_7];
      Mask := Mask[Heap[x4, g], f_7:=Mask[Heap[x4, g], f_7] - wildcard];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@80.3--80.17) [4837]"}
        (forall x_4: Ref, x_4_1: Ref ::
        
        (((x_4 != x_4_1 && Set#UnionOne(Set#Singleton(x4), x3)[x_4]) && Set#UnionOne(Set#Singleton(x4), x3)[x_4_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4 != x_4_1
      );
      
      // -- Define Inverse Function
        assume (forall x_4: Ref ::
          { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_4] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_4] ==> qpRange27(x_4) && invRecv27(x_4) == x_4
        );
        assume (forall o_4: Ref ::
          { invRecv27(o_4) }
          Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_4)] && qpRange27(o_4) ==> invRecv27(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_4: Ref ::
          { Heap[x_4, g] } { QPMask[x_4, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_4] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_4] ==> x_4 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, g] }
          (Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_4)] && qpRange27(o_4) ==> invRecv27(o_4) == o_4 && Mask[o_4, g] < QPMask[o_4, g]) && (!(Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_4)] && qpRange27(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@80.3--80.17) [4838]"}
        (forall x_5: Ref, x_5_1: Ref ::
        
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x4), x3)[x_5]) && Set#UnionOne(Set#Singleton(x4), x3)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_5: Ref ::
          { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_5] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_5] ==> qpRange28(Heap[x_5, g]) && invRecv28(Heap[x_5, g]) == x_5
        );
        assume (forall o_4: Ref ::
          { invRecv28(o_4) }
          Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_4)] && qpRange28(o_4) ==> Heap[invRecv28(o_4), g] == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_5: Ref ::
          { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_5] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_5] ==> Heap[x_5, g] != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, f_7] }
          (Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_4)] && qpRange28(o_4) ==> Heap[invRecv28(o_4), g] == o_4 && Mask[o_4, f_7] < QPMask[o_4, f_7]) && (!(Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_4)] && qpRange28(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(xs: (Set Ref), y1: Ref, y2: Ref, y3: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x1_4: Ref;
  var x2_2: Ref;
  var x_17: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y1, $allocated];
    assume Heap[y2, $allocated];
    assume Heap[y3, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@84.12--84.49) [4839]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange29(x_1) && invRecv29(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv29(o_4) }
        (xs[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4) ==> invRecv29(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        ((xs[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4) ==> (NoPerm < FullPerm ==> invRecv29(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!((xs[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } (x1 in xs) && ((x2 in xs) && x1 != x2) ==> x1.g != x2.g)
      if (*) {
        if (xs[x1_4] && (xs[x2_2] && x1_4 != x2_2)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@85.12--85.88) [4840]"}
            HasDirectPerm(Mask, x1_4, g);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@85.12--85.88) [4841]"}
            HasDirectPerm(Mask, x2_2, g);
        }
        assume false;
      }
    assume (forall x1_1: Ref, x2_1_1: Ref ::
      { xs[x1_1], xs[x2_1_1] }
      xs[x1_1] && (xs[x2_1_1] && x1_1 != x2_1_1) ==> Heap[x1_1, g] != Heap[x2_1_1, g]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.g.f, write))
      if (*) {
        if (xs[x_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@86.12--86.51) [4842]"}
            HasDirectPerm(Mask, x_17, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@86.12--86.51) [4843]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_3, g] != Heap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange30(Heap[x_3, g]) && invRecv30(Heap[x_3, g]) == x_3
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        (xs[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4) ==> Heap[invRecv30(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { xs[x_3] }
        xs[x_3] ==> Heap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((xs[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv30(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((xs[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[y1];
    assume xs[y2];
    assume xs[y3];
    assume state(Heap, Mask);
    assume y1 != y2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale y1.g != null -- generalised_shape.vpr@90.10--90.22
    
    // -- Check definedness of y1.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@90.10--90.22) [4844]"}
        HasDirectPerm(Mask, y1, g);
    assume Heap[y1, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale y2.g != null -- generalised_shape.vpr@91.10--91.22
    
    // -- Check definedness of y2.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@91.10--91.22) [4845]"}
        HasDirectPerm(Mask, y2, g);
    assume Heap[y2, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := y1.g.f -- generalised_shape.vpr@92.3--92.23
    
    // -- Check definedness of y1.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@92.3--92.23) [4846]"}
        HasDirectPerm(Mask, y1, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g.f (generalised_shape.vpr@92.3--92.23) [4847]"}
        HasDirectPerm(Mask, Heap[y1, g], f_7);
    a_2 := Heap[Heap[y1, g], f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y2.g -- generalised_shape.vpr@94.3--94.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y1.g != y2.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@94.10--94.22) [4848]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@94.10--94.22) [4849]"}
        HasDirectPerm(ExhaleWellDef0Mask, y2, g);
    assert {:msg "  Assert might fail. Assertion y1.g != y2.g might not hold. (generalised_shape.vpr@94.10--94.22) [4850]"}
      Heap[y1, g] != Heap[y2, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y3.g || y2.g != y3.g -- generalised_shape.vpr@95.3--95.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y1.g != y3.g || y2.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@95.10--95.38) [4851]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@95.10--95.38) [4852]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
      if (!(Heap[y1, g] != Heap[y3, g])) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@95.10--95.38) [4853]"}
          HasDirectPerm(ExhaleWellDef0Mask, y2, g);
        assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@95.10--95.38) [4854]"}
          HasDirectPerm(ExhaleWellDef0Mask, y3, g);
      }
    assert {:msg "  Assert might fail. Assertion y1.g != y3.g || y2.g != y3.g might not hold. (generalised_shape.vpr@95.10--95.38) [4855]"}
      Heap[y1, g] != Heap[y3, g] || Heap[y2, g] != Heap[y3, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y3.g && y2.g != y3.g -- generalised_shape.vpr@98.3--98.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of y1.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@98.10--98.38) [4856]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@98.10--98.38) [4857]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
    assert {:msg "  Assert might fail. Assertion y1.g != y3.g might not hold. (generalised_shape.vpr@98.10--98.38) [4858]"}
      Heap[y1, g] != Heap[y3, g];
    
    // -- Check definedness of y2.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@98.10--98.38) [4859]"}
        HasDirectPerm(ExhaleWellDef0Mask, y2, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@98.10--98.38) [4860]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
    assert {:msg "  Assert might fail. Assertion y2.g != y3.g might not hold. (generalised_shape.vpr@98.10--98.38) [4861]"}
      Heap[y2, g] != Heap[y3, g];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(xs: (Set Ref), ys: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@128.3--128.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@128.3--128.24) [4864]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@128.3--128.24) [4865]"}
      (forall x$0: Ref, x$0_3: Ref ::
      
      (((x$0 != x$0_3 && (xs[x$0] && !ys[x$0])) && (xs[x$0_3] && !ys[x$0_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_3
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange31(x$0) && invRecv31(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv31(o_4) }
        ((xs[invRecv31(o_4)] && !ys[invRecv31(o_4)]) && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv31(o_4)] && !ys[invRecv31(o_4)]) && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv31(o_4)] && !ys[invRecv31(o_4)]) && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@128.3--128.24) [4866]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_1] && (!ys[x$0_1_1] && Heap[x$0_1_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange32(x$0_1) && invRecv32(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv32(o_4) }
        ((xs[invRecv32(o_4)] && (!ys[invRecv32(o_4)] && Heap[invRecv32(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv32(o_4)] && (!ys[invRecv32(o_4)] && Heap[invRecv32(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv32(o_4)] && (!ys[invRecv32(o_4)] && Heap[invRecv32(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1_2: Ref, x2: Ref ::
      { xs[x1_2], xs[x2] } { xs[x1_2], ys[x2] } { xs[x1_2], xs[Heap[x2, g]] } { ys[x1_2], xs[x2] } { ys[x1_2], ys[x2] } { ys[x1_2], xs[Heap[x2, g]] } { xs[Heap[x1_2, g]], xs[x2] } { xs[Heap[x1_2, g]], ys[x2] } { xs[Heap[x1_2, g]], xs[Heap[x2, g]] }
      xs[x1_2] && (!ys[x1_2] && (Heap[x1_2, f_7] != 0 && (!xs[Heap[x1_2, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1_2 != x2))))))) ==> Heap[x1_2, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@128.3--128.24) [4867]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange33(Heap[x$0_2, g]) && invRecv33(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv33(o_4) }
        ((xs[invRecv33(o_4)] && (!ys[invRecv33(o_4)] && (Heap[invRecv33(o_4), f_7] != 0 && !xs[Heap[invRecv33(o_4), g]]))) && NoPerm < FullPerm) && qpRange33(o_4) ==> Heap[invRecv33(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv33(o_4)] && (!ys[invRecv33(o_4)] && (Heap[invRecv33(o_4), f_7] != 0 && !xs[Heap[invRecv33(o_4), g]]))) && NoPerm < FullPerm) && qpRange33(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv33(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv33(o_4)] && (!ys[invRecv33(o_4)] && (Heap[invRecv33(o_4), f_7] != 0 && !xs[Heap[invRecv33(o_4), g]]))) && NoPerm < FullPerm) && qpRange33(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs) -- generalised_shape.vpr@129.10--129.17
    assume xs[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null -- generalised_shape.vpr@130.10--130.19
    assume x != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.f -- generalised_shape.vpr@133.3--133.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@133.3--133.20) [4868]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(xs: (Set Ref), ys: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@139.3--139.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@139.3--139.24) [4871]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@139.3--139.24) [4872]"}
      (forall x$0: Ref, x$0_3: Ref ::
      
      (((x$0 != x$0_3 && (xs[x$0] && !ys[x$0])) && (xs[x$0_3] && !ys[x$0_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_3
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange34(x$0) && invRecv34(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv34(o_4) }
        ((xs[invRecv34(o_4)] && !ys[invRecv34(o_4)]) && NoPerm < FullPerm) && qpRange34(o_4) ==> invRecv34(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv34(o_4)] && !ys[invRecv34(o_4)]) && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> invRecv34(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv34(o_4)] && !ys[invRecv34(o_4)]) && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@139.3--139.24) [4873]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_1] && (!ys[x$0_1_1] && Heap[x$0_1_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange35(x$0_1) && invRecv35(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv35(o_4) }
        ((xs[invRecv35(o_4)] && (!ys[invRecv35(o_4)] && Heap[invRecv35(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_4) ==> invRecv35(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv35(o_4)] && (!ys[invRecv35(o_4)] && Heap[invRecv35(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_4) ==> (NoPerm < FullPerm ==> invRecv35(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv35(o_4)] && (!ys[invRecv35(o_4)] && Heap[invRecv35(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1_2: Ref, x2: Ref ::
      { xs[x1_2], xs[x2] } { xs[x1_2], ys[x2] } { xs[x1_2], xs[Heap[x2, g]] } { ys[x1_2], xs[x2] } { ys[x1_2], ys[x2] } { ys[x1_2], xs[Heap[x2, g]] } { xs[Heap[x1_2, g]], xs[x2] } { xs[Heap[x1_2, g]], ys[x2] } { xs[Heap[x1_2, g]], xs[Heap[x2, g]] }
      xs[x1_2] && (!ys[x1_2] && (Heap[x1_2, f_7] != 0 && (!xs[Heap[x1_2, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1_2 != x2))))))) ==> Heap[x1_2, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@139.3--139.24) [4874]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange36(Heap[x$0_2, g]) && invRecv36(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv36(o_4) }
        ((xs[invRecv36(o_4)] && (!ys[invRecv36(o_4)] && (Heap[invRecv36(o_4), f_7] != 0 && !xs[Heap[invRecv36(o_4), g]]))) && NoPerm < FullPerm) && qpRange36(o_4) ==> Heap[invRecv36(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv36(o_4)] && (!ys[invRecv36(o_4)] && (Heap[invRecv36(o_4), f_7] != 0 && !xs[Heap[invRecv36(o_4), g]]))) && NoPerm < FullPerm) && qpRange36(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv36(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv36(o_4)] && (!ys[invRecv36(o_4)] && (Heap[invRecv36(o_4), f_7] != 0 && !xs[Heap[invRecv36(o_4), g]]))) && NoPerm < FullPerm) && qpRange36(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs) -- generalised_shape.vpr@140.10--140.17
    assume xs[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x in ys)) -- generalised_shape.vpr@140.21--140.31
    assume !ys[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null -- generalised_shape.vpr@141.10--141.19
    assume x != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.f -- generalised_shape.vpr@142.3--142.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@142.3--142.20) [4875]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@145.3--145.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@145.3--145.20) [4876]"}
        HasDirectPerm(Mask, x, g);
    b_24 := Heap[x, g];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(xs: (Set Ref), ys: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@151.3--151.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@151.3--151.24) [4879]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@151.3--151.24) [4880]"}
      (forall x$0: Ref, x$0_3: Ref ::
      
      (((x$0 != x$0_3 && (xs[x$0] && !ys[x$0])) && (xs[x$0_3] && !ys[x$0_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_3
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange37(x$0) && invRecv37(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv37(o_4) }
        ((xs[invRecv37(o_4)] && !ys[invRecv37(o_4)]) && NoPerm < FullPerm) && qpRange37(o_4) ==> invRecv37(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv37(o_4)] && !ys[invRecv37(o_4)]) && NoPerm < FullPerm) && qpRange37(o_4) ==> (NoPerm < FullPerm ==> invRecv37(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv37(o_4)] && !ys[invRecv37(o_4)]) && NoPerm < FullPerm) && qpRange37(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@151.3--151.24) [4881]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_1] && (!ys[x$0_1_1] && Heap[x$0_1_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange38(x$0_1) && invRecv38(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv38(o_4) }
        ((xs[invRecv38(o_4)] && (!ys[invRecv38(o_4)] && Heap[invRecv38(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_4) ==> invRecv38(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv38(o_4)] && (!ys[invRecv38(o_4)] && Heap[invRecv38(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_4) ==> (NoPerm < FullPerm ==> invRecv38(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv38(o_4)] && (!ys[invRecv38(o_4)] && Heap[invRecv38(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1_2: Ref, x2: Ref ::
      { xs[x1_2], xs[x2] } { xs[x1_2], ys[x2] } { xs[x1_2], xs[Heap[x2, g]] } { ys[x1_2], xs[x2] } { ys[x1_2], ys[x2] } { ys[x1_2], xs[Heap[x2, g]] } { xs[Heap[x1_2, g]], xs[x2] } { xs[Heap[x1_2, g]], ys[x2] } { xs[Heap[x1_2, g]], xs[Heap[x2, g]] }
      xs[x1_2] && (!ys[x1_2] && (Heap[x1_2, f_7] != 0 && (!xs[Heap[x1_2, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1_2 != x2))))))) ==> Heap[x1_2, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@151.3--151.24) [4882]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange39(Heap[x$0_2, g]) && invRecv39(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv39(o_4) }
        ((xs[invRecv39(o_4)] && (!ys[invRecv39(o_4)] && (Heap[invRecv39(o_4), f_7] != 0 && !xs[Heap[invRecv39(o_4), g]]))) && NoPerm < FullPerm) && qpRange39(o_4) ==> Heap[invRecv39(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv39(o_4)] && (!ys[invRecv39(o_4)] && (Heap[invRecv39(o_4), f_7] != 0 && !xs[Heap[invRecv39(o_4), g]]))) && NoPerm < FullPerm) && qpRange39(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv39(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv39(o_4)] && (!ys[invRecv39(o_4)] && (Heap[invRecv39(o_4), f_7] != 0 && !xs[Heap[invRecv39(o_4), g]]))) && NoPerm < FullPerm) && qpRange39(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs) -- generalised_shape.vpr@153.10--153.17
    assume xs[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x in ys)) -- generalised_shape.vpr@153.21--153.31
    assume !ys[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null -- generalised_shape.vpr@154.10--154.19
    assume x != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.f -- generalised_shape.vpr@155.3--155.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@155.3--155.20) [4883]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale a != 0 -- generalised_shape.vpr@156.10--156.16
    assume a_2 != 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@157.3--157.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@157.3--157.20) [4884]"}
        HasDirectPerm(Mask, x, g);
    b_24 := Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.g.f -- generalised_shape.vpr@161.3--161.13
    
    // -- Check definedness of x.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@161.3--161.13) [4885]"}
        HasDirectPerm(Mask, x, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (generalised_shape.vpr@161.3--161.13) [4886]"}
        HasDirectPerm(Mask, Heap[x, g], f_7);
    a_2 := Heap[Heap[x, g], f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(xs: (Set Ref), ys: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@167.3--167.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@167.3--167.24) [4889]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@167.3--167.24) [4890]"}
      (forall x$0: Ref, x$0_3: Ref ::
      
      (((x$0 != x$0_3 && (xs[x$0] && !ys[x$0])) && (xs[x$0_3] && !ys[x$0_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_3
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange40(x$0) && invRecv40(x$0) == x$0
      );
      assume (forall o_4: Ref ::
        { invRecv40(o_4) }
        ((xs[invRecv40(o_4)] && !ys[invRecv40(o_4)]) && NoPerm < FullPerm) && qpRange40(o_4) ==> invRecv40(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv40(o_4)] && !ys[invRecv40(o_4)]) && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> invRecv40(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv40(o_4)] && !ys[invRecv40(o_4)]) && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@167.3--167.24) [4891]"}
      (forall x$0_1: Ref, x$0_1_1: Ref ::
      
      (((x$0_1 != x$0_1_1 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_1] && (!ys[x$0_1_1] && Heap[x$0_1_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange41(x$0_1) && invRecv41(x$0_1) == x$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv41(o_4) }
        ((xs[invRecv41(o_4)] && (!ys[invRecv41(o_4)] && Heap[invRecv41(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_4) ==> invRecv41(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, g] }
        (((xs[invRecv41(o_4)] && (!ys[invRecv41(o_4)] && Heap[invRecv41(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_4) ==> (NoPerm < FullPerm ==> invRecv41(o_4) == o_4) && QPMask[o_4, g] == Mask[o_4, g] + FullPerm) && (!(((xs[invRecv41(o_4)] && (!ys[invRecv41(o_4)] && Heap[invRecv41(o_4), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_4)) ==> QPMask[o_4, g] == Mask[o_4, g])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != g ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1_2: Ref, x2: Ref ::
      { xs[x1_2], xs[x2] } { xs[x1_2], ys[x2] } { xs[x1_2], xs[Heap[x2, g]] } { ys[x1_2], xs[x2] } { ys[x1_2], ys[x2] } { ys[x1_2], xs[Heap[x2, g]] } { xs[Heap[x1_2, g]], xs[x2] } { xs[Heap[x1_2, g]], ys[x2] } { xs[Heap[x1_2, g]], xs[Heap[x2, g]] }
      xs[x1_2] && (!ys[x1_2] && (Heap[x1_2, f_7] != 0 && (!xs[Heap[x1_2, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1_2 != x2))))))) ==> Heap[x1_2, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@167.3--167.24) [4892]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange42(Heap[x$0_2, g]) && invRecv42(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_4: Ref ::
        { invRecv42(o_4) }
        ((xs[invRecv42(o_4)] && (!ys[invRecv42(o_4)] && (Heap[invRecv42(o_4), f_7] != 0 && !xs[Heap[invRecv42(o_4), g]]))) && NoPerm < FullPerm) && qpRange42(o_4) ==> Heap[invRecv42(o_4), g] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (((xs[invRecv42(o_4)] && (!ys[invRecv42(o_4)] && (Heap[invRecv42(o_4), f_7] != 0 && !xs[Heap[invRecv42(o_4), g]]))) && NoPerm < FullPerm) && qpRange42(o_4) ==> (NoPerm < FullPerm ==> Heap[invRecv42(o_4), g] == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(((xs[invRecv42(o_4)] && (!ys[invRecv42(o_4)] && (Heap[invRecv42(o_4), f_7] != 0 && !xs[Heap[invRecv42(o_4), g]]))) && NoPerm < FullPerm) && qpRange42(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x in xs) -- generalised_shape.vpr@169.10--169.17
    assume xs[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x in ys)) -- generalised_shape.vpr@169.21--169.31
    assume !ys[x];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null -- generalised_shape.vpr@170.10--170.19
    assume x != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.f -- generalised_shape.vpr@171.3--171.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@171.3--171.20) [4893]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale a != 0 -- generalised_shape.vpr@172.10--172.16
    assume a_2 != 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@173.3--173.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@173.3--173.20) [4894]"}
        HasDirectPerm(Mask, x, g);
    b_24 := Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x.g in xs)) -- generalised_shape.vpr@174.10--174.22
    
    // -- Check definedness of !((x.g in xs))
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@174.10--174.22) [4895]"}
        HasDirectPerm(Mask, x, g);
    assume !xs[Heap[x, g]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.g != null -- generalised_shape.vpr@175.10--175.21
    
    // -- Check definedness of x.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@175.10--175.21) [4896]"}
        HasDirectPerm(Mask, x, g);
    assume Heap[x, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.g.f -- generalised_shape.vpr@176.3--176.13
    
    // -- Check definedness of x.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@176.3--176.13) [4897]"}
        HasDirectPerm(Mask, x, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (generalised_shape.vpr@176.3--176.13) [4898]"}
        HasDirectPerm(Mask, Heap[x, g], f_7);
    a_2 := Heap[Heap[x, g], f_7];
    assume state(Heap, Mask);
}