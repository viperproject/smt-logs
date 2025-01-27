// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:08:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/unsound/list-swap.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/unsound/list-swap-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_10: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_10, f_16] }
  Heap[o_10, $allocated] ==> Heap[Heap[o_10, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_11: Ref, f_17: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_11, f_17] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_11, f_17) ==> Heap[o_11, f_17] == ExhaleHeap[o_11, f_17]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_17: (Field A B) ::
    { ExhaleHeap[o2_3, f_17] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_17] ==> Heap[o2_3, f_17] == ExhaleHeap[o2_3, f_17]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_17: (Field A B) ::
    { ExhaleHeap[o2_3, f_17] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_17] ==> Heap[o2_3, f_17] == ExhaleHeap[o2_3, f_17]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_11: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_11, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_11, $allocated] ==> ExhaleHeap[o_11, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_10: Ref, f_18: (Field A B), v: B ::
  { Heap[o_10, f_18:=v] }
  succHeap(Heap, Heap[o_10, f_18:=v])
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

function  neverTriggered1(n_3: Ref): bool;
function  neverTriggered2(n_5: Ref): bool;
function  neverTriggered3(n_7: Ref): bool;
function  neverTriggered4(n_8: Ref): bool;
function  neverTriggered5(n_9: Ref): bool;
function  neverTriggered6(n_10_1: Ref): bool;
function  neverTriggered7(n_11_2: Ref): bool;
function  neverTriggered8(n_12: Ref): bool;
function  neverTriggered9(n_13_2: Ref): bool;
function  neverTriggered10(n_14_1: Ref): bool;
function  neverTriggered11(n_15: Ref): bool;
function  neverTriggered12(n_1: Ref): bool;
function  neverTriggered13(n$1_1: Ref): bool;
function  neverTriggered14(n_2: Ref): bool;
function  neverTriggered15(n_3: Ref): bool;
function  neverTriggered16(n_4: Ref): bool;
function  neverTriggered17(n_5: Ref): bool;
function  neverTriggered18(n_6: Ref): bool;
function  neverTriggered19(n_7: Ref): bool;
function  neverTriggered20(n_8: Ref): bool;
function  neverTriggered21(n_9: Ref): bool;
function  neverTriggered22(n$1_2: Ref): bool;
function  neverTriggered23(n_1: Ref): bool;
function  neverTriggered24(n$1_1: Ref): bool;
function  neverTriggered25(n_2: Ref): bool;
function  neverTriggered26(n_3: Ref): bool;
function  neverTriggered27(n_4: Ref): bool;
function  neverTriggered28(n_5: Ref): bool;
function  neverTriggered29(n_6: Ref): bool;
function  neverTriggered30(n_7: Ref): bool;
function  neverTriggered31(n_8: Ref): bool;
function  neverTriggered32(n_9: Ref): bool;
function  neverTriggered33(n$1_2: Ref): bool;
function  neverTriggered34(n_1: Ref): bool;
function  neverTriggered35(n_2: Ref): bool;
function  neverTriggered36(n_3: Ref): bool;
function  neverTriggered37(n_4: Ref): bool;
function  neverTriggered38(n_5: Ref): bool;
function  neverTriggered39(n$2_6: Ref): bool;
function  neverTriggered40(n$2_2: Ref): bool;
function  neverTriggered41(n_6: Ref): bool;
function  neverTriggered42(n_7: Ref): bool;
function  neverTriggered43(n_8: Ref): bool;
function  neverTriggered44(n_9: Ref): bool;
function  neverTriggered45(n_10_1: Ref): bool;
function  neverTriggered46(n_11_2: Ref): bool;
function  neverTriggered47(n_12: Ref): bool;
function  neverTriggered48(n$2_3_2: Ref): bool;
function  neverTriggered49(n_13_2: Ref): bool;
function  neverTriggered50(n$1_2: Ref): bool;
function  neverTriggered51(n_14_1: Ref): bool;
function  neverTriggered52(n$1_3: Ref): bool;
function  neverTriggered53(n_15: Ref): bool;
function  neverTriggered54(n$1_4: Ref): bool;
function  neverTriggered55(n_16_1: Ref): bool;
function  neverTriggered56(n$1_5: Ref): bool;
function  neverTriggered57(n_17: Ref): bool;
function  neverTriggered58(n$1_6: Ref): bool;
function  neverTriggered59(n_18: Ref): bool;
function  neverTriggered60(n$1_7_2: Ref): bool;
function  neverTriggered61(n_19: Ref): bool;
function  neverTriggered62(n$1_8_1: Ref): bool;
function  neverTriggered63(n_20: Ref): bool;
function  neverTriggered64(n$1_9_2: Ref): bool;
function  neverTriggered65(n_21: Ref): bool;
function  neverTriggered66(n$1_10_1: Ref): bool;
function  neverTriggered67(n_22: Ref): bool;
function  neverTriggered68(n$1_11_1: Ref): bool;
function  neverTriggered69(n_23: Ref): bool;
function  neverTriggered70(n_24: Ref): bool;
function  neverTriggered71(n$2_14_1: Ref): bool;
function  neverTriggered72(n$2_15_1: Ref): bool;
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
function  invRecv43(recv: Ref): Ref;
function  invRecv44(recv: Ref): Ref;
function  invRecv45(recv: Ref): Ref;
function  invRecv46(recv: Ref): Ref;
function  invRecv47(recv: Ref): Ref;
function  invRecv48(recv: Ref): Ref;
function  invRecv49(recv: Ref): Ref;
function  invRecv50(recv: Ref): Ref;
function  invRecv51(recv: Ref): Ref;
function  invRecv52(recv: Ref): Ref;
function  invRecv53(recv: Ref): Ref;
function  invRecv54(recv: Ref): Ref;
function  invRecv55(recv: Ref): Ref;
function  invRecv56(recv: Ref): Ref;
function  invRecv57(recv: Ref): Ref;
function  invRecv58(recv: Ref): Ref;
function  invRecv59(recv: Ref): Ref;
function  invRecv60(recv: Ref): Ref;
function  invRecv61(recv: Ref): Ref;
function  invRecv62(recv: Ref): Ref;
function  invRecv63(recv: Ref): Ref;
function  invRecv64(recv: Ref): Ref;
function  invRecv65(recv: Ref): Ref;
function  invRecv66(recv: Ref): Ref;
function  invRecv67(recv: Ref): Ref;
function  invRecv68(recv: Ref): Ref;
function  invRecv69(recv: Ref): Ref;
function  invRecv70(recv: Ref): Ref;
function  invRecv71(recv: Ref): Ref;
function  invRecv72(recv: Ref): Ref;
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
function  qpRange43(recv: Ref): bool;
function  qpRange44(recv: Ref): bool;
function  qpRange45(recv: Ref): bool;
function  qpRange46(recv: Ref): bool;
function  qpRange47(recv: Ref): bool;
function  qpRange48(recv: Ref): bool;
function  qpRange49(recv: Ref): bool;
function  qpRange50(recv: Ref): bool;
function  qpRange51(recv: Ref): bool;
function  qpRange52(recv: Ref): bool;
function  qpRange53(recv: Ref): bool;
function  qpRange54(recv: Ref): bool;
function  qpRange55(recv: Ref): bool;
function  qpRange56(recv: Ref): bool;
function  qpRange57(recv: Ref): bool;
function  qpRange58(recv: Ref): bool;
function  qpRange59(recv: Ref): bool;
function  qpRange60(recv: Ref): bool;
function  qpRange61(recv: Ref): bool;
function  qpRange62(recv: Ref): bool;
function  qpRange63(recv: Ref): bool;
function  qpRange64(recv: Ref): bool;
function  qpRange65(recv: Ref): bool;
function  qpRange66(recv: Ref): bool;
function  qpRange67(recv: Ref): bool;
function  qpRange68(recv: Ref): bool;
function  qpRange69(recv: Ref): bool;
function  qpRange70(recv: Ref): bool;
function  qpRange71(recv: Ref): bool;
function  qpRange72(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: $$
// - height 0: apply_TCFraming
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
// Translation of domain Edge
// ==================================================

// The type for domain Edge
type EdgeDomainType;

// Translation of domain function edge_pred
function  edge_pred(e: EdgeDomainType): Ref;

// Translation of domain function edge_succ
function  edge_succ(e: EdgeDomainType): Ref;

// Translation of domain function create_edge
function  create_edge(p_3: Ref, s: Ref): EdgeDomainType;

// Translation of domain function create_edge_
function  create_edge_(p_3: Ref, s: Ref): EdgeDomainType;

// Translation of domain axiom edge_injectivity
axiom (forall p_1: Ref, s_1: Ref ::
  { (create_edge(p_1, s_1): EdgeDomainType) }
  (edge_pred((create_edge(p_1, s_1): EdgeDomainType)): Ref) == p_1 && (edge_succ((create_edge(p_1, s_1): EdgeDomainType)): Ref) == s_1
);

// ==================================================
// Translation of domain TrClo
// ==================================================

// The type for domain TrClo
type TrCloDomainType;

// Translation of domain function exists_path
function  exists_path(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function exists_path_
function  exists_path_(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function exists_spath
function  exists_spath(EG: (Set EdgeDomainType), from: (Set Ref), to: Ref): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M: (Set Ref)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_37: Ref): Set Ref;

// Translation of domain function inst_uReach_rev
function  inst_uReach_rev(EG: (Set EdgeDomainType), x_37: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function edge
function  edge(EG: (Set EdgeDomainType), p_3: Ref, s: Ref): bool;

// Translation of domain function edge_
function  edge_(EG: (Set EdgeDomainType), p_3: Ref, s: Ref): bool;

// Translation of domain function succs
function  succs(EG: (Set EdgeDomainType), pred_2: Ref): Set Ref;

// Translation of domain axiom ax_Succs
axiom (forall EG_1: (Set EdgeDomainType), pred_3: Ref, succ: Ref ::
  { (succs(EG_1, pred_3): Set Ref)[succ] }
  (succs(EG_1, pred_3): Set Ref)[succ] == (edge_(EG_1, pred_3, succ): bool)
);

// Translation of domain axiom ax_EdgeSynonim
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_1: Ref ::
  { (edge(EG_1, p_1, s_1): bool) }
  (edge(EG_1, p_1, s_1): bool) == (edge_(EG_1, p_1, s_1): bool)
);

// Translation of domain axiom ax_Edge
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_1: Ref ::
  { EG_1[(create_edge(p_1, s_1): EdgeDomainType)] } { (edge(EG_1, p_1, s_1): bool) }
  (edge_(EG_1, p_1, s_1): bool) == EG_1[(create_edge(p_1, s_1): EdgeDomainType)]
);

// Translation of domain axiom ax_NoExit
axiom (forall EG_1: (Set EdgeDomainType), U_1: (Set Ref), M_1: (Set Ref) ::
  { (apply_noExit(EG_1, U_1, M_1): bool) }
  (apply_noExit(EG_1, U_1, M_1): bool) ==> (forall u_1: Ref, v_2: Ref ::
    { (edge(EG_1, u_1, v_2): bool) } { M_1[u_1], M_1[v_2] }
    M_1[u_1] && (U_1[v_2] && !M_1[v_2]) ==> !(edge(EG_1, u_1, v_2): bool)
  ) ==> (forall u_1_1: Ref, v_1_1: Ref ::
    { (exists_path(EG_1, u_1_1, v_1_1): bool) } { M_1[u_1_1], M_1[v_1_1] }
    M_1[u_1_1] && (U_1[v_1_1] && !M_1[v_1_1]) ==> !(exists_path(EG_1, u_1_1, v_1_1): bool)
  )
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_instantiation_uReach_rev
axiom (forall EG_1: (Set EdgeDomainType), u_1: Ref, y: Ref ::
  { (inst_uReach_rev(EG_1, y): Set Ref)[u_1] } { (exists_path(EG_1, u_1, y): bool) }
  (inst_uReach_rev(EG_1, y): Set Ref)[u_1] == (exists_path(EG_1, u_1, y): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) }
  (exists_path(EG_1, start_1, end_1): bool) == (exists_path_(EG_1, start_1, end_1): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) } { (edge(EG_1, start_1, end_1): bool) }
  (exists_path_(EG_1, start_1, end_1): bool) == (start_1 == end_1 || (exists w_2: Ref ::
    { (edge(EG_1, start_1, w_2): bool) } { (exists_path_(EG_1, w_2, end_1): bool) }
    (edge(EG_1, start_1, w_2): bool) && (exists_path_(EG_1, w_2, end_1): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_1: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_1, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_1, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_1, v_2): bool)
);

// Translation of domain axiom ax_AcyclicGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (acyclic_graph(EG_1): bool) }
  (acyclic_graph(EG_1): bool) == (forall v1: Ref, v2: Ref ::
    { (edge(EG_1, v1, v2): bool) } { (exists_path(EG_1, v2, v1): bool) }
    !(edge(EG_1, v1, v2): bool) || !(exists_path(EG_1, v2, v1): bool)
  )
);

// Translation of domain axiom ax_UnsharedGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (unshared_graph(EG_1): bool) }
  (unshared_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v1, v_2): bool), (edge(EG_1, v2, v_2): bool) }
    (edge(EG_1, v1, v_2): bool) && (edge(EG_1, v2, v_2): bool) ==> v1 == v2
  )
);

// Translation of domain axiom ax_FuncGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (func_graph(EG_1): bool) }
  (func_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v_2, v1): bool), (edge(EG_1, v_2, v2): bool) }
    (edge(EG_1, v_2, v1): bool) && (edge(EG_1, v_2, v2): bool) ==> v1 == v2
  )
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function $$
// ==================================================

// Uninterpreted function definitions
function  $$(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
function  $$'(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$(Heap, refs) }
  $$(Heap, refs) == $$'(Heap, refs) && dummyFunction($$#triggerStateless(refs))
);
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$'(Heap, refs) }
  dummyFunction($$#triggerStateless(refs))
);

