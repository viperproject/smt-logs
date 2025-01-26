// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:23
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
axiom (forall o_13: Ref, f_20: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_20] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_20], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref, f_29: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, f_29] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_20, f_29) ==> Heap[o_20, f_29] == ExhaleHeap[o_20, f_29]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37), ExhaleHeap[null, PredicateMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> Heap[null, PredicateMaskField(pm_f_37)] == ExhaleHeap[null, PredicateMaskField(pm_f_37)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, PredicateMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37), ExhaleHeap[null, WandMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> Heap[null, WandMaskField(pm_f_37)] == ExhaleHeap[null, WandMaskField(pm_f_37)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, WandMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_20, $allocated] ==> ExhaleHeap[o_20, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_66: (Field A B), v: B ::
  { Heap[o_13, f_66:=v] }
  succHeap(Heap, Heap[o_13, f_66:=v])
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

function  neverTriggered1(x_4_2: Ref): bool;
function  neverTriggered2(x_6: Ref): bool;
function  neverTriggered3(x_8: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_1: Ref): bool;
function  neverTriggered6(x_3: Ref): bool;
function  neverTriggered7(x_1: Ref): bool;
function  neverTriggered8(x_2_2: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
function  neverTriggered10(x_3: Ref): bool;
function  neverTriggered11(x_4_2: Ref): bool;
function  neverTriggered12(x_5: Ref): bool;
function  neverTriggered13(x_1: Ref): bool;
function  neverTriggered14(x_2_2: Ref): bool;
function  neverTriggered15(x_1: Ref): bool;
function  neverTriggered16(x_3: Ref): bool;
function  neverTriggered17(x_4_2: Ref): bool;
function  neverTriggered18(x_5: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_3: Ref): bool;
function  neverTriggered21(x_4_2: Ref): bool;
function  neverTriggered22(x_5: Ref): bool;
function  neverTriggered23(x: Ref): bool;
function  neverTriggered24(x_1: Ref): bool;
function  neverTriggered25(x_2_2: Ref): bool;
function  neverTriggered26(x_3: Ref): bool;
function  neverTriggered27(x_4_2: Ref): bool;
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
  var x_2: Ref;
  var x1_22: Ref;
  var x2_3: Ref;
  var x_4: Ref;
  
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
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@116.1--123.2) [179500]"}
      (forall x_4_2: Ref, x_4_3: Ref ::
      
      (((x_4_2 != x_4_3 && (xs[x_4_2] && !ys[x_4_2])) && (xs[x_4_3] && !ys[x_4_3])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
    );
    
    // -- Define Inverse Function
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { xs[x_4_2] } { ys[x_4_2] }
        (xs[x_4_2] && !ys[x_4_2]) && NoPerm < FullPerm ==> qpRange1(x_4_2) && invRecv1(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((xs[invRecv1(o_9)] && !ys[invRecv1(o_9)]) && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, f_7] } { QPMask[x_4_2, f_7] } { xs[x_4_2] } { ys[x_4_2] }
        xs[x_4_2] && !ys[x_4_2] ==> x_4_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv1(o_9)] && !ys[invRecv1(o_9)]) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv1(o_9)] && !ys[invRecv1(o_9)]) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && (!((x in ys)) && x.f != 0) ==> acc(x.g, write))
      if (*) {
        if (xs[x_2]) {
          if (!ys[x_2]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@116.1--123.2) [179501]"}
              HasDirectPerm(Mask, x_2, f_7);
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@116.1--123.2) [179502]"}
      (forall x_6: Ref, x_6_1: Ref ::
      
      (((x_6 != x_6_1 && (xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0))) && (xs[x_6_1] && (!ys[x_6_1] && Heap[x_6_1, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { Heap[x_6, g] } { QPMask[x_6, g] } { xs[x_6] } { ys[x_6] }
        (xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0)) && NoPerm < FullPerm ==> qpRange2(x_6) && invRecv2(x_6) == x_6
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((xs[invRecv2(o_9)] && (!ys[invRecv2(o_9)] && Heap[invRecv2(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_6: Ref ::
        { Heap[x_6, g] } { QPMask[x_6, g] } { xs[x_6] } { ys[x_6] }
        xs[x_6] && (!ys[x_6] && Heap[x_6, f_7] != 0) ==> x_6 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv2(o_9)] && (!ys[invRecv2(o_9)] && Heap[invRecv2(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv2(o_9)] && (!ys[invRecv2(o_9)] && Heap[invRecv2(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } { (x1 in xs), (x2 in ys) } { (x1 in xs), (x2.g in xs) } { (x1 in ys), (x2 in xs) } { (x1 in ys), (x2 in ys) } { (x1 in ys), (x2.g in xs) } { (x1.g in xs), (x2 in xs) } { (x1.g in xs), (x2 in ys) } { (x1.g in xs), (x2.g in xs) } (x1 in xs) && (!((x1 in ys)) && (x1.f != 0 && (!((x1.g in xs)) && ((x2 in xs) && (!((x2 in ys)) && (x2.f != 0 && (!((x2.g in xs)) && x1 != x2))))))) ==> x1.g != x2.g)
      if (*) {
        if (xs[x1_22]) {
          if (!ys[x1_22]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.f (generalised_shape.vpr@116.1--123.2) [179503]"}
              HasDirectPerm(Mask, x1_22, f_7);
            if (Heap[x1_22, f_7] != 0) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@116.1--123.2) [179504]"}
                HasDirectPerm(Mask, x1_22, g);
              if (!xs[Heap[x1_22, g]]) {
                if (xs[x2_3]) {
                  if (!ys[x2_3]) {
                    assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.f (generalised_shape.vpr@116.1--123.2) [179505]"}
                      HasDirectPerm(Mask, x2_3, f_7);
                    if (Heap[x2_3, f_7] != 0) {
                      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@116.1--123.2) [179506]"}
                        HasDirectPerm(Mask, x2_3, g);
                    }
                  }
                }
              }
            }
          }
        }
        if (xs[x1_22] && (!ys[x1_22] && (Heap[x1_22, f_7] != 0 && (!xs[Heap[x1_22, g]] && (xs[x2_3] && (!ys[x2_3] && (Heap[x2_3, f_7] != 0 && (!xs[Heap[x2_3, g]] && x1_22 != x2_3)))))))) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@116.1--123.2) [179507]"}
            HasDirectPerm(Mask, x1_22, g);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@116.1--123.2) [179508]"}
            HasDirectPerm(Mask, x2_3, g);
        }
        assume false;
      }
    assume (forall x1_1: Ref, x2_1_1: Ref ::
      { xs[x1_1], xs[x2_1_1] } { xs[x1_1], ys[x2_1_1] } { xs[x1_1], xs[Heap[x2_1_1, g]] } { ys[x1_1], xs[x2_1_1] } { ys[x1_1], ys[x2_1_1] } { ys[x1_1], xs[Heap[x2_1_1, g]] } { xs[Heap[x1_1, g]], xs[x2_1_1] } { xs[Heap[x1_1, g]], ys[x2_1_1] } { xs[Heap[x1_1, g]], xs[Heap[x2_1_1, g]] }
      xs[x1_1] && (!ys[x1_1] && (Heap[x1_1, f_7] != 0 && (!xs[Heap[x1_1, g]] && (xs[x2_1_1] && (!ys[x2_1_1] && (Heap[x2_1_1, f_7] != 0 && (!xs[Heap[x2_1_1, g]] && x1_1 != x2_1_1))))))) ==> Heap[x1_1, g] != Heap[x2_1_1, g]
    );
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } { (x.g in xs) } (x in xs) && (!((x in ys)) && (x.f != 0 && !((x.g in xs)))) ==> acc(x.g.f, write))
      if (*) {
        if (xs[x_4]) {
          if (!ys[x_4]) {
            assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@116.1--123.2) [179509]"}
              HasDirectPerm(Mask, x_4, f_7);
            if (Heap[x_4, f_7] != 0) {
              assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@116.1--123.2) [179510]"}
                HasDirectPerm(Mask, x_4, g);
            }
          }
        }
        if (xs[x_4] && (!ys[x_4] && (Heap[x_4, f_7] != 0 && !xs[Heap[x_4, g]]))) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@116.1--123.2) [179511]"}
            HasDirectPerm(Mask, x_4, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@116.1--123.2) [179512]"}
      (forall x_8: Ref, x_8_1: Ref ::
      
      (((x_8 != x_8_1 && (xs[x_8] && (!ys[x_8] && (Heap[x_8, f_7] != 0 && !xs[Heap[x_8, g]])))) && (xs[x_8_1] && (!ys[x_8_1] && (Heap[x_8_1, f_7] != 0 && !xs[Heap[x_8_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_8, g] != Heap[x_8_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_8: Ref ::
        { Heap[x_8, g] } { xs[x_8] } { ys[x_8] } { xs[Heap[x_8, g]] }
        (xs[x_8] && (!ys[x_8] && (Heap[x_8, f_7] != 0 && !xs[Heap[x_8, g]]))) && NoPerm < FullPerm ==> qpRange3(Heap[x_8, g]) && invRecv3(Heap[x_8, g]) == x_8
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((xs[invRecv3(o_9)] && (!ys[invRecv3(o_9)] && (Heap[invRecv3(o_9), f_7] != 0 && !xs[Heap[invRecv3(o_9), g]]))) && NoPerm < FullPerm) && qpRange3(o_9) ==> Heap[invRecv3(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_8: Ref ::
        { Heap[x_8, g] } { xs[x_8] } { ys[x_8] } { xs[Heap[x_8, g]] }
        xs[x_8] && (!ys[x_8] && (Heap[x_8, f_7] != 0 && !xs[Heap[x_8, g]])) ==> Heap[x_8, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv3(o_9)] && (!ys[invRecv3(o_9)] && (Heap[invRecv3(o_9), f_7] != 0 && !xs[Heap[invRecv3(o_9), g]]))) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv3(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv3(o_9)] && (!ys[invRecv3(o_9)] && (Heap[invRecv3(o_9), f_7] != 0 && !xs[Heap[invRecv3(o_9), g]]))) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(xs: (Set Ref), ys: (Set Ref), x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } { (x in ys) } (x in xs) && !((x in ys)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@8.12--8.63) [179513]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && (xs[x_1] && !ys[x_1])) && (xs[x_1_1] && !ys[x_1_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] } { ys[x_1] }
        (xs[x_1] && !ys[x_1]) && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((xs[invRecv4(o_9)] && !ys[invRecv4(o_9)]) && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] } { ys[x_1] }
        xs[x_1] && !ys[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv4(o_9)] && !ys[invRecv4(o_9)]) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv4(o_9)] && !ys[invRecv4(o_9)]) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (x1 in xs) -- generalised_shape.vpr@10.10--10.18
    assume xs[x1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (x2 in xs) -- generalised_shape.vpr@10.22--10.30
    assume xs[x2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x1 in ys)) -- generalised_shape.vpr@11.10--11.21
    assume !ys[x1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x1 != null -- generalised_shape.vpr@12.10--12.20
    assume x1 != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x2 != null -- generalised_shape.vpr@12.24--12.34
    assume x2 != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x1.f -- generalised_shape.vpr@13.3--13.21
    
    // -- Check definedness of x1.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x1.f (generalised_shape.vpr@13.3--13.21) [179514]"}
        HasDirectPerm(Mask, x1, f_7);
    a_2 := Heap[x1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x2.f -- generalised_shape.vpr@16.3--16.12
    
    // -- Check definedness of x2.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x2.f (generalised_shape.vpr@16.3--16.12) [179515]"}
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
  var x_50: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (generalised_shape.vpr@20.12--20.49) [179516]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange5(x_1) && invRecv5(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) && x.f != 0 ==> acc(x.g, write))
      if (*) {
        if (xs[x_50]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (generalised_shape.vpr@21.12--21.61) [179517]"}
            HasDirectPerm(Mask, x_50, f_7);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@21.12--21.61) [179518]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && (xs[x_3] && Heap[x_3, f_7] != 0)) && (xs[x_3_1] && Heap[x_3_1, f_7] != 0)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { xs[x_3] }
        (xs[x_3] && Heap[x_3, f_7] != 0) && NoPerm < FullPerm ==> qpRange6(x_3) && invRecv6(x_3) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        ((xs[invRecv6(o_9)] && Heap[invRecv6(o_9), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { QPMask[x_3, g] } { xs[x_3] }
        xs[x_3] && Heap[x_3, f_7] != 0 ==> x_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv6(o_9)] && Heap[invRecv6(o_9), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv6(o_9)] && Heap[invRecv6(o_9), f_7] != 0) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume xs[y1];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r_1, $allocated];
  
  // -- Translating statement: a := y1.f -- generalised_shape.vpr@24.3--24.21
    
    // -- Check definedness of y1.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.f (generalised_shape.vpr@24.3--24.21) [179519]"}
        HasDirectPerm(Mask, y1, f_7);
    a_2 := Heap[y1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: r := y1.g -- generalised_shape.vpr@27.3--27.21
    
    // -- Check definedness of y1.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@27.3--27.21) [179520]"}
        HasDirectPerm(Mask, y1, g);
    r_1 := Heap[y1, g];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test12
// ==================================================

procedure test12(x1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@32.11--32.53) [179521]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1)[x_1]) && Set#Singleton(x1)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] && NoPerm < FullPerm ==> qpRange7(x_1) && invRecv7(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (Set#Singleton(x1)[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((Set#Singleton(x1)[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> invRecv7(o_9) == o_9) && QPMask[o_9, g] == PostMask[o_9, g] + FullPerm) && (!((Set#Singleton(x1)[invRecv7(o_9)] && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x1 != null;
    PostMask := PostMask[x1, g:=PostMask[x1, g] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@32.11--32.53) [179522]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered8(x_2_2), neverTriggered8(x_2_3) }
        (((x_2_2 != x_2_3 && Set#Singleton(x1)[x_2_2]) && Set#Singleton(x1)[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_2_2 != x_2_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test12 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@32.11--32.53) [179523]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#Singleton(x1)[x_2_2] }
        Set#Singleton(x1)[x_2_2] ==> Mask[x_2_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#Singleton(x1)[x_2_2] }
        Set#Singleton(x1)[x_2_2] && NoPerm < FullPerm ==> qpRange8(x_2_2) && invRecv8(x_2_2) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        Set#Singleton(x1)[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#Singleton(x1)[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - FullPerm) && (!(Set#Singleton(x1)[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test12 might not hold. There might be insufficient permission to access x1.g (generalised_shape.vpr@34.11--34.20) [179524]"}
        perm <= Mask[x1, g];
    }
    Mask := Mask[x1, g:=Mask[x1, g] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test14
// ==================================================

procedure test14(x1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_18: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@38.12--38.36) [179525]"}
        HasDirectPerm(Mask, x1, g);
    perm := FullPerm;
    assume Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@39.11--39.53) [179526]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1)[x_1]) && Set#Singleton(x1)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] && NoPerm < FullPerm ==> qpRange9(x_1) && invRecv9(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (Set#Singleton(x1)[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((Set#Singleton(x1)[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, g] == PostMask[o_9, g] + FullPerm) && (!((Set#Singleton(x1)[invRecv9(o_9)] && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g.f, write))
      if (*) {
        if (Set#Singleton(x1)[x_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@40.11--40.55) [179527]"}
            HasDirectPerm(PostMask, x_18, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@40.11--40.55) [179528]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#Singleton(x1)[x_3]) && Set#Singleton(x1)[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#Singleton(x1)[x_3] }
        Set#Singleton(x1)[x_3] && NoPerm < FullPerm ==> qpRange10(PostHeap[x_3, g]) && invRecv10(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (Set#Singleton(x1)[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> PostHeap[invRecv10(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#Singleton(x1)[x_3] }
        Set#Singleton(x1)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#Singleton(x1)[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> PostHeap[invRecv10(o_9), g] == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Set#Singleton(x1)[invRecv10(o_9)] && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@39.11--39.53) [179529]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered11(x_4_2), neverTriggered11(x_4_3) }
        (((x_4_2 != x_4_3 && Set#Singleton(x1)[x_4_2]) && Set#Singleton(x1)[x_4_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test14 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@39.11--39.53) [179530]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#Singleton(x1)[x_4_2] }
        Set#Singleton(x1)[x_4_2] ==> Mask[x_4_2, g] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#Singleton(x1)[x_4_2] }
        Set#Singleton(x1)[x_4_2] && NoPerm < FullPerm ==> qpRange11(x_4_2) && invRecv11(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        Set#Singleton(x1)[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#Singleton(x1)[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - FullPerm) && (!(Set#Singleton(x1)[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@40.11--40.55) [179531]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered12(x_5), neverTriggered12(x_5_1) }
        (((x_5 != x_5_1 && Set#Singleton(x1)[x_5]) && Set#Singleton(x1)[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test14 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@40.11--40.55) [179532]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#Singleton(x1)[x_5] }
        Set#Singleton(x1)[x_5] ==> Mask[Heap[x_5, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#Singleton(x1)[x_5] }
        Set#Singleton(x1)[x_5] && NoPerm < FullPerm ==> qpRange12(Heap[x_5, g]) && invRecv12(Heap[x_5, g]) == x_5
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        Set#Singleton(x1)[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> Heap[invRecv12(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#Singleton(x1)[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> Heap[invRecv12(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Set#Singleton(x1)[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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

procedure test13(x1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var x_52: Ref;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@44.12--44.36) [179533]"}
        HasDirectPerm(Mask, x1, g);
    perm := FullPerm;
    assume Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1)) } (x in Set(x1)) ==> acc(x.g.f, write))
      if (*) {
        if (Set#Singleton(x1)[x_52]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@46.11--46.55) [179534]"}
            HasDirectPerm(PostMask, x_52, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@46.11--46.55) [179535]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#Singleton(x1)[x_1]) && Set#Singleton(x1)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> PostHeap[x_1, g] != PostHeap[x_1_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] && NoPerm < FullPerm ==> qpRange13(PostHeap[x_1, g]) && invRecv13(PostHeap[x_1, g]) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (Set#Singleton(x1)[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> PostHeap[invRecv13(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { Set#Singleton(x1)[x_1] }
        Set#Singleton(x1)[x_1] ==> PostHeap[x_1, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Set#Singleton(x1)[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> PostHeap[invRecv13(o_9), g] == o_9) && QPMask[o_9, f_7] == PostMask[o_9, f_7] + FullPerm) && (!((Set#Singleton(x1)[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@46.11--46.55) [179536]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        { neverTriggered14(x_2_2), neverTriggered14(x_2_3) }
        (((x_2_2 != x_2_3 && Set#Singleton(x1)[x_2_2]) && Set#Singleton(x1)[x_2_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_2_2, g] != Heap[x_2_3, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test13 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@46.11--46.55) [179537]"}
        (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { Set#Singleton(x1)[x_2_2] }
        Set#Singleton(x1)[x_2_2] ==> Mask[Heap[x_2_2, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_2_2: Ref ::
        { Heap[x_2_2, g] } { Set#Singleton(x1)[x_2_2] }
        Set#Singleton(x1)[x_2_2] && NoPerm < FullPerm ==> qpRange14(Heap[x_2_2, g]) && invRecv14(Heap[x_2_2, g]) == x_2_2
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        Set#Singleton(x1)[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> Heap[invRecv14(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#Singleton(x1)[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> Heap[invRecv14(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!(Set#Singleton(x1)[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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

procedure test10(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var wildcard: real where wildcard > 0.000000000;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var x_20: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@50.12--50.46) [179538]"}
        HasDirectPerm(Mask, x1, g);
    havoc wildcard;
    perm := wildcard;
    assume Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@51.12--51.46) [179539]"}
        HasDirectPerm(Mask, x2, g);
    havoc wildcard;
    perm := wildcard;
    assume Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@52.12--52.68) [179540]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> qpRange15(x_1) && invRecv15(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv15(o_9)] && qpRange15(o_9) ==> invRecv15(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv15(o_9)] && qpRange15(o_9) ==> invRecv15(o_9) == o_9 && PostMask[o_9, g] < QPMask[o_9, g]) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv15(o_9)] && qpRange15(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, wildcard))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1)[x_20]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@54.12--54.70) [179541]"}
            HasDirectPerm(PostMask, x_20, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@54.12--54.70) [179542]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> qpRange16(PostHeap[x_3, g]) && invRecv16(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv16(o_9)] && qpRange16(o_9) ==> PostHeap[invRecv16(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv16(o_9)] && qpRange16(o_9) ==> PostHeap[invRecv16(o_9), g] == o_9 && PostMask[o_9, f_7] < QPMask[o_9, f_7]) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv16(o_9)] && qpRange16(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@52.12--52.68) [179543]"}
      (forall x_4_2: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] > NoPerm
    );
    assume (forall x_4_2: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> wildcard < Mask[x_4_2, g]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test10 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@52.12--52.68) [179544]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && dummyFunction(Heap[x_4_2, g]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@52.12--52.68) [179545]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered17(x_4_2), neverTriggered17(x_4_3) }
        (((x_4_2 != x_4_3 && Set#UnionOne(Set#Singleton(x2), x1)[x_4_2]) && Set#UnionOne(Set#Singleton(x2), x1)[x_4_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@52.12--52.68) [179546]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && NoPerm < wildcard ==> qpRange17(x_4_2) && invRecv17(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv17(o_9)] && (NoPerm < wildcard && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv17(o_9)] && (NoPerm < wildcard && qpRange17(o_9)) ==> invRecv17(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv17(o_9)] && (NoPerm < wildcard && qpRange17(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@54.12--54.70) [179547]"}
      (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
    );
    assume (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> wildcard < Mask[Heap[x_5, g], f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test10 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@54.12--54.70) [179548]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && dummyFunction(Heap[Heap[x_5, g], f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@54.12--54.70) [179549]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered18(x_5), neverTriggered18(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test10 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@54.12--54.70) [179550]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && NoPerm < wildcard ==> qpRange18(Heap[x_5, g]) && invRecv18(Heap[x_5, g]) == x_5
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9)) ==> Heap[invRecv18(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9)) ==> Heap[invRecv18(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv18(o_9)] && (NoPerm < wildcard && qpRange18(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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

procedure test15(x1: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var x_30: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@58.12--58.41) [179551]"}
        HasDirectPerm(Mask, x1, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (generalised_shape.vpr@58.12--58.41) [179552]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, 2 / 3)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@59.12--59.41) [179553]"}
        HasDirectPerm(Mask, x2, g);
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (generalised_shape.vpr@59.12--59.41) [179554]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x2, g] != null;
    Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@60.11--60.67) [179555]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> qpRange19(x_1) && invRecv19(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv19(o_9)] && qpRange19(o_9) ==> invRecv19(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { PostHeap[x_1, g] } { QPMask[x_1, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv19(o_9)] && qpRange19(o_9) ==> invRecv19(o_9) == o_9 && PostMask[o_9, g] < QPMask[o_9, g]) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv19(o_9)] && qpRange19(o_9)) ==> QPMask[o_9, g] == PostMask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x1.g != x2.g
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@61.11--61.23) [179556]"}
        HasDirectPerm(PostMask, x1, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@61.11--61.23) [179557]"}
        HasDirectPerm(PostMask, x2, g);
    assume PostHeap[x1, g] != PostHeap[x2, g];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.g.f, wildcard))
      if (*) {
        if (Set#UnionOne(Set#Singleton(x2), x1)[x_30]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@62.11--62.69) [179558]"}
            HasDirectPerm(PostMask, x_30, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@62.11--62.69) [179559]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> PostHeap[x_3, g] != PostHeap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> qpRange20(PostHeap[x_3, g]) && invRecv20(PostHeap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv20(o_9)] && qpRange20(o_9) ==> PostHeap[invRecv20(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { PostHeap[x_3, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_3] ==> PostHeap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv20(o_9)] && qpRange20(o_9) ==> PostHeap[invRecv20(o_9), g] == o_9 && PostMask[o_9, f_7] < QPMask[o_9, f_7]) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv20(o_9)] && qpRange20(o_9)) ==> QPMask[o_9, f_7] == PostMask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@60.11--60.67) [179560]"}
      (forall x_4_2: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] > NoPerm
    );
    assume (forall x_4_2: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> wildcard < Mask[x_4_2, g]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test15 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@60.11--60.67) [179561]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && dummyFunction(Heap[x_4_2, g]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@60.11--60.67) [179562]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        { neverTriggered21(x_4_2), neverTriggered21(x_4_3) }
        (((x_4_2 != x_4_3 && Set#UnionOne(Set#Singleton(x2), x1)[x_4_2]) && Set#UnionOne(Set#Singleton(x2), x1)[x_4_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4_2 != x_4_3
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g (generalised_shape.vpr@60.11--60.67) [179563]"}
        (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] ==> Mask[x_4_2, g] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x
      assume (forall x_4_2: Ref ::
        { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_4_2] && NoPerm < wildcard ==> qpRange21(x_4_2) && invRecv21(x_4_2) == x_4_2
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
      );
    
    // -- assume permission updates for field g
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9)) ==> invRecv21(o_9) == o_9 && QPMask[o_9, g] == Mask[o_9, g] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv21(o_9)] && (NoPerm < wildcard && qpRange21(o_9))) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of test15 might not hold. Assertion x1.g != x2.g might not hold. (generalised_shape.vpr@61.11--61.23) [179564]"}
      Heap[x1, g] != Heap[x2, g];
    havoc QPMask;
    // wild card assumptions
    havoc wildcard;
    assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@62.11--62.69) [179565]"}
      (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
    );
    assume (forall x_5: Ref ::
      
      Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> wildcard < Mask[Heap[x_5, g], f_7]
    );
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of test15 might not hold. Fraction wildcard might be negative. (generalised_shape.vpr@62.11--62.69) [179566]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && dummyFunction(Heap[Heap[x_5, g], f_7]) ==> wildcard >= NoPerm
      );
    
    // -- check if receiver x.g is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@62.11--62.69) [179567]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered22(x_5), neverTriggered22(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test15 might not hold. There might be insufficient permission to access x.g.f (generalised_shape.vpr@62.11--62.69) [179568]"}
        (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] ==> Mask[Heap[x_5, g], f_7] > NoPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall x_5: Ref ::
        { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x2), x1)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1)[x_5] && NoPerm < wildcard ==> qpRange22(Heap[x_5, g]) && invRecv22(Heap[x_5, g]) == x_5
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        Set#UnionOne(Set#Singleton(x2), x1)[invRecv22(o_9)] && (NoPerm < wildcard && qpRange22(o_9)) ==> Heap[invRecv22(o_9), g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (Set#UnionOne(Set#Singleton(x2), x1)[invRecv22(o_9)] && (NoPerm < wildcard && qpRange22(o_9)) ==> Heap[invRecv22(o_9), g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - wildcard) && (!(Set#UnionOne(Set#Singleton(x2), x1)[invRecv22(o_9)] && (NoPerm < wildcard && qpRange22(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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

