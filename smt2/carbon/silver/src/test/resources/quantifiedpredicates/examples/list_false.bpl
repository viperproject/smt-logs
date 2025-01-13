// 
// Translation of Viper program.
// 
// Date:         2025-01-13 12:56:50
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/examples/list_false.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/examples/list_false-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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

function  neverTriggered1(r_1_1: Ref): bool;
function  neverTriggered2(r_5: Ref): bool;
function  neverTriggered3(r_10_1: Ref): bool;
function  neverTriggered4(r_14: Ref): bool;
function  neverTriggered5(r_16: Ref): bool;
function  neverTriggered6(r_17: Ref): bool;
function  neverTriggered7(r_19: Ref): bool;
function  neverTriggered8(r_25: Ref): bool;
function  neverTriggered9(r_29: Ref): bool;
function  neverTriggered10(r_31: Ref): bool;
function  neverTriggered11(r_35: Ref): bool;
function  neverTriggered12(r_40: Ref): bool;
function  neverTriggered13(r_43: Ref): bool;
function  neverTriggered14(r_44: Ref): bool;
function  neverTriggered15(r_47: Ref): bool;
function  neverTriggered16(r_52: Ref): bool;
function  neverTriggered17(r_54: Ref): bool;
function  neverTriggered18(r_55: Ref): bool;
function  neverTriggered19(r_57: Ref): bool;
function  neverTriggered20(r_62: Ref): bool;
function  neverTriggered21(r_65: Ref): bool;
function  neverTriggered22(r_66: Ref): bool;
function  neverTriggered23(r_69: Ref): bool;
function  neverTriggered24(r_72: Ref): bool;
function  neverTriggered25(r_74: Ref): bool;
function  neverTriggered26(r_78: Ref): bool;
function  neverTriggered27(r_82: Ref): bool;
function  neverTriggered28(r_85: Ref): bool;
function  neverTriggered29(r_86: Ref): bool;
function  neverTriggered30(r_91: Ref): bool;
function  neverTriggered31(r_97: Ref): bool;
function  neverTriggered32(r_101: Ref): bool;
function  neverTriggered33(r_103: Ref): bool;
function  neverTriggered34(r_108: Ref): bool;
function  neverTriggered35(r_112: Ref): bool;
function  neverTriggered36(r_114: Ref): bool;
function  neverTriggered37(r_115: Ref): bool;
function  neverTriggered38(r_119: Ref): bool;
function  neverTriggered39(r_123: Ref): bool;
function  neverTriggered40(r_126: Ref): bool;
function  neverTriggered41(r_127: Ref): bool;
function  neverTriggered42(r_131: Ref): bool;
function  neverTriggered43(r_135: Ref): bool;
function  neverTriggered44(r_137: Ref): bool;
function  neverTriggered45(r_138: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(r_2_1_1: Ref, i: int): Ref;
function  invRecv2(r_6_1_1: Ref, i_1: int): Ref;
function  invRecv3(r_11_1: Ref, i_2_1: int): Ref;
function  invRecv4(r_15_1: Ref, i_3: int): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(r_18_1: Ref, i_4_1: int): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(r_26_1: Ref, i_5: int): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(r_32_1: Ref, i_6_1: int): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(r_41_1: Ref, i_7_1: int): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(r_45_1: Ref, i_8_2: int): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(r_53_1: Ref, i_9_1: int): Ref;
function  invRecv17(recv: Ref): Ref;
function  invRecv18(r_56_1: Ref, i_10_1: int): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(r_63_1: Ref, i_11_1: int): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(r_67_1: Ref, i_12_1: int): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(r_73_1: Ref, i_13_1: int): Ref;
function  invRecv25(r_75_1: Ref, i_14_1: int): Ref;
function  invRecv26(r_79_1: Ref, i_15: int): Ref;
function  invRecv27(recv: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(r_87_1: Ref, i_16_1: int): Ref;
function  invRecv30(r_92_1: Ref, i_17: int): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): Ref;
function  invRecv33(r_104_1: Ref, i_18_1: int): Ref;
function  invRecv34(r_109_1: Ref, i_19: int): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(recv: Ref): Ref;
function  invRecv37(r_116_1: Ref, i_20_1: int): Ref;
function  invRecv38(r_120_1: Ref, i_21: int): Ref;
function  invRecv39(recv: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
function  invRecv41(r_128_1: Ref, i_22_1: int): Ref;
function  invRecv42(r_132_1: Ref, i_23: int): Ref;
function  invRecv43(recv: Ref): Ref;
function  invRecv44(recv: Ref): Ref;
function  invRecv45(r_139_1: Ref, i_24_1: int): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(r_2_1_1: Ref, i: int): bool;
function  qpRange2(r_6_1_1: Ref, i_1: int): bool;
function  qpRange3(r_11_1: Ref, i_2_1: int): bool;
function  qpRange4(r_15_1: Ref, i_3: int): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(r_18_1: Ref, i_4_1: int): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(r_26_1: Ref, i_5: int): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(r_32_1: Ref, i_6_1: int): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(r_41_1: Ref, i_7_1: int): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(r_45_1: Ref, i_8_2: int): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(r_53_1: Ref, i_9_1: int): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(r_56_1: Ref, i_10_1: int): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(r_63_1: Ref, i_11_1: int): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(r_67_1: Ref, i_12_1: int): bool;
function  qpRange23(recv: Ref): bool;
function  qpRange24(r_73_1: Ref, i_13_1: int): bool;
function  qpRange25(r_75_1: Ref, i_14_1: int): bool;
function  qpRange26(r_79_1: Ref, i_15: int): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(r_87_1: Ref, i_16_1: int): bool;
function  qpRange30(r_92_1: Ref, i_17: int): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;
function  qpRange33(r_104_1: Ref, i_18_1: int): bool;
function  qpRange34(r_109_1: Ref, i_19: int): bool;
function  qpRange35(recv: Ref): bool;
function  qpRange36(recv: Ref): bool;
function  qpRange37(r_116_1: Ref, i_20_1: int): bool;
function  qpRange38(r_120_1: Ref, i_21: int): bool;
function  qpRange39(recv: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(r_128_1: Ref, i_22_1: int): bool;
function  qpRange42(r_132_1: Ref, i_23: int): bool;
function  qpRange43(recv: Ref): bool;
function  qpRange44(recv: Ref): bool;
function  qpRange45(r_139_1: Ref, i_24_1: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: allSet
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

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function allSet
// ==================================================

// Uninterpreted function definitions
function  allSet(Heap: HeapType, r_1: Ref, i: int, v_2: int): bool;
function  allSet'(Heap: HeapType, r_1: Ref, i: int, v_2: int): bool;
axiom (forall Heap: HeapType, r_1: Ref, i: int, v_2: int ::
  { allSet(Heap, r_1, i, v_2) }
  allSet(Heap, r_1, i, v_2) == allSet'(Heap, r_1, i, v_2) && dummyFunction(allSet#triggerStateless(r_1, i, v_2))
);
axiom (forall Heap: HeapType, r_1: Ref, i: int, v_2: int ::
  { allSet'(Heap, r_1, i, v_2) }
  dummyFunction(allSet#triggerStateless(r_1, i, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int, v_2: int ::
  { state(Heap, Mask), allSet(Heap, r_1, i, v_2) } { state(Heap, Mask), allSet#triggerStateless(r_1, i, v_2), list#trigger(Heap, list(r_1, i)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> allSet(Heap, r_1, i, v_2) == (i <= 0 || (Heap[r_1, val] == v_2 && allSet'(Heap, Heap[r_1, next], i - 1, v_2)))
);

// Framing axioms
function  allSet#frame(frame: FrameType, r_1: Ref, i: int, v_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref, i: int, v_2: int ::
  { state(Heap, Mask), allSet'(Heap, r_1, i, v_2) } { state(Heap, Mask), allSet#triggerStateless(r_1, i, v_2), list#trigger(Heap, list(r_1, i)) }
  state(Heap, Mask) ==> allSet'(Heap, r_1, i, v_2) == allSet#frame(Heap[null, list(r_1, i)], r_1, i, v_2)
);

// Trigger function (controlling recursive postconditions)
function  allSet#trigger(frame: FrameType, r_1: Ref, i: int, v_2: int): bool;

// State-independent trigger function
function  allSet#triggerStateless(r_1: Ref, i: int, v_2: int): bool;

// Check contract well-formedness and postcondition
procedure allSet#definedness(r_1: Ref, i: int, v_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(r_1, i):=Mask[null, list(r_1, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i <= 0 ? true : (unfolding acc(list(r, i), write) in r.val == v && allSet(r.next, i - 1, v)))
      if (i <= 0) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume list#trigger(UnfoldingHeap, list(r_1, i));
        assume UnfoldingHeap[null, list(r_1, i)] == FrameFragment((if i > 0 then CombineFrames(FrameFragment(UnfoldingHeap[r_1, val]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], i - 1)])) else EmptyFrame));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list(r, i) (list_false.vpr@13.1--21.2) [105645]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(r_1, i)];
        if (i > 0) {
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, val:=UnfoldingMask[r_1, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, list(UnfoldingHeap[r_1, next], i - 1):=UnfoldingMask[null, list(UnfoldingHeap[r_1, next], i - 1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(list(r_1, i), UnfoldingHeap[null, list(r_1, i)], list(UnfoldingHeap[r_1, next], i - 1), UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], i - 1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.val (list_false.vpr@13.1--21.2) [105646]"}
          HasDirectPerm(UnfoldingMask, r_1, val);
        if (UnfoldingHeap[r_1, val] == v_2) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.next (list_false.vpr@13.1--21.2) [105647]"}
            HasDirectPerm(UnfoldingMask, r_1, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function allSet might not hold. There might be insufficient permission to access list(r.next, i - 1) (list_false.vpr@19.37--19.59) [105648]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, list(UnfoldingHeap[r_1, next], i - 1)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume allSet#trigger(UnfoldingHeap[null, list(UnfoldingHeap[r_1, next], i - 1)], UnfoldingHeap[r_1, next], i - 1, v_2);
          }
        }
        
        // -- Free assumptions (exp module)
          if (i > 0) {
            Heap := Heap[null, list#sm(r_1, i):=Heap[null, list#sm(r_1, i)][r_1, val:=true]];
            Heap := Heap[null, list#sm(r_1, i):=Heap[null, list#sm(r_1, i)][r_1, next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, list#sm(r_1, i)][o_15, f_20] || Heap[null, list#sm(Heap[r_1, next], i - 1)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, list#sm(r_1, i):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := i <= 0 || (Heap[r_1, val] == v_2 && allSet(Heap, Heap[r_1, next], i - 1, v_2));
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(r_1: Ref, i: int): Field PredicateType_list FrameType;
function  list#sm(r_1: Ref, i: int): Field PredicateType_list PMaskType;
axiom (forall r_1: Ref, i: int ::
  { PredicateMaskField(list(r_1, i)) }
  PredicateMaskField(list(r_1, i)) == list#sm(r_1, i)
);
axiom (forall r_1: Ref, i: int ::
  { list(r_1, i) }
  IsPredicateField(list(r_1, i))
);
axiom (forall r_1: Ref, i: int ::
  { list(r_1, i) }
  getPredWandId(list(r_1, i)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { list(r_1, i), list(r2, i2_1) }
  list(r_1, i) == list(r2, i2_1) ==> r_1 == r2 && i == i2_1
);
axiom (forall r_1: Ref, i: int, r2: Ref, i2_1: int ::
  { list#sm(r_1, i), list#sm(r2, i2_1) }
  list#sm(r_1, i) == list#sm(r2, i2_1) ==> r_1 == r2 && i == i2_1
);

axiom (forall Heap: HeapType, r_1: Ref, i: int ::
  { list#trigger(Heap, list(r_1, i)) }
  list#everUsed(list(r_1, i))
);

procedure list#definedness(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    if (i > 0) {
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, val:=Mask[r_1, val] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(list(r.next, i - 1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (list_false.vpr@7.1--10.2) [105649]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[r_1, next], i - 1):=Mask[null, list(Heap[r_1, next], i - 1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(lists: (Set Ref), length_2: int, v_2: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var r_12: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var s_2: (Set Ref);
  var sNext: (Set Ref);
  var r_20: Ref;
  var r_22: Ref;
  var r1: Ref;
  var r2: Ref;
  var r_13: Ref;
  var r_15: Ref;
  var r1_1: Ref;
  var r2_1: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var l_2: Ref;
  var newVersion: FrameType;
  var r_18: Ref;
  var r_58: Ref;
  var r_60: Ref;
  var r1_5: Ref;
  var r2_5: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_length: int;
  var r_80: Ref;
  var r_83: Ref;
  var r1_8: Ref;
  var r2_8: Ref;
  var r_88: Ref;
  var r_21: Ref;
  var r_23: Ref;
  var r1_2: Ref;
  var r2_2: Ref;
  var r_24: Ref;
  var r_26: Ref;
  var l2_2: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var r_121: Ref;
  var r_124: Ref;
  var r1_13: Ref;
  var r2_13: Ref;
  var r_129: Ref;
  var r_12_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume length_2 > 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall r: Ref :: { (r in lists) } (r in lists) ==> acc(list(r, length), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(list(r, length), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length) might not be injective. (list_false.vpr@25.10--25.62) [105650]"}
        (forall r_1_1: Ref, r_1_2: Ref ::
        { neverTriggered1(r_1_1), neverTriggered1(r_1_2) }
        (((r_1_1 != r_1_2 && lists[r_1_1]) && lists[r_1_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1_1 != r_1_2 || length_2 != length_2
      );
    
    // -- Define Inverse Function
      assume (forall r_1_1: Ref ::
        { Heap[null, list(r_1_1, length_2)] } { Mask[null, list(r_1_1, length_2)] } { lists[r_1_1] }
        lists[r_1_1] && NoPerm < FullPerm ==> invRecv1(r_1_1, length_2) == r_1_1 && qpRange1(r_1_1, length_2)
      );
      assume (forall r_2_1_1: Ref, i: int ::
        { invRecv1(r_2_1_1, i) }
        (lists[invRecv1(r_2_1_1, i)] && NoPerm < FullPerm) && qpRange1(r_2_1_1, i) ==> invRecv1(r_2_1_1, i) == r_2_1_1 && length_2 == i
      );
    
    // -- Define updated permissions
      assume (forall r_2_1_1: Ref, i: int ::
        { QPMask[null, list(r_2_1_1, i)] }
        (lists[invRecv1(r_2_1_1, i)] && NoPerm < FullPerm) && qpRange1(r_2_1_1, i) ==> (NoPerm < FullPerm ==> invRecv1(r_2_1_1, i) == r_2_1_1 && length_2 == i) && QPMask[null, list(r_2_1_1, i)] == Mask[null, list(r_2_1_1, i)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_2_1_1: Ref, i: int ::
        { QPMask[null, list(r_2_1_1, i)] }
        !((lists[invRecv1(r_2_1_1, i)] && NoPerm < FullPerm) && qpRange1(r_2_1_1, i)) ==> QPMask[null, list(r_2_1_1, i)] == Mask[null, list(r_2_1_1, i)]
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
    
    // -- Check definedness of (forall r: Ref :: { (r in lists) } (r in lists) ==> acc(list(r, length), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(list(r, length), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length) might not be injective. (list_false.vpr@26.9--26.85) [105651]"}
        (forall r_5: Ref, r_5_1: Ref ::
        { neverTriggered2(r_5), neverTriggered2(r_5_1) }
        (((r_5 != r_5_1 && lists[r_5]) && lists[r_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_5 != r_5_1 || length_2 != length_2
      );
    
    // -- Define Inverse Function
      assume (forall r_5: Ref ::
        { PostHeap[null, list(r_5, length_2)] } { PostMask[null, list(r_5, length_2)] } { lists[r_5] }
        lists[r_5] && NoPerm < FullPerm ==> invRecv2(r_5, length_2) == r_5 && qpRange2(r_5, length_2)
      );
      assume (forall r_6_1_1: Ref, i_1: int ::
        { invRecv2(r_6_1_1, i_1) }
        (lists[invRecv2(r_6_1_1, i_1)] && NoPerm < FullPerm) && qpRange2(r_6_1_1, i_1) ==> invRecv2(r_6_1_1, i_1) == r_6_1_1 && length_2 == i_1
      );
    
    // -- Define updated permissions
      assume (forall r_6_1_1: Ref, i_1: int ::
        { QPMask[null, list(r_6_1_1, i_1)] }
        (lists[invRecv2(r_6_1_1, i_1)] && NoPerm < FullPerm) && qpRange2(r_6_1_1, i_1) ==> (NoPerm < FullPerm ==> invRecv2(r_6_1_1, i_1) == r_6_1_1 && length_2 == i_1) && QPMask[null, list(r_6_1_1, i_1)] == PostMask[null, list(r_6_1_1, i_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall r_6_1_1: Ref, i_1: int ::
        { QPMask[null, list(r_6_1_1, i_1)] }
        !((lists[invRecv2(r_6_1_1, i_1)] && NoPerm < FullPerm) && qpRange2(r_6_1_1, i_1)) ==> QPMask[null, list(r_6_1_1, i_1)] == PostMask[null, list(r_6_1_1, i_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall r: Ref :: { (r in lists) } { allSet(r, length, v) } (r in lists) ==> allSet(r, length, v))
      if (*) {
        if (lists[r_12]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function allSet might not hold. There might be insufficient permission to access list(r, length) (list_false.vpr@26.65--26.85) [105652]"}
              NoPerm < perm ==> NoPerm < PostMask[null, list(r_12, length_2)];
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
    assume (forall r_9: Ref ::
      { lists[r_9] } { allSet#frame(PostHeap[null, list(r_9, length_2)], r_9, length_2, v_2) }
      lists[r_9] ==> allSet(PostHeap, r_9, length_2, v_2)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: s := lists -- list_false.vpr@28.5--28.29
    s_2 := lists;
    assume state(Heap, Mask);
  
  // -- Translating statement: sNext := Set[Ref]() -- list_false.vpr@29.5--29.38
    sNext := (Set#Empty(): Set Ref);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (|s| > 0) -- list_false.vpr@30.5--46.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r, length), write)) might not hold on entry. Quantified resource list(r, length) might not be injective. (list_false.vpr@31.15--31.63) [105653]"}
            (forall r_14: Ref, r_14_1: Ref ::
            { neverTriggered4(r_14), neverTriggered4(r_14_1) }
            (((r_14 != r_14_1 && s_2[r_14]) && s_2[r_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_14 != r_14_1 || length_2 != length_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r, length), write)) might not hold on entry. There might be insufficient permission to access list(r, length) (list_false.vpr@31.15--31.63) [105654]"}
            (forall r_14: Ref ::
            { Heap[null, list(r_14, length_2)] } { Mask[null, list(r_14, length_2)] } { s_2[r_14] }
            s_2[r_14] ==> Mask[null, list(r_14, length_2)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length), write)
          assume (forall r_14: Ref ::
            { Heap[null, list(r_14, length_2)] } { Mask[null, list(r_14, length_2)] } { s_2[r_14] }
            s_2[r_14] && NoPerm < FullPerm ==> invRecv4(r_14, length_2) == r_14 && qpRange4(r_14, length_2)
          );
          assume (forall r_15_1: Ref, i_3: int ::
            { invRecv4(r_15_1, i_3) }
            (s_2[invRecv4(r_15_1, i_3)] && NoPerm < FullPerm) && qpRange4(r_15_1, i_3) ==> invRecv4(r_15_1, i_3) == r_15_1 && length_2 == i_3
          );
        
        // -- assume permission updates
          assume (forall r_15_1: Ref, i_3: int ::
            { QPMask[null, list(r_15_1, i_3)] }
            (s_2[invRecv4(r_15_1, i_3)] && NoPerm < FullPerm) && qpRange4(r_15_1, i_3) ==> (invRecv4(r_15_1, i_3) == r_15_1 && length_2 == i_3) && QPMask[null, list(r_15_1, i_3)] == Mask[null, list(r_15_1, i_3)] - FullPerm
          );
          assume (forall r_15_1: Ref, i_3: int ::
            { QPMask[null, list(r_15_1, i_3)] }
            !((s_2[invRecv4(r_15_1, i_3)] && NoPerm < FullPerm) && qpRange4(r_15_1, i_3)) ==> QPMask[null, list(r_15_1, i_3)] == Mask[null, list(r_15_1, i_3)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.next, write)) might not hold on entry. Quantified resource r.next might not be injective. (list_false.vpr@32.15--32.71) [105655]"}
            (forall r_16: Ref, r_16_1: Ref ::
            { neverTriggered5(r_16), neverTriggered5(r_16_1) }
            (((r_16 != r_16_1 && (lists[r_16] && !s_2[r_16])) && (lists[r_16_1] && !s_2[r_16_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_16 != r_16_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.next, write)) might not hold on entry. There might be insufficient permission to access r.next (list_false.vpr@32.15--32.71) [105656]"}
            (forall r_16: Ref ::
            { Heap[r_16, next] } { QPMask[r_16, next] } { lists[r_16] } { s_2[r_16] }
            lists[r_16] && !s_2[r_16] ==> Mask[r_16, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_16: Ref ::
            { Heap[r_16, next] } { QPMask[r_16, next] } { lists[r_16] } { s_2[r_16] }
            (lists[r_16] && !s_2[r_16]) && NoPerm < FullPerm ==> qpRange5(r_16) && invRecv5(r_16) == r_16
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (lists[invRecv5(o_4)] && !s_2[invRecv5(o_4)]) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((lists[invRecv5(o_4)] && !s_2[invRecv5(o_4)]) && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!((lists[invRecv5(o_4)] && !s_2[invRecv5(o_4)]) && (NoPerm < FullPerm && qpRange5(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length - 1), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in sNext) } (r in sNext) ==> acc(list(r, length - 1), write)) might not hold on entry. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@33.15--33.69) [105657]"}
            (forall r_17: Ref, r_17_1: Ref ::
            { neverTriggered6(r_17), neverTriggered6(r_17_1) }
            (((r_17 != r_17_1 && sNext[r_17]) && sNext[r_17_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_17 != r_17_1 || length_2 - 1 != length_2 - 1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in sNext) } (r in sNext) ==> acc(list(r, length - 1), write)) might not hold on entry. There might be insufficient permission to access list(r, length - 1) (list_false.vpr@33.15--33.69) [105658]"}
            (forall r_17: Ref ::
            { sNext[r_17] }
            sNext[r_17] ==> Mask[null, list(r_17, length_2 - 1)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length - 1), write)
          assume (forall r_17: Ref ::
            { sNext[r_17] }
            sNext[r_17] && NoPerm < FullPerm ==> invRecv6(r_17, length_2 - 1) == r_17 && qpRange6(r_17, length_2 - 1)
          );
          assume (forall r_18_1: Ref, i_4_1: int ::
            { invRecv6(r_18_1, i_4_1) }
            (sNext[invRecv6(r_18_1, i_4_1)] && NoPerm < FullPerm) && qpRange6(r_18_1, i_4_1) ==> invRecv6(r_18_1, i_4_1) == r_18_1 && length_2 - 1 == i_4_1
          );
        
        // -- assume permission updates
          assume (forall r_18_1: Ref, i_4_1: int ::
            { QPMask[null, list(r_18_1, i_4_1)] }
            (sNext[invRecv6(r_18_1, i_4_1)] && NoPerm < FullPerm) && qpRange6(r_18_1, i_4_1) ==> (invRecv6(r_18_1, i_4_1) == r_18_1 && length_2 - 1 == i_4_1) && QPMask[null, list(r_18_1, i_4_1)] == Mask[null, list(r_18_1, i_4_1)] - FullPerm
          );
          assume (forall r_18_1: Ref, i_4_1: int ::
            { QPMask[null, list(r_18_1, i_4_1)] }
            !((sNext[invRecv6(r_18_1, i_4_1)] && NoPerm < FullPerm) && qpRange6(r_18_1, i_4_1)) ==> QPMask[null, list(r_18_1, i_4_1)] == Mask[null, list(r_18_1, i_4_1)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not hold on entry. Quantified resource r.val might not be injective. (list_false.vpr@34.15--34.84) [105659]"}
            (forall r_19: Ref, r_19_1: Ref ::
            { neverTriggered7(r_19), neverTriggered7(r_19_1) }
            (((r_19 != r_19_1 && (lists[r_19] && !s_2[r_19])) && (lists[r_19_1] && !s_2[r_19_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_19 != r_19_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not hold on entry. There might be insufficient permission to access r.val (list_false.vpr@34.15--34.84) [105660]"}
            (forall r_19: Ref ::
            { Heap[r_19, val] } { QPMask[r_19, val] } { lists[r_19] } { s_2[r_19] }
            lists[r_19] && !s_2[r_19] ==> Mask[r_19, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_19: Ref ::
            { Heap[r_19, val] } { QPMask[r_19, val] } { lists[r_19] } { s_2[r_19] }
            (lists[r_19] && !s_2[r_19]) && NoPerm < FullPerm ==> qpRange7(r_19) && invRecv7(r_19) == r_19
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            (lists[invRecv7(o_4)] && !s_2[invRecv7(o_4)]) && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((lists[invRecv7(o_4)] && !s_2[invRecv7(o_4)]) && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((lists[invRecv7(o_4)] && !s_2[invRecv7(o_4)]) && (NoPerm < FullPerm && qpRange7(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (lists[r_20] && !s_2[r_20]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not hold on entry. Assertion r.val == v might not hold. (list_false.vpr@34.15--34.84) [105661]"}
              Heap[r_20, val] == v_2;
          }
          assume false;
        }
        assume (forall r_21_1: Ref ::
          { lists[r_21_1] } { s_2[r_21_1] }
          lists[r_21_1] && !s_2[r_21_1] ==> Heap[r_21_1, val] == v_2
        );
        if (*) {
          if (lists[r_22] && !s_2[r_22]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext)) might not hold on entry. Assertion (r.next in sNext) might not hold. (list_false.vpr@35.15--35.75) [105662]"}
              sNext[Heap[r_22, next]];
          }
          assume false;
        }
        assume (forall r_23_1: Ref ::
          { lists[r_23_1] } { s_2[r_23_1] } { sNext[Heap[r_23_1, next]] }
          lists[r_23_1] && !s_2[r_23_1] ==> sNext[Heap[r_23_1, next]]
        );
        if (*) {
          if (lists[r1] && (!s_2[r1] && (lists[r2] && (!s_2[r2] && r1 != r2)))) {
            assert {:msg "  Loop invariant (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next) might not hold on entry. Assertion r1.next != r2.next might not hold. (list_false.vpr@36.15--36.131) [105663]"}
              Heap[r1, next] != Heap[r2, next];
          }
          assume false;
        }
        assume (forall r1_1_1: Ref, r2_1_1: Ref ::
          { lists[r1_1_1], lists[r2_1_1] } { lists[r1_1_1], s_2[r2_1_1] } { s_2[r1_1_1], lists[r2_1_1] } { s_2[r1_1_1], s_2[r2_1_1] }
          lists[r1_1_1] && (!s_2[r1_1_1] && (lists[r2_1_1] && (!s_2[r2_1_1] && r1_1_1 != r2_1_1))) ==> Heap[r1_1_1, next] != Heap[r2_1_1, next]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc sNext, s_2;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r, length), write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length) might not be injective. (list_false.vpr@31.15--31.63) [105664]"}
            (forall r_25: Ref, r_25_1: Ref ::
            { neverTriggered8(r_25), neverTriggered8(r_25_1) }
            (((r_25 != r_25_1 && s_2[r_25]) && s_2[r_25_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_25 != r_25_1 || length_2 != length_2
          );
        
        // -- Define Inverse Function
          assume (forall r_25: Ref ::
            { Heap[null, list(r_25, length_2)] } { Mask[null, list(r_25, length_2)] } { s_2[r_25] }
            s_2[r_25] && NoPerm < FullPerm ==> invRecv8(r_25, length_2) == r_25 && qpRange8(r_25, length_2)
          );
          assume (forall r_26_1: Ref, i_5: int ::
            { invRecv8(r_26_1, i_5) }
            (s_2[invRecv8(r_26_1, i_5)] && NoPerm < FullPerm) && qpRange8(r_26_1, i_5) ==> invRecv8(r_26_1, i_5) == r_26_1 && length_2 == i_5
          );
        
        // -- Define updated permissions
          assume (forall r_26_1: Ref, i_5: int ::
            { QPMask[null, list(r_26_1, i_5)] }
            (s_2[invRecv8(r_26_1, i_5)] && NoPerm < FullPerm) && qpRange8(r_26_1, i_5) ==> (NoPerm < FullPerm ==> invRecv8(r_26_1, i_5) == r_26_1 && length_2 == i_5) && QPMask[null, list(r_26_1, i_5)] == Mask[null, list(r_26_1, i_5)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_26_1: Ref, i_5: int ::
            { QPMask[null, list(r_26_1, i_5)] }
            !((s_2[invRecv8(r_26_1, i_5)] && NoPerm < FullPerm) && qpRange8(r_26_1, i_5)) ==> QPMask[null, list(r_26_1, i_5)] == Mask[null, list(r_26_1, i_5)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource r.next might not be injective. (list_false.vpr@32.15--32.71) [105665]"}
          (forall r_29: Ref, r_29_1: Ref ::
          
          (((r_29 != r_29_1 && (lists[r_29] && !s_2[r_29])) && (lists[r_29_1] && !s_2[r_29_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_29 != r_29_1
        );
        
        // -- Define Inverse Function
          assume (forall r_29: Ref ::
            { Heap[r_29, next] } { QPMask[r_29, next] } { lists[r_29] } { s_2[r_29] }
            (lists[r_29] && !s_2[r_29]) && NoPerm < FullPerm ==> qpRange9(r_29) && invRecv9(r_29) == r_29
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            ((lists[invRecv9(o_4)] && !s_2[invRecv9(o_4)]) && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_29: Ref ::
            { Heap[r_29, next] } { QPMask[r_29, next] } { lists[r_29] } { s_2[r_29] }
            lists[r_29] && !s_2[r_29] ==> r_29 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (((lists[invRecv9(o_4)] && !s_2[invRecv9(o_4)]) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!(((lists[invRecv9(o_4)] && !s_2[invRecv9(o_4)]) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in sNext) } (r in sNext) ==> acc(list(r, length - 1), write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length - 1), write) is injective
          assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@33.15--33.69) [105666]"}
            (forall r_31: Ref, r_31_1: Ref ::
            { neverTriggered10(r_31), neverTriggered10(r_31_1) }
            (((r_31 != r_31_1 && sNext[r_31]) && sNext[r_31_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_31 != r_31_1 || length_2 - 1 != length_2 - 1
          );
        
        // -- Define Inverse Function
          assume (forall r_31: Ref ::
            { sNext[r_31] }
            sNext[r_31] && NoPerm < FullPerm ==> invRecv10(r_31, length_2 - 1) == r_31 && qpRange10(r_31, length_2 - 1)
          );
          assume (forall r_32_1: Ref, i_6_1: int ::
            { invRecv10(r_32_1, i_6_1) }
            (sNext[invRecv10(r_32_1, i_6_1)] && NoPerm < FullPerm) && qpRange10(r_32_1, i_6_1) ==> invRecv10(r_32_1, i_6_1) == r_32_1 && length_2 - 1 == i_6_1
          );
        
        // -- Define updated permissions
          assume (forall r_32_1: Ref, i_6_1: int ::
            { QPMask[null, list(r_32_1, i_6_1)] }
            (sNext[invRecv10(r_32_1, i_6_1)] && NoPerm < FullPerm) && qpRange10(r_32_1, i_6_1) ==> (NoPerm < FullPerm ==> invRecv10(r_32_1, i_6_1) == r_32_1 && length_2 - 1 == i_6_1) && QPMask[null, list(r_32_1, i_6_1)] == Mask[null, list(r_32_1, i_6_1)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_32_1: Ref, i_6_1: int ::
            { QPMask[null, list(r_32_1, i_6_1)] }
            !((sNext[invRecv10(r_32_1, i_6_1)] && NoPerm < FullPerm) && qpRange10(r_32_1, i_6_1)) ==> QPMask[null, list(r_32_1, i_6_1)] == Mask[null, list(r_32_1, i_6_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource r.val might not be injective. (list_false.vpr@34.15--34.84) [105667]"}
          (forall r_35: Ref, r_35_1: Ref ::
          
          (((r_35 != r_35_1 && (lists[r_35] && !s_2[r_35])) && (lists[r_35_1] && !s_2[r_35_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_35 != r_35_1
        );
        
        // -- Define Inverse Function
          assume (forall r_35: Ref ::
            { Heap[r_35, val] } { QPMask[r_35, val] } { lists[r_35] } { s_2[r_35] }
            (lists[r_35] && !s_2[r_35]) && NoPerm < FullPerm ==> qpRange11(r_35) && invRecv11(r_35) == r_35
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            ((lists[invRecv11(o_4)] && !s_2[invRecv11(o_4)]) && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_35: Ref ::
            { Heap[r_35, val] } { QPMask[r_35, val] } { lists[r_35] } { s_2[r_35] }
            lists[r_35] && !s_2[r_35] ==> r_35 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((lists[invRecv11(o_4)] && !s_2[invRecv11(o_4)]) && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((lists[invRecv11(o_4)] && !s_2[invRecv11(o_4)]) && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v)
          if (*) {
            if (lists[r_13] && !s_2[r_13]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.val (list_false.vpr@34.15--34.84) [105668]"}
                HasDirectPerm(Mask, r_13, val);
            }
            assume false;
          }
        assume (forall r_37: Ref ::
          { lists[r_37] } { s_2[r_37] }
          lists[r_37] && !s_2[r_37] ==> Heap[r_37, val] == v_2
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext))
          if (*) {
            if (lists[r_15] && !s_2[r_15]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.next (list_false.vpr@35.15--35.75) [105669]"}
                HasDirectPerm(Mask, r_15, next);
            }
            assume false;
          }
        assume (forall r_39: Ref ::
          { lists[r_39] } { s_2[r_39] } { sNext[Heap[r_39, next]] }
          lists[r_39] && !s_2[r_39] ==> sNext[Heap[r_39, next]]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next)
          if (*) {
            if (lists[r1_1] && (!s_2[r1_1] && (lists[r2_1] && (!s_2[r2_1] && r1_1 != r2_1)))) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r1.next (list_false.vpr@36.15--36.131) [105670]"}
                HasDirectPerm(Mask, r1_1, next);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r2.next (list_false.vpr@36.15--36.131) [105671]"}
                HasDirectPerm(Mask, r2_1, next);
            }
            assume false;
          }
        assume (forall r1_3: Ref, r2_3: Ref ::
          { lists[r1_3], lists[r2_3] } { lists[r1_3], s_2[r2_3] } { s_2[r1_3], lists[r2_3] } { s_2[r1_3], s_2[r2_3] }
          lists[r1_3] && (!s_2[r1_3] && (lists[r2_3] && (!s_2[r2_3] && r1_3 != r2_3))) ==> Heap[r1_3, next] != Heap[r2_3, next]
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  While statement might fail. Quantified resource list(r, length) might not be injective. (list_false.vpr@31.15--31.63) [105672]"}
            (forall r_40: Ref, r_40_1: Ref ::
            { neverTriggered12(r_40), neverTriggered12(r_40_1) }
            (((r_40 != r_40_1 && s_2[r_40]) && s_2[r_40_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_40 != r_40_1 || length_2 != length_2
          );
        
        // -- Define Inverse Function
          assume (forall r_40: Ref ::
            { Heap[null, list(r_40, length_2)] } { Mask[null, list(r_40, length_2)] } { s_2[r_40] }
            s_2[r_40] && NoPerm < FullPerm ==> invRecv12(r_40, length_2) == r_40 && qpRange12(r_40, length_2)
          );
          assume (forall r_41_1: Ref, i_7_1: int ::
            { invRecv12(r_41_1, i_7_1) }
            (s_2[invRecv12(r_41_1, i_7_1)] && NoPerm < FullPerm) && qpRange12(r_41_1, i_7_1) ==> invRecv12(r_41_1, i_7_1) == r_41_1 && length_2 == i_7_1
          );
        
        // -- Define updated permissions
          assume (forall r_41_1: Ref, i_7_1: int ::
            { QPMask[null, list(r_41_1, i_7_1)] }
            (s_2[invRecv12(r_41_1, i_7_1)] && NoPerm < FullPerm) && qpRange12(r_41_1, i_7_1) ==> (NoPerm < FullPerm ==> invRecv12(r_41_1, i_7_1) == r_41_1 && length_2 == i_7_1) && QPMask[null, list(r_41_1, i_7_1)] == Mask[null, list(r_41_1, i_7_1)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_41_1: Ref, i_7_1: int ::
            { QPMask[null, list(r_41_1, i_7_1)] }
            !((s_2[invRecv12(r_41_1, i_7_1)] && NoPerm < FullPerm) && qpRange12(r_41_1, i_7_1)) ==> QPMask[null, list(r_41_1, i_7_1)] == Mask[null, list(r_41_1, i_7_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource r.next might not be injective. (list_false.vpr@32.15--32.71) [105673]"}
          (forall r_43: Ref, r_43_1: Ref ::
          
          (((r_43 != r_43_1 && (lists[r_43] && !s_2[r_43])) && (lists[r_43_1] && !s_2[r_43_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_43 != r_43_1
        );
        
        // -- Define Inverse Function
          assume (forall r_43: Ref ::
            { Heap[r_43, next] } { QPMask[r_43, next] } { lists[r_43] } { s_2[r_43] }
            (lists[r_43] && !s_2[r_43]) && NoPerm < FullPerm ==> qpRange13(r_43) && invRecv13(r_43) == r_43
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            ((lists[invRecv13(o_4)] && !s_2[invRecv13(o_4)]) && NoPerm < FullPerm) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_43: Ref ::
            { Heap[r_43, next] } { QPMask[r_43, next] } { lists[r_43] } { s_2[r_43] }
            lists[r_43] && !s_2[r_43] ==> r_43 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (((lists[invRecv13(o_4)] && !s_2[invRecv13(o_4)]) && NoPerm < FullPerm) && qpRange13(o_4) ==> (NoPerm < FullPerm ==> invRecv13(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!(((lists[invRecv13(o_4)] && !s_2[invRecv13(o_4)]) && NoPerm < FullPerm) && qpRange13(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length - 1), write) is injective
          assert {:msg "  While statement might fail. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@33.15--33.69) [105674]"}
            (forall r_44: Ref, r_44_1: Ref ::
            { neverTriggered14(r_44), neverTriggered14(r_44_1) }
            (((r_44 != r_44_1 && sNext[r_44]) && sNext[r_44_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_44 != r_44_1 || length_2 - 1 != length_2 - 1
          );
        
        // -- Define Inverse Function
          assume (forall r_44: Ref ::
            { sNext[r_44] }
            sNext[r_44] && NoPerm < FullPerm ==> invRecv14(r_44, length_2 - 1) == r_44 && qpRange14(r_44, length_2 - 1)
          );
          assume (forall r_45_1: Ref, i_8_2: int ::
            { invRecv14(r_45_1, i_8_2) }
            (sNext[invRecv14(r_45_1, i_8_2)] && NoPerm < FullPerm) && qpRange14(r_45_1, i_8_2) ==> invRecv14(r_45_1, i_8_2) == r_45_1 && length_2 - 1 == i_8_2
          );
        
        // -- Define updated permissions
          assume (forall r_45_1: Ref, i_8_2: int ::
            { QPMask[null, list(r_45_1, i_8_2)] }
            (sNext[invRecv14(r_45_1, i_8_2)] && NoPerm < FullPerm) && qpRange14(r_45_1, i_8_2) ==> (NoPerm < FullPerm ==> invRecv14(r_45_1, i_8_2) == r_45_1 && length_2 - 1 == i_8_2) && QPMask[null, list(r_45_1, i_8_2)] == Mask[null, list(r_45_1, i_8_2)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_45_1: Ref, i_8_2: int ::
            { QPMask[null, list(r_45_1, i_8_2)] }
            !((sNext[invRecv14(r_45_1, i_8_2)] && NoPerm < FullPerm) && qpRange14(r_45_1, i_8_2)) ==> QPMask[null, list(r_45_1, i_8_2)] == Mask[null, list(r_45_1, i_8_2)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (list_false.vpr@34.15--34.84) [105675]"}
          (forall r_47: Ref, r_47_1: Ref ::
          
          (((r_47 != r_47_1 && (lists[r_47] && !s_2[r_47])) && (lists[r_47_1] && !s_2[r_47_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_47 != r_47_1
        );
        
        // -- Define Inverse Function
          assume (forall r_47: Ref ::
            { Heap[r_47, val] } { QPMask[r_47, val] } { lists[r_47] } { s_2[r_47] }
            (lists[r_47] && !s_2[r_47]) && NoPerm < FullPerm ==> qpRange15(r_47) && invRecv15(r_47) == r_47
          );
          assume (forall o_4: Ref ::
            { invRecv15(o_4) }
            ((lists[invRecv15(o_4)] && !s_2[invRecv15(o_4)]) && NoPerm < FullPerm) && qpRange15(o_4) ==> invRecv15(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_47: Ref ::
            { Heap[r_47, val] } { QPMask[r_47, val] } { lists[r_47] } { s_2[r_47] }
            lists[r_47] && !s_2[r_47] ==> r_47 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (((lists[invRecv15(o_4)] && !s_2[invRecv15(o_4)]) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> invRecv15(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((lists[invRecv15(o_4)] && !s_2[invRecv15(o_4)]) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall r_48: Ref ::
          { lists[r_48] } { s_2[r_48] }
          lists[r_48] && !s_2[r_48] ==> Heap[r_48, val] == v_2
        );
        assume (forall r_49: Ref ::
          { lists[r_49] } { s_2[r_49] } { sNext[Heap[r_49, next]] }
          lists[r_49] && !s_2[r_49] ==> sNext[Heap[r_49, next]]
        );
        assume (forall r1_4: Ref, r2_4: Ref ::
          { lists[r1_4], lists[r2_4] } { lists[r1_4], s_2[r2_4] } { s_2[r1_4], lists[r2_4] } { s_2[r1_4], s_2[r2_4] }
          lists[r1_4] && (!s_2[r1_4] && (lists[r2_4] && (!s_2[r2_4] && r1_4 != r2_4))) ==> Heap[r1_4, next] != Heap[r2_4, next]
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume Set#Card(s_2) > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[l_2, $allocated];
          
          // -- Translating statement: inhale (l in s) -- list_false.vpr@39.16--39.22
            assume s_2[l_2];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(list(l, length), write) -- list_false.vpr@40.9--40.31
            assume list#trigger(Heap, list(l_2, length_2));
            assume Heap[null, list(l_2, length_2)] == FrameFragment((if length_2 > 0 then CombineFrames(FrameFragment(Heap[l_2, val]), CombineFrames(FrameFragment(Heap[l_2, next]), Heap[null, list(Heap[l_2, next], length_2 - 1)])) else EmptyFrame));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding list(l, length) might fail. There might be insufficient permission to access list(l, length) (list_false.vpr@40.9--40.31) [105676]"}
                perm <= Mask[null, list(l_2, length_2)];
            }
            Mask := Mask[null, list(l_2, length_2):=Mask[null, list(l_2, length_2)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, list(l_2, length_2))) {
                havoc newVersion;
                Heap := Heap[null, list(l_2, length_2):=newVersion];
              }
            if (length_2 > 0) {
              perm := FullPerm;
              assume l_2 != null;
              Mask := Mask[l_2, val:=Mask[l_2, val] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              assume l_2 != null;
              Mask := Mask[l_2, next:=Mask[l_2, next] + perm];
              assume state(Heap, Mask);
              perm := FullPerm;
              Mask := Mask[null, list(Heap[l_2, next], length_2 - 1):=Mask[null, list(Heap[l_2, next], length_2 - 1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(list(l_2, length_2), Heap[null, list(l_2, length_2)], list(Heap[l_2, next], length_2 - 1), Heap[null, list(Heap[l_2, next], length_2 - 1)]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale (forall r: Ref ::
  //     { (r in lists) }
  //     { (r in s) }
  //     (r in lists) && !((r in s)) ==> r.next != l.next) -- list_false.vpr@41.16--41.77
            
            // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.next != l.next)
              if (*) {
                if (lists[r_18] && !s_2[r_18]) {
                  assert {:msg "  Inhale might fail. There might be insufficient permission to access r.next (list_false.vpr@41.16--41.77) [105677]"}
                    HasDirectPerm(Mask, r_18, next);
                  assert {:msg "  Inhale might fail. There might be insufficient permission to access l.next (list_false.vpr@41.16--41.77) [105678]"}
                    HasDirectPerm(Mask, l_2, next);
                }
                assume false;
              }
            assume (forall r_51: Ref ::
              { lists[r_51] } { s_2[r_51] }
              lists[r_51] && !s_2[r_51] ==> Heap[r_51, next] != Heap[l_2, next]
            );
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: s := (s setminus Set(l)) -- list_false.vpr@43.9--43.31
            s_2 := Set#Difference(s_2, Set#Singleton(l_2));
            assume state(Heap, Mask);
          
          // -- Translating statement: sNext := (sNext union Set(l.next)) -- list_false.vpr@44.9--44.41
            
            // -- Check definedness of (sNext union Set(l.next))
              assert {:msg "  Assignment might fail. There might be insufficient permission to access l.next (list_false.vpr@44.9--44.41) [105679]"}
                HasDirectPerm(Mask, l_2, next);
            sNext := Set#Union(sNext, Set#Singleton(Heap[l_2, next]));
            assume state(Heap, Mask);
          
          // -- Translating statement: l.val := v -- list_false.vpr@45.9--45.19
            assert {:msg "  Assignment might fail. There might be insufficient permission to access l.val (list_false.vpr@45.9--45.19) [105680]"}
              FullPerm == Mask[l_2, val];
            Heap := Heap[l_2, val:=v_2];
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r, length), write)) might not be preserved. Quantified resource list(r, length) might not be injective. (list_false.vpr@31.15--31.63) [105681]"}
            (forall r_52: Ref, r_52_1: Ref ::
            { neverTriggered16(r_52), neverTriggered16(r_52_1) }
            (((r_52 != r_52_1 && s_2[r_52]) && s_2[r_52_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_52 != r_52_1 || length_2 != length_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r, length), write)) might not be preserved. There might be insufficient permission to access list(r, length) (list_false.vpr@31.15--31.63) [105682]"}
            (forall r_52: Ref ::
            { Heap[null, list(r_52, length_2)] } { Mask[null, list(r_52, length_2)] } { s_2[r_52] }
            s_2[r_52] ==> Mask[null, list(r_52, length_2)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length), write)
          assume (forall r_52: Ref ::
            { Heap[null, list(r_52, length_2)] } { Mask[null, list(r_52, length_2)] } { s_2[r_52] }
            s_2[r_52] && NoPerm < FullPerm ==> invRecv16(r_52, length_2) == r_52 && qpRange16(r_52, length_2)
          );
          assume (forall r_53_1: Ref, i_9_1: int ::
            { invRecv16(r_53_1, i_9_1) }
            (s_2[invRecv16(r_53_1, i_9_1)] && NoPerm < FullPerm) && qpRange16(r_53_1, i_9_1) ==> invRecv16(r_53_1, i_9_1) == r_53_1 && length_2 == i_9_1
          );
        
        // -- assume permission updates
          assume (forall r_53_1: Ref, i_9_1: int ::
            { QPMask[null, list(r_53_1, i_9_1)] }
            (s_2[invRecv16(r_53_1, i_9_1)] && NoPerm < FullPerm) && qpRange16(r_53_1, i_9_1) ==> (invRecv16(r_53_1, i_9_1) == r_53_1 && length_2 == i_9_1) && QPMask[null, list(r_53_1, i_9_1)] == Mask[null, list(r_53_1, i_9_1)] - FullPerm
          );
          assume (forall r_53_1: Ref, i_9_1: int ::
            { QPMask[null, list(r_53_1, i_9_1)] }
            !((s_2[invRecv16(r_53_1, i_9_1)] && NoPerm < FullPerm) && qpRange16(r_53_1, i_9_1)) ==> QPMask[null, list(r_53_1, i_9_1)] == Mask[null, list(r_53_1, i_9_1)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.next, write)) might not be preserved. Quantified resource r.next might not be injective. (list_false.vpr@32.15--32.71) [105683]"}
            (forall r_54: Ref, r_54_1: Ref ::
            { neverTriggered17(r_54), neverTriggered17(r_54_1) }
            (((r_54 != r_54_1 && (lists[r_54] && !s_2[r_54])) && (lists[r_54_1] && !s_2[r_54_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_54 != r_54_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.next, write)) might not be preserved. There might be insufficient permission to access r.next (list_false.vpr@32.15--32.71) [105684]"}
            (forall r_54: Ref ::
            { Heap[r_54, next] } { QPMask[r_54, next] } { lists[r_54] } { s_2[r_54] }
            lists[r_54] && !s_2[r_54] ==> Mask[r_54, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_54: Ref ::
            { Heap[r_54, next] } { QPMask[r_54, next] } { lists[r_54] } { s_2[r_54] }
            (lists[r_54] && !s_2[r_54]) && NoPerm < FullPerm ==> qpRange17(r_54) && invRecv17(r_54) == r_54
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            (lists[invRecv17(o_4)] && !s_2[invRecv17(o_4)]) && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((lists[invRecv17(o_4)] && !s_2[invRecv17(o_4)]) && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!((lists[invRecv17(o_4)] && !s_2[invRecv17(o_4)]) && (NoPerm < FullPerm && qpRange17(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length - 1), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in sNext) } (r in sNext) ==> acc(list(r, length - 1), write)) might not be preserved. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@33.15--33.69) [105685]"}
            (forall r_55: Ref, r_55_1: Ref ::
            { neverTriggered18(r_55), neverTriggered18(r_55_1) }
            (((r_55 != r_55_1 && sNext[r_55]) && sNext[r_55_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_55 != r_55_1 || length_2 - 1 != length_2 - 1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in sNext) } (r in sNext) ==> acc(list(r, length - 1), write)) might not be preserved. There might be insufficient permission to access list(r, length - 1) (list_false.vpr@33.15--33.69) [105686]"}
            (forall r_55: Ref ::
            { sNext[r_55] }
            sNext[r_55] ==> Mask[null, list(r_55, length_2 - 1)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length - 1), write)
          assume (forall r_55: Ref ::
            { sNext[r_55] }
            sNext[r_55] && NoPerm < FullPerm ==> invRecv18(r_55, length_2 - 1) == r_55 && qpRange18(r_55, length_2 - 1)
          );
          assume (forall r_56_1: Ref, i_10_1: int ::
            { invRecv18(r_56_1, i_10_1) }
            (sNext[invRecv18(r_56_1, i_10_1)] && NoPerm < FullPerm) && qpRange18(r_56_1, i_10_1) ==> invRecv18(r_56_1, i_10_1) == r_56_1 && length_2 - 1 == i_10_1
          );
        
        // -- assume permission updates
          assume (forall r_56_1: Ref, i_10_1: int ::
            { QPMask[null, list(r_56_1, i_10_1)] }
            (sNext[invRecv18(r_56_1, i_10_1)] && NoPerm < FullPerm) && qpRange18(r_56_1, i_10_1) ==> (invRecv18(r_56_1, i_10_1) == r_56_1 && length_2 - 1 == i_10_1) && QPMask[null, list(r_56_1, i_10_1)] == Mask[null, list(r_56_1, i_10_1)] - FullPerm
          );
          assume (forall r_56_1: Ref, i_10_1: int ::
            { QPMask[null, list(r_56_1, i_10_1)] }
            !((sNext[invRecv18(r_56_1, i_10_1)] && NoPerm < FullPerm) && qpRange18(r_56_1, i_10_1)) ==> QPMask[null, list(r_56_1, i_10_1)] == Mask[null, list(r_56_1, i_10_1)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not be preserved. Quantified resource r.val might not be injective. (list_false.vpr@34.15--34.84) [105687]"}
            (forall r_57: Ref, r_57_1: Ref ::
            { neverTriggered19(r_57), neverTriggered19(r_57_1) }
            (((r_57 != r_57_1 && (lists[r_57] && !s_2[r_57])) && (lists[r_57_1] && !s_2[r_57_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_57 != r_57_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not be preserved. There might be insufficient permission to access r.val (list_false.vpr@34.15--34.84) [105688]"}
            (forall r_57: Ref ::
            { Heap[r_57, val] } { QPMask[r_57, val] } { lists[r_57] } { s_2[r_57] }
            lists[r_57] && !s_2[r_57] ==> Mask[r_57, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_57: Ref ::
            { Heap[r_57, val] } { QPMask[r_57, val] } { lists[r_57] } { s_2[r_57] }
            (lists[r_57] && !s_2[r_57]) && NoPerm < FullPerm ==> qpRange19(r_57) && invRecv19(r_57) == r_57
          );
          assume (forall o_4: Ref ::
            { invRecv19(o_4) }
            (lists[invRecv19(o_4)] && !s_2[invRecv19(o_4)]) && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((lists[invRecv19(o_4)] && !s_2[invRecv19(o_4)]) && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((lists[invRecv19(o_4)] && !s_2[invRecv19(o_4)]) && (NoPerm < FullPerm && qpRange19(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (lists[r_58] && !s_2[r_58]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(r.val, write)) && (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v) might not be preserved. Assertion r.val == v might not hold. (list_false.vpr@34.15--34.84) [105689]"}
              Heap[r_58, val] == v_2;
          }
          assume false;
        }
        assume (forall r_59_1: Ref ::
          { lists[r_59_1] } { s_2[r_59_1] }
          lists[r_59_1] && !s_2[r_59_1] ==> Heap[r_59_1, val] == v_2
        );
        if (*) {
          if (lists[r_60] && !s_2[r_60]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext)) might not be preserved. Assertion (r.next in sNext) might not hold. (list_false.vpr@35.15--35.75) [105690]"}
              sNext[Heap[r_60, next]];
          }
          assume false;
        }
        assume (forall r_61_1: Ref ::
          { lists[r_61_1] } { s_2[r_61_1] } { sNext[Heap[r_61_1, next]] }
          lists[r_61_1] && !s_2[r_61_1] ==> sNext[Heap[r_61_1, next]]
        );
        if (*) {
          if (lists[r1_5] && (!s_2[r1_5] && (lists[r2_5] && (!s_2[r2_5] && r1_5 != r2_5)))) {
            assert {:msg "  Loop invariant (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next) might not be preserved. Assertion r1.next != r2.next might not hold. (list_false.vpr@36.15--36.131) [105691]"}
              Heap[r1_5, next] != Heap[r2_5, next];
          }
          assume false;
        }
        assume (forall r1_6_1: Ref, r2_6_1: Ref ::
          { lists[r1_6_1], lists[r2_6_1] } { lists[r1_6_1], s_2[r2_6_1] } { s_2[r1_6_1], lists[r2_6_1] } { s_2[r1_6_1], s_2[r2_6_1] }
          lists[r1_6_1] && (!s_2[r1_6_1] && (lists[r2_6_1] && (!s_2[r2_6_1] && r1_6_1 != r2_6_1))) ==> Heap[r1_6_1, next] != Heap[r2_6_1, next]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Set#Card(s_2) > 0);
      assume state(Heap, Mask);
      havoc QPMask;
      
      // -- check if receiver acc(list(r, length), write) is injective
        assert {:msg "  While statement might fail. Quantified resource list(r, length) might not be injective. (list_false.vpr@31.15--31.63) [105692]"}
          (forall r_62: Ref, r_62_1: Ref ::
          { neverTriggered20(r_62), neverTriggered20(r_62_1) }
          (((r_62 != r_62_1 && s_2[r_62]) && s_2[r_62_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_62 != r_62_1 || length_2 != length_2
        );
      
      // -- Define Inverse Function
        assume (forall r_62: Ref ::
          { Heap[null, list(r_62, length_2)] } { Mask[null, list(r_62, length_2)] } { s_2[r_62] }
          s_2[r_62] && NoPerm < FullPerm ==> invRecv20(r_62, length_2) == r_62 && qpRange20(r_62, length_2)
        );
        assume (forall r_63_1: Ref, i_11_1: int ::
          { invRecv20(r_63_1, i_11_1) }
          (s_2[invRecv20(r_63_1, i_11_1)] && NoPerm < FullPerm) && qpRange20(r_63_1, i_11_1) ==> invRecv20(r_63_1, i_11_1) == r_63_1 && length_2 == i_11_1
        );
      
      // -- Define updated permissions
        assume (forall r_63_1: Ref, i_11_1: int ::
          { QPMask[null, list(r_63_1, i_11_1)] }
          (s_2[invRecv20(r_63_1, i_11_1)] && NoPerm < FullPerm) && qpRange20(r_63_1, i_11_1) ==> (NoPerm < FullPerm ==> invRecv20(r_63_1, i_11_1) == r_63_1 && length_2 == i_11_1) && QPMask[null, list(r_63_1, i_11_1)] == Mask[null, list(r_63_1, i_11_1)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall r_63_1: Ref, i_11_1: int ::
          { QPMask[null, list(r_63_1, i_11_1)] }
          !((s_2[invRecv20(r_63_1, i_11_1)] && NoPerm < FullPerm) && qpRange20(r_63_1, i_11_1)) ==> QPMask[null, list(r_63_1, i_11_1)] == Mask[null, list(r_63_1, i_11_1)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource r.next might not be injective. (list_false.vpr@32.15--32.71) [105693]"}
        (forall r_65: Ref, r_65_1: Ref ::
        
        (((r_65 != r_65_1 && (lists[r_65] && !s_2[r_65])) && (lists[r_65_1] && !s_2[r_65_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_65 != r_65_1
      );
      
      // -- Define Inverse Function
        assume (forall r_65: Ref ::
          { Heap[r_65, next] } { QPMask[r_65, next] } { lists[r_65] } { s_2[r_65] }
          (lists[r_65] && !s_2[r_65]) && NoPerm < FullPerm ==> qpRange21(r_65) && invRecv21(r_65) == r_65
        );
        assume (forall o_4: Ref ::
          { invRecv21(o_4) }
          ((lists[invRecv21(o_4)] && !s_2[invRecv21(o_4)]) && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_65: Ref ::
          { Heap[r_65, next] } { QPMask[r_65, next] } { lists[r_65] } { s_2[r_65] }
          lists[r_65] && !s_2[r_65] ==> r_65 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          (((lists[invRecv21(o_4)] && !s_2[invRecv21(o_4)]) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> invRecv21(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!(((lists[invRecv21(o_4)] && !s_2[invRecv21(o_4)]) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      
      // -- check if receiver acc(list(r, length - 1), write) is injective
        assert {:msg "  While statement might fail. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@33.15--33.69) [105694]"}
          (forall r_66: Ref, r_66_1: Ref ::
          { neverTriggered22(r_66), neverTriggered22(r_66_1) }
          (((r_66 != r_66_1 && sNext[r_66]) && sNext[r_66_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_66 != r_66_1 || length_2 - 1 != length_2 - 1
        );
      
      // -- Define Inverse Function
        assume (forall r_66: Ref ::
          { sNext[r_66] }
          sNext[r_66] && NoPerm < FullPerm ==> invRecv22(r_66, length_2 - 1) == r_66 && qpRange22(r_66, length_2 - 1)
        );
        assume (forall r_67_1: Ref, i_12_1: int ::
          { invRecv22(r_67_1, i_12_1) }
          (sNext[invRecv22(r_67_1, i_12_1)] && NoPerm < FullPerm) && qpRange22(r_67_1, i_12_1) ==> invRecv22(r_67_1, i_12_1) == r_67_1 && length_2 - 1 == i_12_1
        );
      
      // -- Define updated permissions
        assume (forall r_67_1: Ref, i_12_1: int ::
          { QPMask[null, list(r_67_1, i_12_1)] }
          (sNext[invRecv22(r_67_1, i_12_1)] && NoPerm < FullPerm) && qpRange22(r_67_1, i_12_1) ==> (NoPerm < FullPerm ==> invRecv22(r_67_1, i_12_1) == r_67_1 && length_2 - 1 == i_12_1) && QPMask[null, list(r_67_1, i_12_1)] == Mask[null, list(r_67_1, i_12_1)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall r_67_1: Ref, i_12_1: int ::
          { QPMask[null, list(r_67_1, i_12_1)] }
          !((sNext[invRecv22(r_67_1, i_12_1)] && NoPerm < FullPerm) && qpRange22(r_67_1, i_12_1)) ==> QPMask[null, list(r_67_1, i_12_1)] == Mask[null, list(r_67_1, i_12_1)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (list_false.vpr@34.15--34.84) [105695]"}
        (forall r_69: Ref, r_69_1: Ref ::
        
        (((r_69 != r_69_1 && (lists[r_69] && !s_2[r_69])) && (lists[r_69_1] && !s_2[r_69_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_69 != r_69_1
      );
      
      // -- Define Inverse Function
        assume (forall r_69: Ref ::
          { Heap[r_69, val] } { QPMask[r_69, val] } { lists[r_69] } { s_2[r_69] }
          (lists[r_69] && !s_2[r_69]) && NoPerm < FullPerm ==> qpRange23(r_69) && invRecv23(r_69) == r_69
        );
        assume (forall o_4: Ref ::
          { invRecv23(o_4) }
          ((lists[invRecv23(o_4)] && !s_2[invRecv23(o_4)]) && NoPerm < FullPerm) && qpRange23(o_4) ==> invRecv23(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_69: Ref ::
          { Heap[r_69, val] } { QPMask[r_69, val] } { lists[r_69] } { s_2[r_69] }
          lists[r_69] && !s_2[r_69] ==> r_69 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (((lists[invRecv23(o_4)] && !s_2[invRecv23(o_4)]) && NoPerm < FullPerm) && qpRange23(o_4) ==> (NoPerm < FullPerm ==> invRecv23(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((lists[invRecv23(o_4)] && !s_2[invRecv23(o_4)]) && NoPerm < FullPerm) && qpRange23(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall r_70: Ref ::
        { lists[r_70] } { s_2[r_70] }
        lists[r_70] && !s_2[r_70] ==> Heap[r_70, val] == v_2
      );
      assume (forall r_71: Ref ::
        { lists[r_71] } { s_2[r_71] } { sNext[Heap[r_71, next]] }
        lists[r_71] && !s_2[r_71] ==> sNext[Heap[r_71, next]]
      );
      assume (forall r1_7: Ref, r2_7: Ref ::
        { lists[r1_7], lists[r2_7] } { lists[r1_7], s_2[r2_7] } { s_2[r1_7], lists[r2_7] } { s_2[r1_7], s_2[r2_7] }
        lists[r1_7] && (!s_2[r1_7] && (lists[r2_7] && (!s_2[r2_7] && r1_7 != r2_7))) ==> Heap[r1_7, next] != Heap[r2_7, next]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (length - 1 > 0) -- list_false.vpr@47.5--49.6
    if (length_2 - 1 > 0) {
      
      // -- Translating statement: m1(sNext, length - 1, v) -- list_false.vpr@48.9--48.31
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_length := length_2 - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method m1 might not hold. Assertion length - 1 > 0 might not hold. (list_false.vpr@48.9--48.31) [105696]"}
            arg_length > 0;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver acc(list(r, arg_length), write) is injective
            assert {:msg "  The precondition of method m1 might not hold. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@48.9--48.31) [105697]"}
              (forall r_72: Ref, r_72_1: Ref ::
              { neverTriggered24(r_72), neverTriggered24(r_72_1) }
              (((r_72 != r_72_1 && sNext[r_72]) && sNext[r_72_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_72 != r_72_1 || arg_length != arg_length
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method m1 might not hold. There might be insufficient permission to access list(r, length - 1) (list_false.vpr@48.9--48.31) [105698]"}
              (forall r_72: Ref ::
              { Heap[null, list(r_72, arg_length)] } { Mask[null, list(r_72, arg_length)] } { sNext[r_72] }
              sNext[r_72] ==> Mask[null, list(r_72, arg_length)] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver acc(list(r, arg_length), write)
            assume (forall r_72: Ref ::
              { Heap[null, list(r_72, arg_length)] } { Mask[null, list(r_72, arg_length)] } { sNext[r_72] }
              sNext[r_72] && NoPerm < FullPerm ==> invRecv24(r_72, arg_length) == r_72 && qpRange24(r_72, arg_length)
            );
            assume (forall r_73_1: Ref, i_13_1: int ::
              { invRecv24(r_73_1, i_13_1) }
              (sNext[invRecv24(r_73_1, i_13_1)] && NoPerm < FullPerm) && qpRange24(r_73_1, i_13_1) ==> invRecv24(r_73_1, i_13_1) == r_73_1 && arg_length == i_13_1
            );
          
          // -- assume permission updates
            assume (forall r_73_1: Ref, i_13_1: int ::
              { QPMask[null, list(r_73_1, i_13_1)] }
              (sNext[invRecv24(r_73_1, i_13_1)] && NoPerm < FullPerm) && qpRange24(r_73_1, i_13_1) ==> (invRecv24(r_73_1, i_13_1) == r_73_1 && arg_length == i_13_1) && QPMask[null, list(r_73_1, i_13_1)] == Mask[null, list(r_73_1, i_13_1)] - FullPerm
            );
            assume (forall r_73_1: Ref, i_13_1: int ::
              { QPMask[null, list(r_73_1, i_13_1)] }
              !((sNext[invRecv24(r_73_1, i_13_1)] && NoPerm < FullPerm) && qpRange24(r_73_1, i_13_1)) ==> QPMask[null, list(r_73_1, i_13_1)] == Mask[null, list(r_73_1, i_13_1)]
            );
          
          // -- assume permission updates for independent locations 
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          havoc QPMask;
          
          // -- check if receiver acc(list(r, arg_length), write) is injective
            assert {:msg "  Method call might fail. Quantified resource list(r, length - 1) might not be injective. (list_false.vpr@48.9--48.31) [105699]"}
              (forall r_74: Ref, r_74_1: Ref ::
              { neverTriggered25(r_74), neverTriggered25(r_74_1) }
              (((r_74 != r_74_1 && sNext[r_74]) && sNext[r_74_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_74 != r_74_1 || arg_length != arg_length
            );
          
          // -- Define Inverse Function
            assume (forall r_74: Ref ::
              { Heap[null, list(r_74, arg_length)] } { Mask[null, list(r_74, arg_length)] } { sNext[r_74] }
              sNext[r_74] && NoPerm < FullPerm ==> invRecv25(r_74, arg_length) == r_74 && qpRange25(r_74, arg_length)
            );
            assume (forall r_75_1: Ref, i_14_1: int ::
              { invRecv25(r_75_1, i_14_1) }
              (sNext[invRecv25(r_75_1, i_14_1)] && NoPerm < FullPerm) && qpRange25(r_75_1, i_14_1) ==> invRecv25(r_75_1, i_14_1) == r_75_1 && arg_length == i_14_1
            );
          
          // -- Define updated permissions
            assume (forall r_75_1: Ref, i_14_1: int ::
              { QPMask[null, list(r_75_1, i_14_1)] }
              (sNext[invRecv25(r_75_1, i_14_1)] && NoPerm < FullPerm) && qpRange25(r_75_1, i_14_1) ==> (NoPerm < FullPerm ==> invRecv25(r_75_1, i_14_1) == r_75_1 && arg_length == i_14_1) && QPMask[null, list(r_75_1, i_14_1)] == Mask[null, list(r_75_1, i_14_1)] + FullPerm
            );
          
          // -- Define independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
            assume (forall r_75_1: Ref, i_14_1: int ::
              { QPMask[null, list(r_75_1, i_14_1)] }
              !((sNext[invRecv25(r_75_1, i_14_1)] && NoPerm < FullPerm) && qpRange25(r_75_1, i_14_1)) ==> QPMask[null, list(r_75_1, i_14_1)] == Mask[null, list(r_75_1, i_14_1)]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume (forall r_77: Ref ::
            { sNext[r_77] } { allSet#frame(Heap[null, list(r_77, arg_length)], r_77, arg_length, v_2) }
            sNext[r_77] ==> allSet(Heap, r_77, arg_length, v_2)
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: s := lists -- list_false.vpr@50.5--50.15
    s_2 := lists;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (|s| > 0) -- list_false.vpr@51.5--63.10
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(list(r, length), write)) might not hold on entry. Quantified resource list(r, length) might not be injective. (list_false.vpr@52.19--52.84) [105700]"}
            (forall r_78: Ref, r_78_1: Ref ::
            { neverTriggered26(r_78), neverTriggered26(r_78_1) }
            (((r_78 != r_78_1 && (lists[r_78] && !s_2[r_78])) && (lists[r_78_1] && !s_2[r_78_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_78 != r_78_1 || length_2 != length_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(list(r, length), write)) might not hold on entry. There might be insufficient permission to access list(r, length) (list_false.vpr@52.19--52.84) [105701]"}
            (forall r_78: Ref ::
            { Heap[null, list(r_78, length_2)] } { Mask[null, list(r_78, length_2)] } { lists[r_78] } { s_2[r_78] }
            lists[r_78] && !s_2[r_78] ==> Mask[null, list(r_78, length_2)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length), write)
          assume (forall r_78: Ref ::
            { Heap[null, list(r_78, length_2)] } { Mask[null, list(r_78, length_2)] } { lists[r_78] } { s_2[r_78] }
            (lists[r_78] && !s_2[r_78]) && NoPerm < FullPerm ==> invRecv26(r_78, length_2) == r_78 && qpRange26(r_78, length_2)
          );
          assume (forall r_79_1: Ref, i_15: int ::
            { invRecv26(r_79_1, i_15) }
            ((lists[invRecv26(r_79_1, i_15)] && !s_2[invRecv26(r_79_1, i_15)]) && NoPerm < FullPerm) && qpRange26(r_79_1, i_15) ==> invRecv26(r_79_1, i_15) == r_79_1 && length_2 == i_15
          );
        
        // -- assume permission updates
          assume (forall r_79_1: Ref, i_15: int ::
            { QPMask[null, list(r_79_1, i_15)] }
            ((lists[invRecv26(r_79_1, i_15)] && !s_2[invRecv26(r_79_1, i_15)]) && NoPerm < FullPerm) && qpRange26(r_79_1, i_15) ==> (invRecv26(r_79_1, i_15) == r_79_1 && length_2 == i_15) && QPMask[null, list(r_79_1, i_15)] == Mask[null, list(r_79_1, i_15)] - FullPerm
          );
          assume (forall r_79_1: Ref, i_15: int ::
            { QPMask[null, list(r_79_1, i_15)] }
            !(((lists[invRecv26(r_79_1, i_15)] && !s_2[invRecv26(r_79_1, i_15)]) && NoPerm < FullPerm) && qpRange26(r_79_1, i_15)) ==> QPMask[null, list(r_79_1, i_15)] == Mask[null, list(r_79_1, i_15)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (lists[r_80] && !s_2[r_80]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v)) might not hold on entry. Assertion allSet(r, length, v) might not hold. (list_false.vpr@53.19--53.85) [105702]"}
              allSet(Heap, r_80, length_2, v_2);
          }
          assume false;
        }
        assume (forall r_81_1: Ref ::
          { lists[r_81_1] } { s_2[r_81_1] } { allSet#frame(Heap[null, list(r_81_1, length_2)], r_81_1, length_2, v_2) }
          lists[r_81_1] && !s_2[r_81_1] ==> allSet(Heap, r_81_1, length_2, v_2)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not hold on entry. Quantified resource r.val might not be injective. (list_false.vpr@54.19--54.86) [105703]"}
            (forall r_82: Ref, r_82_1: Ref ::
            { neverTriggered27(r_82), neverTriggered27(r_82_1) }
            (((r_82 != r_82_1 && s_2[r_82]) && s_2[r_82_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_82 != r_82_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not hold on entry. There might be insufficient permission to access r.val (list_false.vpr@54.19--54.86) [105704]"}
            (forall r_82: Ref ::
            { Heap[r_82, val] } { QPMask[r_82, val] } { s_2[r_82] }
            s_2[r_82] ==> Mask[r_82, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_82: Ref ::
            { Heap[r_82, val] } { QPMask[r_82, val] } { s_2[r_82] }
            s_2[r_82] && NoPerm < FullPerm ==> qpRange27(r_82) && invRecv27(r_82) == r_82
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            s_2[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (s_2[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(s_2[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r_83]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not hold on entry. Assertion r.val == v might not hold. (list_false.vpr@54.19--54.86) [105705]"}
              Heap[r_83, val] == v_2;
          }
          assume false;
        }
        assume (forall r_84_1: Ref ::
          { s_2[r_84_1] }
          s_2[r_84_1] ==> Heap[r_84_1, val] == v_2
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not hold on entry. Quantified resource r.next might not be injective. (list_false.vpr@54.19--54.86) [105706]"}
            (forall r_85: Ref, r_85_1: Ref ::
            { neverTriggered28(r_85), neverTriggered28(r_85_1) }
            (((r_85 != r_85_1 && s_2[r_85]) && s_2[r_85_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_85 != r_85_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not hold on entry. There might be insufficient permission to access r.next (list_false.vpr@54.19--54.86) [105707]"}
            (forall r_85: Ref ::
            { Heap[r_85, next] } { QPMask[r_85, next] } { s_2[r_85] }
            s_2[r_85] ==> Mask[r_85, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_85: Ref ::
            { Heap[r_85, next] } { QPMask[r_85, next] } { s_2[r_85] }
            s_2[r_85] && NoPerm < FullPerm ==> qpRange28(r_85) && invRecv28(r_85) == r_85
          );
          assume (forall o_4: Ref ::
            { invRecv28(o_4) }
            s_2[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (s_2[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4)) ==> invRecv28(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(s_2[invRecv28(o_4)] && (NoPerm < FullPerm && qpRange28(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r1_8] && (s_2[r2_8] && r1_8 != r2_8)) {
            assert {:msg "  Loop invariant (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next) might not hold on entry. Assertion r1.next != r2.next might not hold. (list_false.vpr@55.19--55.99) [105708]"}
              Heap[r1_8, next] != Heap[r2_8, next];
          }
          assume false;
        }
        assume (forall r1_9_1: Ref, r2_9_1: Ref ::
          { s_2[r1_9_1], s_2[r2_9_1] }
          s_2[r1_9_1] && (s_2[r2_9_1] && r1_9_1 != r2_9_1) ==> Heap[r1_9_1, next] != Heap[r2_9_1, next]
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r.next, length - 1), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r.next, length - 1), write)) might not hold on entry. Quantified resource list(r.next, length - 1) might not be injective. (list_false.vpr@56.19--56.75) [105709]"}
            (forall r_86: Ref, r_86_1: Ref ::
            { neverTriggered29(r_86), neverTriggered29(r_86_1) }
            (((r_86 != r_86_1 && s_2[r_86]) && s_2[r_86_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[r_86, next] != Heap[r_86_1, next] || length_2 - 1 != length_2 - 1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r.next, length - 1), write)) might not hold on entry. There might be insufficient permission to access list(r.next, length - 1) (list_false.vpr@56.19--56.75) [105710]"}
            (forall r_86: Ref ::
            { s_2[r_86] }
            s_2[r_86] ==> Mask[null, list(Heap[r_86, next], length_2 - 1)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r.next, length - 1), write)
          assume (forall r_86: Ref ::
            { s_2[r_86] }
            s_2[r_86] && NoPerm < FullPerm ==> invRecv29(Heap[r_86, next], length_2 - 1) == r_86 && qpRange29(Heap[r_86, next], length_2 - 1)
          );
          assume (forall r_87_1: Ref, i_16_1: int ::
            { invRecv29(r_87_1, i_16_1) }
            (s_2[invRecv29(r_87_1, i_16_1)] && NoPerm < FullPerm) && qpRange29(r_87_1, i_16_1) ==> Heap[invRecv29(r_87_1, i_16_1), next] == r_87_1 && length_2 - 1 == i_16_1
          );
        
        // -- assume permission updates
          assume (forall r_87_1: Ref, i_16_1: int ::
            { QPMask[null, list(r_87_1, i_16_1)] }
            (s_2[invRecv29(r_87_1, i_16_1)] && NoPerm < FullPerm) && qpRange29(r_87_1, i_16_1) ==> (Heap[invRecv29(r_87_1, i_16_1), next] == r_87_1 && length_2 - 1 == i_16_1) && QPMask[null, list(r_87_1, i_16_1)] == Mask[null, list(r_87_1, i_16_1)] - FullPerm
          );
          assume (forall r_87_1: Ref, i_16_1: int ::
            { QPMask[null, list(r_87_1, i_16_1)] }
            !((s_2[invRecv29(r_87_1, i_16_1)] && NoPerm < FullPerm) && qpRange29(r_87_1, i_16_1)) ==> QPMask[null, list(r_87_1, i_16_1)] == Mask[null, list(r_87_1, i_16_1)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r_88]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v)) might not hold on entry. Assertion allSet(r.next, length - 1, v) might not hold. (list_false.vpr@57.19--57.75) [105711]"}
              allSet(Heap, Heap[r_88, next], length_2 - 1, v_2);
          }
          assume false;
        }
        assume (forall r_89_1: Ref ::
          { s_2[r_89_1] }
          s_2[r_89_1] ==> allSet(Heap, Heap[r_89_1, next], length_2 - 1, v_2)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc s_2;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(list(r, length), write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length) might not be injective. (list_false.vpr@52.19--52.84) [105712]"}
            (forall r_91: Ref, r_91_1: Ref ::
            { neverTriggered30(r_91), neverTriggered30(r_91_1) }
            (((r_91 != r_91_1 && (lists[r_91] && !s_2[r_91])) && (lists[r_91_1] && !s_2[r_91_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_91 != r_91_1 || length_2 != length_2
          );
        
        // -- Define Inverse Function
          assume (forall r_91: Ref ::
            { Heap[null, list(r_91, length_2)] } { Mask[null, list(r_91, length_2)] } { lists[r_91] } { s_2[r_91] }
            (lists[r_91] && !s_2[r_91]) && NoPerm < FullPerm ==> invRecv30(r_91, length_2) == r_91 && qpRange30(r_91, length_2)
          );
          assume (forall r_92_1: Ref, i_17: int ::
            { invRecv30(r_92_1, i_17) }
            ((lists[invRecv30(r_92_1, i_17)] && !s_2[invRecv30(r_92_1, i_17)]) && NoPerm < FullPerm) && qpRange30(r_92_1, i_17) ==> invRecv30(r_92_1, i_17) == r_92_1 && length_2 == i_17
          );
        
        // -- Define updated permissions
          assume (forall r_92_1: Ref, i_17: int ::
            { QPMask[null, list(r_92_1, i_17)] }
            ((lists[invRecv30(r_92_1, i_17)] && !s_2[invRecv30(r_92_1, i_17)]) && NoPerm < FullPerm) && qpRange30(r_92_1, i_17) ==> (NoPerm < FullPerm ==> invRecv30(r_92_1, i_17) == r_92_1 && length_2 == i_17) && QPMask[null, list(r_92_1, i_17)] == Mask[null, list(r_92_1, i_17)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_92_1: Ref, i_17: int ::
            { QPMask[null, list(r_92_1, i_17)] }
            !(((lists[invRecv30(r_92_1, i_17)] && !s_2[invRecv30(r_92_1, i_17)]) && NoPerm < FullPerm) && qpRange30(r_92_1, i_17)) ==> QPMask[null, list(r_92_1, i_17)] == Mask[null, list(r_92_1, i_17)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
          if (*) {
            if (lists[r_21] && !s_2[r_21]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function allSet might not hold. There might be insufficient permission to access list(r, length) (list_false.vpr@53.65--53.85) [105713]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(r_21, length_2)];
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
        assume (forall r_95: Ref ::
          { lists[r_95] } { s_2[r_95] } { allSet#frame(Heap[null, list(r_95, length_2)], r_95, length_2, v_2) }
          lists[r_95] && !s_2[r_95] ==> allSet(Heap, r_95, length_2, v_2)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource r.val might not be injective. (list_false.vpr@54.19--54.86) [105714]"}
          (forall r_97: Ref, r_97_1: Ref ::
          
          (((r_97 != r_97_1 && s_2[r_97]) && s_2[r_97_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_97 != r_97_1
        );
        
        // -- Define Inverse Function
          assume (forall r_97: Ref ::
            { Heap[r_97, val] } { QPMask[r_97, val] } { s_2[r_97] }
            s_2[r_97] && NoPerm < FullPerm ==> qpRange31(r_97) && invRecv31(r_97) == r_97
          );
          assume (forall o_4: Ref ::
            { invRecv31(o_4) }
            (s_2[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_97: Ref ::
            { Heap[r_97, val] } { QPMask[r_97, val] } { s_2[r_97] }
            s_2[r_97] ==> r_97 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((s_2[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((s_2[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
          if (*) {
            if (s_2[r_23]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.val (list_false.vpr@54.19--54.86) [105715]"}
                HasDirectPerm(Mask, r_23, val);
            }
            assume false;
          }
        assume (forall r_99: Ref ::
          { s_2[r_99] }
          s_2[r_99] ==> Heap[r_99, val] == v_2
        );
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource r.next might not be injective. (list_false.vpr@54.19--54.86) [105716]"}
          (forall r_101: Ref, r_101_1: Ref ::
          
          (((r_101 != r_101_1 && s_2[r_101]) && s_2[r_101_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_101 != r_101_1
        );
        
        // -- Define Inverse Function
          assume (forall r_101: Ref ::
            { Heap[r_101, next] } { QPMask[r_101, next] } { s_2[r_101] }
            s_2[r_101] && NoPerm < FullPerm ==> qpRange32(r_101) && invRecv32(r_101) == r_101
          );
          assume (forall o_4: Ref ::
            { invRecv32(o_4) }
            (s_2[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_101: Ref ::
            { Heap[r_101, next] } { QPMask[r_101, next] } { s_2[r_101] }
            s_2[r_101] ==> r_101 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((s_2[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((s_2[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
          if (*) {
            if (s_2[r1_2] && (s_2[r2_2] && r1_2 != r2_2)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r1.next (list_false.vpr@55.19--55.99) [105717]"}
                HasDirectPerm(Mask, r1_2, next);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r2.next (list_false.vpr@55.19--55.99) [105718]"}
                HasDirectPerm(Mask, r2_2, next);
            }
            assume false;
          }
        assume (forall r1_11: Ref, r2_11: Ref ::
          { s_2[r1_11], s_2[r2_11] }
          s_2[r1_11] && (s_2[r2_11] && r1_11 != r2_11) ==> Heap[r1_11, next] != Heap[r2_11, next]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r.next, length - 1), write))
          if (*) {
            if (s_2[r_24]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.next (list_false.vpr@56.19--56.75) [105719]"}
                HasDirectPerm(Mask, r_24, next);
            }
            assume false;
          }
        havoc QPMask;
        
        // -- check if receiver acc(list(r.next, length - 1), write) is injective
          assert {:msg "  Contract might not be well-formed. Quantified resource list(r.next, length - 1) might not be injective. (list_false.vpr@56.19--56.75) [105720]"}
            (forall r_103: Ref, r_103_1: Ref ::
            { neverTriggered33(r_103), neverTriggered33(r_103_1) }
            (((r_103 != r_103_1 && s_2[r_103]) && s_2[r_103_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[r_103, next] != Heap[r_103_1, next] || length_2 - 1 != length_2 - 1
          );
        
        // -- Define Inverse Function
          assume (forall r_103: Ref ::
            { s_2[r_103] }
            s_2[r_103] && NoPerm < FullPerm ==> invRecv33(Heap[r_103, next], length_2 - 1) == r_103 && qpRange33(Heap[r_103, next], length_2 - 1)
          );
          assume (forall r_104_1: Ref, i_18_1: int ::
            { invRecv33(r_104_1, i_18_1) }
            (s_2[invRecv33(r_104_1, i_18_1)] && NoPerm < FullPerm) && qpRange33(r_104_1, i_18_1) ==> Heap[invRecv33(r_104_1, i_18_1), next] == r_104_1 && length_2 - 1 == i_18_1
          );
        
        // -- Define updated permissions
          assume (forall r_104_1: Ref, i_18_1: int ::
            { QPMask[null, list(r_104_1, i_18_1)] }
            (s_2[invRecv33(r_104_1, i_18_1)] && NoPerm < FullPerm) && qpRange33(r_104_1, i_18_1) ==> (NoPerm < FullPerm ==> Heap[invRecv33(r_104_1, i_18_1), next] == r_104_1 && length_2 - 1 == i_18_1) && QPMask[null, list(r_104_1, i_18_1)] == Mask[null, list(r_104_1, i_18_1)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_104_1: Ref, i_18_1: int ::
            { QPMask[null, list(r_104_1, i_18_1)] }
            !((s_2[invRecv33(r_104_1, i_18_1)] && NoPerm < FullPerm) && qpRange33(r_104_1, i_18_1)) ==> QPMask[null, list(r_104_1, i_18_1)] == Mask[null, list(r_104_1, i_18_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
          if (*) {
            if (s_2[r_26]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.next (list_false.vpr@57.19--57.75) [105721]"}
                HasDirectPerm(Mask, r_26, next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                assert {:msg "  Precondition of function allSet might not hold. There might be insufficient permission to access list(r.next, length - 1) (list_false.vpr@57.48--57.75) [105722]"}
                  NoPerm < perm ==> NoPerm < Mask[null, list(Heap[r_26, next], length_2 - 1)];
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
        assume (forall r_107: Ref ::
          { s_2[r_107] }
          s_2[r_107] ==> allSet(Heap, Heap[r_107, next], length_2 - 1, v_2)
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        havoc QPMask;
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  While statement might fail. Quantified resource list(r, length) might not be injective. (list_false.vpr@52.19--52.84) [105723]"}
            (forall r_108: Ref, r_108_1: Ref ::
            { neverTriggered34(r_108), neverTriggered34(r_108_1) }
            (((r_108 != r_108_1 && (lists[r_108] && !s_2[r_108])) && (lists[r_108_1] && !s_2[r_108_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_108 != r_108_1 || length_2 != length_2
          );
        
        // -- Define Inverse Function
          assume (forall r_108: Ref ::
            { Heap[null, list(r_108, length_2)] } { Mask[null, list(r_108, length_2)] } { lists[r_108] } { s_2[r_108] }
            (lists[r_108] && !s_2[r_108]) && NoPerm < FullPerm ==> invRecv34(r_108, length_2) == r_108 && qpRange34(r_108, length_2)
          );
          assume (forall r_109_1: Ref, i_19: int ::
            { invRecv34(r_109_1, i_19) }
            ((lists[invRecv34(r_109_1, i_19)] && !s_2[invRecv34(r_109_1, i_19)]) && NoPerm < FullPerm) && qpRange34(r_109_1, i_19) ==> invRecv34(r_109_1, i_19) == r_109_1 && length_2 == i_19
          );
        
        // -- Define updated permissions
          assume (forall r_109_1: Ref, i_19: int ::
            { QPMask[null, list(r_109_1, i_19)] }
            ((lists[invRecv34(r_109_1, i_19)] && !s_2[invRecv34(r_109_1, i_19)]) && NoPerm < FullPerm) && qpRange34(r_109_1, i_19) ==> (NoPerm < FullPerm ==> invRecv34(r_109_1, i_19) == r_109_1 && length_2 == i_19) && QPMask[null, list(r_109_1, i_19)] == Mask[null, list(r_109_1, i_19)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_109_1: Ref, i_19: int ::
            { QPMask[null, list(r_109_1, i_19)] }
            !(((lists[invRecv34(r_109_1, i_19)] && !s_2[invRecv34(r_109_1, i_19)]) && NoPerm < FullPerm) && qpRange34(r_109_1, i_19)) ==> QPMask[null, list(r_109_1, i_19)] == Mask[null, list(r_109_1, i_19)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall r_111: Ref ::
          { lists[r_111] } { s_2[r_111] } { allSet#frame(Heap[null, list(r_111, length_2)], r_111, length_2, v_2) }
          lists[r_111] && !s_2[r_111] ==> allSet(Heap, r_111, length_2, v_2)
        );
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (list_false.vpr@54.19--54.86) [105724]"}
          (forall r_112: Ref, r_112_1: Ref ::
          
          (((r_112 != r_112_1 && s_2[r_112]) && s_2[r_112_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_112 != r_112_1
        );
        
        // -- Define Inverse Function
          assume (forall r_112: Ref ::
            { Heap[r_112, val] } { QPMask[r_112, val] } { s_2[r_112] }
            s_2[r_112] && NoPerm < FullPerm ==> qpRange35(r_112) && invRecv35(r_112) == r_112
          );
          assume (forall o_4: Ref ::
            { invRecv35(o_4) }
            (s_2[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4) ==> invRecv35(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_112: Ref ::
            { Heap[r_112, val] } { QPMask[r_112, val] } { s_2[r_112] }
            s_2[r_112] ==> r_112 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            ((s_2[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4) ==> (NoPerm < FullPerm ==> invRecv35(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((s_2[invRecv35(o_4)] && NoPerm < FullPerm) && qpRange35(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall r_113: Ref ::
          { s_2[r_113] }
          s_2[r_113] ==> Heap[r_113, val] == v_2
        );
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource r.next might not be injective. (list_false.vpr@54.19--54.86) [105725]"}
          (forall r_114: Ref, r_114_1: Ref ::
          
          (((r_114 != r_114_1 && s_2[r_114]) && s_2[r_114_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_114 != r_114_1
        );
        
        // -- Define Inverse Function
          assume (forall r_114: Ref ::
            { Heap[r_114, next] } { QPMask[r_114, next] } { s_2[r_114] }
            s_2[r_114] && NoPerm < FullPerm ==> qpRange36(r_114) && invRecv36(r_114) == r_114
          );
          assume (forall o_4: Ref ::
            { invRecv36(o_4) }
            (s_2[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4) ==> invRecv36(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall r_114: Ref ::
            { Heap[r_114, next] } { QPMask[r_114, next] } { s_2[r_114] }
            s_2[r_114] ==> r_114 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((s_2[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4) ==> (NoPerm < FullPerm ==> invRecv36(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((s_2[invRecv36(o_4)] && NoPerm < FullPerm) && qpRange36(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall r1_12: Ref, r2_12: Ref ::
          { s_2[r1_12], s_2[r2_12] }
          s_2[r1_12] && (s_2[r2_12] && r1_12 != r2_12) ==> Heap[r1_12, next] != Heap[r2_12, next]
        );
        havoc QPMask;
        
        // -- check if receiver acc(list(r.next, length - 1), write) is injective
          assert {:msg "  While statement might fail. Quantified resource list(r.next, length - 1) might not be injective. (list_false.vpr@56.19--56.75) [105726]"}
            (forall r_115: Ref, r_115_1: Ref ::
            { neverTriggered37(r_115), neverTriggered37(r_115_1) }
            (((r_115 != r_115_1 && s_2[r_115]) && s_2[r_115_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[r_115, next] != Heap[r_115_1, next] || length_2 - 1 != length_2 - 1
          );
        
        // -- Define Inverse Function
          assume (forall r_115: Ref ::
            { s_2[r_115] }
            s_2[r_115] && NoPerm < FullPerm ==> invRecv37(Heap[r_115, next], length_2 - 1) == r_115 && qpRange37(Heap[r_115, next], length_2 - 1)
          );
          assume (forall r_116_1: Ref, i_20_1: int ::
            { invRecv37(r_116_1, i_20_1) }
            (s_2[invRecv37(r_116_1, i_20_1)] && NoPerm < FullPerm) && qpRange37(r_116_1, i_20_1) ==> Heap[invRecv37(r_116_1, i_20_1), next] == r_116_1 && length_2 - 1 == i_20_1
          );
        
        // -- Define updated permissions
          assume (forall r_116_1: Ref, i_20_1: int ::
            { QPMask[null, list(r_116_1, i_20_1)] }
            (s_2[invRecv37(r_116_1, i_20_1)] && NoPerm < FullPerm) && qpRange37(r_116_1, i_20_1) ==> (NoPerm < FullPerm ==> Heap[invRecv37(r_116_1, i_20_1), next] == r_116_1 && length_2 - 1 == i_20_1) && QPMask[null, list(r_116_1, i_20_1)] == Mask[null, list(r_116_1, i_20_1)] + FullPerm
          );
        
        // -- Define independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
          assume (forall r_116_1: Ref, i_20_1: int ::
            { QPMask[null, list(r_116_1, i_20_1)] }
            !((s_2[invRecv37(r_116_1, i_20_1)] && NoPerm < FullPerm) && qpRange37(r_116_1, i_20_1)) ==> QPMask[null, list(r_116_1, i_20_1)] == Mask[null, list(r_116_1, i_20_1)]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume (forall r_118: Ref ::
          { s_2[r_118] }
          s_2[r_118] ==> allSet(Heap, Heap[r_118, next], length_2 - 1, v_2)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume Set#Card(s_2) > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[l2_2, $allocated];
          
          // -- Translating statement: inhale (l2 in s) -- list_false.vpr@60.20--60.27
            assume s_2[l2_2];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(list(l2, length), write) -- list_false.vpr@61.13--61.34
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (length_2 > 0) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding list(l2, length) might fail. There might be insufficient permission to access l2.val (list_false.vpr@61.13--61.34) [105727]"}
                  perm <= Mask[l2_2, val];
              }
              Mask := Mask[l2_2, val:=Mask[l2_2, val] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding list(l2, length) might fail. There might be insufficient permission to access l2.next (list_false.vpr@61.13--61.34) [105728]"}
                  perm <= Mask[l2_2, next];
              }
              Mask := Mask[l2_2, next:=Mask[l2_2, next] - perm];
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding list(l2, length) might fail. There might be insufficient permission to access list(l2.next, length - 1) (list_false.vpr@61.13--61.34) [105729]"}
                  perm <= Mask[null, list(Heap[l2_2, next], length_2 - 1)];
              }
              Mask := Mask[null, list(Heap[l2_2, next], length_2 - 1):=Mask[null, list(Heap[l2_2, next], length_2 - 1)] - perm];
              
              // -- Record predicate instance information
                assume InsidePredicate(list(l2_2, length_2), Heap[null, list(l2_2, length_2)], list(Heap[l2_2, next], length_2 - 1), Heap[null, list(Heap[l2_2, next], length_2 - 1)]);
            }
            perm := FullPerm;
            Mask := Mask[null, list(l2_2, length_2):=Mask[null, list(l2_2, length_2)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume list#trigger(Heap, list(l2_2, length_2));
            assume Heap[null, list(l2_2, length_2)] == FrameFragment((if length_2 > 0 then CombineFrames(FrameFragment(Heap[l2_2, val]), CombineFrames(FrameFragment(Heap[l2_2, next]), Heap[null, list(Heap[l2_2, next], length_2 - 1)])) else EmptyFrame));
            if (!HasDirectPerm(Mask, null, list(l2_2, length_2))) {
              Heap := Heap[null, list#sm(l2_2, length_2):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, list(l2_2, length_2):=freshVersion];
            }
            if (length_2 > 0) {
              Heap := Heap[null, list#sm(l2_2, length_2):=Heap[null, list#sm(l2_2, length_2)][l2_2, val:=true]];
              Heap := Heap[null, list#sm(l2_2, length_2):=Heap[null, list#sm(l2_2, length_2)][l2_2, next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_8: Ref, f_30: (Field A B) ::
                { newPMask[o_8, f_30] }
                Heap[null, list#sm(l2_2, length_2)][o_8, f_30] || Heap[null, list#sm(Heap[l2_2, next], length_2 - 1)][o_8, f_30] ==> newPMask[o_8, f_30]
              );
              Heap := Heap[null, list#sm(l2_2, length_2):=newPMask];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: s := (s setminus Set(l2)) -- list_false.vpr@62.13--62.36
            s_2 := Set#Difference(s_2, Set#Singleton(l2_2));
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r, length), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(list(r, length), write)) might not be preserved. Quantified resource list(r, length) might not be injective. (list_false.vpr@52.19--52.84) [105730]"}
            (forall r_119: Ref, r_119_1: Ref ::
            { neverTriggered38(r_119), neverTriggered38(r_119_1) }
            (((r_119 != r_119_1 && (lists[r_119] && !s_2[r_119])) && (lists[r_119_1] && !s_2[r_119_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_119 != r_119_1 || length_2 != length_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> acc(list(r, length), write)) might not be preserved. There might be insufficient permission to access list(r, length) (list_false.vpr@52.19--52.84) [105731]"}
            (forall r_119: Ref ::
            { Heap[null, list(r_119, length_2)] } { Mask[null, list(r_119, length_2)] } { lists[r_119] } { s_2[r_119] }
            lists[r_119] && !s_2[r_119] ==> Mask[null, list(r_119, length_2)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r, length), write)
          assume (forall r_119: Ref ::
            { Heap[null, list(r_119, length_2)] } { Mask[null, list(r_119, length_2)] } { lists[r_119] } { s_2[r_119] }
            (lists[r_119] && !s_2[r_119]) && NoPerm < FullPerm ==> invRecv38(r_119, length_2) == r_119 && qpRange38(r_119, length_2)
          );
          assume (forall r_120_1: Ref, i_21: int ::
            { invRecv38(r_120_1, i_21) }
            ((lists[invRecv38(r_120_1, i_21)] && !s_2[invRecv38(r_120_1, i_21)]) && NoPerm < FullPerm) && qpRange38(r_120_1, i_21) ==> invRecv38(r_120_1, i_21) == r_120_1 && length_2 == i_21
          );
        
        // -- assume permission updates
          assume (forall r_120_1: Ref, i_21: int ::
            { QPMask[null, list(r_120_1, i_21)] }
            ((lists[invRecv38(r_120_1, i_21)] && !s_2[invRecv38(r_120_1, i_21)]) && NoPerm < FullPerm) && qpRange38(r_120_1, i_21) ==> (invRecv38(r_120_1, i_21) == r_120_1 && length_2 == i_21) && QPMask[null, list(r_120_1, i_21)] == Mask[null, list(r_120_1, i_21)] - FullPerm
          );
          assume (forall r_120_1: Ref, i_21: int ::
            { QPMask[null, list(r_120_1, i_21)] }
            !(((lists[invRecv38(r_120_1, i_21)] && !s_2[invRecv38(r_120_1, i_21)]) && NoPerm < FullPerm) && qpRange38(r_120_1, i_21)) ==> QPMask[null, list(r_120_1, i_21)] == Mask[null, list(r_120_1, i_21)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (lists[r_121] && !s_2[r_121]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v)) might not be preserved. Assertion allSet(r, length, v) might not hold. (list_false.vpr@53.19--53.85) [105732]"}
              allSet(Heap, r_121, length_2, v_2);
          }
          assume false;
        }
        assume (forall r_122_1: Ref ::
          { lists[r_122_1] } { s_2[r_122_1] } { allSet#frame(Heap[null, list(r_122_1, length_2)], r_122_1, length_2, v_2) }
          lists[r_122_1] && !s_2[r_122_1] ==> allSet(Heap, r_122_1, length_2, v_2)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not be preserved. Quantified resource r.val might not be injective. (list_false.vpr@54.19--54.86) [105733]"}
            (forall r_123: Ref, r_123_1: Ref ::
            { neverTriggered39(r_123), neverTriggered39(r_123_1) }
            (((r_123 != r_123_1 && s_2[r_123]) && s_2[r_123_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_123 != r_123_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not be preserved. There might be insufficient permission to access r.val (list_false.vpr@54.19--54.86) [105734]"}
            (forall r_123: Ref ::
            { Heap[r_123, val] } { QPMask[r_123, val] } { s_2[r_123] }
            s_2[r_123] ==> Mask[r_123, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_123: Ref ::
            { Heap[r_123, val] } { QPMask[r_123, val] } { s_2[r_123] }
            s_2[r_123] && NoPerm < FullPerm ==> qpRange39(r_123) && invRecv39(r_123) == r_123
          );
          assume (forall o_4: Ref ::
            { invRecv39(o_4) }
            s_2[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4)) ==> invRecv39(o_4) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (s_2[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4)) ==> invRecv39(o_4) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!(s_2[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r_124]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not be preserved. Assertion r.val == v might not hold. (list_false.vpr@54.19--54.86) [105735]"}
              Heap[r_124, val] == v_2;
          }
          assume false;
        }
        assume (forall r_125_1: Ref ::
          { s_2[r_125_1] }
          s_2[r_125_1] ==> Heap[r_125_1, val] == v_2
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver r is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not be preserved. Quantified resource r.next might not be injective. (list_false.vpr@54.19--54.86) [105736]"}
            (forall r_126: Ref, r_126_1: Ref ::
            { neverTriggered40(r_126), neverTriggered40(r_126_1) }
            (((r_126 != r_126_1 && s_2[r_126]) && s_2[r_126_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_126 != r_126_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.val, write)) && (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v) && (forall r: Ref :: { (r in s) } (r in s) ==> acc(r.next, write)) might not be preserved. There might be insufficient permission to access r.next (list_false.vpr@54.19--54.86) [105737]"}
            (forall r_126: Ref ::
            { Heap[r_126, next] } { QPMask[r_126, next] } { s_2[r_126] }
            s_2[r_126] ==> Mask[r_126, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver r
          assume (forall r_126: Ref ::
            { Heap[r_126, next] } { QPMask[r_126, next] } { s_2[r_126] }
            s_2[r_126] && NoPerm < FullPerm ==> qpRange40(r_126) && invRecv40(r_126) == r_126
          );
          assume (forall o_4: Ref ::
            { invRecv40(o_4) }
            s_2[invRecv40(o_4)] && (NoPerm < FullPerm && qpRange40(o_4)) ==> invRecv40(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (s_2[invRecv40(o_4)] && (NoPerm < FullPerm && qpRange40(o_4)) ==> invRecv40(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(s_2[invRecv40(o_4)] && (NoPerm < FullPerm && qpRange40(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r1_13] && (s_2[r2_13] && r1_13 != r2_13)) {
            assert {:msg "  Loop invariant (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next) might not be preserved. Assertion r1.next != r2.next might not hold. (list_false.vpr@55.19--55.99) [105738]"}
              Heap[r1_13, next] != Heap[r2_13, next];
          }
          assume false;
        }
        assume (forall r1_14_1: Ref, r2_14_1: Ref ::
          { s_2[r1_14_1], s_2[r2_14_1] }
          s_2[r1_14_1] && (s_2[r2_14_1] && r1_14_1 != r2_14_1) ==> Heap[r1_14_1, next] != Heap[r2_14_1, next]
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver acc(list(r.next, length - 1), write) is injective
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r.next, length - 1), write)) might not be preserved. Quantified resource list(r.next, length - 1) might not be injective. (list_false.vpr@56.19--56.75) [105739]"}
            (forall r_127: Ref, r_127_1: Ref ::
            { neverTriggered41(r_127), neverTriggered41(r_127_1) }
            (((r_127 != r_127_1 && s_2[r_127]) && s_2[r_127_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[r_127, next] != Heap[r_127_1, next] || length_2 - 1 != length_2 - 1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> acc(list(r.next, length - 1), write)) might not be preserved. There might be insufficient permission to access list(r.next, length - 1) (list_false.vpr@56.19--56.75) [105740]"}
            (forall r_127: Ref ::
            { s_2[r_127] }
            s_2[r_127] ==> Mask[null, list(Heap[r_127, next], length_2 - 1)] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver acc(list(r.next, length - 1), write)
          assume (forall r_127: Ref ::
            { s_2[r_127] }
            s_2[r_127] && NoPerm < FullPerm ==> invRecv41(Heap[r_127, next], length_2 - 1) == r_127 && qpRange41(Heap[r_127, next], length_2 - 1)
          );
          assume (forall r_128_1: Ref, i_22_1: int ::
            { invRecv41(r_128_1, i_22_1) }
            (s_2[invRecv41(r_128_1, i_22_1)] && NoPerm < FullPerm) && qpRange41(r_128_1, i_22_1) ==> Heap[invRecv41(r_128_1, i_22_1), next] == r_128_1 && length_2 - 1 == i_22_1
          );
        
        // -- assume permission updates
          assume (forall r_128_1: Ref, i_22_1: int ::
            { QPMask[null, list(r_128_1, i_22_1)] }
            (s_2[invRecv41(r_128_1, i_22_1)] && NoPerm < FullPerm) && qpRange41(r_128_1, i_22_1) ==> (Heap[invRecv41(r_128_1, i_22_1), next] == r_128_1 && length_2 - 1 == i_22_1) && QPMask[null, list(r_128_1, i_22_1)] == Mask[null, list(r_128_1, i_22_1)] - FullPerm
          );
          assume (forall r_128_1: Ref, i_22_1: int ::
            { QPMask[null, list(r_128_1, i_22_1)] }
            !((s_2[invRecv41(r_128_1, i_22_1)] && NoPerm < FullPerm) && qpRange41(r_128_1, i_22_1)) ==> QPMask[null, list(r_128_1, i_22_1)] == Mask[null, list(r_128_1, i_22_1)]
          );
        
        // -- assume permission updates for independent locations 
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (s_2[r_129]) {
            assert {:msg "  Loop invariant (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v)) might not be preserved. Assertion allSet(r.next, length - 1, v) might not hold. (list_false.vpr@57.19--57.75) [105741]"}
              allSet(Heap, Heap[r_129, next], length_2 - 1, v_2);
          }
          assume false;
        }
        assume (forall r_130_1: Ref ::
          { s_2[r_130_1] }
          s_2[r_130_1] ==> allSet(Heap, Heap[r_130_1, next], length_2 - 1, v_2)
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Set#Card(s_2) > 0);
      assume state(Heap, Mask);
      havoc QPMask;
      
      // -- check if receiver acc(list(r, length), write) is injective
        assert {:msg "  While statement might fail. Quantified resource list(r, length) might not be injective. (list_false.vpr@52.19--52.84) [105742]"}
          (forall r_131: Ref, r_131_1: Ref ::
          { neverTriggered42(r_131), neverTriggered42(r_131_1) }
          (((r_131 != r_131_1 && (lists[r_131] && !s_2[r_131])) && (lists[r_131_1] && !s_2[r_131_1])) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_131 != r_131_1 || length_2 != length_2
        );
      
      // -- Define Inverse Function
        assume (forall r_131: Ref ::
          { Heap[null, list(r_131, length_2)] } { Mask[null, list(r_131, length_2)] } { lists[r_131] } { s_2[r_131] }
          (lists[r_131] && !s_2[r_131]) && NoPerm < FullPerm ==> invRecv42(r_131, length_2) == r_131 && qpRange42(r_131, length_2)
        );
        assume (forall r_132_1: Ref, i_23: int ::
          { invRecv42(r_132_1, i_23) }
          ((lists[invRecv42(r_132_1, i_23)] && !s_2[invRecv42(r_132_1, i_23)]) && NoPerm < FullPerm) && qpRange42(r_132_1, i_23) ==> invRecv42(r_132_1, i_23) == r_132_1 && length_2 == i_23
        );
      
      // -- Define updated permissions
        assume (forall r_132_1: Ref, i_23: int ::
          { QPMask[null, list(r_132_1, i_23)] }
          ((lists[invRecv42(r_132_1, i_23)] && !s_2[invRecv42(r_132_1, i_23)]) && NoPerm < FullPerm) && qpRange42(r_132_1, i_23) ==> (NoPerm < FullPerm ==> invRecv42(r_132_1, i_23) == r_132_1 && length_2 == i_23) && QPMask[null, list(r_132_1, i_23)] == Mask[null, list(r_132_1, i_23)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall r_132_1: Ref, i_23: int ::
          { QPMask[null, list(r_132_1, i_23)] }
          !(((lists[invRecv42(r_132_1, i_23)] && !s_2[invRecv42(r_132_1, i_23)]) && NoPerm < FullPerm) && qpRange42(r_132_1, i_23)) ==> QPMask[null, list(r_132_1, i_23)] == Mask[null, list(r_132_1, i_23)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall r_134: Ref ::
        { lists[r_134] } { s_2[r_134] } { allSet#frame(Heap[null, list(r_134, length_2)], r_134, length_2, v_2) }
        lists[r_134] && !s_2[r_134] ==> allSet(Heap, r_134, length_2, v_2)
      );
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource r.val might not be injective. (list_false.vpr@54.19--54.86) [105743]"}
        (forall r_135: Ref, r_135_1: Ref ::
        
        (((r_135 != r_135_1 && s_2[r_135]) && s_2[r_135_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_135 != r_135_1
      );
      
      // -- Define Inverse Function
        assume (forall r_135: Ref ::
          { Heap[r_135, val] } { QPMask[r_135, val] } { s_2[r_135] }
          s_2[r_135] && NoPerm < FullPerm ==> qpRange43(r_135) && invRecv43(r_135) == r_135
        );
        assume (forall o_4: Ref ::
          { invRecv43(o_4) }
          (s_2[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> invRecv43(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_135: Ref ::
          { Heap[r_135, val] } { QPMask[r_135, val] } { s_2[r_135] }
          s_2[r_135] ==> r_135 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          ((s_2[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> invRecv43(o_4) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!((s_2[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall r_136: Ref ::
        { s_2[r_136] }
        s_2[r_136] ==> Heap[r_136, val] == v_2
      );
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource r.next might not be injective. (list_false.vpr@54.19--54.86) [105744]"}
        (forall r_137: Ref, r_137_1: Ref ::
        
        (((r_137 != r_137_1 && s_2[r_137]) && s_2[r_137_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_137 != r_137_1
      );
      
      // -- Define Inverse Function
        assume (forall r_137: Ref ::
          { Heap[r_137, next] } { QPMask[r_137, next] } { s_2[r_137] }
          s_2[r_137] && NoPerm < FullPerm ==> qpRange44(r_137) && invRecv44(r_137) == r_137
        );
        assume (forall o_4: Ref ::
          { invRecv44(o_4) }
          (s_2[invRecv44(o_4)] && NoPerm < FullPerm) && qpRange44(o_4) ==> invRecv44(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall r_137: Ref ::
          { Heap[r_137, next] } { QPMask[r_137, next] } { s_2[r_137] }
          s_2[r_137] ==> r_137 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((s_2[invRecv44(o_4)] && NoPerm < FullPerm) && qpRange44(o_4) ==> (NoPerm < FullPerm ==> invRecv44(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((s_2[invRecv44(o_4)] && NoPerm < FullPerm) && qpRange44(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall r1_15: Ref, r2_15: Ref ::
        { s_2[r1_15], s_2[r2_15] }
        s_2[r1_15] && (s_2[r2_15] && r1_15 != r2_15) ==> Heap[r1_15, next] != Heap[r2_15, next]
      );
      havoc QPMask;
      
      // -- check if receiver acc(list(r.next, length - 1), write) is injective
        assert {:msg "  While statement might fail. Quantified resource list(r.next, length - 1) might not be injective. (list_false.vpr@56.19--56.75) [105745]"}
          (forall r_138: Ref, r_138_1: Ref ::
          { neverTriggered45(r_138), neverTriggered45(r_138_1) }
          (((r_138 != r_138_1 && s_2[r_138]) && s_2[r_138_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[r_138, next] != Heap[r_138_1, next] || length_2 - 1 != length_2 - 1
        );
      
      // -- Define Inverse Function
        assume (forall r_138: Ref ::
          { s_2[r_138] }
          s_2[r_138] && NoPerm < FullPerm ==> invRecv45(Heap[r_138, next], length_2 - 1) == r_138 && qpRange45(Heap[r_138, next], length_2 - 1)
        );
        assume (forall r_139_1: Ref, i_24_1: int ::
          { invRecv45(r_139_1, i_24_1) }
          (s_2[invRecv45(r_139_1, i_24_1)] && NoPerm < FullPerm) && qpRange45(r_139_1, i_24_1) ==> Heap[invRecv45(r_139_1, i_24_1), next] == r_139_1 && length_2 - 1 == i_24_1
        );
      
      // -- Define updated permissions
        assume (forall r_139_1: Ref, i_24_1: int ::
          { QPMask[null, list(r_139_1, i_24_1)] }
          (s_2[invRecv45(r_139_1, i_24_1)] && NoPerm < FullPerm) && qpRange45(r_139_1, i_24_1) ==> (NoPerm < FullPerm ==> Heap[invRecv45(r_139_1, i_24_1), next] == r_139_1 && length_2 - 1 == i_24_1) && QPMask[null, list(r_139_1, i_24_1)] == Mask[null, list(r_139_1, i_24_1)] + FullPerm
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall r_139_1: Ref, i_24_1: int ::
          { QPMask[null, list(r_139_1, i_24_1)] }
          !((s_2[invRecv45(r_139_1, i_24_1)] && NoPerm < FullPerm) && qpRange45(r_139_1, i_24_1)) ==> QPMask[null, list(r_139_1, i_24_1)] == Mask[null, list(r_139_1, i_24_1)]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume (forall r_141: Ref ::
        { s_2[r_141] }
        s_2[r_141] ==> allSet(Heap, Heap[r_141, next], length_2 - 1, v_2)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- list_false.vpr@65.9--65.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (list_false.vpr@65.16--65.21) [105746]"}
      false;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(list(r, length), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource list(r, length) might not be injective. (list_false.vpr@26.9--26.85) [105747]"}
        (forall r_10_1: Ref, r_10_2: Ref ::
        { neverTriggered3(r_10_1), neverTriggered3(r_10_2) }
        (((r_10_1 != r_10_2 && lists[r_10_1]) && lists[r_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_10_1 != r_10_2 || length_2 != length_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of m1 might not hold. There might be insufficient permission to access list(r, length) (list_false.vpr@26.9--26.85) [105748]"}
        (forall r_10_1: Ref ::
        { Heap[null, list(r_10_1, length_2)] } { Mask[null, list(r_10_1, length_2)] } { lists[r_10_1] }
        lists[r_10_1] ==> Mask[null, list(r_10_1, length_2)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(list(r, length), write)
      assume (forall r_10_1: Ref ::
        { Heap[null, list(r_10_1, length_2)] } { Mask[null, list(r_10_1, length_2)] } { lists[r_10_1] }
        lists[r_10_1] && NoPerm < FullPerm ==> invRecv3(r_10_1, length_2) == r_10_1 && qpRange3(r_10_1, length_2)
      );
      assume (forall r_11_1: Ref, i_2_1: int ::
        { invRecv3(r_11_1, i_2_1) }
        (lists[invRecv3(r_11_1, i_2_1)] && NoPerm < FullPerm) && qpRange3(r_11_1, i_2_1) ==> invRecv3(r_11_1, i_2_1) == r_11_1 && length_2 == i_2_1
      );
    
    // -- assume permission updates
      assume (forall r_11_1: Ref, i_2_1: int ::
        { QPMask[null, list(r_11_1, i_2_1)] }
        (lists[invRecv3(r_11_1, i_2_1)] && NoPerm < FullPerm) && qpRange3(r_11_1, i_2_1) ==> (invRecv3(r_11_1, i_2_1) == r_11_1 && length_2 == i_2_1) && QPMask[null, list(r_11_1, i_2_1)] == Mask[null, list(r_11_1, i_2_1)] - FullPerm
      );
      assume (forall r_11_1: Ref, i_2_1: int ::
        { QPMask[null, list(r_11_1, i_2_1)] }
        !((lists[invRecv3(r_11_1, i_2_1)] && NoPerm < FullPerm) && qpRange3(r_11_1, i_2_1)) ==> QPMask[null, list(r_11_1, i_2_1)] == Mask[null, list(r_11_1, i_2_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (lists[r_12_1]) {
        assert {:msg "  Postcondition of m1 might not hold. Assertion allSet(r, length, v) might not hold. (list_false.vpr@26.9--26.85) [105749]"}
          allSet(Heap, r_12_1, length_2, v_2);
      }
      assume false;
    }
    assume (forall r_13_1: Ref ::
      { lists[r_13_1] } { allSet#frame(Heap[null, list(r_13_1, length_2)], r_13_1, length_2, v_2) }
      lists[r_13_1] ==> allSet(Heap, r_13_1, length_2, v_2)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}