// Framing axioms
function  $$#frame(frame: FrameType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(FrameFragment($$#condqp1(Heap, refs)), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1: Ref, s_1: Ref ::
    { (create_edge(p_1, s_1): EdgeDomainType) }
    (refs[p_1] && (refs[s_1] && Heap[p_1, next] == s_1)) == $$'(Heap, refs)[(create_edge(p_1, s_1): EdgeDomainType)]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1_1: Ref, s_1_1: Ref ::
    { refs[p_1_1], refs[s_1_1], (exists_path($$'(Heap, refs), p_1_1, s_1_1): bool) }
    refs[p_1_1] && (exists_path($$'(Heap, refs), p_1_1, s_1_1): bool) ==> refs[s_1_1]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_2_1: Ref, s_2_1: Ref ::
    { refs[p_2_1], refs[s_2_1], (exists_path($$'(Heap, refs), p_2_1, s_2_1): bool) }
    refs[s_2_1] && (exists_path($$'(Heap, refs), p_2_1, s_2_1): bool) ==> refs[p_2_1]
  )
);

// Trigger function (controlling recursive postconditions)
function  $$#trigger(frame: FrameType, refs: (Set Ref)): bool;

// State-independent trigger function
function  $$#triggerStateless(refs: (Set Ref)): Set EdgeDomainType;

// Check contract well-formedness and postcondition
procedure $$#definedness(refs: (Set Ref)) returns (Result: (Set EdgeDomainType))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var p_4: Ref;
  var s_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@184.14--184.68) [13833]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < 1 / 2 ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@184.14--184.68) [13834]"}
      (forall n_3: Ref ::
      { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
      refs[n_3] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && 1 / 2 > NoPerm ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> invRecv1(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_4]) {
          if (refs[s_2]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (list-swap.vpr@186.13--190.44) [13835]"}
              HasDirectPerm(Mask, p_4, next);
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4: Ref ::
      { (create_edge(p_4_1, s_4): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4] && Heap[p_4_1, next] == s_4)) == Result[(create_edge(p_4_1, s_4): EdgeDomainType)]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (p in refs) && exists_path(result, p, s) ==> (s in refs))
      if (*) {
        assume false;
      }
    assume (forall p_6: Ref, s_6: Ref ::
      { refs[p_6], refs[s_6], (exists_path(Result, p_6, s_6): bool) }
      refs[p_6] && (exists_path(Result, p_6, s_6): bool) ==> refs[s_6]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (s in refs) && exists_path(result, p, s) ==> (p in refs))
      if (*) {
        assume false;
      }
    assume (forall p_8: Ref, s_8: Ref ::
      { refs[p_8], refs[s_8], (exists_path(Result, p_8, s_8): bool) }
      refs[s_8] && (exists_path(Result, p_8, s_8): bool) ==> refs[p_8]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function apply_TCFraming
// ==================================================

// Uninterpreted function definitions
function  apply_TCFraming(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
function  apply_TCFraming'(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming(Heap, g0, g1) }
  apply_TCFraming(Heap, g0, g1) == apply_TCFraming'(Heap, g0, g1) && dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming'(Heap, g0, g1) }
  dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);

// Framing axioms
function  apply_TCFraming#frame(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, 1 / 2)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp2(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 <==> g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2) && (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp2(Heap2Heap, g0, g1) == apply_TCFraming#condqp2(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, 1 / 2)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp3(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp3(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 <==> g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2) && (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp3(Heap2Heap, g0, g1) == apply_TCFraming#condqp3(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1: Ref, v_2: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_1, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_2): bool) }
    g0[u_1] && (g0[v_2] && (exists_path($$(Heap, g0), u_1, v_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_1, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1_1: Ref, v_1_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_1_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1_1, v_1_1): bool) }
    g1[u_1_1] && (g1[v_1_1] && (exists_path($$(Heap, g1), u_1_1, v_1_1): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_1_1, v_1_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_2_2: Ref, v_2_2: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_2_2, v_2_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_2, v_2_2): bool) }
    g0[u_2_2] && (g0[v_2_2] && !(exists_path($$(Heap, g0), u_2_2, v_2_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_2_2, v_2_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_3_1: Ref, v_3_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
    g1[u_3_1] && (g1[v_3_1] && !(exists_path($$(Heap, g1), u_3_1, v_3_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_3_1, v_3_1): bool)
  )
);

// Trigger function (controlling recursive postconditions)
function  apply_TCFraming#trigger(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;

// State-independent trigger function
function  apply_TCFraming#triggerStateless(g0: (Set Ref), g1: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure apply_TCFraming#definedness(g0: (Set Ref), g1: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var u_21: Ref;
  var v_21: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_22: Ref;
  var v_22: Ref;
  var u_23: Ref;
  var v_23: Ref;
  var u_24: Ref;
  var v_24: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@248.14--248.67) [13836]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && NoPerm < 1 / 2 ==> qpRange2(n_5) && invRecv2(n_5) == n_5
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (g0[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@248.14--248.67) [13837]"}
      (forall n_5: Ref ::
      { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
      g0[n_5] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && 1 / 2 > NoPerm ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> invRecv2(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!((g0[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@249.14--249.67) [13838]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && NoPerm < 1 / 2 ==> qpRange3(n_7) && invRecv3(n_7) == n_7
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (g1[invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@249.14--249.67) [13839]"}
      (forall n_7: Ref ::
      { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
      g1[n_7] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && 1 / 2 > NoPerm ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9) ==> (NoPerm < 1 / 2 ==> invRecv3(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!((g1[invRecv3(o_9)] && NoPerm < 1 / 2) && qpRange3(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_21]) {
          if (g0[v_21]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@257.134--257.140) [13840]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@257.134--257.140) [13841]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered4(n_8), neverTriggered4(n_8_1) }
                  (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@257.134--257.140) [13842]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && NoPerm < 1 / 2 ==> qpRange4(n_8) && invRecv4(n_8) == n_8
                );
                assume (forall o_9: Ref ::
                  { invRecv4(o_9) }
                  g0[invRecv4(o_9)] && (NoPerm < 1 / 2 && qpRange4(o_9)) ==> invRecv4(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g0[u_21] && (g0[v_21] && (exists_path($$(Heap, g0), u_21, v_21): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@257.162--257.177) [13843]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@257.162--257.177) [13844]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered5(n_9), neverTriggered5(n_9_1) }
                (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@257.162--257.177) [13845]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] ==> 1 / 2 > NoPerm ==> Mask[n_9, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && NoPerm < 1 / 2 ==> qpRange5(n_9) && invRecv5(n_9) == n_9
              );
              assume (forall o_9: Ref ::
                { invRecv5(o_9) }
                Set#Union(g0, g1)[invRecv5(o_9)] && (NoPerm < 1 / 2 && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
              );
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
    assume (forall u_5_2: Ref, v_5_2: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_5_2, v_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5_2, v_5_2): bool) }
      g0[u_5_2] && (g0[v_5_2] && (exists_path($$(Heap, g0), u_5_2, v_5_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_5_2, v_5_2): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_22]) {
          if (g1[v_22]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@258.134--258.140) [13846]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@258.134--258.140) [13847]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered6(n_10_1), neverTriggered6(n_10_2) }
                  (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@258.134--258.140) [13848]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && NoPerm < 1 / 2 ==> qpRange6(n_10_1) && invRecv6(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv6(o_9) }
                  g1[invRecv6(o_9)] && (NoPerm < 1 / 2 && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g1[u_22] && (g1[v_22] && (exists_path($$(Heap, g1), u_22, v_22): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@258.162--258.177) [13849]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                Set#Union(g1, g0)[n_11_2] && dummyFunction(Heap[n_11_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@258.162--258.177) [13850]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered7(n_11_2), neverTriggered7(n_11_3) }
                (((n_11_2 != n_11_3 && Set#Union(g1, g0)[n_11_2]) && Set#Union(g1, g0)[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@258.162--258.177) [13851]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                Set#Union(g1, g0)[n_11_2] ==> 1 / 2 > NoPerm ==> Mask[n_11_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_2: Ref ::
                { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                Set#Union(g1, g0)[n_11_2] && NoPerm < 1 / 2 ==> qpRange7(n_11_2) && invRecv7(n_11_2) == n_11_2
              );
              assume (forall o_9: Ref ::
                { invRecv7(o_9) }
                Set#Union(g1, g0)[invRecv7(o_9)] && (NoPerm < 1 / 2 && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
              );
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
    assume (forall u_7: Ref, v_7: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_7, v_7): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_7, v_7): bool) }
      g1[u_7] && (g1[v_7] && (exists_path($$(Heap, g1), u_7, v_7): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_7, v_7): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_23]) {
          if (g0[v_23]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@259.135--259.141) [13852]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g0[n_12] && dummyFunction(Heap[n_12, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@259.135--259.141) [13853]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered8(n_12), neverTriggered8(n_12_1) }
                  (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@259.135--259.141) [13854]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g0[n_12] ==> 1 / 2 > NoPerm ==> Mask[n_12, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g0[n_12] && NoPerm < 1 / 2 ==> qpRange8(n_12) && invRecv8(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv8(o_9) }
                  g0[invRecv8(o_9)] && (NoPerm < 1 / 2 && qpRange8(o_9)) ==> invRecv8(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g0[u_23] && (g0[v_23] && !(exists_path($$(Heap, g0), u_23, v_23): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@259.164--259.179) [13855]"}
                (forall n_13_2: Ref ::
                { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                Set#Union(g0, g1)[n_13_2] && dummyFunction(Heap[n_13_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@259.164--259.179) [13856]"}
                (forall n_13_2: Ref, n_13_3: Ref ::
                { neverTriggered9(n_13_2), neverTriggered9(n_13_3) }
                (((n_13_2 != n_13_3 && Set#Union(g0, g1)[n_13_2]) && Set#Union(g0, g1)[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@259.164--259.179) [13857]"}
                (forall n_13_2: Ref ::
                { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                Set#Union(g0, g1)[n_13_2] ==> 1 / 2 > NoPerm ==> Mask[n_13_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_13_2: Ref ::
                { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                Set#Union(g0, g1)[n_13_2] && NoPerm < 1 / 2 ==> qpRange9(n_13_2) && invRecv9(n_13_2) == n_13_2
              );
              assume (forall o_9: Ref ::
                { invRecv9(o_9) }
                Set#Union(g0, g1)[invRecv9(o_9)] && (NoPerm < 1 / 2 && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
              );
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
    assume (forall u_9_2: Ref, v_9_2: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_9_2, v_9_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_2, v_9_2): bool) }
      g0[u_9_2] && (g0[v_9_2] && !(exists_path($$(Heap, g0), u_9_2, v_9_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_9_2, v_9_2): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_24]) {
          if (g1[v_24]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@260.135--260.141) [13858]"}
                  (forall n_14_1: Ref ::
                  { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                  g1[n_14_1] && dummyFunction(Heap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@260.135--260.141) [13859]"}
                  (forall n_14_1: Ref, n_14_2: Ref ::
                  { neverTriggered10(n_14_1), neverTriggered10(n_14_2) }
                  (((n_14_1 != n_14_2 && g1[n_14_1]) && g1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@260.135--260.141) [13860]"}
                  (forall n_14_1: Ref ::
                  { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                  g1[n_14_1] ==> 1 / 2 > NoPerm ==> Mask[n_14_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_14_1: Ref ::
                  { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                  g1[n_14_1] && NoPerm < 1 / 2 ==> qpRange10(n_14_1) && invRecv10(n_14_1) == n_14_1
                );
                assume (forall o_9: Ref ::
                  { invRecv10(o_9) }
                  g1[invRecv10(o_9)] && (NoPerm < 1 / 2 && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g1[u_24] && (g1[v_24] && !(exists_path($$(Heap, g1), u_24, v_24): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@260.164--260.179) [13861]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@260.164--260.179) [13862]"}
                (forall n_15: Ref, n_15_1: Ref ::
                { neverTriggered11(n_15), neverTriggered11(n_15_1) }
                (((n_15 != n_15_1 && Set#Union(g1, g0)[n_15]) && Set#Union(g1, g0)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@260.164--260.179) [13863]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] ==> 1 / 2 > NoPerm ==> Mask[n_15, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && NoPerm < 1 / 2 ==> qpRange11(n_15) && invRecv11(n_15) == n_15
              );
              assume (forall o_9: Ref ::
                { invRecv11(o_9) }
                Set#Union(g1, g0)[invRecv11(o_9)] && (NoPerm < 1 / 2 && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
              );
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
    assume (forall u_11_2: Ref, v_11_2: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_11_2, v_11_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_2, v_11_2): bool) }
      g1[u_11_2] && (g1[v_11_2] && !(exists_path($$(Heap, g1), u_11_2, v_11_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_11_2, v_11_2): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method link
// ==================================================

procedure link(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_28: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_21: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_5: Ref;
  var v2_5: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    if (y != null) {
      assume g_1[y];
    }
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@265.14--265.34) [13864]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange12(n_1) && invRecv12(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        ((g_1[invRecv12(o_9)] && invRecv12(o_9) != x) && NoPerm < 1 / 2) && qpRange12(o_9) ==> invRecv12(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@265.14--265.34) [13865]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv12(o_9)] && invRecv12(o_9) != x) && NoPerm < 1 / 2) && qpRange12(o_9) ==> (NoPerm < 1 / 2 ==> invRecv12(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv12(o_9)] && invRecv12(o_9) != x) && NoPerm < 1 / 2) && qpRange12(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_28]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@265.14--265.34) [13866]"}
            HasDirectPerm(Mask, n$0_28, next);
        }
        if (g_1[n$0_28] && Heap[n$0_28, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@265.14--265.34) [13867]"}
            HasDirectPerm(Mask, n$0_28, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@266.14--266.28) [13868]"}
        HasDirectPerm(Mask, x, next);
    assume Heap[x, next] == null;
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@267.13--267.33) [13869]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange13(n$1_1) && invRecv13(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((g_1[invRecv13(o_9)] && invRecv13(o_9) != x) && NoPerm < 1 / 2) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@267.13--267.33) [13870]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv13(o_9)] && invRecv13(o_9) != x) && NoPerm < 1 / 2) && qpRange13(o_9) ==> (NoPerm < 1 / 2 ==> invRecv13(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + 1 / 2) && (!(((g_1[invRecv13(o_9)] && invRecv13(o_9) != x) && NoPerm < 1 / 2) && qpRange13(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_21]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@267.13--267.33) [13871]"}
            HasDirectPerm(PostMask, n$2_21, next);
        }
        if (g_1[n$2_21] && PostHeap[n$2_21, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@267.13--267.33) [13872]"}
            HasDirectPerm(PostMask, n$2_21, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@268.13--268.24) [13873]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == y;
    assume state(PostHeap, PostMask);
    if (y == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@269.27--269.32) [13874]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@269.27--269.32) [13875]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered14(n_2), neverTriggered14(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@269.27--269.32) [13876]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange14(n_2) && invRecv14(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv14(o_9) }
              g_1[invRecv14(o_9)] && (NoPerm < 1 / 2 && qpRange14(o_9)) ==> invRecv14(o_9) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := oldHeap;
          ExhaleWellDef0Mask := oldMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@269.40--269.45) [13877]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@269.40--269.45) [13878]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered15(n_3), neverTriggered15(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@269.40--269.45) [13879]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange15(n_3) && invRecv15(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv15(o_9) }
              g_1[invRecv15(o_9)] && (NoPerm < 1 / 2 && qpRange15(o_9)) ==> invRecv15(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@272.18--272.23) [13880]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@272.18--272.23) [13881]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered16(n_4), neverTriggered16(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@272.18--272.23) [13882]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && NoPerm < 1 / 2 ==> qpRange16(n_4) && invRecv16(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv16(o_9) }
                g_1[invRecv16(o_9)] && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@272.45--272.50) [13883]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@272.45--272.50) [13884]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered17(n_5), neverTriggered17(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@272.45--272.50) [13885]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange17(n_5) && invRecv17(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv17(o_9) }
                g_1[invRecv17(o_9)] && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == x && v2_1 == y))
      );
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (v1_5 != v2_5) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@276.29--276.34) [13886]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@276.29--276.34) [13887]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered18(n_6), neverTriggered18(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@276.29--276.34) [13888]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange18(n_6) && invRecv18(n_6) == n_6
                );
                assume (forall o_9: Ref ::
                  { invRecv18(o_9) }
                  g_1[invRecv18(o_9)] && (NoPerm < 1 / 2 && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.37--277.42) [13889]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.37--277.42) [13890]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered19(n_7), neverTriggered19(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.37--277.42) [13891]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange19(n_7) && invRecv19(n_7) == n_7
                );
                assume (forall o_9: Ref ::
                  { invRecv19(o_9) }
                  g_1[invRecv19(o_9)] && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_5, v2_5): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.71--277.76) [13892]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.71--277.76) [13893]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered20(n_8), neverTriggered20(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.71--277.76) [13894]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange20(n_8) && invRecv20(n_8) == n_8
                  );
                  assume (forall o_9: Ref ::
                    { invRecv20(o_9) }
                    g_1[invRecv20(o_9)] && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> invRecv20(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_5, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.103--277.108) [13895]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.103--277.108) [13896]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered21(n_9), neverTriggered21(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.103--277.108) [13897]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange21(n_9) && invRecv21(n_9) == n_9
                    );
                    assume (forall o_9: Ref ::
                      { invRecv21(o_9) }
                      g_1[invRecv21(o_9)] && (NoPerm < 1 / 2 && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@267.13--267.33) [13898]"}
      !g_1[null];
    assert {:msg "  Postcondition of link might not hold. Assertion (x in g) might not hold. (list-swap.vpr@267.13--267.33) [13899]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access x.next (list-swap.vpr@267.13--267.33) [13900]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@267.13--267.33) [13901]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@267.13--267.33) [13902]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered22(n$1_2), neverTriggered22(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access n$1.next (list-swap.vpr@267.13--267.33) [13903]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange22(n$1_2) && invRecv22(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (g_1[invRecv22(o_9)] && invRecv22(o_9) != x) && (NoPerm < 1 / 2 && qpRange22(o_9)) ==> invRecv22(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv22(o_9)] && invRecv22(o_9) != x) && (NoPerm < 1 / 2 && qpRange22(o_9)) ==> invRecv22(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv22(o_9)] && invRecv22(o_9) != x) && (NoPerm < 1 / 2 && qpRange22(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of link might not hold. Assertion (n$2.next in g) might not hold. (list-swap.vpr@267.13--267.33) [13904]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link might not hold. Assertion x.next == y might not hold. (list-swap.vpr@268.13--268.24) [13905]"}
      Heap[x, next] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link might not hold. Assertion $$(g) == old($$(g)) might not hold. (list-swap.vpr@269.13--269.46) [13906]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (list-swap.vpr@270.13--272.78) [13907]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) || (v1_4 == x && v2_4 == y));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) || (v1_5_1 == x && v2_5_1 == y))
      );
    }
    if (y != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of link might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (list-swap.vpr@273.13--277.118) [13908]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink
// ==================================================

procedure unlink(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_12: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_5: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_7: Ref;
  var v2_7: Ref;
  var v1_8: Ref;
  var v2_8: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@281.14--281.34) [13909]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange23(n_1) && invRecv23(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@281.14--281.34) [13910]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9) ==> (NoPerm < 1 / 2 ==> invRecv23(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@281.14--281.34) [13911]"}
            HasDirectPerm(Mask, n$0_12, next);
        }
        if (g_1[n$0_12] && Heap[n$0_12, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@281.14--281.34) [13912]"}
            HasDirectPerm(Mask, n$0_12, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@282.13--282.33) [13913]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange24(n$1_1) && invRecv24(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9) ==> invRecv24(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@282.13--282.33) [13914]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9) ==> (NoPerm < 1 / 2 ==> invRecv24(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + 1 / 2) && (!(((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@282.13--282.33) [13915]"}
            HasDirectPerm(PostMask, n$2_5, next);
        }
        if (g_1[n$2_5] && PostHeap[n$2_5, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@282.13--282.33) [13916]"}
            HasDirectPerm(PostMask, n$2_5, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@283.13--283.27) [13917]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@284.13--284.56) [13918]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@284.37--284.42) [13919]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@284.37--284.42) [13920]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered25(n_2), neverTriggered25(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@284.37--284.42) [13921]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange25(n_2) && invRecv25(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv25(o_9) }
              g_1[invRecv25(o_9)] && (NoPerm < 1 / 2 && qpRange25(o_9)) ==> invRecv25(o_9) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := oldHeap;
          ExhaleWellDef0Mask := oldMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@284.50--284.55) [13922]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@284.50--284.55) [13923]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered26(n_3), neverTriggered26(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@284.50--284.55) [13924]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange26(n_3) && invRecv26(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv26(o_9) }
              g_1[invRecv26(o_9)] && (NoPerm < 1 / 2 && qpRange26(o_9)) ==> invRecv26(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@285.13--287.89) [13925]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@287.18--287.23) [13926]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@287.18--287.23) [13927]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered27(n_4), neverTriggered27(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@287.18--287.23) [13928]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && NoPerm < 1 / 2 ==> qpRange27(n_4) && invRecv27(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv27(o_9) }
                g_1[invRecv27(o_9)] && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@287.45--287.50) [13929]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@287.45--287.50) [13930]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered28(n_5), neverTriggered28(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@287.45--287.50) [13931]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange28(n_5) && invRecv28(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv28(o_9) }
                g_1[invRecv28(o_9)] && (NoPerm < 1 / 2 && qpRange28(o_9)) ==> invRecv28(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_7, v2_7): bool)) {
            if (v1_7 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@285.13--287.89) [13932]"}
                HasDirectPerm(oldMask, x, next);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, next]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@288.13--292.129) [13933]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
        if (*) {
          if (v1_8 != v2_8) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@291.29--291.34) [13934]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@291.29--291.34) [13935]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered29(n_6), neverTriggered29(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@291.29--291.34) [13936]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange29(n_6) && invRecv29(n_6) == n_6
                );
                assume (forall o_9: Ref ::
                  { invRecv29(o_9) }
                  g_1[invRecv29(o_9)] && (NoPerm < 1 / 2 && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.37--292.42) [13937]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.37--292.42) [13938]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered30(n_7), neverTriggered30(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.37--292.42) [13939]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange30(n_7) && invRecv30(n_7) == n_7
                );
                assume (forall o_9: Ref ::
                  { invRecv30(o_9) }
                  g_1[invRecv30(o_9)] && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> invRecv30(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_8, v2_8): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.72--292.77) [13940]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.72--292.77) [13941]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered31(n_8), neverTriggered31(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.72--292.77) [13942]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange31(n_8) && invRecv31(n_8) == n_8
                  );
                  assume (forall o_9: Ref ::
                    { invRecv31(o_9) }
                    g_1[invRecv31(o_9)] && (NoPerm < 1 / 2 && qpRange31(o_9)) ==> invRecv31(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_8, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.104--292.109) [13943]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.104--292.109) [13944]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered32(n_9), neverTriggered32(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.104--292.109) [13945]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange32(n_9) && invRecv32(n_9) == n_9
                    );
                    assume (forall o_9: Ref ::
                      { invRecv32(o_9) }
                      g_1[invRecv32(o_9)] && (NoPerm < 1 / 2 && qpRange32(o_9)) ==> invRecv32(o_9) == o_9
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@288.13--292.129) [13946]"}
                  HasDirectPerm(oldMask, x, next);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@282.13--282.33) [13947]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink might not hold. Assertion (x in g) might not hold. (list-swap.vpr@282.13--282.33) [13948]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access x.next (list-swap.vpr@282.13--282.33) [13949]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@282.13--282.33) [13950]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@282.13--282.33) [13951]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered33(n$1_2), neverTriggered33(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access n$1.next (list-swap.vpr@282.13--282.33) [13952]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange33(n$1_2) && invRecv33(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv33(o_9) }
        (g_1[invRecv33(o_9)] && invRecv33(o_9) != x) && (NoPerm < 1 / 2 && qpRange33(o_9)) ==> invRecv33(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv33(o_9)] && invRecv33(o_9) != x) && (NoPerm < 1 / 2 && qpRange33(o_9)) ==> invRecv33(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv33(o_9)] && invRecv33(o_9) != x) && (NoPerm < 1 / 2 && qpRange33(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion (n$2.next in g) might not hold. (list-swap.vpr@282.13--282.33) [13953]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink might not hold. Assertion x.next == null might not hold. (list-swap.vpr@283.13--283.27) [13954]"}
      Heap[x, next] == null;
    if (oldHeap[x, next] == null) {
      assert {:msg "  Postcondition of unlink might not hold. Assertion $$(g) == old($$(g)) might not hold. (list-swap.vpr@284.13--284.56) [13955]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))) might not hold. (list-swap.vpr@285.13--287.89) [13956]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, next]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, next]))
      );
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))) might not hold. (list-swap.vpr@288.13--292.129) [13957]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method swap
// ==================================================