procedure test11(x1: Ref, x2: Ref, x3: Ref, x4: Ref, x5: Ref, x6: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleHeap: HeapType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1, $allocated];
    assume Heap[x2, $allocated];
    assume Heap[x3, $allocated];
    assume Heap[x4, $allocated];
    assume Heap[x5, $allocated];
    assume Heap[x6, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1 != null;
    Mask := Mask[x1, g:=Mask[x1, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x1.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@66.12--66.36) [179569]"}
        HasDirectPerm(Mask, x1, g);
    perm := FullPerm;
    assume Heap[x1, g] != null;
    Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x2 != null;
    Mask := Mask[x2, g:=Mask[x2, g] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x2.g.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@67.12--67.36) [179570]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x3.g (generalised_shape.vpr@68.12--68.36) [179571]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x4.g (generalised_shape.vpr@69.12--69.36) [179572]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x5.g (generalised_shape.vpr@70.12--70.36) [179573]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x6.g (generalised_shape.vpr@71.12--71.36) [179574]"}
        HasDirectPerm(Mask, x6, g);
    perm := FullPerm;
    assume Heap[x6, g] != null;
    Mask := Mask[Heap[x6, g], f_7:=Mask[Heap[x6, g], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: test10(x1, x6) -- generalised_shape.vpr@74.3--74.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x1.g (generalised_shape.vpr@74.3--74.17) [179575]"}
          perm <= Mask[x1, g];
      }
      Mask := Mask[x1, g:=Mask[x1, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x1.g.f (generalised_shape.vpr@74.3--74.17) [179576]"}
        Mask[Heap[x1, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x1, g], f_7];
      Mask := Mask[Heap[x1, g], f_7:=Mask[Heap[x1, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x6.g (generalised_shape.vpr@74.3--74.17) [179577]"}
          perm <= Mask[x6, g];
      }
      Mask := Mask[x6, g:=Mask[x6, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x6.g.f (generalised_shape.vpr@74.3--74.17) [179578]"}
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
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@74.3--74.17) [179579]"}
        (forall x: Ref, x_46: Ref ::
        
        (((x != x_46 && Set#UnionOne(Set#Singleton(x6), x1)[x]) && Set#UnionOne(Set#Singleton(x6), x1)[x_46]) && NoPerm < wildcard) && NoPerm < wildcard ==> x != x_46
      );
      
      // -- Define Inverse Function
        assume (forall x: Ref ::
          { Heap[x, g] } { QPMask[x, g] } { Set#UnionOne(Set#Singleton(x6), x1)[x] }
          Set#UnionOne(Set#Singleton(x6), x1)[x] ==> qpRange23(x) && invRecv23(x) == x
        );
        assume (forall o_9: Ref ::
          { invRecv23(o_9) }
          Set#UnionOne(Set#Singleton(x6), x1)[invRecv23(o_9)] && qpRange23(o_9) ==> invRecv23(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x: Ref ::
          { Heap[x, g] } { QPMask[x, g] } { Set#UnionOne(Set#Singleton(x6), x1)[x] }
          Set#UnionOne(Set#Singleton(x6), x1)[x] ==> x != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, g] }
          (Set#UnionOne(Set#Singleton(x6), x1)[invRecv23(o_9)] && qpRange23(o_9) ==> invRecv23(o_9) == o_9 && Mask[o_9, g] < QPMask[o_9, g]) && (!(Set#UnionOne(Set#Singleton(x6), x1)[invRecv23(o_9)] && qpRange23(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@74.3--74.17) [179580]"}
        (forall x_1: Ref, x_1_1: Ref ::
        
        (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x6), x1)[x_1]) && Set#UnionOne(Set#Singleton(x6), x1)[x_1_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_1, g] != Heap[x_1_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_1: Ref ::
          { Heap[x_1, g] } { Set#UnionOne(Set#Singleton(x6), x1)[x_1] }
          Set#UnionOne(Set#Singleton(x6), x1)[x_1] ==> qpRange24(Heap[x_1, g]) && invRecv24(Heap[x_1, g]) == x_1
        );
        assume (forall o_9: Ref ::
          { invRecv24(o_9) }
          Set#UnionOne(Set#Singleton(x6), x1)[invRecv24(o_9)] && qpRange24(o_9) ==> Heap[invRecv24(o_9), g] == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_1: Ref ::
          { Heap[x_1, g] } { Set#UnionOne(Set#Singleton(x6), x1)[x_1] }
          Set#UnionOne(Set#Singleton(x6), x1)[x_1] ==> Heap[x_1, g] != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Set#UnionOne(Set#Singleton(x6), x1)[invRecv24(o_9)] && qpRange24(o_9) ==> Heap[invRecv24(o_9), g] == o_9 && Mask[o_9, f_7] < QPMask[o_9, f_7]) && (!(Set#UnionOne(Set#Singleton(x6), x1)[invRecv24(o_9)] && qpRange24(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test10(x2, x5) -- generalised_shape.vpr@77.3--77.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x2.g (generalised_shape.vpr@77.3--77.17) [179581]"}
          perm <= Mask[x2, g];
      }
      Mask := Mask[x2, g:=Mask[x2, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x2.g.f (generalised_shape.vpr@77.3--77.17) [179582]"}
        Mask[Heap[x2, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x2, g], f_7];
      Mask := Mask[Heap[x2, g], f_7:=Mask[Heap[x2, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x5.g (generalised_shape.vpr@77.3--77.17) [179583]"}
          perm <= Mask[x5, g];
      }
      Mask := Mask[x5, g:=Mask[x5, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x5.g.f (generalised_shape.vpr@77.3--77.17) [179584]"}
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
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@77.3--77.17) [179585]"}
        (forall x_2_2: Ref, x_2_3: Ref ::
        
        (((x_2_2 != x_2_3 && Set#UnionOne(Set#Singleton(x5), x2)[x_2_2]) && Set#UnionOne(Set#Singleton(x5), x2)[x_2_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_2_2 != x_2_3
      );
      
      // -- Define Inverse Function
        assume (forall x_2_2: Ref ::
          { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] ==> qpRange25(x_2_2) && invRecv25(x_2_2) == x_2_2
        );
        assume (forall o_9: Ref ::
          { invRecv25(o_9) }
          Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_9)] && qpRange25(o_9) ==> invRecv25(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_2_2: Ref ::
          { Heap[x_2_2, g] } { QPMask[x_2_2, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_2_2] ==> x_2_2 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, g] }
          (Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_9)] && qpRange25(o_9) ==> invRecv25(o_9) == o_9 && Mask[o_9, g] < QPMask[o_9, g]) && (!(Set#UnionOne(Set#Singleton(x5), x2)[invRecv25(o_9)] && qpRange25(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@77.3--77.17) [179586]"}
        (forall x_3: Ref, x_3_1: Ref ::
        
        (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x5), x2)[x_3]) && Set#UnionOne(Set#Singleton(x5), x2)[x_3_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_3, g] != Heap[x_3_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_3: Ref ::
          { Heap[x_3, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_3] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_3] ==> qpRange26(Heap[x_3, g]) && invRecv26(Heap[x_3, g]) == x_3
        );
        assume (forall o_9: Ref ::
          { invRecv26(o_9) }
          Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_9)] && qpRange26(o_9) ==> Heap[invRecv26(o_9), g] == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_3: Ref ::
          { Heap[x_3, g] } { Set#UnionOne(Set#Singleton(x5), x2)[x_3] }
          Set#UnionOne(Set#Singleton(x5), x2)[x_3] ==> Heap[x_3, g] != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_9)] && qpRange26(o_9) ==> Heap[invRecv26(o_9), g] == o_9 && Mask[o_9, f_7] < QPMask[o_9, f_7]) && (!(Set#UnionOne(Set#Singleton(x5), x2)[invRecv26(o_9)] && qpRange26(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test10(x3, x4) -- generalised_shape.vpr@80.3--80.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x3.g (generalised_shape.vpr@80.3--80.17) [179587]"}
          perm <= Mask[x3, g];
      }
      Mask := Mask[x3, g:=Mask[x3, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x3.g.f (generalised_shape.vpr@80.3--80.17) [179588]"}
        Mask[Heap[x3, g], f_7] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[Heap[x3, g], f_7];
      Mask := Mask[Heap[x3, g], f_7:=Mask[Heap[x3, g], f_7] - wildcard];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x4.g (generalised_shape.vpr@80.3--80.17) [179589]"}
          perm <= Mask[x4, g];
      }
      Mask := Mask[x4, g:=Mask[x4, g] - perm];
      assert {:msg "  The precondition of method test10 might not hold. There might be insufficient permission to access x4.g.f (generalised_shape.vpr@80.3--80.17) [179590]"}
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
      assert {:msg "  Method call might fail. Quantified resource x.g might not be injective. (generalised_shape.vpr@80.3--80.17) [179591]"}
        (forall x_4_2: Ref, x_4_3: Ref ::
        
        (((x_4_2 != x_4_3 && Set#UnionOne(Set#Singleton(x4), x3)[x_4_2]) && Set#UnionOne(Set#Singleton(x4), x3)[x_4_3]) && NoPerm < wildcard) && NoPerm < wildcard ==> x_4_2 != x_4_3
      );
      
      // -- Define Inverse Function
        assume (forall x_4_2: Ref ::
          { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_4_2] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_4_2] ==> qpRange27(x_4_2) && invRecv27(x_4_2) == x_4_2
        );
        assume (forall o_9: Ref ::
          { invRecv27(o_9) }
          Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_9)] && qpRange27(o_9) ==> invRecv27(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_4_2: Ref ::
          { Heap[x_4_2, g] } { QPMask[x_4_2, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_4_2] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_4_2] ==> x_4_2 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, g] }
          (Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_9)] && qpRange27(o_9) ==> invRecv27(o_9) == o_9 && Mask[o_9, g] < QPMask[o_9, g]) && (!(Set#UnionOne(Set#Singleton(x4), x3)[invRecv27(o_9)] && qpRange27(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@80.3--80.17) [179592]"}
        (forall x_5: Ref, x_5_1: Ref ::
        
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x4), x3)[x_5]) && Set#UnionOne(Set#Singleton(x4), x3)[x_5_1]) && NoPerm < wildcard) && NoPerm < wildcard ==> Heap[x_5, g] != Heap[x_5_1, g]
      );
      
      // -- Define Inverse Function
        assume (forall x_5: Ref ::
          { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_5] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_5] ==> qpRange28(Heap[x_5, g]) && invRecv28(Heap[x_5, g]) == x_5
        );
        assume (forall o_9: Ref ::
          { invRecv28(o_9) }
          Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_9)] && qpRange28(o_9) ==> Heap[invRecv28(o_9), g] == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall x_5: Ref ::
          { Heap[x_5, g] } { Set#UnionOne(Set#Singleton(x4), x3)[x_5] }
          Set#UnionOne(Set#Singleton(x4), x3)[x_5] ==> Heap[x_5, g] != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, f_7] }
          (Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_9)] && qpRange28(o_9) ==> Heap[invRecv28(o_9), g] == o_9 && Mask[o_9, f_7] < QPMask[o_9, f_7]) && (!(Set#UnionOne(Set#Singleton(x4), x3)[invRecv28(o_9)] && qpRange28(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
  var x1_24: Ref;
  var x2_26: Ref;
  var x_31: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g might not be injective. (generalised_shape.vpr@84.12--84.49) [179593]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && xs[x_1]) && xs[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { xs[x_1] }
        xs[x_1] && NoPerm < FullPerm ==> qpRange29(x_1) && invRecv29(x_1) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv29(o_9) }
        (xs[invRecv29(o_9)] && NoPerm < FullPerm) && qpRange29(o_9) ==> invRecv29(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, g] } { QPMask[x_1, g] } { xs[x_1] }
        xs[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((xs[invRecv29(o_9)] && NoPerm < FullPerm) && qpRange29(o_9) ==> (NoPerm < FullPerm ==> invRecv29(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((xs[invRecv29(o_9)] && NoPerm < FullPerm) && qpRange29(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x1: Ref, x2: Ref :: { (x1 in xs), (x2 in xs) } (x1 in xs) && ((x2 in xs) && x1 != x2) ==> x1.g != x2.g)
      if (*) {
        if (xs[x1_24] && (xs[x2_26] && x1_24 != x2_26)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x1.g (generalised_shape.vpr@85.12--85.88) [179594]"}
            HasDirectPerm(Mask, x1_24, g);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.g (generalised_shape.vpr@85.12--85.88) [179595]"}
            HasDirectPerm(Mask, x2_26, g);
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
        if (xs[x_31]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (generalised_shape.vpr@86.12--86.51) [179596]"}
            HasDirectPerm(Mask, x_31, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.g.f might not be injective. (generalised_shape.vpr@86.12--86.51) [179597]"}
      (forall x_3: Ref, x_3_1: Ref ::
      
      (((x_3 != x_3_1 && xs[x_3]) && xs[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x_3, g] != Heap[x_3_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { xs[x_3] }
        xs[x_3] && NoPerm < FullPerm ==> qpRange30(Heap[x_3, g]) && invRecv30(Heap[x_3, g]) == x_3
      );
      assume (forall o_9: Ref ::
        { invRecv30(o_9) }
        (xs[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9) ==> Heap[invRecv30(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_3: Ref ::
        { Heap[x_3, g] } { xs[x_3] }
        xs[x_3] ==> Heap[x_3, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((xs[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv30(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((xs[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale y1.g != null -- generalised_shape.vpr@90.10--90.22
    
    // -- Check definedness of y1.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@90.10--90.22) [179598]"}
        HasDirectPerm(Mask, y1, g);
    assume Heap[y1, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale y2.g != null -- generalised_shape.vpr@91.10--91.22
    
    // -- Check definedness of y2.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@91.10--91.22) [179599]"}
        HasDirectPerm(Mask, y2, g);
    assume Heap[y2, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := y1.g.f -- generalised_shape.vpr@92.3--92.23
    
    // -- Check definedness of y1.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@92.3--92.23) [179600]"}
        HasDirectPerm(Mask, y1, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y1.g.f (generalised_shape.vpr@92.3--92.23) [179601]"}
        HasDirectPerm(Mask, Heap[y1, g], f_7);
    a_2 := Heap[Heap[y1, g], f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y2.g -- generalised_shape.vpr@94.3--94.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y1.g != y2.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@94.10--94.22) [179602]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@94.10--94.22) [179603]"}
        HasDirectPerm(ExhaleWellDef0Mask, y2, g);
    assert {:msg "  Assert might fail. Assertion y1.g != y2.g might not hold. (generalised_shape.vpr@94.10--94.22) [179604]"}
      Heap[y1, g] != Heap[y2, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y3.g || y2.g != y3.g -- generalised_shape.vpr@95.3--95.38
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y1.g != y3.g || y2.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@95.10--95.38) [179605]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@95.10--95.38) [179606]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
      if (!(Heap[y1, g] != Heap[y3, g])) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@95.10--95.38) [179607]"}
          HasDirectPerm(ExhaleWellDef0Mask, y2, g);
        assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@95.10--95.38) [179608]"}
          HasDirectPerm(ExhaleWellDef0Mask, y3, g);
      }
    assert {:msg "  Assert might fail. Assertion y1.g != y3.g || y2.g != y3.g might not hold. (generalised_shape.vpr@95.10--95.38) [179609]"}
      Heap[y1, g] != Heap[y3, g] || Heap[y2, g] != Heap[y3, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y1.g != y3.g && y2.g != y3.g -- generalised_shape.vpr@98.3--98.38
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y1.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y1.g (generalised_shape.vpr@98.10--98.38) [179610]"}
        HasDirectPerm(ExhaleWellDef0Mask, y1, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@98.10--98.38) [179611]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
    assert {:msg "  Assert might fail. Assertion y1.g != y3.g might not hold. (generalised_shape.vpr@98.10--98.38) [179612]"}
      Heap[y1, g] != Heap[y3, g];
    
    // -- Check definedness of y2.g != y3.g
      assert {:msg "  Assert might fail. There might be insufficient permission to access y2.g (generalised_shape.vpr@98.10--98.38) [179613]"}
        HasDirectPerm(ExhaleWellDef0Mask, y2, g);
      assert {:msg "  Assert might fail. There might be insufficient permission to access y3.g (generalised_shape.vpr@98.10--98.38) [179614]"}
        HasDirectPerm(ExhaleWellDef0Mask, y3, g);
    assert {:msg "  Assert might fail. Assertion y2.g != y3.g might not hold. (generalised_shape.vpr@98.10--98.38) [179615]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@128.3--128.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@128.3--128.24) [179618]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@128.3--128.24) [179619]"}
      (forall x$0: Ref, x$0_6: Ref ::
      
      (((x$0 != x$0_6 && (xs[x$0] && !ys[x$0])) && (xs[x$0_6] && !ys[x$0_6])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_6
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange31(x$0) && invRecv31(x$0) == x$0
      );
      assume (forall o_9: Ref ::
        { invRecv31(o_9) }
        ((xs[invRecv31(o_9)] && !ys[invRecv31(o_9)]) && NoPerm < FullPerm) && qpRange31(o_9) ==> invRecv31(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv31(o_9)] && !ys[invRecv31(o_9)]) && NoPerm < FullPerm) && qpRange31(o_9) ==> (NoPerm < FullPerm ==> invRecv31(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv31(o_9)] && !ys[invRecv31(o_9)]) && NoPerm < FullPerm) && qpRange31(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@128.3--128.24) [179620]"}
      (forall x$0_1: Ref, x$0_1_2: Ref ::
      
      (((x$0_1 != x$0_1_2 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_2] && (!ys[x$0_1_2] && Heap[x$0_1_2, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_2
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange32(x$0_1) && invRecv32(x$0_1) == x$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv32(o_9) }
        ((xs[invRecv32(o_9)] && (!ys[invRecv32(o_9)] && Heap[invRecv32(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_9) ==> invRecv32(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv32(o_9)] && (!ys[invRecv32(o_9)] && Heap[invRecv32(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_9) ==> (NoPerm < FullPerm ==> invRecv32(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv32(o_9)] && (!ys[invRecv32(o_9)] && Heap[invRecv32(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange32(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1: Ref, x2: Ref ::
      { xs[x1], xs[x2] } { xs[x1], ys[x2] } { xs[x1], xs[Heap[x2, g]] } { ys[x1], xs[x2] } { ys[x1], ys[x2] } { ys[x1], xs[Heap[x2, g]] } { xs[Heap[x1, g]], xs[x2] } { xs[Heap[x1, g]], ys[x2] } { xs[Heap[x1, g]], xs[Heap[x2, g]] }
      xs[x1] && (!ys[x1] && (Heap[x1, f_7] != 0 && (!xs[Heap[x1, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1 != x2))))))) ==> Heap[x1, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@128.3--128.24) [179621]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange33(Heap[x$0_2, g]) && invRecv33(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_9: Ref ::
        { invRecv33(o_9) }
        ((xs[invRecv33(o_9)] && (!ys[invRecv33(o_9)] && (Heap[invRecv33(o_9), f_7] != 0 && !xs[Heap[invRecv33(o_9), g]]))) && NoPerm < FullPerm) && qpRange33(o_9) ==> Heap[invRecv33(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv33(o_9)] && (!ys[invRecv33(o_9)] && (Heap[invRecv33(o_9), f_7] != 0 && !xs[Heap[invRecv33(o_9), g]]))) && NoPerm < FullPerm) && qpRange33(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv33(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv33(o_9)] && (!ys[invRecv33(o_9)] && (Heap[invRecv33(o_9), f_7] != 0 && !xs[Heap[invRecv33(o_9), g]]))) && NoPerm < FullPerm) && qpRange33(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@133.3--133.20) [179622]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@139.3--139.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@139.3--139.24) [179625]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@139.3--139.24) [179626]"}
      (forall x$0: Ref, x$0_6: Ref ::
      
      (((x$0 != x$0_6 && (xs[x$0] && !ys[x$0])) && (xs[x$0_6] && !ys[x$0_6])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_6
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange34(x$0) && invRecv34(x$0) == x$0
      );
      assume (forall o_9: Ref ::
        { invRecv34(o_9) }
        ((xs[invRecv34(o_9)] && !ys[invRecv34(o_9)]) && NoPerm < FullPerm) && qpRange34(o_9) ==> invRecv34(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv34(o_9)] && !ys[invRecv34(o_9)]) && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> invRecv34(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv34(o_9)] && !ys[invRecv34(o_9)]) && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@139.3--139.24) [179627]"}
      (forall x$0_1: Ref, x$0_1_2: Ref ::
      
      (((x$0_1 != x$0_1_2 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_2] && (!ys[x$0_1_2] && Heap[x$0_1_2, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_2
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange35(x$0_1) && invRecv35(x$0_1) == x$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv35(o_9) }
        ((xs[invRecv35(o_9)] && (!ys[invRecv35(o_9)] && Heap[invRecv35(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_9) ==> invRecv35(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv35(o_9)] && (!ys[invRecv35(o_9)] && Heap[invRecv35(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_9) ==> (NoPerm < FullPerm ==> invRecv35(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv35(o_9)] && (!ys[invRecv35(o_9)] && Heap[invRecv35(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange35(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1: Ref, x2: Ref ::
      { xs[x1], xs[x2] } { xs[x1], ys[x2] } { xs[x1], xs[Heap[x2, g]] } { ys[x1], xs[x2] } { ys[x1], ys[x2] } { ys[x1], xs[Heap[x2, g]] } { xs[Heap[x1, g]], xs[x2] } { xs[Heap[x1, g]], ys[x2] } { xs[Heap[x1, g]], xs[Heap[x2, g]] }
      xs[x1] && (!ys[x1] && (Heap[x1, f_7] != 0 && (!xs[Heap[x1, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1 != x2))))))) ==> Heap[x1, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@139.3--139.24) [179628]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange36(Heap[x$0_2, g]) && invRecv36(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_9: Ref ::
        { invRecv36(o_9) }
        ((xs[invRecv36(o_9)] && (!ys[invRecv36(o_9)] && (Heap[invRecv36(o_9), f_7] != 0 && !xs[Heap[invRecv36(o_9), g]]))) && NoPerm < FullPerm) && qpRange36(o_9) ==> Heap[invRecv36(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv36(o_9)] && (!ys[invRecv36(o_9)] && (Heap[invRecv36(o_9), f_7] != 0 && !xs[Heap[invRecv36(o_9), g]]))) && NoPerm < FullPerm) && qpRange36(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv36(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv36(o_9)] && (!ys[invRecv36(o_9)] && (Heap[invRecv36(o_9), f_7] != 0 && !xs[Heap[invRecv36(o_9), g]]))) && NoPerm < FullPerm) && qpRange36(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@142.3--142.20) [179629]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@145.3--145.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@145.3--145.20) [179630]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@151.3--151.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@151.3--151.24) [179633]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@151.3--151.24) [179634]"}
      (forall x$0: Ref, x$0_6: Ref ::
      
      (((x$0 != x$0_6 && (xs[x$0] && !ys[x$0])) && (xs[x$0_6] && !ys[x$0_6])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_6
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange37(x$0) && invRecv37(x$0) == x$0
      );
      assume (forall o_9: Ref ::
        { invRecv37(o_9) }
        ((xs[invRecv37(o_9)] && !ys[invRecv37(o_9)]) && NoPerm < FullPerm) && qpRange37(o_9) ==> invRecv37(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv37(o_9)] && !ys[invRecv37(o_9)]) && NoPerm < FullPerm) && qpRange37(o_9) ==> (NoPerm < FullPerm ==> invRecv37(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv37(o_9)] && !ys[invRecv37(o_9)]) && NoPerm < FullPerm) && qpRange37(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@151.3--151.24) [179635]"}
      (forall x$0_1: Ref, x$0_1_2: Ref ::
      
      (((x$0_1 != x$0_1_2 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_2] && (!ys[x$0_1_2] && Heap[x$0_1_2, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_2
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange38(x$0_1) && invRecv38(x$0_1) == x$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv38(o_9) }
        ((xs[invRecv38(o_9)] && (!ys[invRecv38(o_9)] && Heap[invRecv38(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_9) ==> invRecv38(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv38(o_9)] && (!ys[invRecv38(o_9)] && Heap[invRecv38(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_9) ==> (NoPerm < FullPerm ==> invRecv38(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv38(o_9)] && (!ys[invRecv38(o_9)] && Heap[invRecv38(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange38(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1: Ref, x2: Ref ::
      { xs[x1], xs[x2] } { xs[x1], ys[x2] } { xs[x1], xs[Heap[x2, g]] } { ys[x1], xs[x2] } { ys[x1], ys[x2] } { ys[x1], xs[Heap[x2, g]] } { xs[Heap[x1, g]], xs[x2] } { xs[Heap[x1, g]], ys[x2] } { xs[Heap[x1, g]], xs[Heap[x2, g]] }
      xs[x1] && (!ys[x1] && (Heap[x1, f_7] != 0 && (!xs[Heap[x1, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1 != x2))))))) ==> Heap[x1, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@151.3--151.24) [179636]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange39(Heap[x$0_2, g]) && invRecv39(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_9: Ref ::
        { invRecv39(o_9) }
        ((xs[invRecv39(o_9)] && (!ys[invRecv39(o_9)] && (Heap[invRecv39(o_9), f_7] != 0 && !xs[Heap[invRecv39(o_9), g]]))) && NoPerm < FullPerm) && qpRange39(o_9) ==> Heap[invRecv39(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv39(o_9)] && (!ys[invRecv39(o_9)] && (Heap[invRecv39(o_9), f_7] != 0 && !xs[Heap[invRecv39(o_9), g]]))) && NoPerm < FullPerm) && qpRange39(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv39(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv39(o_9)] && (!ys[invRecv39(o_9)] && (Heap[invRecv39(o_9), f_7] != 0 && !xs[Heap[invRecv39(o_9), g]]))) && NoPerm < FullPerm) && qpRange39(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@155.3--155.20) [179637]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale a != 0 -- generalised_shape.vpr@156.10--156.16
    assume a_2 != 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@157.3--157.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@157.3--157.20) [179638]"}
        HasDirectPerm(Mask, x, g);
    b_24 := Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.g.f -- generalised_shape.vpr@161.3--161.13
    
    // -- Check definedness of x.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@161.3--161.13) [179639]"}
        HasDirectPerm(Mask, x, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (generalised_shape.vpr@161.3--161.13) [179640]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[b_24, $allocated];
  
  // -- Translating statement: unfold acc(P(xs, ys), write) -- generalised_shape.vpr@167.3--167.24
    assume P#trigger(Heap, P(xs, ys));
    assume Heap[null, P(xs, ys)] == CombineFrames(FrameFragment(P#condqp1(Heap, xs, ys)), CombineFrames(FrameFragment(P#condqp2(Heap, xs, ys)), FrameFragment(P#condqp3(Heap, xs, ys))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(xs, ys) might fail. There might be insufficient permission to access P(xs, ys) (generalised_shape.vpr@167.3--167.24) [179643]"}
        perm <= Mask[null, P(xs, ys)];
    }
    Mask := Mask[null, P(xs, ys):=Mask[null, P(xs, ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(xs, ys))) {
        havoc newVersion;
        Heap := Heap[null, P(xs, ys):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.f might not be injective. (generalised_shape.vpr@167.3--167.24) [179644]"}
      (forall x$0: Ref, x$0_6: Ref ::
      
      (((x$0 != x$0_6 && (xs[x$0] && !ys[x$0])) && (xs[x$0_6] && !ys[x$0_6])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0 != x$0_6
    );
    
    // -- Define Inverse Function
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        (xs[x$0] && !ys[x$0]) && NoPerm < FullPerm ==> qpRange40(x$0) && invRecv40(x$0) == x$0
      );
      assume (forall o_9: Ref ::
        { invRecv40(o_9) }
        ((xs[invRecv40(o_9)] && !ys[invRecv40(o_9)]) && NoPerm < FullPerm) && qpRange40(o_9) ==> invRecv40(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0: Ref ::
        { Heap[x$0, f_7] } { QPMask[x$0, f_7] } { xs[x$0] } { ys[x$0] }
        xs[x$0] && !ys[x$0] ==> x$0 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv40(o_9)] && !ys[invRecv40(o_9)]) && NoPerm < FullPerm) && qpRange40(o_9) ==> (NoPerm < FullPerm ==> invRecv40(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv40(o_9)] && !ys[invRecv40(o_9)]) && NoPerm < FullPerm) && qpRange40(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g might not be injective. (generalised_shape.vpr@167.3--167.24) [179645]"}
      (forall x$0_1: Ref, x$0_1_2: Ref ::
      
      (((x$0_1 != x$0_1_2 && (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0))) && (xs[x$0_1_2] && (!ys[x$0_1_2] && Heap[x$0_1_2, f_7] != 0))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x$0_1 != x$0_1_2
    );
    
    // -- Define Inverse Function
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        (xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0)) && NoPerm < FullPerm ==> qpRange41(x$0_1) && invRecv41(x$0_1) == x$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv41(o_9) }
        ((xs[invRecv41(o_9)] && (!ys[invRecv41(o_9)] && Heap[invRecv41(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_9) ==> invRecv41(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_1: Ref ::
        { Heap[x$0_1, g] } { QPMask[x$0_1, g] } { xs[x$0_1] } { ys[x$0_1] }
        xs[x$0_1] && (!ys[x$0_1] && Heap[x$0_1, f_7] != 0) ==> x$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((xs[invRecv41(o_9)] && (!ys[invRecv41(o_9)] && Heap[invRecv41(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_9) ==> (NoPerm < FullPerm ==> invRecv41(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((xs[invRecv41(o_9)] && (!ys[invRecv41(o_9)] && Heap[invRecv41(o_9), f_7] != 0)) && NoPerm < FullPerm) && qpRange41(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume (forall x1: Ref, x2: Ref ::
      { xs[x1], xs[x2] } { xs[x1], ys[x2] } { xs[x1], xs[Heap[x2, g]] } { ys[x1], xs[x2] } { ys[x1], ys[x2] } { ys[x1], xs[Heap[x2, g]] } { xs[Heap[x1, g]], xs[x2] } { xs[Heap[x1, g]], ys[x2] } { xs[Heap[x1, g]], xs[Heap[x2, g]] }
      xs[x1] && (!ys[x1] && (Heap[x1, f_7] != 0 && (!xs[Heap[x1, g]] && (xs[x2] && (!ys[x2] && (Heap[x2, f_7] != 0 && (!xs[Heap[x2, g]] && x1 != x2))))))) ==> Heap[x1, g] != Heap[x2, g]
    );
    havoc QPMask;
    assert {:msg "  Unfolding P(xs, ys) might fail. Quantified resource x$0.g.f might not be injective. (generalised_shape.vpr@167.3--167.24) [179646]"}
      (forall x$0_2: Ref, x$0_2_1: Ref ::
      
      (((x$0_2 != x$0_2_1 && (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])))) && (xs[x$0_2_1] && (!ys[x$0_2_1] && (Heap[x$0_2_1, f_7] != 0 && !xs[Heap[x$0_2_1, g]])))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x$0_2, g] != Heap[x$0_2_1, g]
    );
    
    // -- Define Inverse Function
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        (xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]]))) && NoPerm < FullPerm ==> qpRange42(Heap[x$0_2, g]) && invRecv42(Heap[x$0_2, g]) == x$0_2
      );
      assume (forall o_9: Ref ::
        { invRecv42(o_9) }
        ((xs[invRecv42(o_9)] && (!ys[invRecv42(o_9)] && (Heap[invRecv42(o_9), f_7] != 0 && !xs[Heap[invRecv42(o_9), g]]))) && NoPerm < FullPerm) && qpRange42(o_9) ==> Heap[invRecv42(o_9), g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x$0_2: Ref ::
        { Heap[x$0_2, g] } { xs[x$0_2] } { ys[x$0_2] } { xs[Heap[x$0_2, g]] }
        xs[x$0_2] && (!ys[x$0_2] && (Heap[x$0_2, f_7] != 0 && !xs[Heap[x$0_2, g]])) ==> Heap[x$0_2, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((xs[invRecv42(o_9)] && (!ys[invRecv42(o_9)] && (Heap[invRecv42(o_9), f_7] != 0 && !xs[Heap[invRecv42(o_9), g]]))) && NoPerm < FullPerm) && qpRange42(o_9) ==> (NoPerm < FullPerm ==> Heap[invRecv42(o_9), g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((xs[invRecv42(o_9)] && (!ys[invRecv42(o_9)] && (Heap[invRecv42(o_9), f_7] != 0 && !xs[Heap[invRecv42(o_9), g]]))) && NoPerm < FullPerm) && qpRange42(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (generalised_shape.vpr@171.3--171.20) [179647]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale a != 0 -- generalised_shape.vpr@172.10--172.16
    assume a_2 != 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: b := x.g -- generalised_shape.vpr@173.3--173.20
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@173.3--173.20) [179648]"}
        HasDirectPerm(Mask, x, g);
    b_24 := Heap[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !((x.g in xs)) -- generalised_shape.vpr@174.10--174.22
    
    // -- Check definedness of !((x.g in xs))
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@174.10--174.22) [179649]"}
        HasDirectPerm(Mask, x, g);
    assume !xs[Heap[x, g]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.g != null -- generalised_shape.vpr@175.10--175.21
    
    // -- Check definedness of x.g != null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@175.10--175.21) [179650]"}
        HasDirectPerm(Mask, x, g);
    assume Heap[x, g] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.g.f -- generalised_shape.vpr@176.3--176.13
    
    // -- Check definedness of x.g.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (generalised_shape.vpr@176.3--176.13) [179651]"}
        HasDirectPerm(Mask, x, g);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g.f (generalised_shape.vpr@176.3--176.13) [179652]"}
        HasDirectPerm(Mask, Heap[x, g], f_7);
    a_2 := Heap[Heap[x, g], f_7];
    assume state(Heap, Mask);
}