procedure swap(g_1: (Set Ref), x: Ref, i: int, j: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_31: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$1_19: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var prev_node: Ref;
  var node: Ref;
  var prev_i: Ref;
  var node_i: Ref;
  var count: int;
  var n$3_4: Ref;
  var n$4_10: Ref;
  var n$3_5: Ref;
  var n$4_11: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var node_j: Ref;
  var prev_j: Ref;
  var vexit: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var n$0_2: Ref;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var arg_y: Ref;
  var n$0_8: Ref;
  var n$0_10_1: Ref;
  var n$0_12_1: Ref;
  var n$0_14_1: Ref;
  var n$0_16_1: Ref;
  var n$0_18_1: Ref;
  var n$0_20_1: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var n$3_5_1: Ref;
  var n$4_5_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < j;
    assume state(Heap, Mask);
    assume g_1[x];
    assume state(Heap, Mask);
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@301.14--301.22) [13958]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange34(n_1) && invRecv34(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv34(o_9) }
        (g_1[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9) ==> invRecv34(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> invRecv34(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_31]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@301.14--301.22) [13959]"}
            HasDirectPerm(Mask, n$0_31, next);
        }
        if (g_1[n$0_31] && Heap[n$0_31, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@301.14--301.22) [13960]"}
            HasDirectPerm(Mask, n$0_31, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@241.19--241.24) [13961]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@241.19--241.24) [13962]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered35(n_2), neverTriggered35(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@241.19--241.24) [13963]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < 1 / 2 ==> qpRange35(n_2) && invRecv35(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv35(o_9) }
            g_1[invRecv35(o_9)] && (NoPerm < 1 / 2 && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of func_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@242.16--242.21) [13964]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@242.16--242.21) [13965]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered36(n_3), neverTriggered36(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@242.16--242.21) [13966]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && NoPerm < 1 / 2 ==> qpRange36(n_3) && invRecv36(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv36(o_9) }
            g_1[invRecv36(o_9)] && (NoPerm < 1 / 2 && qpRange36(o_9)) ==> invRecv36(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (func_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of unshared_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@243.20--243.25) [13967]"}
            (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] && dummyFunction(Heap[n_4, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@243.20--243.25) [13968]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered37(n_4), neverTriggered37(n_4_1) }
            (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@243.20--243.25) [13969]"}
            (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] ==> 1 / 2 > NoPerm ==> Mask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] && NoPerm < 1 / 2 ==> qpRange37(n_4) && invRecv37(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv37(o_9) }
            g_1[invRecv37(o_9)] && (NoPerm < 1 / 2 && qpRange37(o_9)) ==> invRecv37(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (unshared_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { exists_path($$(g), x, n$1) } (n$1 in g) ==> exists_path($$(g), x, n$1))
      if (*) {
        if (g_1[n$1_19]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@232.74--232.79) [13970]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && dummyFunction(Heap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@232.74--232.79) [13971]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered38(n_5), neverTriggered38(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@232.74--232.79) [13972]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange38(n_5) && invRecv38(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv38(o_9) }
                g_1[invRecv38(o_9)] && (NoPerm < 1 / 2 && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
              );
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
    assume (forall n$1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$1_1): bool) }
      g_1[n$1_1] ==> (exists_path($$(Heap, g_1), x, n$1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[prev_node, $allocated];
    assume Heap[node, $allocated];
    assume Heap[prev_i, $allocated];
    assume Heap[node_i, $allocated];
  
  // -- Translating statement: count := 0 -- list-swap.vpr@307.5--307.23
    count := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: prev_node := x -- list-swap.vpr@309.5--309.27
    prev_node := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: node := x.next -- list-swap.vpr@310.5--310.27
    
    // -- Check definedness of x.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (list-swap.vpr@310.5--310.27) [13973]"}
        HasDirectPerm(Mask, x, next);
    node := Heap[x, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: prev_i := null -- list-swap.vpr@312.5--312.27
    prev_i := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: node_i := null -- list-swap.vpr@313.5--313.27
    node_i := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (node != null && count <= j) -- list-swap.vpr@315.5--393.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < j might not hold on entry. Assertion 0 <= i might not hold. (list-swap.vpr@317.19--317.34) [13974]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < j might not hold on entry. Assertion i < j might not hold. (list-swap.vpr@317.19--317.34) [13975]"}
          i < j;
        assert {:msg "  Loop invariant 0 <= count might not hold on entry. Assertion 0 <= count might not hold. (list-swap.vpr@320.19--320.29) [13976]"}
          0 <= count;
        assert {:msg "  Loop invariant (x in g) might not hold on entry. Assertion (x in g) might not hold. (list-swap.vpr@323.19--323.25) [13977]"}
          g_1[x];
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Assertion !((null in g)) might not hold. (list-swap.vpr@324.19--324.27) [13978]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$2 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [13979]"}
            (forall n$2_6: Ref, n$2_29: Ref ::
            { neverTriggered39(n$2_6), neverTriggered39(n$2_29) }
            (((n$2_6 != n$2_29 && g_1[n$2_6]) && g_1[n$2_29]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_6 != n$2_29
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. There might be insufficient permission to access n$2.next (list-swap.vpr@324.19--324.27) [13980]"}
            (forall n$2_6: Ref ::
            { Heap[n$2_6, next] } { QPMask[n$2_6, next] } { Heap[n$2_6, next] }
            g_1[n$2_6] ==> Mask[n$2_6, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$2
          assume (forall n$2_6: Ref ::
            { Heap[n$2_6, next] } { QPMask[n$2_6, next] } { Heap[n$2_6, next] }
            g_1[n$2_6] && NoPerm < FullPerm ==> qpRange39(n$2_6) && invRecv39(n$2_6) == n$2_6
          );
          assume (forall o_9: Ref ::
            { invRecv39(o_9) }
            g_1[invRecv39(o_9)] && (NoPerm < FullPerm && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
          );
        
        // -- assume permission updates for field next
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            (g_1[invRecv39(o_9)] && (NoPerm < FullPerm && qpRange39(o_9)) ==> invRecv39(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv39(o_9)] && (NoPerm < FullPerm && qpRange39(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$3_4] && Heap[n$3_4, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Assertion (n$3.next in g) might not hold. (list-swap.vpr@324.19--324.27) [13981]"}
              g_1[Heap[n$3_4, next]];
          }
          assume false;
        }
        assume (forall n$3_1_1_1: Ref ::
          { g_1[Heap[n$3_1_1_1, next]] } { g_1[n$3_1_1_1], Heap[n$3_1_1_1, next] }
          g_1[n$3_1_1_1] && Heap[n$3_1_1_1, next] != null ==> g_1[Heap[n$3_1_1_1, next]]
        );
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> (node in g) might not hold on entry. Assertion (node in g) might not hold. (list-swap.vpr@327.19--327.45) [13982]"}
            g_1[node];
        }
        if (count <= j) {
          assert {:msg "  Loop invariant count <= j ==> (prev_node in g) might not hold on entry. Assertion (prev_node in g) might not hold. (list-swap.vpr@328.19--328.48) [13983]"}
            g_1[prev_node];
        }
        if (i < count) {
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not hold on entry. Assertion (node_i in g) might not hold. (list-swap.vpr@329.19--329.59) [13984]"}
            g_1[node_i];
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not hold on entry. Assertion (prev_i in g) might not hold. (list-swap.vpr@329.19--329.59) [13985]"}
            g_1[prev_i];
        }
        if (count <= j) {
          assert {:msg "  Loop invariant count <= j ==> prev_node.next == node might not hold on entry. Assertion prev_node.next == node might not hold. (list-swap.vpr@330.19--330.56) [13986]"}
            Heap[prev_node, next] == node;
        }
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion acyclic_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [13987]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion func_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [13988]"}
          (func_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion unshared_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [13989]"}
          (unshared_graph($$(Heap, g_1)): bool);
        if (*) {
          if (g_1[n$4_10]) {
            assert {:msg "  Loop invariant (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4)) might not hold on entry. Assertion exists_path($$(g), x, n$4) might not hold. (list-swap.vpr@338.19--338.38) [13990]"}
              (exists_path($$(Heap, g_1), x, n$4_10): bool);
          }
          assume false;
        }
        assume (forall n$4_1_1_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_1_1_1): bool) }
          g_1[n$4_1_1_1] ==> (exists_path($$(Heap, g_1), x, n$4_1_1_1): bool)
        );
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), prev_i, node_i) might not hold on entry. Assertion exists_path($$(g), prev_i, node_i) might not hold. (list-swap.vpr@340.19--340.70) [13991]"}
            (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), node_i, prev_node) might not hold on entry. Assertion exists_path($$(g), node_i, prev_node) might not hold. (list-swap.vpr@341.19--341.73) [13992]"}
            (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> exists_path($$(g), prev_node, node) might not hold on entry. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@342.19--342.69) [13993]"}
            (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc count, node, prev_node, prev_i, node_i;
      assume Heap[node, $allocated];
      assume Heap[prev_node, $allocated];
      assume Heap[prev_i, $allocated];
      assume Heap[node_i, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i < j;
        assume state(Heap, Mask);
        assume 0 <= count;
        assume state(Heap, Mask);
        assume g_1[x];
        assume state(Heap, Mask);
        assume !g_1[null];
        
        // -- Check definedness of (forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [13994]"}
          (forall n$2_2: Ref, n$2_2_1: Ref ::
          
          (((n$2_2 != n$2_2_1 && g_1[n$2_2]) && g_1[n$2_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_2 != n$2_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$2_2: Ref ::
            { Heap[n$2_2, next] } { QPMask[n$2_2, next] } { Heap[n$2_2, next] }
            g_1[n$2_2] && NoPerm < FullPerm ==> qpRange40(n$2_2) && invRecv40(n$2_2) == n$2_2
          );
          assume (forall o_9: Ref ::
            { invRecv40(o_9) }
            (g_1[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9) ==> invRecv40(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$2_2: Ref ::
            { Heap[n$2_2, next] } { QPMask[n$2_2, next] } { Heap[n$2_2, next] }
            g_1[n$2_2] ==> n$2_2 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            ((g_1[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9) ==> (NoPerm < FullPerm ==> invRecv40(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv40(o_9)] && NoPerm < FullPerm) && qpRange40(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))
          if (*) {
            if (g_1[n$3_5]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.next (list-swap.vpr@324.19--324.27) [13995]"}
                HasDirectPerm(Mask, n$3_5, next);
            }
            if (g_1[n$3_5] && Heap[n$3_5, next] != null) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.next (list-swap.vpr@324.19--324.27) [13996]"}
                HasDirectPerm(Mask, n$3_5, next);
            }
            assume false;
          }
        assume (forall n$3_3: Ref ::
          { g_1[Heap[n$3_3, next]] } { g_1[n$3_3], Heap[n$3_3, next] }
          g_1[n$3_3] && Heap[n$3_3, next] != null ==> g_1[Heap[n$3_3, next]]
        );
        assume state(Heap, Mask);
        if (node != null) {
          assume g_1[node];
        }
        assume state(Heap, Mask);
        if (count <= j) {
          assume g_1[prev_node];
        }
        assume state(Heap, Mask);
        if (i < count) {
          assume g_1[node_i];
          assume g_1[prev_i];
        }
        assume state(Heap, Mask);
        if (count <= j) {
          
          // -- Check definedness of prev_node.next == node
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_node.next (list-swap.vpr@330.19--330.56) [13997]"}
              HasDirectPerm(Mask, prev_node, next);
          assume Heap[prev_node, next] == node;
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of acyclic_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@241.19--241.24) [13998]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] && dummyFunction(Heap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@241.19--241.24) [13999]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered41(n_6), neverTriggered41(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@241.19--241.24) [14000]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange41(n_6) && invRecv41(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv41(o_9) }
                g_1[invRecv41(o_9)] && (NoPerm < 1 / 2 && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        
        // -- Check definedness of func_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@242.16--242.21) [14001]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && dummyFunction(Heap[n_7, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@242.16--242.21) [14002]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered42(n_7), neverTriggered42(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@242.16--242.21) [14003]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange42(n_7) && invRecv42(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv42(o_9) }
                g_1[invRecv42(o_9)] && (NoPerm < 1 / 2 && qpRange42(o_9)) ==> invRecv42(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (func_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        
        // -- Check definedness of unshared_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@243.20--243.25) [14004]"}
                (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@243.20--243.25) [14005]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered43(n_8), neverTriggered43(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@243.20--243.25) [14006]"}
                (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange43(n_8) && invRecv43(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv43(o_9) }
                g_1[invRecv43(o_9)] && (NoPerm < 1 / 2 && qpRange43(o_9)) ==> invRecv43(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4))
          if (*) {
            if (g_1[n$4_11]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@232.74--232.79) [14007]"}
                    (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@232.74--232.79) [14008]"}
                    (forall n_9: Ref, n_9_1: Ref ::
                    { neverTriggered44(n_9), neverTriggered44(n_9_1) }
                    (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@232.74--232.79) [14009]"}
                    (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] ==> 1 / 2 > NoPerm ==> Mask[n_9, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] && NoPerm < 1 / 2 ==> qpRange44(n_9) && invRecv44(n_9) == n_9
                  );
                  assume (forall o_9: Ref ::
                    { invRecv44(o_9) }
                    g_1[invRecv44(o_9)] && (NoPerm < 1 / 2 && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
                  );
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
        assume (forall n$4_3_2: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_3_2): bool) }
          g_1[n$4_3_2] ==> (exists_path($$(Heap, g_1), x, n$4_3_2): bool)
        );
        assume state(Heap, Mask);
        if (node_i != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), prev_i, node_i)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@340.50--340.55) [14010]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@340.50--340.55) [14011]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered45(n_10_1), neverTriggered45(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@340.50--340.55) [14012]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange45(n_10_1) && invRecv45(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv45(o_9) }
                  g_1[invRecv45(o_9)] && (NoPerm < 1 / 2 && qpRange45(o_9)) ==> invRecv45(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        assume state(Heap, Mask);
        if (node_i != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), node_i, prev_node)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@341.50--341.55) [14013]"}
                  (forall n_11_2: Ref ::
                  { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                  g_1[n_11_2] && dummyFunction(Heap[n_11_2, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@341.50--341.55) [14014]"}
                  (forall n_11_2: Ref, n_11_3: Ref ::
                  { neverTriggered46(n_11_2), neverTriggered46(n_11_3) }
                  (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@341.50--341.55) [14015]"}
                  (forall n_11_2: Ref ::
                  { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                  g_1[n_11_2] ==> 1 / 2 > NoPerm ==> Mask[n_11_2, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_2: Ref ::
                  { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                  g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange46(n_11_2) && invRecv46(n_11_2) == n_11_2
                );
                assume (forall o_9: Ref ::
                  { invRecv46(o_9) }
                  g_1[invRecv46(o_9)] && (NoPerm < 1 / 2 && qpRange46(o_9)) ==> invRecv46(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        assume state(Heap, Mask);
        if (node != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), prev_node, node)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@342.48--342.53) [14016]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g_1[n_12] && dummyFunction(Heap[n_12, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@342.48--342.53) [14017]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered47(n_12), neverTriggered47(n_12_1) }
                  (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@342.48--342.53) [14018]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g_1[n_12] ==> 1 / 2 > NoPerm ==> Mask[n_12, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g_1[n_12] && NoPerm < 1 / 2 ==> qpRange47(n_12) && invRecv47(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv47(o_9) }
                  g_1[invRecv47(o_9)] && (NoPerm < 1 / 2 && qpRange47(o_9)) ==> invRecv47(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
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
        assume 0 <= i;
        assume i < j;
        assume 0 <= count;
        assume g_1[x];
        assume !g_1[null];
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [14019]"}
          (forall n$2_3_2: Ref, n$2_3_3: Ref ::
          
          (((n$2_3_2 != n$2_3_3 && g_1[n$2_3_2]) && g_1[n$2_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_3_2 != n$2_3_3
        );
        
        // -- Define Inverse Function
          assume (forall n$2_3_2: Ref ::
            { Heap[n$2_3_2, next] } { QPMask[n$2_3_2, next] } { Heap[n$2_3_2, next] }
            g_1[n$2_3_2] && NoPerm < FullPerm ==> qpRange48(n$2_3_2) && invRecv48(n$2_3_2) == n$2_3_2
          );
          assume (forall o_9: Ref ::
            { invRecv48(o_9) }
            (g_1[invRecv48(o_9)] && NoPerm < FullPerm) && qpRange48(o_9) ==> invRecv48(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$2_3_2: Ref ::
            { Heap[n$2_3_2, next] } { QPMask[n$2_3_2, next] } { Heap[n$2_3_2, next] }
            g_1[n$2_3_2] ==> n$2_3_2 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            ((g_1[invRecv48(o_9)] && NoPerm < FullPerm) && qpRange48(o_9) ==> (NoPerm < FullPerm ==> invRecv48(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv48(o_9)] && NoPerm < FullPerm) && qpRange48(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n$3_4_1: Ref ::
          { g_1[Heap[n$3_4_1, next]] } { g_1[n$3_4_1], Heap[n$3_4_1, next] }
          g_1[n$3_4_1] && Heap[n$3_4_1, next] != null ==> g_1[Heap[n$3_4_1, next]]
        );
        if (node != null) {
          assume g_1[node];
        }
        if (count <= j) {
          assume g_1[prev_node];
        }
        if (i < count) {
          assume g_1[node_i];
          assume g_1[prev_i];
        }
        if (count <= j) {
          assume Heap[prev_node, next] == node;
        }
        assume state(Heap, Mask);
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (func_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (forall n$4_4_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_4_1): bool) }
          g_1[n$4_4_1] ==> (exists_path($$(Heap, g_1), x, n$4_4_1): bool)
        );
        if (node_i != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        assume state(Heap, Mask);
        // Check and assume guard
        assume node != null && count <= j;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (count == i) -- list-swap.vpr@349.9--354.10
            if (count == i) {
              
              // -- Translating statement: node_i := node -- list-swap.vpr@352.13--352.27
                node_i := node;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_i := prev_node -- list-swap.vpr@353.13--353.32
                prev_i := prev_node;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: if (count == j) -- list-swap.vpr@356.9--384.10
            if (count == j) {
              
              // -- Assumptions about local variables
                assume Heap[node_j, $allocated];
                assume Heap[prev_j, $allocated];
                assume Heap[vexit, $allocated];
              
              // -- Translating statement: node_j := node -- list-swap.vpr@359.13--359.35
                node_j := node;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_j := prev_node -- list-swap.vpr@360.13--360.40
                prev_j := prev_node;
                assume state(Heap, Mask);
              
              // -- Translating statement: exit := node_j.next -- list-swap.vpr@361.13--361.40
                
                // -- Check definedness of node_j.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access node_j.next (list-swap.vpr@361.13--361.40) [14020]"}
                    HasDirectPerm(Mask, node_j, next);
                vexit := Heap[node_j, next];
                assume state(Heap, Mask);
              
              // -- Translating statement: unlink(g, prev_i) -- list-swap.vpr@366.13--366.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@366.13--366.29) [14021]"}
                    g_1[prev_i];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@366.13--366.29) [14022]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@366.13--366.29) [14023]"}
                    g_1[prev_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access prev_i.next (list-swap.vpr@366.13--366.29) [14024]"}
                      perm <= Mask[prev_i, next];
                  }
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@366.13--366.29) [14025]"}
                      (forall n_13_2: Ref ::
                      { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                      (g_1[n_13_2] && n_13_2 != prev_i) && dummyFunction(Heap[n_13_2, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@366.13--366.29) [14026]"}
                      (forall n_13_2: Ref, n_13_3: Ref ::
                      { neverTriggered49(n_13_2), neverTriggered49(n_13_3) }
                      (((n_13_2 != n_13_3 && (g_1[n_13_2] && n_13_2 != prev_i)) && (g_1[n_13_3] && n_13_3 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@366.13--366.29) [14027]"}
                      (forall n_13_2: Ref ::
                      { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                      g_1[n_13_2] && n_13_2 != prev_i ==> Mask[n_13_2, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_13_2: Ref ::
                      { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                      (g_1[n_13_2] && n_13_2 != prev_i) && NoPerm < 1 / 2 ==> qpRange49(n_13_2) && invRecv49(n_13_2) == n_13_2
                    );
                    assume (forall o_9: Ref ::
                      { invRecv49(o_9) }
                      (g_1[invRecv49(o_9)] && invRecv49(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      ((g_1[invRecv49(o_9)] && invRecv49(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv49(o_9)] && invRecv49(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_2] && Heap[n$0_2, next] != null) {
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@366.13--366.29) [14028]"}
                        g_1[Heap[n$0_2, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_3_1_1: Ref ::
                    { g_1[Heap[n$0_3_1_1, next]] } { g_1[n$0_3_1_1], Heap[n$0_3_1_1, next] }
                    g_1[n$0_3_1_1] && Heap[n$0_3_1_1, next] != null ==> g_1[Heap[n$0_3_1_1, next]]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[prev_i];
                  perm := FullPerm;
                  assume prev_i != null;
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@366.13--366.29) [14029]"}
                    (forall n$1_2: Ref, n$1_2_1: Ref ::
                    
                    (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != prev_i)) && (g_1[n$1_2_1] && n$1_2_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_2: Ref ::
                      { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                      (g_1[n$1_2] && n$1_2 != prev_i) && NoPerm < 1 / 2 ==> qpRange50(n$1_2) && invRecv50(n$1_2) == n$1_2
                    );
                    assume (forall o_9: Ref ::
                      { invRecv50(o_9) }
                      ((g_1[invRecv50(o_9)] && invRecv50(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_9) ==> invRecv50(o_9) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@366.13--366.29) [14030]"}
                    (forall n$1_2: Ref ::
                    { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                    g_1[n$1_2] && n$1_2 != prev_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_2: Ref ::
                      { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                      (g_1[n$1_2] && n$1_2 != prev_i) && 1 / 2 > NoPerm ==> n$1_2 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      (((g_1[invRecv50(o_9)] && invRecv50(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_9) ==> (NoPerm < 1 / 2 ==> invRecv50(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv50(o_9)] && invRecv50(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_4_1: Ref ::
                    { g_1[Heap[n$2_4_1, next]] } { g_1[n$2_4_1], Heap[n$2_4_1, next] }
                    g_1[n$2_4_1] && Heap[n$2_4_1, next] != null ==> g_1[Heap[n$2_4_1, next]]
                  );
                  assume Heap[prev_i, next] == null;
                  if (PreCallHeap[prev_i, next] == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (PreCallHeap[prev_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1: Ref, v2: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1, v2): bool) }
                      (edge($$(Heap, g_1), v1, v2): bool) == ((edge($$(PreCallHeap, g_1), v1, v2): bool) && !(v1 == prev_i && v2 == PreCallHeap[prev_i, next]))
                    );
                  }
                  if (PreCallHeap[prev_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_1: Ref, v2_1: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_1, v2_1): bool) }
                      v1_1 != v2_1 ==> (exists_path($$(Heap, g_1), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_1, v2_1): bool) && !((exists_path($$(PreCallHeap, g_1), v1_1, prev_i): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[prev_i, next], v2_1): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: link(g, prev_i, node_j) -- list-swap.vpr@367.13--367.34
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method link might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@367.13--367.34) [14031]"}
                    g_1[prev_i];
                  if (node_j != null) {
                    assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@367.13--367.34) [14032]"}
                      g_1[node_j];
                  }
                  assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@367.13--367.34) [14033]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method link might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@367.13--367.34) [14034]"}
                    g_1[prev_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access prev_i.next (list-swap.vpr@367.13--367.34) [14035]"}
                      perm <= Mask[prev_i, next];
                  }
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@367.13--367.34) [14036]"}
                      (forall n_14_1: Ref ::
                      { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                      (g_1[n_14_1] && n_14_1 != prev_i) && dummyFunction(Heap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@367.13--367.34) [14037]"}
                      (forall n_14_1: Ref, n_14_2: Ref ::
                      { neverTriggered51(n_14_1), neverTriggered51(n_14_2) }
                      (((n_14_1 != n_14_2 && (g_1[n_14_1] && n_14_1 != prev_i)) && (g_1[n_14_2] && n_14_2 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@367.13--367.34) [14038]"}
                      (forall n_14_1: Ref ::
                      { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                      g_1[n_14_1] && n_14_1 != prev_i ==> Mask[n_14_1, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_14_1: Ref ::
                      { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                      (g_1[n_14_1] && n_14_1 != prev_i) && NoPerm < 1 / 2 ==> qpRange51(n_14_1) && invRecv51(n_14_1) == n_14_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv51(o_9) }
                      (g_1[invRecv51(o_9)] && invRecv51(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      ((g_1[invRecv51(o_9)] && invRecv51(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_9)) ==> invRecv51(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv51(o_9)] && invRecv51(o_9) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_4] && Heap[n$0_4, next] != null) {
                      assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@367.13--367.34) [14039]"}
                        g_1[Heap[n$0_4, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_5_1_1: Ref ::
                    { g_1[Heap[n$0_5_1_1, next]] } { g_1[n$0_5_1_1], Heap[n$0_5_1_1, next] }
                    g_1[n$0_5_1_1] && Heap[n$0_5_1_1, next] != null ==> g_1[Heap[n$0_5_1_1, next]]
                  );
                  assert {:msg "  The precondition of method link might not hold. Assertion prev_i.next == null might not hold. (list-swap.vpr@367.13--367.34) [14040]"}
                    Heap[prev_i, next] == null;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[prev_i];
                  perm := FullPerm;
                  assume prev_i != null;
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@367.13--367.34) [14041]"}
                    (forall n$1_3: Ref, n$1_3_1: Ref ::
                    
                    (((n$1_3 != n$1_3_1 && (g_1[n$1_3] && n$1_3 != prev_i)) && (g_1[n$1_3_1] && n$1_3_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_3 != n$1_3_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_3: Ref ::
                      { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                      (g_1[n$1_3] && n$1_3 != prev_i) && NoPerm < 1 / 2 ==> qpRange52(n$1_3) && invRecv52(n$1_3) == n$1_3
                    );
                    assume (forall o_9: Ref ::
                      { invRecv52(o_9) }
                      ((g_1[invRecv52(o_9)] && invRecv52(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_9) ==> invRecv52(o_9) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@367.13--367.34) [14042]"}
                    (forall n$1_3: Ref ::
                    { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                    g_1[n$1_3] && n$1_3 != prev_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_3: Ref ::
                      { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                      (g_1[n$1_3] && n$1_3 != prev_i) && 1 / 2 > NoPerm ==> n$1_3 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      (((g_1[invRecv52(o_9)] && invRecv52(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_9) ==> (NoPerm < 1 / 2 ==> invRecv52(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv52(o_9)] && invRecv52(o_9) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_5_1: Ref ::
                    { g_1[Heap[n$2_5_1, next]] } { g_1[n$2_5_1], Heap[n$2_5_1, next] }
                    g_1[n$2_5_1] && Heap[n$2_5_1, next] != null ==> g_1[Heap[n$2_5_1, next]]
                  );
                  assume Heap[prev_i, next] == node_j;
                  if (node_j == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (node_j != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_2_1: Ref, v2_2_1: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_2_1, v2_2_1): bool) }
                      (edge($$(Heap, g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == prev_i && v2_2_1 == node_j))
                    );
                  }
                  if (node_j != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_3: Ref, v2_3: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3, v2_3): bool) }
                      v1_3 != v2_3 ==> (exists_path($$(Heap, g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, g_1), v1_3, prev_i): bool) && (exists_path($$(PreCallHeap, g_1), node_j, v2_3): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: if (node_i.next != node_j) -- list-swap.vpr@368.13--380.14
                
                // -- Check definedness of node_i.next != node_j
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node_i.next (list-swap.vpr@368.18--368.39) [14043]"}
                    HasDirectPerm(Mask, node_i, next);
                if (Heap[node_i, next] != node_j) {
                  
                  // -- Translating statement: unlink(g, node_j) -- list-swap.vpr@370.17--370.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@370.17--370.33) [14044]"}
                        g_1[node_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@370.17--370.33) [14045]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@370.17--370.33) [14046]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@370.17--370.33) [14047]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@370.17--370.33) [14048]"}
                          (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          (g_1[n_15] && n_15 != node_j) && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@370.17--370.33) [14049]"}
                          (forall n_15: Ref, n_15_1: Ref ::
                          { neverTriggered53(n_15), neverTriggered53(n_15_1) }
                          (((n_15 != n_15_1 && (g_1[n_15] && n_15 != node_j)) && (g_1[n_15_1] && n_15_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@370.17--370.33) [14050]"}
                          (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          g_1[n_15] && n_15 != node_j ==> Mask[n_15, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          (g_1[n_15] && n_15 != node_j) && NoPerm < 1 / 2 ==> qpRange53(n_15) && invRecv53(n_15) == n_15
                        );
                        assume (forall o_9: Ref ::
                          { invRecv53(o_9) }
                          (g_1[invRecv53(o_9)] && invRecv53(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_9)) ==> invRecv53(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv53(o_9)] && invRecv53(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_9)) ==> invRecv53(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv53(o_9)] && invRecv53(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_6] && Heap[n$0_6, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@370.17--370.33) [14051]"}
                            g_1[Heap[n$0_6, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_7_1_1: Ref ::
                        { g_1[Heap[n$0_7_1_1, next]] } { g_1[n$0_7_1_1], Heap[n$0_7_1_1, next] }
                        g_1[n$0_7_1_1] && Heap[n$0_7_1_1, next] != null ==> g_1[Heap[n$0_7_1_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@370.17--370.33) [14052]"}
                        (forall n$1_4: Ref, n$1_4_1: Ref ::
                        
                        (((n$1_4 != n$1_4_1 && (g_1[n$1_4] && n$1_4 != node_j)) && (g_1[n$1_4_1] && n$1_4_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_4 != n$1_4_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_4: Ref ::
                          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                          (g_1[n$1_4] && n$1_4 != node_j) && NoPerm < 1 / 2 ==> qpRange54(n$1_4) && invRecv54(n$1_4) == n$1_4
                        );
                        assume (forall o_9: Ref ::
                          { invRecv54(o_9) }
                          ((g_1[invRecv54(o_9)] && invRecv54(o_9) != node_j) && NoPerm < 1 / 2) && qpRange54(o_9) ==> invRecv54(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@370.17--370.33) [14053]"}
                        (forall n$1_4: Ref ::
                        { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                        g_1[n$1_4] && n$1_4 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_4: Ref ::
                          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                          (g_1[n$1_4] && n$1_4 != node_j) && 1 / 2 > NoPerm ==> n$1_4 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv54(o_9)] && invRecv54(o_9) != node_j) && NoPerm < 1 / 2) && qpRange54(o_9) ==> (NoPerm < 1 / 2 ==> invRecv54(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv54(o_9)] && invRecv54(o_9) != node_j) && NoPerm < 1 / 2) && qpRange54(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_6_2: Ref ::
                        { g_1[Heap[n$2_6_2, next]] } { g_1[n$2_6_2], Heap[n$2_6_2, next] }
                        g_1[n$2_6_2] && Heap[n$2_6_2, next] != null ==> g_1[Heap[n$2_6_2, next]]
                      );
                      assume Heap[node_j, next] == null;
                      if (PreCallHeap[node_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_4: Ref, v2_4: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_4, v2_4): bool) }
                          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(PreCallHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == node_j && v2_4 == PreCallHeap[node_j, next]))
                        );
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_5_2: Ref, v2_5_2: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_2, v2_5_2): bool) }
                          v1_5_2 != v2_5_2 ==> (exists_path($$(Heap, g_1), v1_5_2, v2_5_2): bool) == ((exists_path($$(PreCallHeap, g_1), v1_5_2, v2_5_2): bool) && !((exists_path($$(PreCallHeap, g_1), v1_5_2, node_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_j, next], v2_5_2): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, node_j, node_i.next) -- list-swap.vpr@371.17--371.43
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Check definedness of node_i.next
                      assert {:msg "  Method call might fail. There might be insufficient permission to access node_i.next (list-swap.vpr@371.17--371.43) [14054]"}
                        HasDirectPerm(Mask, node_i, next);
                    arg_y := Heap[node_i, next];
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@371.17--371.43) [14055]"}
                        g_1[node_j];
                      if (arg_y != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i.next in g) might not hold. (list-swap.vpr@371.17--371.43) [14056]"}
                          g_1[arg_y];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@371.17--371.43) [14057]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@371.17--371.43) [14058]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@371.17--371.43) [14059]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@371.17--371.43) [14060]"}
                          (forall n_16_1: Ref ::
                          { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                          (g_1[n_16_1] && n_16_1 != node_j) && dummyFunction(Heap[n_16_1, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@371.17--371.43) [14061]"}
                          (forall n_16_1: Ref, n_16_2: Ref ::
                          { neverTriggered55(n_16_1), neverTriggered55(n_16_2) }
                          (((n_16_1 != n_16_2 && (g_1[n_16_1] && n_16_1 != node_j)) && (g_1[n_16_2] && n_16_2 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@371.17--371.43) [14062]"}
                          (forall n_16_1: Ref ::
                          { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                          g_1[n_16_1] && n_16_1 != node_j ==> Mask[n_16_1, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_16_1: Ref ::
                          { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                          (g_1[n_16_1] && n_16_1 != node_j) && NoPerm < 1 / 2 ==> qpRange55(n_16_1) && invRecv55(n_16_1) == n_16_1
                        );
                        assume (forall o_9: Ref ::
                          { invRecv55(o_9) }
                          (g_1[invRecv55(o_9)] && invRecv55(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_9)) ==> invRecv55(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv55(o_9)] && invRecv55(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_9)) ==> invRecv55(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv55(o_9)] && invRecv55(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_8] && Heap[n$0_8, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@371.17--371.43) [14063]"}
                            g_1[Heap[n$0_8, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_9_1_1: Ref ::
                        { g_1[Heap[n$0_9_1_1, next]] } { g_1[n$0_9_1_1], Heap[n$0_9_1_1, next] }
                        g_1[n$0_9_1_1] && Heap[n$0_9_1_1, next] != null ==> g_1[Heap[n$0_9_1_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion node_j.next == null might not hold. (list-swap.vpr@371.17--371.43) [14064]"}
                        Heap[node_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@371.17--371.43) [14065]"}
                        (forall n$1_5: Ref, n$1_5_1: Ref ::
                        
                        (((n$1_5 != n$1_5_1 && (g_1[n$1_5] && n$1_5 != node_j)) && (g_1[n$1_5_1] && n$1_5_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_5 != n$1_5_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_5: Ref ::
                          { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                          (g_1[n$1_5] && n$1_5 != node_j) && NoPerm < 1 / 2 ==> qpRange56(n$1_5) && invRecv56(n$1_5) == n$1_5
                        );
                        assume (forall o_9: Ref ::
                          { invRecv56(o_9) }
                          ((g_1[invRecv56(o_9)] && invRecv56(o_9) != node_j) && NoPerm < 1 / 2) && qpRange56(o_9) ==> invRecv56(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@371.17--371.43) [14066]"}
                        (forall n$1_5: Ref ::
                        { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                        g_1[n$1_5] && n$1_5 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_5: Ref ::
                          { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                          (g_1[n$1_5] && n$1_5 != node_j) && 1 / 2 > NoPerm ==> n$1_5 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv56(o_9)] && invRecv56(o_9) != node_j) && NoPerm < 1 / 2) && qpRange56(o_9) ==> (NoPerm < 1 / 2 ==> invRecv56(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv56(o_9)] && invRecv56(o_9) != node_j) && NoPerm < 1 / 2) && qpRange56(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_7_1: Ref ::
                        { g_1[Heap[n$2_7_1, next]] } { g_1[n$2_7_1], Heap[n$2_7_1, next] }
                        g_1[n$2_7_1] && Heap[n$2_7_1, next] != null ==> g_1[Heap[n$2_7_1, next]]
                      );
                      assume Heap[node_j, next] == arg_y;
                      if (arg_y == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (arg_y != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_6: Ref, v2_6: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_6, v2_6): bool) }
                          (edge($$(Heap, g_1), v1_6, v2_6): bool) == ((edge($$(PreCallHeap, g_1), v1_6, v2_6): bool) || (v1_6 == node_j && v2_6 == arg_y))
                        );
                      }
                      if (arg_y != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_7_2: Ref, v2_7_2: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_2, v2_7_2): bool) }
                          v1_7_2 != v2_7_2 ==> (exists_path($$(Heap, g_1), v1_7_2, v2_7_2): bool) == ((exists_path($$(PreCallHeap, g_1), v1_7_2, v2_7_2): bool) || ((exists_path($$(PreCallHeap, g_1), v1_7_2, node_j): bool) && (exists_path($$(PreCallHeap, g_1), arg_y, v2_7_2): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: unlink(g, prev_j) -- list-swap.vpr@373.17--373.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@373.17--373.33) [14067]"}
                        g_1[prev_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@373.17--373.33) [14068]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@373.17--373.33) [14069]"}
                        g_1[prev_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access prev_j.next (list-swap.vpr@373.17--373.33) [14070]"}
                          perm <= Mask[prev_j, next];
                      }
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@373.17--373.33) [14071]"}
                          (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          (g_1[n_17] && n_17 != prev_j) && dummyFunction(Heap[n_17, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@373.17--373.33) [14072]"}
                          (forall n_17: Ref, n_17_1: Ref ::
                          { neverTriggered57(n_17), neverTriggered57(n_17_1) }
                          (((n_17 != n_17_1 && (g_1[n_17] && n_17 != prev_j)) && (g_1[n_17_1] && n_17_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@373.17--373.33) [14073]"}
                          (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          g_1[n_17] && n_17 != prev_j ==> Mask[n_17, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          (g_1[n_17] && n_17 != prev_j) && NoPerm < 1 / 2 ==> qpRange57(n_17) && invRecv57(n_17) == n_17
                        );
                        assume (forall o_9: Ref ::
                          { invRecv57(o_9) }
                          (g_1[invRecv57(o_9)] && invRecv57(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv57(o_9)] && invRecv57(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_9)) ==> invRecv57(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv57(o_9)] && invRecv57(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_10_1] && Heap[n$0_10_1, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@373.17--373.33) [14074]"}
                            g_1[Heap[n$0_10_1, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_11_1: Ref ::
                        { g_1[Heap[n$0_11_1, next]] } { g_1[n$0_11_1], Heap[n$0_11_1, next] }
                        g_1[n$0_11_1] && Heap[n$0_11_1, next] != null ==> g_1[Heap[n$0_11_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[prev_j];
                      perm := FullPerm;
                      assume prev_j != null;
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@373.17--373.33) [14075]"}
                        (forall n$1_6: Ref, n$1_6_1: Ref ::
                        
                        (((n$1_6 != n$1_6_1 && (g_1[n$1_6] && n$1_6 != prev_j)) && (g_1[n$1_6_1] && n$1_6_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_6 != n$1_6_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_6: Ref ::
                          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                          (g_1[n$1_6] && n$1_6 != prev_j) && NoPerm < 1 / 2 ==> qpRange58(n$1_6) && invRecv58(n$1_6) == n$1_6
                        );
                        assume (forall o_9: Ref ::
                          { invRecv58(o_9) }
                          ((g_1[invRecv58(o_9)] && invRecv58(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_9) ==> invRecv58(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@373.17--373.33) [14076]"}
                        (forall n$1_6: Ref ::
                        { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                        g_1[n$1_6] && n$1_6 != prev_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_6: Ref ::
                          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                          (g_1[n$1_6] && n$1_6 != prev_j) && 1 / 2 > NoPerm ==> n$1_6 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv58(o_9)] && invRecv58(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_9) ==> (NoPerm < 1 / 2 ==> invRecv58(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv58(o_9)] && invRecv58(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_8: Ref ::
                        { g_1[Heap[n$2_8, next]] } { g_1[n$2_8], Heap[n$2_8, next] }
                        g_1[n$2_8] && Heap[n$2_8, next] != null ==> g_1[Heap[n$2_8, next]]
                      );
                      assume Heap[prev_j, next] == null;
                      if (PreCallHeap[prev_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[prev_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_8_1: Ref, v2_8_1: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_8_1, v2_8_1): bool) }
                          (edge($$(Heap, g_1), v1_8_1, v2_8_1): bool) == ((edge($$(PreCallHeap, g_1), v1_8_1, v2_8_1): bool) && !(v1_8_1 == prev_j && v2_8_1 == PreCallHeap[prev_j, next]))
                        );
                      }
                      if (PreCallHeap[prev_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_9_1: Ref, v2_9_1: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_9_1, v2_9_1): bool) }
                          v1_9_1 != v2_9_1 ==> (exists_path($$(Heap, g_1), v1_9_1, v2_9_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_9_1, v2_9_1): bool) && !((exists_path($$(PreCallHeap, g_1), v1_9_1, prev_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[prev_j, next], v2_9_1): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, prev_j, node_i) -- list-swap.vpr@374.17--374.38
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@374.17--374.38) [14077]"}
                        g_1[prev_j];
                      if (node_i != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@374.17--374.38) [14078]"}
                          g_1[node_i];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@374.17--374.38) [14079]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@374.17--374.38) [14080]"}
                        g_1[prev_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access prev_j.next (list-swap.vpr@374.17--374.38) [14081]"}
                          perm <= Mask[prev_j, next];
                      }
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@374.17--374.38) [14082]"}
                          (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          (g_1[n_18] && n_18 != prev_j) && dummyFunction(Heap[n_18, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@374.17--374.38) [14083]"}
                          (forall n_18: Ref, n_18_1: Ref ::
                          { neverTriggered59(n_18), neverTriggered59(n_18_1) }
                          (((n_18 != n_18_1 && (g_1[n_18] && n_18 != prev_j)) && (g_1[n_18_1] && n_18_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@374.17--374.38) [14084]"}
                          (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          g_1[n_18] && n_18 != prev_j ==> Mask[n_18, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          (g_1[n_18] && n_18 != prev_j) && NoPerm < 1 / 2 ==> qpRange59(n_18) && invRecv59(n_18) == n_18
                        );
                        assume (forall o_9: Ref ::
                          { invRecv59(o_9) }
                          (g_1[invRecv59(o_9)] && invRecv59(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_9)) ==> invRecv59(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv59(o_9)] && invRecv59(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_9)) ==> invRecv59(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv59(o_9)] && invRecv59(o_9) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_12_1] && Heap[n$0_12_1, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@374.17--374.38) [14085]"}
                            g_1[Heap[n$0_12_1, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_13_1_1: Ref ::
                        { g_1[Heap[n$0_13_1_1, next]] } { g_1[n$0_13_1_1], Heap[n$0_13_1_1, next] }
                        g_1[n$0_13_1_1] && Heap[n$0_13_1_1, next] != null ==> g_1[Heap[n$0_13_1_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion prev_j.next == null might not hold. (list-swap.vpr@374.17--374.38) [14086]"}
                        Heap[prev_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[prev_j];
                      perm := FullPerm;
                      assume prev_j != null;
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@374.17--374.38) [14087]"}
                        (forall n$1_7_2: Ref, n$1_7_3: Ref ::
                        
                        (((n$1_7_2 != n$1_7_3 && (g_1[n$1_7_2] && n$1_7_2 != prev_j)) && (g_1[n$1_7_3] && n$1_7_3 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_7_2 != n$1_7_3
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_7_2: Ref ::
                          { Heap[n$1_7_2, next] } { QPMask[n$1_7_2, next] } { Heap[n$1_7_2, next] }
                          (g_1[n$1_7_2] && n$1_7_2 != prev_j) && NoPerm < 1 / 2 ==> qpRange60(n$1_7_2) && invRecv60(n$1_7_2) == n$1_7_2
                        );
                        assume (forall o_9: Ref ::
                          { invRecv60(o_9) }
                          ((g_1[invRecv60(o_9)] && invRecv60(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_9) ==> invRecv60(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@374.17--374.38) [14088]"}
                        (forall n$1_7_2: Ref ::
                        { Heap[n$1_7_2, next] } { QPMask[n$1_7_2, next] } { Heap[n$1_7_2, next] }
                        g_1[n$1_7_2] && n$1_7_2 != prev_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_7_2: Ref ::
                          { Heap[n$1_7_2, next] } { QPMask[n$1_7_2, next] } { Heap[n$1_7_2, next] }
                          (g_1[n$1_7_2] && n$1_7_2 != prev_j) && 1 / 2 > NoPerm ==> n$1_7_2 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv60(o_9)] && invRecv60(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_9) ==> (NoPerm < 1 / 2 ==> invRecv60(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv60(o_9)] && invRecv60(o_9) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_9_1: Ref ::
                        { g_1[Heap[n$2_9_1, next]] } { g_1[n$2_9_1], Heap[n$2_9_1, next] }
                        g_1[n$2_9_1] && Heap[n$2_9_1, next] != null ==> g_1[Heap[n$2_9_1, next]]
                      );
                      assume Heap[prev_j, next] == node_i;
                      if (node_i == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_10_1: Ref, v2_10_1: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_10_1, v2_10_1): bool) }
                          (edge($$(Heap, g_1), v1_10_1, v2_10_1): bool) == ((edge($$(PreCallHeap, g_1), v1_10_1, v2_10_1): bool) || (v1_10_1 == prev_j && v2_10_1 == node_i))
                        );
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_11_1: Ref, v2_11_1: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_11_1, v2_11_1): bool) }
                          v1_11_1 != v2_11_1 ==> (exists_path($$(Heap, g_1), v1_11_1, v2_11_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_11_1, v2_11_1): bool) || ((exists_path($$(PreCallHeap, g_1), v1_11_1, prev_j): bool) && (exists_path($$(PreCallHeap, g_1), node_i, v2_11_1): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: unlink(g, node_j) -- list-swap.vpr@378.17--378.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@378.17--378.33) [14089]"}
                        g_1[node_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@378.17--378.33) [14090]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@378.17--378.33) [14091]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@378.17--378.33) [14092]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@378.17--378.33) [14093]"}
                          (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          (g_1[n_19] && n_19 != node_j) && dummyFunction(Heap[n_19, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@378.17--378.33) [14094]"}
                          (forall n_19: Ref, n_19_1: Ref ::
                          { neverTriggered61(n_19), neverTriggered61(n_19_1) }
                          (((n_19 != n_19_1 && (g_1[n_19] && n_19 != node_j)) && (g_1[n_19_1] && n_19_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@378.17--378.33) [14095]"}
                          (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          g_1[n_19] && n_19 != node_j ==> Mask[n_19, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          (g_1[n_19] && n_19 != node_j) && NoPerm < 1 / 2 ==> qpRange61(n_19) && invRecv61(n_19) == n_19
                        );
                        assume (forall o_9: Ref ::
                          { invRecv61(o_9) }
                          (g_1[invRecv61(o_9)] && invRecv61(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_9)) ==> invRecv61(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv61(o_9)] && invRecv61(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_9)) ==> invRecv61(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv61(o_9)] && invRecv61(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_14_1] && Heap[n$0_14_1, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@378.17--378.33) [14096]"}
                            g_1[Heap[n$0_14_1, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_15_1: Ref ::
                        { g_1[Heap[n$0_15_1, next]] } { g_1[n$0_15_1], Heap[n$0_15_1, next] }
                        g_1[n$0_15_1] && Heap[n$0_15_1, next] != null ==> g_1[Heap[n$0_15_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@378.17--378.33) [14097]"}
                        (forall n$1_8_1: Ref, n$1_8_2: Ref ::
                        
                        (((n$1_8_1 != n$1_8_2 && (g_1[n$1_8_1] && n$1_8_1 != node_j)) && (g_1[n$1_8_2] && n$1_8_2 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_8_1 != n$1_8_2
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_8_1: Ref ::
                          { Heap[n$1_8_1, next] } { QPMask[n$1_8_1, next] } { Heap[n$1_8_1, next] }
                          (g_1[n$1_8_1] && n$1_8_1 != node_j) && NoPerm < 1 / 2 ==> qpRange62(n$1_8_1) && invRecv62(n$1_8_1) == n$1_8_1
                        );
                        assume (forall o_9: Ref ::
                          { invRecv62(o_9) }
                          ((g_1[invRecv62(o_9)] && invRecv62(o_9) != node_j) && NoPerm < 1 / 2) && qpRange62(o_9) ==> invRecv62(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@378.17--378.33) [14098]"}
                        (forall n$1_8_1: Ref ::
                        { Heap[n$1_8_1, next] } { QPMask[n$1_8_1, next] } { Heap[n$1_8_1, next] }
                        g_1[n$1_8_1] && n$1_8_1 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_8_1: Ref ::
                          { Heap[n$1_8_1, next] } { QPMask[n$1_8_1, next] } { Heap[n$1_8_1, next] }
                          (g_1[n$1_8_1] && n$1_8_1 != node_j) && 1 / 2 > NoPerm ==> n$1_8_1 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv62(o_9)] && invRecv62(o_9) != node_j) && NoPerm < 1 / 2) && qpRange62(o_9) ==> (NoPerm < 1 / 2 ==> invRecv62(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv62(o_9)] && invRecv62(o_9) != node_j) && NoPerm < 1 / 2) && qpRange62(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_10_1: Ref ::
                        { g_1[Heap[n$2_10_1, next]] } { g_1[n$2_10_1], Heap[n$2_10_1, next] }
                        g_1[n$2_10_1] && Heap[n$2_10_1, next] != null ==> g_1[Heap[n$2_10_1, next]]
                      );
                      assume Heap[node_j, next] == null;
                      if (PreCallHeap[node_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_12_1: Ref, v2_12_1: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_12_1, v2_12_1): bool) }
                          (edge($$(Heap, g_1), v1_12_1, v2_12_1): bool) == ((edge($$(PreCallHeap, g_1), v1_12_1, v2_12_1): bool) && !(v1_12_1 == node_j && v2_12_1 == PreCallHeap[node_j, next]))
                        );
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_13_1: Ref, v2_13_1: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_13_1, v2_13_1): bool) }
                          v1_13_1 != v2_13_1 ==> (exists_path($$(Heap, g_1), v1_13_1, v2_13_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_13_1, v2_13_1): bool) && !((exists_path($$(PreCallHeap, g_1), v1_13_1, node_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_j, next], v2_13_1): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, node_j, node_i) -- list-swap.vpr@379.19--379.40
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@379.19--379.40) [14099]"}
                        g_1[node_j];
                      if (node_i != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@379.19--379.40) [14100]"}
                          g_1[node_i];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@379.19--379.40) [14101]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@379.19--379.40) [14102]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@379.19--379.40) [14103]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@379.19--379.40) [14104]"}
                          (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          (g_1[n_20] && n_20 != node_j) && dummyFunction(Heap[n_20, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@379.19--379.40) [14105]"}
                          (forall n_20: Ref, n_20_1: Ref ::
                          { neverTriggered63(n_20), neverTriggered63(n_20_1) }
                          (((n_20 != n_20_1 && (g_1[n_20] && n_20 != node_j)) && (g_1[n_20_1] && n_20_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@379.19--379.40) [14106]"}
                          (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          g_1[n_20] && n_20 != node_j ==> Mask[n_20, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          (g_1[n_20] && n_20 != node_j) && NoPerm < 1 / 2 ==> qpRange63(n_20) && invRecv63(n_20) == n_20
                        );
                        assume (forall o_9: Ref ::
                          { invRecv63(o_9) }
                          (g_1[invRecv63(o_9)] && invRecv63(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_9)) ==> invRecv63(o_9) == o_9
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          ((g_1[invRecv63(o_9)] && invRecv63(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_9)) ==> invRecv63(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv63(o_9)] && invRecv63(o_9) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_16_1] && Heap[n$0_16_1, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@379.19--379.40) [14107]"}
                            g_1[Heap[n$0_16_1, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_17_1: Ref ::
                        { g_1[Heap[n$0_17_1, next]] } { g_1[n$0_17_1], Heap[n$0_17_1, next] }
                        g_1[n$0_17_1] && Heap[n$0_17_1, next] != null ==> g_1[Heap[n$0_17_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion node_j.next == null might not hold. (list-swap.vpr@379.19--379.40) [14108]"}
                        Heap[node_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@379.19--379.40) [14109]"}
                        (forall n$1_9_2: Ref, n$1_9_3: Ref ::
                        
                        (((n$1_9_2 != n$1_9_3 && (g_1[n$1_9_2] && n$1_9_2 != node_j)) && (g_1[n$1_9_3] && n$1_9_3 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_9_2 != n$1_9_3
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_9_2: Ref ::
                          { Heap[n$1_9_2, next] } { QPMask[n$1_9_2, next] } { Heap[n$1_9_2, next] }
                          (g_1[n$1_9_2] && n$1_9_2 != node_j) && NoPerm < 1 / 2 ==> qpRange64(n$1_9_2) && invRecv64(n$1_9_2) == n$1_9_2
                        );
                        assume (forall o_9: Ref ::
                          { invRecv64(o_9) }
                          ((g_1[invRecv64(o_9)] && invRecv64(o_9) != node_j) && NoPerm < 1 / 2) && qpRange64(o_9) ==> invRecv64(o_9) == o_9
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@379.19--379.40) [14110]"}
                        (forall n$1_9_2: Ref ::
                        { Heap[n$1_9_2, next] } { QPMask[n$1_9_2, next] } { Heap[n$1_9_2, next] }
                        g_1[n$1_9_2] && n$1_9_2 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_9_2: Ref ::
                          { Heap[n$1_9_2, next] } { QPMask[n$1_9_2, next] } { Heap[n$1_9_2, next] }
                          (g_1[n$1_9_2] && n$1_9_2 != node_j) && 1 / 2 > NoPerm ==> n$1_9_2 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_9: Ref ::
                          { QPMask[o_9, next] }
                          (((g_1[invRecv64(o_9)] && invRecv64(o_9) != node_j) && NoPerm < 1 / 2) && qpRange64(o_9) ==> (NoPerm < 1 / 2 ==> invRecv64(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv64(o_9)] && invRecv64(o_9) != node_j) && NoPerm < 1 / 2) && qpRange64(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                        );
                        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_11_1: Ref ::
                        { g_1[Heap[n$2_11_1, next]] } { g_1[n$2_11_1], Heap[n$2_11_1, next] }
                        g_1[n$2_11_1] && Heap[n$2_11_1, next] != null ==> g_1[Heap[n$2_11_1, next]]
                      );
                      assume Heap[node_j, next] == node_i;
                      if (node_i == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_14_1: Ref, v2_14_1: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_14_1, v2_14_1): bool) }
                          (edge($$(Heap, g_1), v1_14_1, v2_14_1): bool) == ((edge($$(PreCallHeap, g_1), v1_14_1, v2_14_1): bool) || (v1_14_1 == node_j && v2_14_1 == node_i))
                        );
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_15_1: Ref, v2_15_1: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_15_1, v2_15_1): bool) }
                          v1_15_1 != v2_15_1 ==> (exists_path($$(Heap, g_1), v1_15_1, v2_15_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_15_1, v2_15_1): bool) || ((exists_path($$(PreCallHeap, g_1), v1_15_1, node_j): bool) && (exists_path($$(PreCallHeap, g_1), node_i, v2_15_1): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: unlink(g, node_i) -- list-swap.vpr@382.13--382.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@382.13--382.29) [14111]"}
                    g_1[node_i];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@382.13--382.29) [14112]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@382.13--382.29) [14113]"}
                    g_1[node_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_i.next (list-swap.vpr@382.13--382.29) [14114]"}
                      perm <= Mask[node_i, next];
                  }
                  Mask := Mask[node_i, next:=Mask[node_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@382.13--382.29) [14115]"}
                      (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      (g_1[n_21] && n_21 != node_i) && dummyFunction(Heap[n_21, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@382.13--382.29) [14116]"}
                      (forall n_21: Ref, n_21_1: Ref ::
                      { neverTriggered65(n_21), neverTriggered65(n_21_1) }
                      (((n_21 != n_21_1 && (g_1[n_21] && n_21 != node_i)) && (g_1[n_21_1] && n_21_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@382.13--382.29) [14117]"}
                      (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      g_1[n_21] && n_21 != node_i ==> Mask[n_21, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      (g_1[n_21] && n_21 != node_i) && NoPerm < 1 / 2 ==> qpRange65(n_21) && invRecv65(n_21) == n_21
                    );
                    assume (forall o_9: Ref ::
                      { invRecv65(o_9) }
                      (g_1[invRecv65(o_9)] && invRecv65(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_9)) ==> invRecv65(o_9) == o_9
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      ((g_1[invRecv65(o_9)] && invRecv65(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_9)) ==> invRecv65(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv65(o_9)] && invRecv65(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_18_1] && Heap[n$0_18_1, next] != null) {
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@382.13--382.29) [14118]"}
                        g_1[Heap[n$0_18_1, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_19_1: Ref ::
                    { g_1[Heap[n$0_19_1, next]] } { g_1[n$0_19_1], Heap[n$0_19_1, next] }
                    g_1[n$0_19_1] && Heap[n$0_19_1, next] != null ==> g_1[Heap[n$0_19_1, next]]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[node_i];
                  perm := FullPerm;
                  assume node_i != null;
                  Mask := Mask[node_i, next:=Mask[node_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@382.13--382.29) [14119]"}
                    (forall n$1_10_1: Ref, n$1_10_2: Ref ::
                    
                    (((n$1_10_1 != n$1_10_2 && (g_1[n$1_10_1] && n$1_10_1 != node_i)) && (g_1[n$1_10_2] && n$1_10_2 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_10_1 != n$1_10_2
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_10_1: Ref ::
                      { Heap[n$1_10_1, next] } { QPMask[n$1_10_1, next] } { Heap[n$1_10_1, next] }
                      (g_1[n$1_10_1] && n$1_10_1 != node_i) && NoPerm < 1 / 2 ==> qpRange66(n$1_10_1) && invRecv66(n$1_10_1) == n$1_10_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv66(o_9) }
                      ((g_1[invRecv66(o_9)] && invRecv66(o_9) != node_i) && NoPerm < 1 / 2) && qpRange66(o_9) ==> invRecv66(o_9) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@382.13--382.29) [14120]"}
                    (forall n$1_10_1: Ref ::
                    { Heap[n$1_10_1, next] } { QPMask[n$1_10_1, next] } { Heap[n$1_10_1, next] }
                    g_1[n$1_10_1] && n$1_10_1 != node_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_10_1: Ref ::
                      { Heap[n$1_10_1, next] } { QPMask[n$1_10_1, next] } { Heap[n$1_10_1, next] }
                      (g_1[n$1_10_1] && n$1_10_1 != node_i) && 1 / 2 > NoPerm ==> n$1_10_1 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      (((g_1[invRecv66(o_9)] && invRecv66(o_9) != node_i) && NoPerm < 1 / 2) && qpRange66(o_9) ==> (NoPerm < 1 / 2 ==> invRecv66(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv66(o_9)] && invRecv66(o_9) != node_i) && NoPerm < 1 / 2) && qpRange66(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_12_1: Ref ::
                    { g_1[Heap[n$2_12_1, next]] } { g_1[n$2_12_1], Heap[n$2_12_1, next] }
                    g_1[n$2_12_1] && Heap[n$2_12_1, next] != null ==> g_1[Heap[n$2_12_1, next]]
                  );
                  assume Heap[node_i, next] == null;
                  if (PreCallHeap[node_i, next] == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (PreCallHeap[node_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_16: Ref, v2_16: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_16, v2_16): bool) }
                      (edge($$(Heap, g_1), v1_16, v2_16): bool) == ((edge($$(PreCallHeap, g_1), v1_16, v2_16): bool) && !(v1_16 == node_i && v2_16 == PreCallHeap[node_i, next]))
                    );
                  }
                  if (PreCallHeap[node_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_17: Ref, v2_17: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_17, v2_17): bool) }
                      v1_17 != v2_17 ==> (exists_path($$(Heap, g_1), v1_17, v2_17): bool) == ((exists_path($$(PreCallHeap, g_1), v1_17, v2_17): bool) && !((exists_path($$(PreCallHeap, g_1), v1_17, node_i): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_i, next], v2_17): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: link(g, node_i, exit) -- list-swap.vpr@383.15--383.34
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@383.15--383.34) [14121]"}
                    g_1[node_i];
                  if (vexit != null) {
                    assert {:msg "  The precondition of method link might not hold. Assertion (exit in g) might not hold. (list-swap.vpr@383.15--383.34) [14122]"}
                      g_1[vexit];
                  }
                  assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@383.15--383.34) [14123]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@383.15--383.34) [14124]"}
                    g_1[node_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_i.next (list-swap.vpr@383.15--383.34) [14125]"}
                      perm <= Mask[node_i, next];
                  }
                  Mask := Mask[node_i, next:=Mask[node_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@383.15--383.34) [14126]"}
                      (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      (g_1[n_22] && n_22 != node_i) && dummyFunction(Heap[n_22, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@383.15--383.34) [14127]"}
                      (forall n_22: Ref, n_22_1: Ref ::
                      { neverTriggered67(n_22), neverTriggered67(n_22_1) }
                      (((n_22 != n_22_1 && (g_1[n_22] && n_22 != node_i)) && (g_1[n_22_1] && n_22_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@383.15--383.34) [14128]"}
                      (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      g_1[n_22] && n_22 != node_i ==> Mask[n_22, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      (g_1[n_22] && n_22 != node_i) && NoPerm < 1 / 2 ==> qpRange67(n_22) && invRecv67(n_22) == n_22
                    );
                    assume (forall o_9: Ref ::
                      { invRecv67(o_9) }
                      (g_1[invRecv67(o_9)] && invRecv67(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_9)) ==> invRecv67(o_9) == o_9
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      ((g_1[invRecv67(o_9)] && invRecv67(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_9)) ==> invRecv67(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv67(o_9)] && invRecv67(o_9) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_20_1] && Heap[n$0_20_1, next] != null) {
                      assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@383.15--383.34) [14129]"}
                        g_1[Heap[n$0_20_1, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_21_1: Ref ::
                    { g_1[Heap[n$0_21_1, next]] } { g_1[n$0_21_1], Heap[n$0_21_1, next] }
                    g_1[n$0_21_1] && Heap[n$0_21_1, next] != null ==> g_1[Heap[n$0_21_1, next]]
                  );
                  assert {:msg "  The precondition of method link might not hold. Assertion node_i.next == null might not hold. (list-swap.vpr@383.15--383.34) [14130]"}
                    Heap[node_i, next] == null;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[node_i];
                  perm := FullPerm;
                  assume node_i != null;
                  Mask := Mask[node_i, next:=Mask[node_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@383.15--383.34) [14131]"}
                    (forall n$1_11_1: Ref, n$1_11_2: Ref ::
                    
                    (((n$1_11_1 != n$1_11_2 && (g_1[n$1_11_1] && n$1_11_1 != node_i)) && (g_1[n$1_11_2] && n$1_11_2 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_11_1 != n$1_11_2
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_11_1: Ref ::
                      { Heap[n$1_11_1, next] } { QPMask[n$1_11_1, next] } { Heap[n$1_11_1, next] }
                      (g_1[n$1_11_1] && n$1_11_1 != node_i) && NoPerm < 1 / 2 ==> qpRange68(n$1_11_1) && invRecv68(n$1_11_1) == n$1_11_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv68(o_9) }
                      ((g_1[invRecv68(o_9)] && invRecv68(o_9) != node_i) && NoPerm < 1 / 2) && qpRange68(o_9) ==> invRecv68(o_9) == o_9
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@383.15--383.34) [14132]"}
                    (forall n$1_11_1: Ref ::
                    { Heap[n$1_11_1, next] } { QPMask[n$1_11_1, next] } { Heap[n$1_11_1, next] }
                    g_1[n$1_11_1] && n$1_11_1 != node_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_11_1: Ref ::
                      { Heap[n$1_11_1, next] } { QPMask[n$1_11_1, next] } { Heap[n$1_11_1, next] }
                      (g_1[n$1_11_1] && n$1_11_1 != node_i) && 1 / 2 > NoPerm ==> n$1_11_1 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, next] }
                      (((g_1[invRecv68(o_9)] && invRecv68(o_9) != node_i) && NoPerm < 1 / 2) && qpRange68(o_9) ==> (NoPerm < 1 / 2 ==> invRecv68(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv68(o_9)] && invRecv68(o_9) != node_i) && NoPerm < 1 / 2) && qpRange68(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_13_1: Ref ::
                    { g_1[Heap[n$2_13_1, next]] } { g_1[n$2_13_1], Heap[n$2_13_1, next] }
                    g_1[n$2_13_1] && Heap[n$2_13_1, next] != null ==> g_1[Heap[n$2_13_1, next]]
                  );
                  assume Heap[node_i, next] == vexit;
                  if (vexit == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (vexit != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_18: Ref, v2_18: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_18, v2_18): bool) }
                      (edge($$(Heap, g_1), v1_18, v2_18): bool) == ((edge($$(PreCallHeap, g_1), v1_18, v2_18): bool) || (v1_18 == node_i && v2_18 == vexit))
                    );
                  }
                  if (vexit != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_19: Ref, v2_19: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_19, v2_19): bool) }
                      v1_19 != v2_19 ==> (exists_path($$(Heap, g_1), v1_19, v2_19): bool) == ((exists_path($$(PreCallHeap, g_1), v1_19, v2_19): bool) || ((exists_path($$(PreCallHeap, g_1), v1_19, node_i): bool) && (exists_path($$(PreCallHeap, g_1), vexit, v2_19): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: prev_node := node -- list-swap.vpr@386.9--386.26
            prev_node := node;
            assume state(Heap, Mask);
          
          // -- Translating statement: node := node.next -- list-swap.vpr@387.9--387.26
            
            // -- Check definedness of node.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access node.next (list-swap.vpr@387.9--387.26) [14133]"}
                HasDirectPerm(Mask, node, next);
            node := Heap[node, next];
            assume state(Heap, Mask);
          
          // -- Translating statement: count := count + 1 -- list-swap.vpr@388.9--388.27
            count := count + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert node != null ==>
  //   exists_path($$(g), node, node) && exists_path($$(g), prev_node, node) -- list-swap.vpr@392.9--392.98
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (node != null) {
              
              // -- Check definedness of exists_path($$(g), node, node)
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@392.45--392.50) [14134]"}
                      (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] && dummyFunction(ExhaleWellDef0Heap[n_23, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@392.45--392.50) [14135]"}
                      (forall n_23: Ref, n_23_1: Ref ::
                      { neverTriggered69(n_23), neverTriggered69(n_23_1) }
                      (((n_23 != n_23_1 && g_1[n_23]) && g_1[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@392.45--392.50) [14136]"}
                      (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_23, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] && NoPerm < 1 / 2 ==> qpRange69(n_23) && invRecv69(n_23) == n_23
                    );
                    assume (forall o_9: Ref ::
                      { invRecv69(o_9) }
                      g_1[invRecv69(o_9)] && (NoPerm < 1 / 2 && qpRange69(o_9)) ==> invRecv69(o_9) == o_9
                    );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                  ExhaleWellDef0Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assert {:msg "  Assert might fail. Assertion exists_path($$(g), node, node) might not hold. (list-swap.vpr@392.16--392.98) [14137]"}
                (exists_path($$(Heap, g_1), node, node): bool);
              
              // -- Check definedness of exists_path($$(g), prev_node, node)
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@392.77--392.82) [14138]"}
                      (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] && dummyFunction(ExhaleWellDef0Heap[n_24, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@392.77--392.82) [14139]"}
                      (forall n_24: Ref, n_24_1: Ref ::
                      { neverTriggered70(n_24), neverTriggered70(n_24_1) }
                      (((n_24 != n_24_1 && g_1[n_24]) && g_1[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@392.77--392.82) [14140]"}
                      (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_24, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] && NoPerm < 1 / 2 ==> qpRange70(n_24) && invRecv70(n_24) == n_24
                    );
                    assume (forall o_9: Ref ::
                      { invRecv70(o_9) }
                      g_1[invRecv70(o_9)] && (NoPerm < 1 / 2 && qpRange70(o_9)) ==> invRecv70(o_9) == o_9
                    );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                  ExhaleWellDef0Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assert {:msg "  Assert might fail. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@392.16--392.98) [14141]"}
                (exists_path($$(Heap, g_1), prev_node, node): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < j might not be preserved. Assertion 0 <= i might not hold. (list-swap.vpr@317.19--317.34) [14142]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < j might not be preserved. Assertion i < j might not hold. (list-swap.vpr@317.19--317.34) [14143]"}
          i < j;
        assert {:msg "  Loop invariant 0 <= count might not be preserved. Assertion 0 <= count might not hold. (list-swap.vpr@320.19--320.29) [14144]"}
          0 <= count;
        assert {:msg "  Loop invariant (x in g) might not be preserved. Assertion (x in g) might not hold. (list-swap.vpr@323.19--323.25) [14145]"}
          g_1[x];
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Assertion !((null in g)) might not hold. (list-swap.vpr@324.19--324.27) [14146]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$2 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [14147]"}
            (forall n$2_14_1: Ref, n$2_14_2: Ref ::
            { neverTriggered71(n$2_14_1), neverTriggered71(n$2_14_2) }
            (((n$2_14_1 != n$2_14_2 && g_1[n$2_14_1]) && g_1[n$2_14_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_14_1 != n$2_14_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. There might be insufficient permission to access n$2.next (list-swap.vpr@324.19--324.27) [14148]"}
            (forall n$2_14_1: Ref ::
            { Heap[n$2_14_1, next] } { QPMask[n$2_14_1, next] } { Heap[n$2_14_1, next] }
            g_1[n$2_14_1] ==> Mask[n$2_14_1, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$2
          assume (forall n$2_14_1: Ref ::
            { Heap[n$2_14_1, next] } { QPMask[n$2_14_1, next] } { Heap[n$2_14_1, next] }
            g_1[n$2_14_1] && NoPerm < FullPerm ==> qpRange71(n$2_14_1) && invRecv71(n$2_14_1) == n$2_14_1
          );
          assume (forall o_9: Ref ::
            { invRecv71(o_9) }
            g_1[invRecv71(o_9)] && (NoPerm < FullPerm && qpRange71(o_9)) ==> invRecv71(o_9) == o_9
          );
        
        // -- assume permission updates for field next
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            (g_1[invRecv71(o_9)] && (NoPerm < FullPerm && qpRange71(o_9)) ==> invRecv71(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv71(o_9)] && (NoPerm < FullPerm && qpRange71(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$3_5_1] && Heap[n$3_5_1, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Assertion (n$3.next in g) might not hold. (list-swap.vpr@324.19--324.27) [14149]"}
              g_1[Heap[n$3_5_1, next]];
          }
          assume false;
        }
        assume (forall n$3_6_1: Ref ::
          { g_1[Heap[n$3_6_1, next]] } { g_1[n$3_6_1], Heap[n$3_6_1, next] }
          g_1[n$3_6_1] && Heap[n$3_6_1, next] != null ==> g_1[Heap[n$3_6_1, next]]
        );
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> (node in g) might not be preserved. Assertion (node in g) might not hold. (list-swap.vpr@327.19--327.45) [14150]"}
            g_1[node];
        }
        if (count <= j) {
          assert {:msg "  Loop invariant count <= j ==> (prev_node in g) might not be preserved. Assertion (prev_node in g) might not hold. (list-swap.vpr@328.19--328.48) [14151]"}
            g_1[prev_node];
        }
        if (i < count) {
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not be preserved. Assertion (node_i in g) might not hold. (list-swap.vpr@329.19--329.59) [14152]"}
            g_1[node_i];
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not be preserved. Assertion (prev_i in g) might not hold. (list-swap.vpr@329.19--329.59) [14153]"}
            g_1[prev_i];
        }
        if (count <= j) {
          assert {:msg "  Loop invariant count <= j ==> prev_node.next == node might not be preserved. Assertion prev_node.next == node might not hold. (list-swap.vpr@330.19--330.56) [14154]"}
            Heap[prev_node, next] == node;
        }
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion acyclic_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [14155]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion func_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [14156]"}
          (func_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion unshared_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [14157]"}
          (unshared_graph($$(Heap, g_1)): bool);
        if (*) {
          if (g_1[n$4_5_1]) {
            assert {:msg "  Loop invariant (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4)) might not be preserved. Assertion exists_path($$(g), x, n$4) might not hold. (list-swap.vpr@338.19--338.38) [14158]"}
              (exists_path($$(Heap, g_1), x, n$4_5_1): bool);
          }
          assume false;
        }
        assume (forall n$4_6_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_6_1): bool) }
          g_1[n$4_6_1] ==> (exists_path($$(Heap, g_1), x, n$4_6_1): bool)
        );
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), prev_i, node_i) might not be preserved. Assertion exists_path($$(g), prev_i, node_i) might not hold. (list-swap.vpr@340.19--340.70) [14159]"}
            (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), node_i, prev_node) might not be preserved. Assertion exists_path($$(g), node_i, prev_node) might not hold. (list-swap.vpr@341.19--341.73) [14160]"}
            (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> exists_path($$(g), prev_node, node) might not be preserved. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@342.19--342.69) [14161]"}
            (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(node != null && count <= j);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i < j;
      assume 0 <= count;
      assume g_1[x];
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [14162]"}
        (forall n$2_15_1: Ref, n$2_15_2: Ref ::
        
        (((n$2_15_1 != n$2_15_2 && g_1[n$2_15_1]) && g_1[n$2_15_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_15_1 != n$2_15_2
      );
      
      // -- Define Inverse Function
        assume (forall n$2_15_1: Ref ::
          { Heap[n$2_15_1, next] } { QPMask[n$2_15_1, next] } { Heap[n$2_15_1, next] }
          g_1[n$2_15_1] && NoPerm < FullPerm ==> qpRange72(n$2_15_1) && invRecv72(n$2_15_1) == n$2_15_1
        );
        assume (forall o_9: Ref ::
          { invRecv72(o_9) }
          (g_1[invRecv72(o_9)] && NoPerm < FullPerm) && qpRange72(o_9) ==> invRecv72(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$2_15_1: Ref ::
          { Heap[n$2_15_1, next] } { QPMask[n$2_15_1, next] } { Heap[n$2_15_1, next] }
          g_1[n$2_15_1] ==> n$2_15_1 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((g_1[invRecv72(o_9)] && NoPerm < FullPerm) && qpRange72(o_9) ==> (NoPerm < FullPerm ==> invRecv72(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv72(o_9)] && NoPerm < FullPerm) && qpRange72(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$3_7: Ref ::
        { g_1[Heap[n$3_7, next]] } { g_1[n$3_7], Heap[n$3_7, next] }
        g_1[n$3_7] && Heap[n$3_7, next] != null ==> g_1[Heap[n$3_7, next]]
      );
      if (node != null) {
        assume g_1[node];
      }
      if (count <= j) {
        assume g_1[prev_node];
      }
      if (i < count) {
        assume g_1[node_i];
        assume g_1[prev_i];
      }
      if (count <= j) {
        assume Heap[prev_node, next] == node;
      }
      assume state(Heap, Mask);
      assume (acyclic_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (func_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (unshared_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (forall n$4_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_7_1): bool) }
        g_1[n$4_7_1] ==> (exists_path($$(Heap, g_1), x, n$4_7_1): bool)
      );
      if (node_i != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
      }
      if (node_i != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
      }
      if (node != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), prev_node, node): bool);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}