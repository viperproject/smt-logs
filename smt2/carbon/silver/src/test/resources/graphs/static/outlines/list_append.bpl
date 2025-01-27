// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:08:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/outlines/list_append.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/outlines/list_append-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_24: Ref, f_34: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_24, f_34] }
  Heap[o_24, $allocated] ==> Heap[Heap[o_24, f_34], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_25: Ref, f_33: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_25, f_33] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_25, f_33) ==> Heap[o_25, f_33] == ExhaleHeap[o_25, f_33]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11), ExhaleHeap[null, PredicateMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> Heap[null, PredicateMaskField(pm_f_11)] == ExhaleHeap[null, PredicateMaskField(pm_f_11)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsPredicateField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_11, f_33] }
    Heap[null, PredicateMaskField(pm_f_11)][o2_11, f_33] ==> Heap[o2_11, f_33] == ExhaleHeap[o2_11, f_33]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11), ExhaleHeap[null, WandMaskField(pm_f_11)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> Heap[null, WandMaskField(pm_f_11)] == ExhaleHeap[null, WandMaskField(pm_f_11)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_11: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_11) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_11) && IsWandField(pm_f_11) ==> (forall <A, B> o2_11: Ref, f_33: (Field A B) ::
    { ExhaleHeap[o2_11, f_33] }
    Heap[null, WandMaskField(pm_f_11)][o2_11, f_33] ==> Heap[o2_11, f_33] == ExhaleHeap[o2_11, f_33]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_25: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_25, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_25, $allocated] ==> ExhaleHeap[o_25, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_24: Ref, f_17: (Field A B), v: B ::
  { Heap[o_24, f_17:=v] }
  succHeap(Heap, Heap[o_24, f_17:=v])
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
function  neverTriggered2(n_1: Ref): bool;
function  neverTriggered3(n$1_1: Ref): bool;
function  neverTriggered4(n_2: Ref): bool;
function  neverTriggered5(n_3: Ref): bool;
function  neverTriggered6(n_4: Ref): bool;
function  neverTriggered7(n_5: Ref): bool;
function  neverTriggered8(n_6: Ref): bool;
function  neverTriggered9(n_7: Ref): bool;
function  neverTriggered10(n_8: Ref): bool;
function  neverTriggered11(n_9: Ref): bool;
function  neverTriggered12(n$1_2: Ref): bool;
function  neverTriggered13(n_1: Ref): bool;
function  neverTriggered14(n_2: Ref): bool;
function  neverTriggered15(n$1_1: Ref): bool;
function  neverTriggered16(n_3: Ref): bool;
function  neverTriggered17(n$1_2: Ref): bool;
function  neverTriggered18(n_4: Ref): bool;
function  neverTriggered19(n_5: Ref): bool;
function  neverTriggered20(n_1: Ref): bool;
function  neverTriggered21(n_2: Ref): bool;
function  neverTriggered22(n$1_1: Ref): bool;
function  neverTriggered23(n_3: Ref): bool;
function  neverTriggered24(n$1_2: Ref): bool;
function  neverTriggered25(n_4: Ref): bool;
function  neverTriggered26(n_5: Ref): bool;
function  neverTriggered27(n_1: Ref): bool;
function  neverTriggered28(n_2: Ref): bool;
function  neverTriggered29(n_3: Ref): bool;
function  neverTriggered30(n$1_1: Ref): bool;
function  neverTriggered31(n_4: Ref): bool;
function  neverTriggered32(n$1_2: Ref): bool;
function  neverTriggered33(n_5: Ref): bool;
function  neverTriggered34(n_6: Ref): bool;
function  neverTriggered35(n_7: Ref): bool;
function  neverTriggered36(n_8: Ref): bool;
function  neverTriggered37(n_1: Ref): bool;
function  neverTriggered38(n$0_2: Ref): bool;
function  neverTriggered39(n$0_3: Ref): bool;
function  neverTriggered40(n$0_4: Ref): bool;
function  neverTriggered41(n$0_5: Ref): bool;
function  neverTriggered42(n_6: Ref): bool;
function  neverTriggered43(n_7: Ref): bool;
function  neverTriggered44(n_8: Ref): bool;
function  neverTriggered45(n_9: Ref): bool;
function  neverTriggered46(n$1: Ref): bool;
function  neverTriggered47(n$1_2: Ref): bool;
function  neverTriggered48(n$0_6: Ref): bool;
function  neverTriggered49(n$0_7: Ref): bool;
function  neverTriggered50(n$0_8: Ref): bool;
function  neverTriggered51(n$0_9: Ref): bool;
function  neverTriggered52(n_18: Ref): bool;
function  neverTriggered53(n_19: Ref): bool;
function  neverTriggered54(n_20: Ref): bool;
function  neverTriggered55(n_21: Ref): bool;
function  neverTriggered56(n_22: Ref): bool;
function  neverTriggered57(n_23: Ref): bool;
function  neverTriggered58(n_24: Ref): bool;
function  neverTriggered59(n$1_3: Ref): bool;
function  neverTriggered60(n_27: Ref): bool;
function  neverTriggered61(n_28: Ref): bool;
function  neverTriggered62(n_29: Ref): bool;
function  neverTriggered63(n_30: Ref): bool;
function  neverTriggered64(n$1_4: Ref): bool;
function  neverTriggered65(n$1_5: Ref): bool;
function  neverTriggered66(n_37: Ref): bool;
function  neverTriggered67(n$1_6: Ref): bool;
function  neverTriggered68(n_38: Ref): bool;
function  neverTriggered69(n_39: Ref): bool;
function  neverTriggered70(n_40: Ref): bool;
function  neverTriggered71(n_41: Ref): bool;
function  neverTriggered72(n_42: Ref): bool;
function  neverTriggered73(n_43: Ref): bool;
function  neverTriggered74(n_44: Ref): bool;
function  neverTriggered75(n_45: Ref): bool;
function  neverTriggered76(n_46: Ref): bool;
function  neverTriggered77(n_47: Ref): bool;
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
function  invRecv73(recv: Ref): Ref;
function  invRecv74(recv: Ref): Ref;
function  invRecv75(recv: Ref): Ref;
function  invRecv76(recv: Ref): Ref;
function  invRecv77(recv: Ref): Ref;
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
function  qpRange73(recv: Ref): bool;
function  qpRange74(recv: Ref): bool;
function  qpRange75(recv: Ref): bool;
function  qpRange76(recv: Ref): bool;
function  qpRange77(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: $$
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

// Translation of domain function exists_path_2
function  exists_path_2(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function exists_path_2_
function  exists_path_2_(EG: (Set EdgeDomainType), start: Ref, end: Ref): bool;

// Translation of domain function is_on_path
function  is_on_path(EG: (Set EdgeDomainType), start: Ref, w_1: Ref, end: Ref): bool;

// Translation of domain function apply_IND
function  apply_IND(EG: (Set EdgeDomainType), Z: (Set Ref), P_1: (Set Ref)): bool;

// Translation of domain function apply_IND_2
function  apply_IND_2(EG: (Set EdgeDomainType), Z: (Set Ref), P_1: (Set Ref)): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M: (Set Ref)): bool;

// Translation of domain function apply_goOut
function  apply_goOut(EG: (Set EdgeDomainType), U: (Set Ref), A: (Set Ref), B: (Set Ref)): bool;

// Translation of domain function apply_newStart
function  apply_newStart(U: (Set Ref), A: (Set Ref), EG1: (Set EdgeDomainType), EG2: (Set EdgeDomainType)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_37: Ref): Set Ref;

// Translation of domain function inst_uReach_2
function  inst_uReach_2(EG: (Set EdgeDomainType), x_37: Ref): Set Ref;

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

// Translation of domain axiom ax_InductionPrinciple
axiom (forall EG_1: (Set EdgeDomainType), Z_1: (Set Ref), P_2: (Set Ref) ::
  { (apply_IND(EG_1, Z_1, P_2): bool) }
  (apply_IND(EG_1, Z_1, P_2): bool) ==> (forall z: Ref ::
    { Z_1[z] } { P_2[z] }
    Z_1[z] ==> P_2[z]
  ) && (forall u_1: Ref, v_2: Ref ::
    { (edge(EG_1, u_1, v_2): bool) } { P_2[u_1], P_2[v_2] }
    P_2[u_1] && (edge(EG_1, u_1, v_2): bool) ==> P_2[v_2]
  ) ==> (forall u_1_1: Ref, z_1: Ref ::
    { (exists_path(EG_1, z_1, u_1_1): bool) } { Z_1[z_1], P_2[u_1_1] }
    Z_1[z_1] && (exists_path(EG_1, z_1, u_1_1): bool) ==> P_2[u_1_1]
  )
);

// Translation of domain axiom ax_InductionPrinciple_2
axiom (forall EG_1: (Set EdgeDomainType), Z_1: (Set Ref), P_2: (Set Ref) ::
  { (apply_IND_2(EG_1, Z_1, P_2): bool) }
  (apply_IND_2(EG_1, Z_1, P_2): bool) ==> (forall z: Ref ::
    { Z_1[z] } { P_2[z] }
    Z_1[z] ==> P_2[z]
  ) && (forall u_1: Ref, v_2: Ref ::
    { (edge(EG_1, u_1, v_2): bool) } { P_2[u_1], P_2[v_2] }
    (edge(EG_1, u_1, v_2): bool) && P_2[v_2] ==> P_2[u_1]
  ) ==> (forall u_1_1: Ref, z_1: Ref ::
    { (exists_path_2(EG_1, z_1, u_1_1): bool) } { Z_1[z_1], P_2[u_1_1] }
    Z_1[z_1] && (exists_path_2(EG_1, u_1_1, z_1): bool) ==> P_2[u_1_1]
  )
);

// Translation of domain axiom ax_instantiation_uReach_rev
axiom (forall EG_1: (Set EdgeDomainType), u_1: Ref, y: Ref ::
  { (inst_uReach_rev(EG_1, y): Set Ref)[u_1] } { (exists_path(EG_1, u_1, y): bool) }
  (inst_uReach_rev(EG_1, y): Set Ref)[u_1] == (exists_path(EG_1, u_1, y): bool)
);

// Translation of domain axiom ax_instantiation_uReach_2
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach_2(EG_1, x): Set Ref)[v_2] } { (exists_path_2(EG_1, x, v_2): bool) }
  (inst_uReach_2(EG_1, x): Set Ref)[v_2] == (exists_path_2(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) }
  (exists_path(EG_1, start_1, end_1): bool) == (exists_path_(EG_1, start_1, end_1): bool)
);

// Translation of domain axiom ax_Alias_2
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path_2(EG_1, start_1, end_1): bool) }
  (exists_path_2(EG_1, start_1, end_1): bool) == (exists_path_2_(EG_1, start_1, end_1): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path(EG_1, start_1, end_1): bool) } { (edge(EG_1, start_1, end_1): bool) }
  (exists_path_(EG_1, start_1, end_1): bool) == (start_1 == end_1 || (exists w_2: Ref ::
    { (edge(EG_1, start_1, w_2): bool) } { (exists_path_(EG_1, w_2, end_1): bool) }
    (edge(EG_1, start_1, w_2): bool) && (exists_path_(EG_1, w_2, end_1): bool)
  ))
);

// Translation of domain axiom ax_ExistsPath_2
axiom (forall EG_1: (Set EdgeDomainType), start_1: Ref, end_1: Ref ::
  { (exists_path_2(EG_1, start_1, end_1): bool) } { (edge(EG_1, start_1, end_1): bool) }
  (exists_path_2_(EG_1, start_1, end_1): bool) == (start_1 == end_1 || (exists w_2: Ref ::
    { (exists_path_2_(EG_1, start_1, w_2): bool) } { (edge(EG_1, w_2, end_1): bool) }
    (exists_path_2_(EG_1, start_1, w_2): bool) && (edge(EG_1, w_2, end_1): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_1: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_1, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_1, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_1, v_2): bool)
);

// Translation of domain axiom ax_FuncGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (func_graph(EG_1): bool) }
  (func_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v_2, v1): bool), (edge(EG_1, v_2, v2): bool) }
    (edge(EG_1, v_2, v1): bool) && (edge(EG_1, v_2, v2): bool) ==> v1 == v2
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

// Translation of domain axiom ax_AcyclicGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (acyclic_graph(EG_1): bool) }
  (acyclic_graph(EG_1): bool) == (forall v1: Ref, v2: Ref ::
    { (edge(EG_1, v1, v2): bool) } { (exists_path(EG_1, v2, v1): bool) }
    !(edge(EG_1, v1, v2): bool) || !(exists_path(EG_1, v2, v1): bool)
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
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, write)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < FullPerm ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1: Ref, s_1: Ref ::
    { (create_edge(p_1, s_1): EdgeDomainType) }
    (refs[p_1] && (refs[s_1] && Heap[p_1, next] == s_1)) == $$'(Heap, refs)[(create_edge(p_1, s_1): EdgeDomainType)]
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
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@268.14--268.64) [4907]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < FullPerm ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (refs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((refs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((refs[invRecv1(o_9)] && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (list_append.vpr@269.13--273.44) [4908]"}
              HasDirectPerm(Mask, p_4, next);
          }
        }
        assume false;
      }
    assume (forall p_2_1: Ref, s_2_1: Ref ::
      { (create_edge(p_2_1, s_2_1): EdgeDomainType) }
      (refs[p_2_1] && (refs[s_2_1] && Heap[p_2_1, next] == s_2_1)) == Result[(create_edge(p_2_1, s_2_1): EdgeDomainType)]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method link
// ==================================================

procedure link(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_2: Ref;
  var v2_2: Ref;
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
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@287.14--287.22) [4909]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange2(n_1) && invRecv2(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@287.14--287.22) [4910]"}
            HasDirectPerm(Mask, n$0, next);
        }
        if (g_1[n$0] && Heap[n$0, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@287.14--287.22) [4911]"}
            HasDirectPerm(Mask, n$0, next);
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
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@288.13--288.21) [4912]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange3(n$1_1) && invRecv3(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (g_1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@288.13--288.21) [4913]"}
            HasDirectPerm(PostMask, n$2, next);
        }
        if (g_1[n$2] && PostHeap[n$2, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@288.13--288.21) [4914]"}
            HasDirectPerm(PostMask, n$2, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list_append.vpr@289.13--289.24) [4915]"}
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
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@290.27--290.32) [4916]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered4(n_2), neverTriggered4(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@290.27--290.32) [4917]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> FullPerm > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < FullPerm ==> qpRange4(n_2) && invRecv4(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv4(o_9) }
              g_1[invRecv4(o_9)] && (NoPerm < FullPerm && qpRange4(o_9)) ==> invRecv4(o_9) == o_9
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
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@290.40--290.45) [4918]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered5(n_3), neverTriggered5(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@290.40--290.45) [4919]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> FullPerm > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < FullPerm ==> qpRange5(n_3) && invRecv5(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv5(o_9) }
              g_1[invRecv5(o_9)] && (NoPerm < FullPerm && qpRange5(o_9)) ==> invRecv5(o_9) == o_9
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
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@293.18--293.23) [4920]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered6(n_4), neverTriggered6(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@293.18--293.23) [4921]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] ==> FullPerm > NoPerm ==> PostMask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && NoPerm < FullPerm ==> qpRange6(n_4) && invRecv6(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv6(o_9) }
                g_1[invRecv6(o_9)] && (NoPerm < FullPerm && qpRange6(o_9)) ==> invRecv6(o_9) == o_9
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
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@293.45--293.50) [4922]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered7(n_5), neverTriggered7(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@293.45--293.50) [4923]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> FullPerm > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < FullPerm ==> qpRange7(n_5) && invRecv7(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv7(o_9) }
                g_1[invRecv7(o_9)] && (NoPerm < FullPerm && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
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
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@296.25--296.30) [4924]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered8(n_6), neverTriggered8(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@296.25--296.30) [4925]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                g_1[n_6] ==> FullPerm > NoPerm ==> PostMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                g_1[n_6] && NoPerm < FullPerm ==> qpRange8(n_6) && invRecv8(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv8(o_9) }
                g_1[invRecv8(o_9)] && (NoPerm < FullPerm && qpRange8(o_9)) ==> invRecv8(o_9) == o_9
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
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@296.59--296.64) [4926]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered9(n_7), neverTriggered9(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@296.59--296.64) [4927]"}
                (forall n_7: Ref ::
                { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                g_1[n_7] ==> FullPerm > NoPerm ==> oldMask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                g_1[n_7] && NoPerm < FullPerm ==> qpRange9(n_7) && invRecv9(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv9(o_9) }
                g_1[invRecv9(o_9)] && (NoPerm < FullPerm && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (!(exists_path($$(oldHeap, g_1), v1_2, v2_2): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@296.93--296.98) [4928]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered10(n_8), neverTriggered10(n_8_1) }
                  (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@296.93--296.98) [4929]"}
                  (forall n_8: Ref ::
                  { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                  g_1[n_8] ==> FullPerm > NoPerm ==> oldMask[n_8, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_8: Ref ::
                  { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                  g_1[n_8] && NoPerm < FullPerm ==> qpRange10(n_8) && invRecv10(n_8) == n_8
                );
                assume (forall o_9: Ref ::
                  { invRecv10(o_9) }
                  g_1[invRecv10(o_9)] && (NoPerm < FullPerm && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_2, x): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@296.125--296.130) [4930]"}
                    (forall n_9: Ref, n_9_1: Ref ::
                    { neverTriggered11(n_9), neverTriggered11(n_9_1) }
                    (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@296.125--296.130) [4931]"}
                    (forall n_9: Ref ::
                    { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                    g_1[n_9] ==> FullPerm > NoPerm ==> oldMask[n_9, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_9: Ref ::
                    { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                    g_1[n_9] && NoPerm < FullPerm ==> qpRange11(n_9) && invRecv11(n_9) == n_9
                  );
                  assume (forall o_9: Ref ::
                    { invRecv11(o_9) }
                    g_1[invRecv11(o_9)] && (NoPerm < FullPerm && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_3): bool)))
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
    assert {:msg "  Postcondition of link might not hold. Assertion !((null in g)) might not hold. (list_append.vpr@288.13--288.21) [4932]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@288.13--288.21) [4933]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered12(n$1_2), neverTriggered12(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access n$1.next (list_append.vpr@288.13--288.21) [4934]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange12(n$1_2) && invRecv12(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        g_1[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9)) ==> invRecv12(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv12(o_9)] && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of link might not hold. Assertion (n$2.next in g) might not hold. (list_append.vpr@288.13--288.21) [4935]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link might not hold. Assertion x.next == y might not hold. (list_append.vpr@289.13--289.24) [4936]"}
      Heap[x, next] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link might not hold. Assertion $$(g) == old($$(g)) might not hold. (list_append.vpr@290.13--290.46) [4937]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (list_append.vpr@291.13--293.78) [4938]"}
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
        assert {:msg "  Postcondition of link might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (list_append.vpr@294.13--296.138) [4939]"}
          (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method lemma_T2_a
// ==================================================

procedure lemma_T2_a(g_1: (Set Ref), u_1: Ref, v_2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_10: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_3: Ref;
  var n$2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[u_1, $allocated];
    assume Heap[v_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@302.14--302.22) [4940]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange13(n_1) && invRecv13(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (g_1[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv13(o_9)] && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@302.14--302.22) [4941]"}
            HasDirectPerm(Mask, n$0_10, next);
        }
        if (g_1[n$0_10] && Heap[n$0_10, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@302.14--302.22) [4942]"}
            HasDirectPerm(Mask, n$0_10, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g_1[u_1];
    assume g_1[v_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g), u, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@304.26--304.31) [4943]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered14(n_2), neverTriggered14(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@304.26--304.31) [4944]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> FullPerm > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < FullPerm ==> qpRange14(n_2) && invRecv14(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv14(o_9) }
            g_1[invRecv14(o_9)] && (NoPerm < FullPerm && qpRange14(o_9)) ==> invRecv14(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g_1), u_1, v_2): bool);
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
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@305.13--305.21) [4945]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange15(n$1_1) && invRecv15(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (g_1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> invRecv15(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv15(o_9)] && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@305.13--305.21) [4946]"}
            HasDirectPerm(PostMask, n$2_3, next);
        }
        if (g_1[n$2_3] && PostHeap[n$2_3, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@305.13--305.21) [4947]"}
            HasDirectPerm(PostMask, n$2_3, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path_2($$(g), u, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@306.27--306.32) [4948]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered16(n_3), neverTriggered16(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@306.27--306.32) [4949]"}
            (forall n_3: Ref ::
            { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
            g_1[n_3] ==> FullPerm > NoPerm ==> PostMask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
            g_1[n_3] && NoPerm < FullPerm ==> qpRange16(n_3) && invRecv16(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv16(o_9) }
            g_1[invRecv16(o_9)] && (NoPerm < FullPerm && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path_2($$(PostHeap, g_1), u_1, v_2): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_IND($$(g), Set(u), inst_uReach_2($$(g), u)) -- list_append.vpr@308.12--308.60
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@308.22--308.27) [4950]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered18(n_4), neverTriggered18(n_4_1) }
            (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@308.22--308.27) [4951]"}
            (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] ==> FullPerm > NoPerm ==> Mask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] && NoPerm < FullPerm ==> qpRange18(n_4) && invRecv18(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv18(o_9) }
            g_1[invRecv18(o_9)] && (NoPerm < FullPerm && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
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
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@308.51--308.56) [4952]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered19(n_5), neverTriggered19(n_5_1) }
            (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@308.51--308.56) [4953]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] ==> FullPerm > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && NoPerm < FullPerm ==> qpRange19(n_5) && invRecv19(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv19(o_9) }
            g_1[invRecv19(o_9)] && (NoPerm < FullPerm && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_IND($$(Heap, g_1), Set#Singleton(u_1), (inst_uReach_2($$(Heap, g_1), u_1): Set Ref)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of lemma_T2_a might not hold. Assertion !((null in g)) might not hold. (list_append.vpr@305.13--305.21) [4954]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@305.13--305.21) [4955]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered17(n$1_2), neverTriggered17(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of lemma_T2_a might not hold. There might be insufficient permission to access n$1.next (list_append.vpr@305.13--305.21) [4956]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange17(n$1_2) && invRecv17(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        g_1[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9)) ==> invRecv17(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv17(o_9)] && (NoPerm < FullPerm && qpRange17(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of lemma_T2_a might not hold. Assertion (n$2.next in g) might not hold. (list_append.vpr@305.13--305.21) [4957]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of lemma_T2_a might not hold. Assertion exists_path_2($$(g), u, v) might not hold. (list_append.vpr@306.13--306.37) [4958]"}
      (exists_path_2($$(Heap, g_1), u_1, v_2): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method lemma_T2_b
// ==================================================

procedure lemma_T2_b(g_1: (Set Ref), u_1: Ref, v_2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_11: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_4: Ref;
  var n$2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[u_1, $allocated];
    assume Heap[v_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@312.14--312.22) [4959]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange20(n_1) && invRecv20(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (g_1[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> invRecv20(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> invRecv20(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv20(o_9)] && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_11]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@312.14--312.22) [4960]"}
            HasDirectPerm(Mask, n$0_11, next);
        }
        if (g_1[n$0_11] && Heap[n$0_11, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@312.14--312.22) [4961]"}
            HasDirectPerm(Mask, n$0_11, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g_1[u_1];
    assume g_1[v_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path_2($$(g), u, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@314.28--314.33) [4962]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered21(n_2), neverTriggered21(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@314.28--314.33) [4963]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> FullPerm > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < FullPerm ==> qpRange21(n_2) && invRecv21(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv21(o_9) }
            g_1[invRecv21(o_9)] && (NoPerm < FullPerm && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path_2($$(Heap, g_1), u_1, v_2): bool);
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
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@315.13--315.21) [4964]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange22(n$1_1) && invRecv22(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (g_1[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> invRecv22(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> invRecv22(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv22(o_9)] && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@315.13--315.21) [4965]"}
            HasDirectPerm(PostMask, n$2_4, next);
        }
        if (g_1[n$2_4] && PostHeap[n$2_4, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@315.13--315.21) [4966]"}
            HasDirectPerm(PostMask, n$2_4, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$(g), u, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@316.25--316.30) [4967]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered23(n_3), neverTriggered23(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@316.25--316.30) [4968]"}
            (forall n_3: Ref ::
            { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
            g_1[n_3] ==> FullPerm > NoPerm ==> PostMask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
            g_1[n_3] && NoPerm < FullPerm ==> qpRange23(n_3) && invRecv23(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv23(o_9) }
            g_1[invRecv23(o_9)] && (NoPerm < FullPerm && qpRange23(o_9)) ==> invRecv23(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, g_1), u_1, v_2): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_IND_2($$(g), Set(v), inst_uReach_rev($$(g), v)) -- list_append.vpr@318.12--318.64
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_IND_2($$(g), Set(v), inst_uReach_rev($$(g), v))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@318.24--318.29) [4969]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered25(n_4), neverTriggered25(n_4_1) }
            (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@318.24--318.29) [4970]"}
            (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] ==> FullPerm > NoPerm ==> Mask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { Heap[n_4, next] } { QPMask[n_4, next] } { Heap[n_4, next] }
            g_1[n_4] && NoPerm < FullPerm ==> qpRange25(n_4) && invRecv25(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv25(o_9) }
            g_1[invRecv25(o_9)] && (NoPerm < FullPerm && qpRange25(o_9)) ==> invRecv25(o_9) == o_9
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
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@318.55--318.60) [4971]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered26(n_5), neverTriggered26(n_5_1) }
            (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@318.55--318.60) [4972]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] ==> FullPerm > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && NoPerm < FullPerm ==> qpRange26(n_5) && invRecv26(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv26(o_9) }
            g_1[invRecv26(o_9)] && (NoPerm < FullPerm && qpRange26(o_9)) ==> invRecv26(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_IND_2($$(Heap, g_1), Set#Singleton(v_2), (inst_uReach_rev($$(Heap, g_1), v_2): Set Ref)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of lemma_T2_b might not hold. Assertion !((null in g)) might not hold. (list_append.vpr@315.13--315.21) [4973]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@315.13--315.21) [4974]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered24(n$1_2), neverTriggered24(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of lemma_T2_b might not hold. There might be insufficient permission to access n$1.next (list_append.vpr@315.13--315.21) [4975]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange24(n$1_2) && invRecv24(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        g_1[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9)) ==> invRecv24(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv24(o_9)] && (NoPerm < FullPerm && qpRange24(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of lemma_T2_b might not hold. Assertion (n$2.next in g) might not hold. (list_append.vpr@315.13--315.21) [4976]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of lemma_T2_b might not hold. Assertion exists_path($$(g), u, v) might not hold. (list_append.vpr@316.13--316.35) [4977]"}
      (exists_path($$(Heap, g_1), u_1, v_2): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_trans
// ==================================================

procedure test_trans(g_1: (Set Ref), u_1: Ref, w_2: Ref, v_2: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_12: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_5: Ref;
  var n$2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[u_1, $allocated];
    assume Heap[w_2, $allocated];
    assume Heap[v_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@322.14--322.22) [4978]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange27(n_1) && invRecv27(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (g_1[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9) ==> invRecv27(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9) ==> (NoPerm < FullPerm ==> invRecv27(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv27(o_9)] && NoPerm < FullPerm) && qpRange27(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@322.14--322.22) [4979]"}
            HasDirectPerm(Mask, n$0_12, next);
        }
        if (g_1[n$0_12] && Heap[n$0_12, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@322.14--322.22) [4980]"}
            HasDirectPerm(Mask, n$0_12, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g_1[u_1];
    assume g_1[w_2];
    assume g_1[v_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g), u, w)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@324.26--324.31) [4981]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered28(n_2), neverTriggered28(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@324.26--324.31) [4982]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> FullPerm > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < FullPerm ==> qpRange28(n_2) && invRecv28(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv28(o_9) }
            g_1[invRecv28(o_9)] && (NoPerm < FullPerm && qpRange28(o_9)) ==> invRecv28(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g_1), u_1, w_2): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g), w, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@324.52--324.57) [4983]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered29(n_3), neverTriggered29(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@324.52--324.57) [4984]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] ==> FullPerm > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && NoPerm < FullPerm ==> qpRange29(n_3) && invRecv29(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv29(o_9) }
            g_1[invRecv29(o_9)] && (NoPerm < FullPerm && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g_1), w_2, v_2): bool);
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
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@325.13--325.21) [4985]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange30(n$1_1) && invRecv30(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv30(o_9) }
        (g_1[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9) ==> invRecv30(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9) ==> (NoPerm < FullPerm ==> invRecv30(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv30(o_9)] && NoPerm < FullPerm) && qpRange30(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@325.13--325.21) [4986]"}
            HasDirectPerm(PostMask, n$2_5, next);
        }
        if (g_1[n$2_5] && PostHeap[n$2_5, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@325.13--325.21) [4987]"}
            HasDirectPerm(PostMask, n$2_5, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$(g), u, v)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@326.25--326.30) [4988]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered31(n_4), neverTriggered31(n_4_1) }
            (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@326.25--326.30) [4989]"}
            (forall n_4: Ref ::
            { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
            g_1[n_4] ==> FullPerm > NoPerm ==> PostMask[n_4, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
            g_1[n_4] && NoPerm < FullPerm ==> qpRange31(n_4) && invRecv31(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv31(o_9) }
            g_1[invRecv31(o_9)] && (NoPerm < FullPerm && qpRange31(o_9)) ==> invRecv31(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, g_1), u_1, v_2): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_IND_2($$(g), Set(w), inst_uReach_rev($$(g), v)) -- list_append.vpr@332.12--332.64
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_IND_2($$(g), Set(w), inst_uReach_rev($$(g), v))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@332.24--332.29) [4990]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered33(n_5), neverTriggered33(n_5_1) }
            (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@332.24--332.29) [4991]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] ==> FullPerm > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && NoPerm < FullPerm ==> qpRange33(n_5) && invRecv33(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv33(o_9) }
            g_1[invRecv33(o_9)] && (NoPerm < FullPerm && qpRange33(o_9)) ==> invRecv33(o_9) == o_9
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
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@332.55--332.60) [4992]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered34(n_6), neverTriggered34(n_6_1) }
            (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@332.55--332.60) [4993]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] && NoPerm < FullPerm ==> qpRange34(n_6) && invRecv34(n_6) == n_6
          );
          assume (forall o_9: Ref ::
            { invRecv34(o_9) }
            g_1[invRecv34(o_9)] && (NoPerm < FullPerm && qpRange34(o_9)) ==> invRecv34(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_IND_2($$(Heap, g_1), Set#Singleton(w_2), (inst_uReach_rev($$(Heap, g_1), v_2): Set Ref)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_IND($$(g), Set(u), inst_uReach_2($$(g), u)) -- list_append.vpr@333.12--333.60
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_IND($$(g), Set(u), inst_uReach_2($$(g), u))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@333.22--333.27) [4994]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered35(n_7), neverTriggered35(n_7_1) }
            (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@333.22--333.27) [4995]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g_1[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g_1[n_7] && NoPerm < FullPerm ==> qpRange35(n_7) && invRecv35(n_7) == n_7
          );
          assume (forall o_9: Ref ::
            { invRecv35(o_9) }
            g_1[invRecv35(o_9)] && (NoPerm < FullPerm && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
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
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@333.51--333.56) [4996]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered36(n_8), neverTriggered36(n_8_1) }
            (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@333.51--333.56) [4997]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g_1[n_8] ==> FullPerm > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g_1[n_8] && NoPerm < FullPerm ==> qpRange36(n_8) && invRecv36(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv36(o_9) }
            g_1[invRecv36(o_9)] && (NoPerm < FullPerm && qpRange36(o_9)) ==> invRecv36(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_IND($$(Heap, g_1), Set#Singleton(u_1), (inst_uReach_2($$(Heap, g_1), u_1): Set Ref)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of test_trans might not hold. Assertion !((null in g)) might not hold. (list_append.vpr@325.13--325.21) [4998]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@325.13--325.21) [4999]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered32(n$1_2), neverTriggered32(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_trans might not hold. There might be insufficient permission to access n$1.next (list_append.vpr@325.13--325.21) [5000]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange32(n$1_2) && invRecv32(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv32(o_9) }
        g_1[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9)) ==> invRecv32(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9)) ==> invRecv32(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv32(o_9)] && (NoPerm < FullPerm && qpRange32(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of test_trans might not hold. Assertion (n$2.next in g) might not hold. (list_append.vpr@325.13--325.21) [5001]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of test_trans might not hold. Assertion exists_path($$(g), u, v) might not hold. (list_append.vpr@326.13--326.35) [5002]"}
      (exists_path($$(Heap, g_1), u_1, v_2): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method append
// ==================================================

procedure append(g_1: (Set Ref), x: Ref, y: Ref) returns (res: Ref, last: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_13: Ref;
  var n_10: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n_11: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var old_g: (Set EdgeDomainType);
  var n$2_6: Ref;
  var n_10_1: Ref;
  var n_12: Ref;
  var n$2_7: Ref;
  var n_13: Ref;
  var n_14: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var n$2_5_1: Ref;
  var n_31: Ref;
  var n_33: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var n$0_10_1: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var u_2: Ref;
  var v_3: Ref;
  var w_3: Ref;
  var u_1_1: Ref;
  var v_1_1: Ref;
  var w_1_1: Ref;
  var u_3: Ref;
  var v_4: Ref;
  var u_4: Ref;
  var v_4_1: Ref;
  var u_7: Ref;
  var u_10: Ref;
  var v_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list_append.vpr@340.14--340.22) [5003]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange37(n_1) && invRecv37(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv37(o_9) }
        (g_1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9) ==> invRecv37(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9) ==> (NoPerm < FullPerm ==> invRecv37(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv37(o_9)] && NoPerm < FullPerm) && qpRange37(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@340.14--340.22) [5004]"}
            HasDirectPerm(Mask, n$0_13, next);
        }
        if (g_1[n$0_13] && Heap[n$0_13, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list_append.vpr@340.14--340.22) [5005]"}
            HasDirectPerm(Mask, n$0_13, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g_1[x];
    assume g_1[y];
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
      if (*) {
        if (g_1[n_10]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@343.55--343.60) [5006]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered38(n$0_2), neverTriggered38(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g_1[n$0_2]) && g_1[n$0_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@343.55--343.60) [5007]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] ==> FullPerm > NoPerm ==> Mask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] && NoPerm < FullPerm ==> qpRange38(n$0_2) && invRecv38(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv38(o_9) }
                g_1[invRecv38(o_9)] && (NoPerm < FullPerm && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!(exists_path($$(Heap, g_1), x, n_10): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@343.82--343.87) [5008]"}
                  (forall n$0_3: Ref, n$0_3_1: Ref ::
                  { neverTriggered39(n$0_3), neverTriggered39(n$0_3_1) }
                  (((n$0_3 != n$0_3_1 && g_1[n$0_3]) && g_1[n$0_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3 != n$0_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@343.82--343.87) [5009]"}
                  (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] ==> FullPerm > NoPerm ==> Mask[n$0_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] && NoPerm < FullPerm ==> qpRange39(n$0_3) && invRecv39(n$0_3) == n$0_3
                );
                assume (forall o_9: Ref ::
                  { invRecv39(o_9) }
                  g_1[invRecv39(o_9)] && (NoPerm < FullPerm && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
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
        assume false;
      }
    assume (forall n_3: Ref ::
      { g_1[n_3] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_3): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_3): bool) }
      g_1[n_3] ==> (exists_path($$(Heap, g_1), x, n_3): bool) || (exists_path($$(Heap, g_1), y, n_3): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n))
      if (*) {
        if (g_1[n_11]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@344.55--344.60) [5010]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered40(n$0_4), neverTriggered40(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@344.55--344.60) [5011]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
                g_1[n$0_4] ==> FullPerm > NoPerm ==> Mask[n$0_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
                g_1[n$0_4] && NoPerm < FullPerm ==> qpRange40(n$0_4) && invRecv40(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv40(o_9) }
                g_1[invRecv40(o_9)] && (NoPerm < FullPerm && qpRange40(o_9)) ==> invRecv40(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, g_1), x, n_11): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@344.82--344.87) [5012]"}
                  (forall n$0_5: Ref, n$0_5_1: Ref ::
                  { neverTriggered41(n$0_5), neverTriggered41(n$0_5_1) }
                  (((n$0_5 != n$0_5_1 && g_1[n$0_5]) && g_1[n$0_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_5 != n$0_5_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@344.82--344.87) [5013]"}
                  (forall n$0_5: Ref ::
                  { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                  g_1[n$0_5] ==> FullPerm > NoPerm ==> Mask[n$0_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_5: Ref ::
                  { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                  g_1[n$0_5] && NoPerm < FullPerm ==> qpRange41(n$0_5) && invRecv41(n$0_5) == n$0_5
                );
                assume (forall o_9: Ref ::
                  { invRecv41(o_9) }
                  g_1[invRecv41(o_9)] && (NoPerm < FullPerm && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
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
        assume false;
      }
    assume (forall n_5: Ref ::
      { g_1[n_5] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_5): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_5): bool) }
      g_1[n_5] ==> !(exists_path($$(Heap, g_1), x, n_5): bool) || !(exists_path($$(Heap, g_1), y, n_5): bool)
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
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@347.28--347.33) [5014]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered42(n_6), neverTriggered42(n_6_1) }
            (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@347.28--347.33) [5015]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g_1[n_6] && NoPerm < FullPerm ==> qpRange42(n_6) && invRecv42(n_6) == n_6
          );
          assume (forall o_9: Ref ::
            { invRecv42(o_9) }
            g_1[invRecv42(o_9)] && (NoPerm < FullPerm && qpRange42(o_9)) ==> invRecv42(o_9) == o_9
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
    assume state(Heap, Mask);
    
    // -- Check definedness of func_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@348.25--348.30) [5016]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered43(n_7), neverTriggered43(n_7_1) }
            (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@348.25--348.30) [5017]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g_1[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g_1[n_7] && NoPerm < FullPerm ==> qpRange43(n_7) && invRecv43(n_7) == n_7
          );
          assume (forall o_9: Ref ::
            { invRecv43(o_9) }
            g_1[invRecv43(o_9)] && (NoPerm < FullPerm && qpRange43(o_9)) ==> invRecv43(o_9) == o_9
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
    assume state(Heap, Mask);
    
    // -- Check definedness of unshared_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@349.29--349.34) [5018]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered44(n_8), neverTriggered44(n_8_1) }
            (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@349.29--349.34) [5019]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g_1[n_8] ==> FullPerm > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g_1[n_8] && NoPerm < FullPerm ==> qpRange44(n_8) && invRecv44(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv44(o_9) }
            g_1[invRecv44(o_9)] && (NoPerm < FullPerm && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: old_g := $$(g) -- list_append.vpr@351.5--351.33
    
    // -- Check definedness of $$(g)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@351.28--351.33) [5020]"}
            (forall n_9: Ref, n_9_1: Ref ::
            { neverTriggered45(n_9), neverTriggered45(n_9_1) }
            (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@351.28--351.33) [5021]"}
            (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            g_1[n_9] ==> FullPerm > NoPerm ==> Mask[n_9, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            g_1[n_9] && NoPerm < FullPerm ==> qpRange45(n_9) && invRecv45(n_9) == n_9
          );
          assume (forall o_9: Ref ::
            { invRecv45(o_9) }
            g_1[invRecv45(o_9)] && (NoPerm < FullPerm && qpRange45(o_9)) ==> invRecv45(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    old_g := $$(Heap, g_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: last := x -- list_append.vpr@355.5--355.14
    last := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (last == null) -- list_append.vpr@360.5--527.6
    if (last == null) {
      
      // -- Translating statement: res := y -- list_append.vpr@362.9--362.17
        res := y;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: while (last.next != null) -- list_append.vpr@366.9--388.10
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Assertion !((null in g)) might not hold. (list_append.vpr@367.23--367.31) [5022]"}
              !g_1[null];
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$1 is injective
              assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Quantified resource n$1.next might not be injective. (list_append.vpr@367.23--367.31) [5023]"}
                (forall n$1: Ref, n$1_7: Ref ::
                { neverTriggered46(n$1), neverTriggered46(n$1_7) }
                (((n$1 != n$1_7 && g_1[n$1]) && g_1[n$1_7]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1 != n$1_7
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. There might be insufficient permission to access n$1.next (list_append.vpr@367.23--367.31) [5024]"}
                (forall n$1: Ref ::
                { Heap[n$1, next] } { QPMask[n$1, next] } { Heap[n$1, next] }
                g_1[n$1] ==> Mask[n$1, next] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver n$1
              assume (forall n$1: Ref ::
                { Heap[n$1, next] } { QPMask[n$1, next] } { Heap[n$1, next] }
                g_1[n$1] && NoPerm < FullPerm ==> qpRange46(n$1) && invRecv46(n$1) == n$1
              );
              assume (forall o_9: Ref ::
                { invRecv46(o_9) }
                g_1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9)) ==> invRecv46(o_9) == o_9
              );
            
            // -- assume permission updates for field next
              assume (forall o_9: Ref ::
                { QPMask[o_9, next] }
                (g_1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9)) ==> invRecv46(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { QPMask[o_9, f_5] }
                f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (g_1[n$2_6] && Heap[n$2_6, next] != null) {
                assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not hold on entry. Assertion (n$2.next in g) might not hold. (list_append.vpr@367.23--367.31) [5025]"}
                  g_1[Heap[n$2_6, next]];
              }
              assume false;
            }
            assume (forall n$2_1_1: Ref ::
              { g_1[Heap[n$2_1_1, next]] } { g_1[n$2_1_1], Heap[n$2_1_1, next] }
              g_1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g_1[Heap[n$2_1_1, next]]
            );
            assert {:msg "  Loop invariant (last in g) might not hold on entry. Assertion (last in g) might not hold. (list_append.vpr@368.23--368.32) [5026]"}
              g_1[last];
            assert {:msg "  Loop invariant (x in g) && (y in g) might not hold on entry. Assertion (x in g) might not hold. (list_append.vpr@369.23--369.39) [5027]"}
              g_1[x];
            assert {:msg "  Loop invariant (x in g) && (y in g) might not hold on entry. Assertion (y in g) might not hold. (list_append.vpr@369.23--369.39) [5028]"}
              g_1[y];
            if (*) {
              if (g_1[n_10_1]) {
                assert {:msg "  Loop invariant (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)) might not hold on entry. Assertion exists_path($$(g), x, n) || exists_path($$(g), y, n) might not hold. (list_append.vpr@371.23--371.102) [5029]"}
                  (exists_path($$(Heap, g_1), x, n_10_1): bool) || (exists_path($$(Heap, g_1), y, n_10_1): bool);
              }
              assume false;
            }
            assume (forall n_11_1: Ref ::
              { g_1[n_11_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_11_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_11_1): bool) }
              g_1[n_11_1] ==> (exists_path($$(Heap, g_1), x, n_11_1): bool) || (exists_path($$(Heap, g_1), y, n_11_1): bool)
            );
            if (*) {
              if (g_1[n_12]) {
                assert {:msg "  Loop invariant (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n)) might not hold on entry. Assertion !exists_path($$(g), x, n) || !exists_path($$(g), y, n) might not hold. (list_append.vpr@372.23--372.102) [5030]"}
                  !(exists_path($$(Heap, g_1), x, n_12): bool) || !(exists_path($$(Heap, g_1), y, n_12): bool);
              }
              assume false;
            }
            assume (forall n_13_1: Ref ::
              { g_1[n_13_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_13_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_13_1): bool) }
              g_1[n_13_1] ==> !(exists_path($$(Heap, g_1), x, n_13_1): bool) || !(exists_path($$(Heap, g_1), y, n_13_1): bool)
            );
            assert {:msg "  Loop invariant acyclic_graph($$(g)) might not hold on entry. Assertion acyclic_graph($$(g)) might not hold. (list_append.vpr@374.23--374.43) [5031]"}
              (acyclic_graph($$(Heap, g_1)): bool);
            assert {:msg "  Loop invariant unshared_graph($$(g)) might not hold on entry. Assertion unshared_graph($$(g)) might not hold. (list_append.vpr@376.23--376.44) [5032]"}
              (unshared_graph($$(Heap, g_1)): bool);
            assert {:msg "  Loop invariant $$(g) == old_g might not hold on entry. Assertion $$(g) == old_g might not hold. (list_append.vpr@378.23--378.37) [5033]"}
              Set#Equal($$(Heap, g_1), old_g);
            assert {:msg "  Loop invariant exists_path($$(g), x, last) && (last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)) might not hold on entry. Assertion exists_path($$(g), x, last) might not hold. (list_append.vpr@381.23--382.158) [5034]"}
              (exists_path($$(Heap, g_1), x, last): bool);
            if (Heap[last, next] != null) {
              if ((edge($$(Heap, g_1), last, Heap[last, next]): bool) && (exists_path($$(Heap, g_1), Heap[last, next], Heap[last, next]): bool)) {
                assert {:msg "  Loop invariant exists_path($$(g), x, last) && (last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)) might not hold on entry. Assertion exists_path($$(g), last, last.next) might not hold. (list_append.vpr@381.23--382.158) [5035]"}
                  (exists_path($$(Heap, g_1), last, Heap[last, next]): bool);
              }
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc last;
          assume Heap[last, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            assume !g_1[null];
            
            // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write))
              if (*) {
                assume false;
              }
            havoc QPMask;
            assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list_append.vpr@367.23--367.31) [5036]"}
              (forall n$1_2: Ref, n$1_2_1: Ref ::
              
              (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
            );
            
            // -- Define Inverse Function
              assume (forall n$1_2: Ref ::
                { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                g_1[n$1_2] && NoPerm < FullPerm ==> qpRange47(n$1_2) && invRecv47(n$1_2) == n$1_2
              );
              assume (forall o_9: Ref ::
                { invRecv47(o_9) }
                (g_1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9) ==> invRecv47(o_9) == o_9
              );
            
            // -- Assume set of fields is nonNull
              assume (forall n$1_2: Ref ::
                { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                g_1[n$1_2] ==> n$1_2 != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, next] }
                ((g_1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9) ==> (NoPerm < FullPerm ==> invRecv47(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv47(o_9)] && NoPerm < FullPerm) && qpRange47(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
              );
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
              if (*) {
                if (g_1[n$2_7]) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@367.23--367.31) [5037]"}
                    HasDirectPerm(Mask, n$2_7, next);
                }
                if (g_1[n$2_7] && Heap[n$2_7, next] != null) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list_append.vpr@367.23--367.31) [5038]"}
                    HasDirectPerm(Mask, n$2_7, next);
                }
                assume false;
              }
            assume (forall n$2_3_2: Ref ::
              { g_1[Heap[n$2_3_2, next]] } { g_1[n$2_3_2], Heap[n$2_3_2, next] }
              g_1[n$2_3_2] && Heap[n$2_3_2, next] != null ==> g_1[Heap[n$2_3_2, next]]
            );
            assume state(Heap, Mask);
            assume g_1[last];
            assume state(Heap, Mask);
            assume g_1[x];
            assume g_1[y];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n))
              if (*) {
                if (g_1[n_13]) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      
                    
                    // -- check if receiver n$0 is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@371.64--371.69) [5039]"}
                        (forall n$0_6: Ref, n$0_6_1: Ref ::
                        { neverTriggered48(n$0_6), neverTriggered48(n$0_6_1) }
                        (((n$0_6 != n$0_6_1 && g_1[n$0_6]) && g_1[n$0_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_6 != n$0_6_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@371.64--371.69) [5040]"}
                        (forall n$0_6: Ref ::
                        { Heap[n$0_6, next] } { QPMask[n$0_6, next] } { Heap[n$0_6, next] }
                        g_1[n$0_6] ==> FullPerm > NoPerm ==> Mask[n$0_6, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n$0
                      assume (forall n$0_6: Ref ::
                        { Heap[n$0_6, next] } { QPMask[n$0_6, next] } { Heap[n$0_6, next] }
                        g_1[n$0_6] && NoPerm < FullPerm ==> qpRange48(n$0_6) && invRecv48(n$0_6) == n$0_6
                      );
                      assume (forall o_9: Ref ::
                        { invRecv48(o_9) }
                        g_1[invRecv48(o_9)] && (NoPerm < FullPerm && qpRange48(o_9)) ==> invRecv48(o_9) == o_9
                      );
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if (!(exists_path($$(Heap, g_1), x, n_13): bool)) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n$0 is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@371.91--371.96) [5041]"}
                          (forall n$0_7: Ref, n$0_7_1: Ref ::
                          { neverTriggered49(n$0_7), neverTriggered49(n$0_7_1) }
                          (((n$0_7 != n$0_7_1 && g_1[n$0_7]) && g_1[n$0_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_7 != n$0_7_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@371.91--371.96) [5042]"}
                          (forall n$0_7: Ref ::
                          { Heap[n$0_7, next] } { QPMask[n$0_7, next] } { Heap[n$0_7, next] }
                          g_1[n$0_7] ==> FullPerm > NoPerm ==> Mask[n$0_7, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n$0
                        assume (forall n$0_7: Ref ::
                          { Heap[n$0_7, next] } { QPMask[n$0_7, next] } { Heap[n$0_7, next] }
                          g_1[n$0_7] && NoPerm < FullPerm ==> qpRange49(n$0_7) && invRecv49(n$0_7) == n$0_7
                        );
                        assume (forall o_9: Ref ::
                          { invRecv49(o_9) }
                          g_1[invRecv49(o_9)] && (NoPerm < FullPerm && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
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
                assume false;
              }
            assume (forall n_15: Ref ::
              { g_1[n_15] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_15): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_15): bool) }
              g_1[n_15] ==> (exists_path($$(Heap, g_1), x, n_15): bool) || (exists_path($$(Heap, g_1), y, n_15): bool)
            );
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n))
              if (*) {
                if (g_1[n_14]) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      
                    
                    // -- check if receiver n$0 is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@372.64--372.69) [5043]"}
                        (forall n$0_8: Ref, n$0_8_1: Ref ::
                        { neverTriggered50(n$0_8), neverTriggered50(n$0_8_1) }
                        (((n$0_8 != n$0_8_1 && g_1[n$0_8]) && g_1[n$0_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_8 != n$0_8_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@372.64--372.69) [5044]"}
                        (forall n$0_8: Ref ::
                        { Heap[n$0_8, next] } { QPMask[n$0_8, next] } { Heap[n$0_8, next] }
                        g_1[n$0_8] ==> FullPerm > NoPerm ==> Mask[n$0_8, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n$0
                      assume (forall n$0_8: Ref ::
                        { Heap[n$0_8, next] } { QPMask[n$0_8, next] } { Heap[n$0_8, next] }
                        g_1[n$0_8] && NoPerm < FullPerm ==> qpRange50(n$0_8) && invRecv50(n$0_8) == n$0_8
                      );
                      assume (forall o_9: Ref ::
                        { invRecv50(o_9) }
                        g_1[invRecv50(o_9)] && (NoPerm < FullPerm && qpRange50(o_9)) ==> invRecv50(o_9) == o_9
                      );
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if ((exists_path($$(Heap, g_1), x, n_14): bool)) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n$0 is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (list_append.vpr@372.91--372.96) [5045]"}
                          (forall n$0_9: Ref, n$0_9_1: Ref ::
                          { neverTriggered51(n$0_9), neverTriggered51(n$0_9_1) }
                          (((n$0_9 != n$0_9_1 && g_1[n$0_9]) && g_1[n$0_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_9 != n$0_9_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (list_append.vpr@372.91--372.96) [5046]"}
                          (forall n$0_9: Ref ::
                          { Heap[n$0_9, next] } { QPMask[n$0_9, next] } { Heap[n$0_9, next] }
                          g_1[n$0_9] ==> FullPerm > NoPerm ==> Mask[n$0_9, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n$0
                        assume (forall n$0_9: Ref ::
                          { Heap[n$0_9, next] } { QPMask[n$0_9, next] } { Heap[n$0_9, next] }
                          g_1[n$0_9] && NoPerm < FullPerm ==> qpRange51(n$0_9) && invRecv51(n$0_9) == n$0_9
                        );
                        assume (forall o_9: Ref ::
                          { invRecv51(o_9) }
                          g_1[invRecv51(o_9)] && (NoPerm < FullPerm && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
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
                assume false;
              }
            assume (forall n_17: Ref ::
              { g_1[n_17] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_17): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_17): bool) }
              g_1[n_17] ==> !(exists_path($$(Heap, g_1), x, n_17): bool) || !(exists_path($$(Heap, g_1), y, n_17): bool)
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
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@374.37--374.42) [5047]"}
                    (forall n_18: Ref, n_18_1: Ref ::
                    { neverTriggered52(n_18), neverTriggered52(n_18_1) }
                    (((n_18 != n_18_1 && g_1[n_18]) && g_1[n_18_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_18 != n_18_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@374.37--374.42) [5048]"}
                    (forall n_18: Ref ::
                    { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                    g_1[n_18] ==> FullPerm > NoPerm ==> Mask[n_18, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_18: Ref ::
                    { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                    g_1[n_18] && NoPerm < FullPerm ==> qpRange52(n_18) && invRecv52(n_18) == n_18
                  );
                  assume (forall o_9: Ref ::
                    { invRecv52(o_9) }
                    g_1[invRecv52(o_9)] && (NoPerm < FullPerm && qpRange52(o_9)) ==> invRecv52(o_9) == o_9
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
            assume state(Heap, Mask);
            
            // -- Check definedness of unshared_graph($$(g))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@376.38--376.43) [5049]"}
                    (forall n_19: Ref, n_19_1: Ref ::
                    { neverTriggered53(n_19), neverTriggered53(n_19_1) }
                    (((n_19 != n_19_1 && g_1[n_19]) && g_1[n_19_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_19 != n_19_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@376.38--376.43) [5050]"}
                    (forall n_19: Ref ::
                    { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                    g_1[n_19] ==> FullPerm > NoPerm ==> Mask[n_19, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_19: Ref ::
                    { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                    g_1[n_19] && NoPerm < FullPerm ==> qpRange53(n_19) && invRecv53(n_19) == n_19
                  );
                  assume (forall o_9: Ref ::
                    { invRecv53(o_9) }
                    g_1[invRecv53(o_9)] && (NoPerm < FullPerm && qpRange53(o_9)) ==> invRecv53(o_9) == o_9
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
            
            // -- Check definedness of $$(g) == old_g
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@378.23--378.28) [5051]"}
                    (forall n_20: Ref, n_20_1: Ref ::
                    { neverTriggered54(n_20), neverTriggered54(n_20_1) }
                    (((n_20 != n_20_1 && g_1[n_20]) && g_1[n_20_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_20 != n_20_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@378.23--378.28) [5052]"}
                    (forall n_20: Ref ::
                    { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                    g_1[n_20] ==> FullPerm > NoPerm ==> Mask[n_20, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_20: Ref ::
                    { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                    g_1[n_20] && NoPerm < FullPerm ==> qpRange54(n_20) && invRecv54(n_20) == n_20
                  );
                  assume (forall o_9: Ref ::
                    { invRecv54(o_9) }
                    g_1[invRecv54(o_9)] && (NoPerm < FullPerm && qpRange54(o_9)) ==> invRecv54(o_9) == o_9
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Set#Equal($$(Heap, g_1), old_g);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of exists_path($$(g), x, last)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@381.35--381.40) [5053]"}
                    (forall n_21: Ref, n_21_1: Ref ::
                    { neverTriggered55(n_21), neverTriggered55(n_21_1) }
                    (((n_21 != n_21_1 && g_1[n_21]) && g_1[n_21_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_21 != n_21_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@381.35--381.40) [5054]"}
                    (forall n_21: Ref ::
                    { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                    g_1[n_21] ==> FullPerm > NoPerm ==> Mask[n_21, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_21: Ref ::
                    { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                    g_1[n_21] && NoPerm < FullPerm ==> qpRange55(n_21) && invRecv55(n_21) == n_21
                  );
                  assume (forall o_9: Ref ::
                    { invRecv55(o_9) }
                    g_1[invRecv55(o_9)] && (NoPerm < FullPerm && qpRange55(o_9)) ==> invRecv55(o_9) == o_9
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume (exists_path($$(Heap, g_1), x, last): bool);
            
            // -- Check definedness of last.next != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access last.next (list_append.vpr@381.23--382.158) [5055]"}
                HasDirectPerm(Mask, last, next);
            if (Heap[last, next] != null) {
              
              // -- Check definedness of edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next)
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@382.55--382.60) [5056]"}
                      (forall n_22: Ref, n_22_1: Ref ::
                      { neverTriggered56(n_22), neverTriggered56(n_22_1) }
                      (((n_22 != n_22_1 && g_1[n_22]) && g_1[n_22_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_22 != n_22_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@382.55--382.60) [5057]"}
                      (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      g_1[n_22] ==> FullPerm > NoPerm ==> Mask[n_22, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      g_1[n_22] && NoPerm < FullPerm ==> qpRange56(n_22) && invRecv56(n_22) == n_22
                    );
                    assume (forall o_9: Ref ::
                      { invRecv56(o_9) }
                      g_1[invRecv56(o_9)] && (NoPerm < FullPerm && qpRange56(o_9)) ==> invRecv56(o_9) == o_9
                    );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access last.next (list_append.vpr@381.23--382.158) [5058]"}
                  HasDirectPerm(Mask, last, next);
                if ((edge($$(Heap, g_1), last, Heap[last, next]): bool)) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      
                    
                    // -- check if receiver n is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@382.92--382.97) [5059]"}
                        (forall n_23: Ref, n_23_1: Ref ::
                        { neverTriggered57(n_23), neverTriggered57(n_23_1) }
                        (((n_23 != n_23_1 && g_1[n_23]) && g_1[n_23_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_23 != n_23_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@382.92--382.97) [5060]"}
                        (forall n_23: Ref ::
                        { Heap[n_23, next] } { QPMask[n_23, next] } { Heap[n_23, next] }
                        g_1[n_23] ==> FullPerm > NoPerm ==> Mask[n_23, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n
                      assume (forall n_23: Ref ::
                        { Heap[n_23, next] } { QPMask[n_23, next] } { Heap[n_23, next] }
                        g_1[n_23] && NoPerm < FullPerm ==> qpRange57(n_23) && invRecv57(n_23) == n_23
                      );
                      assume (forall o_9: Ref ::
                        { invRecv57(o_9) }
                        g_1[invRecv57(o_9)] && (NoPerm < FullPerm && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
                      );
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access last.next (list_append.vpr@381.23--382.158) [5061]"}
                    HasDirectPerm(Mask, last, next);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access last.next (list_append.vpr@381.23--382.158) [5062]"}
                    HasDirectPerm(Mask, last, next);
                }
              if ((edge($$(Heap, g_1), last, Heap[last, next]): bool) && (exists_path($$(Heap, g_1), Heap[last, next], Heap[last, next]): bool)) {
                assume state(Heap, Mask);
                
                // -- Check definedness of exists_path($$(g), last, last.next)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      
                    
                    // -- check if receiver n is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@382.135--382.140) [5063]"}
                        (forall n_24: Ref, n_24_1: Ref ::
                        { neverTriggered58(n_24), neverTriggered58(n_24_1) }
                        (((n_24 != n_24_1 && g_1[n_24]) && g_1[n_24_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_24 != n_24_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@382.135--382.140) [5064]"}
                        (forall n_24: Ref ::
                        { Heap[n_24, next] } { QPMask[n_24, next] } { Heap[n_24, next] }
                        g_1[n_24] ==> FullPerm > NoPerm ==> Mask[n_24, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n
                      assume (forall n_24: Ref ::
                        { Heap[n_24, next] } { QPMask[n_24, next] } { Heap[n_24, next] }
                        g_1[n_24] && NoPerm < FullPerm ==> qpRange58(n_24) && invRecv58(n_24) == n_24
                      );
                      assume (forall o_9: Ref ::
                        { invRecv58(o_9) }
                        g_1[invRecv58(o_9)] && (NoPerm < FullPerm && qpRange58(o_9)) ==> invRecv58(o_9) == o_9
                      );
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access last.next (list_append.vpr@381.23--382.158) [5065]"}
                    HasDirectPerm(Mask, last, next);
                assume (exists_path($$(Heap, g_1), last, Heap[last, next]): bool);
              }
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
            assume !g_1[null];
            havoc QPMask;
            assert {:msg "  While statement might fail. Quantified resource n$1.next might not be injective. (list_append.vpr@367.23--367.31) [5066]"}
              (forall n$1_3: Ref, n$1_3_1: Ref ::
              
              (((n$1_3 != n$1_3_1 && g_1[n$1_3]) && g_1[n$1_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_3 != n$1_3_1
            );
            
            // -- Define Inverse Function
              assume (forall n$1_3: Ref ::
                { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                g_1[n$1_3] && NoPerm < FullPerm ==> qpRange59(n$1_3) && invRecv59(n$1_3) == n$1_3
              );
              assume (forall o_9: Ref ::
                { invRecv59(o_9) }
                (g_1[invRecv59(o_9)] && NoPerm < FullPerm) && qpRange59(o_9) ==> invRecv59(o_9) == o_9
              );
            
            // -- Assume set of fields is nonNull
              assume (forall n$1_3: Ref ::
                { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                g_1[n$1_3] ==> n$1_3 != null
              );
            
            // -- Define permissions
              assume (forall o_9: Ref ::
                { QPMask[o_9, next] }
                ((g_1[invRecv59(o_9)] && NoPerm < FullPerm) && qpRange59(o_9) ==> (NoPerm < FullPerm ==> invRecv59(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv59(o_9)] && NoPerm < FullPerm) && qpRange59(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
            assume g_1[last];
            assume g_1[x];
            assume g_1[y];
            assume state(Heap, Mask);
            assume (forall n_25: Ref ::
              { g_1[n_25] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_25): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_25): bool) }
              g_1[n_25] ==> (exists_path($$(Heap, g_1), x, n_25): bool) || (exists_path($$(Heap, g_1), y, n_25): bool)
            );
            assume state(Heap, Mask);
            assume (forall n_26: Ref ::
              { g_1[n_26] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_26): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_26): bool) }
              g_1[n_26] ==> !(exists_path($$(Heap, g_1), x, n_26): bool) || !(exists_path($$(Heap, g_1), y, n_26): bool)
            );
            assume state(Heap, Mask);
            assume (acyclic_graph($$(Heap, g_1)): bool);
            assume state(Heap, Mask);
            assume (unshared_graph($$(Heap, g_1)): bool);
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, g_1), old_g);
            assume state(Heap, Mask);
            assume (exists_path($$(Heap, g_1), x, last): bool);
            if (Heap[last, next] != null) {
              if ((edge($$(Heap, g_1), last, Heap[last, next]): bool) && (exists_path($$(Heap, g_1), Heap[last, next], Heap[last, next]): bool)) {
                assume state(Heap, Mask);
                assume (exists_path($$(Heap, g_1), last, Heap[last, next]): bool);
              }
            }
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of last.next != null
              assert {:msg "  While statement might fail. There might be insufficient permission to access last.next (list_append.vpr@366.17--366.34) [5067]"}
                HasDirectPerm(Mask, last, next);
            assume Heap[last, next] != null;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: inhale last.next != null ==>
  //   apply_IND_2($$(g), Set(last), inst_uReach_rev($$(g), last.next)) -- list_append.vpr@384.20--384.105
                
                // -- Check definedness of last.next != null
                  assert {:msg "  Inhale might fail. There might be insufficient permission to access last.next (list_append.vpr@384.20--384.105) [5068]"}
                    HasDirectPerm(Mask, last, next);
                if (Heap[last, next] != null) {
                  assume state(Heap, Mask);
                  
                  // -- Check definedness of apply_IND_2($$(g), Set(last), inst_uReach_rev($$(g), last.next))
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@384.54--384.59) [5069]"}
                          (forall n_27: Ref, n_27_1: Ref ::
                          { neverTriggered60(n_27), neverTriggered60(n_27_1) }
                          (((n_27 != n_27_1 && g_1[n_27]) && g_1[n_27_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_27 != n_27_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@384.54--384.59) [5070]"}
                          (forall n_27: Ref ::
                          { Heap[n_27, next] } { QPMask[n_27, next] } { Heap[n_27, next] }
                          g_1[n_27] ==> FullPerm > NoPerm ==> Mask[n_27, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_27: Ref ::
                          { Heap[n_27, next] } { QPMask[n_27, next] } { Heap[n_27, next] }
                          g_1[n_27] && NoPerm < FullPerm ==> qpRange60(n_27) && invRecv60(n_27) == n_27
                        );
                        assume (forall o_9: Ref ::
                          { invRecv60(o_9) }
                          g_1[invRecv60(o_9)] && (NoPerm < FullPerm && qpRange60(o_9)) ==> invRecv60(o_9) == o_9
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
                        
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@384.88--384.93) [5071]"}
                          (forall n_28: Ref, n_28_1: Ref ::
                          { neverTriggered61(n_28), neverTriggered61(n_28_1) }
                          (((n_28 != n_28_1 && g_1[n_28]) && g_1[n_28_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_28 != n_28_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@384.88--384.93) [5072]"}
                          (forall n_28: Ref ::
                          { Heap[n_28, next] } { QPMask[n_28, next] } { Heap[n_28, next] }
                          g_1[n_28] ==> FullPerm > NoPerm ==> Mask[n_28, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_28: Ref ::
                          { Heap[n_28, next] } { QPMask[n_28, next] } { Heap[n_28, next] }
                          g_1[n_28] && NoPerm < FullPerm ==> qpRange61(n_28) && invRecv61(n_28) == n_28
                        );
                        assume (forall o_9: Ref ::
                          { invRecv61(o_9) }
                          g_1[invRecv61(o_9)] && (NoPerm < FullPerm && qpRange61(o_9)) ==> invRecv61(o_9) == o_9
                        );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                    assert {:msg "  Inhale might fail. There might be insufficient permission to access last.next (list_append.vpr@384.20--384.105) [5073]"}
                      HasDirectPerm(Mask, last, next);
                  assume (apply_IND_2($$(Heap, g_1), Set#Singleton(last), (inst_uReach_rev($$(Heap, g_1), Heap[last, next]): Set Ref)): bool);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale last.next != null ==>
  //   apply_IND($$(g), Set(x), inst_uReach_2($$(g), x)) -- list_append.vpr@385.20--385.92
                
                // -- Check definedness of last.next != null
                  assert {:msg "  Inhale might fail. There might be insufficient permission to access last.next (list_append.vpr@385.20--385.92) [5074]"}
                    HasDirectPerm(Mask, last, next);
                if (Heap[last, next] != null) {
                  assume state(Heap, Mask);
                  
                  // -- Check definedness of apply_IND($$(g), Set(x), inst_uReach_2($$(g), x))
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@385.54--385.59) [5075]"}
                          (forall n_29: Ref, n_29_1: Ref ::
                          { neverTriggered62(n_29), neverTriggered62(n_29_1) }
                          (((n_29 != n_29_1 && g_1[n_29]) && g_1[n_29_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_29 != n_29_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@385.54--385.59) [5076]"}
                          (forall n_29: Ref ::
                          { Heap[n_29, next] } { QPMask[n_29, next] } { Heap[n_29, next] }
                          g_1[n_29] ==> FullPerm > NoPerm ==> Mask[n_29, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_29: Ref ::
                          { Heap[n_29, next] } { QPMask[n_29, next] } { Heap[n_29, next] }
                          g_1[n_29] && NoPerm < FullPerm ==> qpRange62(n_29) && invRecv62(n_29) == n_29
                        );
                        assume (forall o_9: Ref ::
                          { invRecv62(o_9) }
                          g_1[invRecv62(o_9)] && (NoPerm < FullPerm && qpRange62(o_9)) ==> invRecv62(o_9) == o_9
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
                        
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@385.83--385.88) [5077]"}
                          (forall n_30: Ref, n_30_1: Ref ::
                          { neverTriggered63(n_30), neverTriggered63(n_30_1) }
                          (((n_30 != n_30_1 && g_1[n_30]) && g_1[n_30_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_30 != n_30_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@385.83--385.88) [5078]"}
                          (forall n_30: Ref ::
                          { Heap[n_30, next] } { QPMask[n_30, next] } { Heap[n_30, next] }
                          g_1[n_30] ==> FullPerm > NoPerm ==> Mask[n_30, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_30: Ref ::
                          { Heap[n_30, next] } { QPMask[n_30, next] } { Heap[n_30, next] }
                          g_1[n_30] && NoPerm < FullPerm ==> qpRange63(n_30) && invRecv63(n_30) == n_30
                        );
                        assume (forall o_9: Ref ::
                          { invRecv63(o_9) }
                          g_1[invRecv63(o_9)] && (NoPerm < FullPerm && qpRange63(o_9)) ==> invRecv63(o_9) == o_9
                        );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                  assume (apply_IND($$(Heap, g_1), Set#Singleton(x), (inst_uReach_2($$(Heap, g_1), x): Set Ref)): bool);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: last := last.next -- list_append.vpr@386.13--386.30
                
                // -- Check definedness of last.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access last.next (list_append.vpr@386.13--386.30) [5079]"}
                    HasDirectPerm(Mask, last, next);
                last := Heap[last, next];
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Assertion !((null in g)) might not hold. (list_append.vpr@367.23--367.31) [5080]"}
              !g_1[null];
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$1 is injective
              assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Quantified resource n$1.next might not be injective. (list_append.vpr@367.23--367.31) [5081]"}
                (forall n$1_4: Ref, n$1_4_1: Ref ::
                { neverTriggered64(n$1_4), neverTriggered64(n$1_4_1) }
                (((n$1_4 != n$1_4_1 && g_1[n$1_4]) && g_1[n$1_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_4 != n$1_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. There might be insufficient permission to access n$1.next (list_append.vpr@367.23--367.31) [5082]"}
                (forall n$1_4: Ref ::
                { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                g_1[n$1_4] ==> Mask[n$1_4, next] >= FullPerm
              );
            
            // -- assumptions for inverse of receiver n$1
              assume (forall n$1_4: Ref ::
                { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                g_1[n$1_4] && NoPerm < FullPerm ==> qpRange64(n$1_4) && invRecv64(n$1_4) == n$1_4
              );
              assume (forall o_9: Ref ::
                { invRecv64(o_9) }
                g_1[invRecv64(o_9)] && (NoPerm < FullPerm && qpRange64(o_9)) ==> invRecv64(o_9) == o_9
              );
            
            // -- assume permission updates for field next
              assume (forall o_9: Ref ::
                { QPMask[o_9, next] }
                (g_1[invRecv64(o_9)] && (NoPerm < FullPerm && qpRange64(o_9)) ==> invRecv64(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv64(o_9)] && (NoPerm < FullPerm && qpRange64(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
              );
            
            // -- assume permission updates for independent locations
              assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                { QPMask[o_9, f_5] }
                f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
              );
            Mask := QPMask;
            if (*) {
              if (g_1[n$2_5_1] && Heap[n$2_5_1, next] != null) {
                assert {:msg "  Loop invariant !((null in g)) && ((forall n$1: Ref :: { n$1.next } (n$1 in g) ==> acc(n$1.next, write)) && (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))) might not be preserved. Assertion (n$2.next in g) might not hold. (list_append.vpr@367.23--367.31) [5083]"}
                  g_1[Heap[n$2_5_1, next]];
              }
              assume false;
            }
            assume (forall n$2_6_1: Ref ::
              { g_1[Heap[n$2_6_1, next]] } { g_1[n$2_6_1], Heap[n$2_6_1, next] }
              g_1[n$2_6_1] && Heap[n$2_6_1, next] != null ==> g_1[Heap[n$2_6_1, next]]
            );
            assert {:msg "  Loop invariant (last in g) might not be preserved. Assertion (last in g) might not hold. (list_append.vpr@368.23--368.32) [5084]"}
              g_1[last];
            assert {:msg "  Loop invariant (x in g) && (y in g) might not be preserved. Assertion (x in g) might not hold. (list_append.vpr@369.23--369.39) [5085]"}
              g_1[x];
            assert {:msg "  Loop invariant (x in g) && (y in g) might not be preserved. Assertion (y in g) might not hold. (list_append.vpr@369.23--369.39) [5086]"}
              g_1[y];
            if (*) {
              if (g_1[n_31]) {
                assert {:msg "  Loop invariant (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> exists_path($$(g), x, n) || exists_path($$(g), y, n)) might not be preserved. Assertion exists_path($$(g), x, n) || exists_path($$(g), y, n) might not hold. (list_append.vpr@371.23--371.102) [5087]"}
                  (exists_path($$(Heap, g_1), x, n_31): bool) || (exists_path($$(Heap, g_1), y, n_31): bool);
              }
              assume false;
            }
            assume (forall n_32_1: Ref ::
              { g_1[n_32_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_32_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_32_1): bool) }
              g_1[n_32_1] ==> (exists_path($$(Heap, g_1), x, n_32_1): bool) || (exists_path($$(Heap, g_1), y, n_32_1): bool)
            );
            if (*) {
              if (g_1[n_33]) {
                assert {:msg "  Loop invariant (forall n: Ref :: { (n in g) } { exists_path($$(g), x, n) } { exists_path($$(g), y, n) } (n in g) ==> !exists_path($$(g), x, n) || !exists_path($$(g), y, n)) might not be preserved. Assertion !exists_path($$(g), x, n) || !exists_path($$(g), y, n) might not hold. (list_append.vpr@372.23--372.102) [5088]"}
                  !(exists_path($$(Heap, g_1), x, n_33): bool) || !(exists_path($$(Heap, g_1), y, n_33): bool);
              }
              assume false;
            }
            assume (forall n_34_1: Ref ::
              { g_1[n_34_1] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_34_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_34_1): bool) }
              g_1[n_34_1] ==> !(exists_path($$(Heap, g_1), x, n_34_1): bool) || !(exists_path($$(Heap, g_1), y, n_34_1): bool)
            );
            assert {:msg "  Loop invariant acyclic_graph($$(g)) might not be preserved. Assertion acyclic_graph($$(g)) might not hold. (list_append.vpr@374.23--374.43) [5089]"}
              (acyclic_graph($$(Heap, g_1)): bool);
            assert {:msg "  Loop invariant unshared_graph($$(g)) might not be preserved. Assertion unshared_graph($$(g)) might not hold. (list_append.vpr@376.23--376.44) [5090]"}
              (unshared_graph($$(Heap, g_1)): bool);
            assert {:msg "  Loop invariant $$(g) == old_g might not be preserved. Assertion $$(g) == old_g might not hold. (list_append.vpr@378.23--378.37) [5091]"}
              Set#Equal($$(Heap, g_1), old_g);
            assert {:msg "  Loop invariant exists_path($$(g), x, last) && (last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)) might not be preserved. Assertion exists_path($$(g), x, last) might not hold. (list_append.vpr@381.23--382.158) [5092]"}
              (exists_path($$(Heap, g_1), x, last): bool);
            if (Heap[last, next] != null) {
              if ((edge($$(Heap, g_1), last, Heap[last, next]): bool) && (exists_path($$(Heap, g_1), Heap[last, next], Heap[last, next]): bool)) {
                assert {:msg "  Loop invariant exists_path($$(g), x, last) && (last.next != null ==> edge($$(g), last, last.next) && exists_path($$(g), last.next, last.next) ==> exists_path($$(g), last, last.next)) might not be preserved. Assertion exists_path($$(g), last, last.next) might not hold. (list_append.vpr@381.23--382.158) [5093]"}
                  (exists_path($$(Heap, g_1), last, Heap[last, next]): bool);
              }
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[last, next] != null);
          assume state(Heap, Mask);
          assume !g_1[null];
          havoc QPMask;
          assert {:msg "  While statement might fail. Quantified resource n$1.next might not be injective. (list_append.vpr@367.23--367.31) [5094]"}
            (forall n$1_5: Ref, n$1_5_1: Ref ::
            
            (((n$1_5 != n$1_5_1 && g_1[n$1_5]) && g_1[n$1_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_5 != n$1_5_1
          );
          
          // -- Define Inverse Function
            assume (forall n$1_5: Ref ::
              { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
              g_1[n$1_5] && NoPerm < FullPerm ==> qpRange65(n$1_5) && invRecv65(n$1_5) == n$1_5
            );
            assume (forall o_9: Ref ::
              { invRecv65(o_9) }
              (g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9) ==> invRecv65(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$1_5: Ref ::
              { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
              g_1[n$1_5] ==> n$1_5 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              ((g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9) ==> (NoPerm < FullPerm ==> invRecv65(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
          assume g_1[last];
          assume g_1[x];
          assume g_1[y];
          assume state(Heap, Mask);
          assume (forall n_35: Ref ::
            { g_1[n_35] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_35): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_35): bool) }
            g_1[n_35] ==> (exists_path($$(Heap, g_1), x, n_35): bool) || (exists_path($$(Heap, g_1), y, n_35): bool)
          );
          assume state(Heap, Mask);
          assume (forall n_36: Ref ::
            { g_1[n_36] } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n_36): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), y, n_36): bool) }
            g_1[n_36] ==> !(exists_path($$(Heap, g_1), x, n_36): bool) || !(exists_path($$(Heap, g_1), y, n_36): bool)
          );
          assume state(Heap, Mask);
          assume (acyclic_graph($$(Heap, g_1)): bool);
          assume state(Heap, Mask);
          assume (unshared_graph($$(Heap, g_1)): bool);
          assume state(Heap, Mask);
          assume Set#Equal($$(Heap, g_1), old_g);
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), x, last): bool);
          if (Heap[last, next] != null) {
            if ((edge($$(Heap, g_1), last, Heap[last, next]): bool) && (exists_path($$(Heap, g_1), Heap[last, next], Heap[last, next]): bool)) {
              assume state(Heap, Mask);
              assume (exists_path($$(Heap, g_1), last, Heap[last, next]): bool);
            }
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: link(g, last, y) -- list_append.vpr@392.9--392.23
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link might not hold. Assertion (last in g) might not hold. (list_append.vpr@392.9--392.23) [5095]"}
            g_1[last];
          if (y != null) {
            assert {:msg "  The precondition of method link might not hold. Assertion (y in g) might not hold. (list_append.vpr@392.9--392.23) [5096]"}
              g_1[y];
          }
          assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list_append.vpr@392.9--392.23) [5097]"}
            !g_1[null];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list_append.vpr@392.9--392.23) [5098]"}
              (forall n_37: Ref, n_37_1: Ref ::
              { neverTriggered66(n_37), neverTriggered66(n_37_1) }
              (((n_37 != n_37_1 && g_1[n_37]) && g_1[n_37_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_37 != n_37_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list_append.vpr@392.9--392.23) [5099]"}
              (forall n_37: Ref ::
              { Heap[n_37, next] } { QPMask[n_37, next] } { Heap[n_37, next] }
              g_1[n_37] ==> Mask[n_37, next] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_37: Ref ::
              { Heap[n_37, next] } { QPMask[n_37, next] } { Heap[n_37, next] }
              g_1[n_37] && NoPerm < FullPerm ==> qpRange66(n_37) && invRecv66(n_37) == n_37
            );
            assume (forall o_9: Ref ::
              { invRecv66(o_9) }
              g_1[invRecv66(o_9)] && (NoPerm < FullPerm && qpRange66(o_9)) ==> invRecv66(o_9) == o_9
            );
          
          // -- assume permission updates for field next
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              (g_1[invRecv66(o_9)] && (NoPerm < FullPerm && qpRange66(o_9)) ==> invRecv66(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv66(o_9)] && (NoPerm < FullPerm && qpRange66(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (g_1[n$0_10_1] && Heap[n$0_10_1, next] != null) {
              assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list_append.vpr@392.9--392.23) [5100]"}
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
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list_append.vpr@392.9--392.23) [5101]"}
            (forall n$1_6: Ref, n$1_6_1: Ref ::
            
            (((n$1_6 != n$1_6_1 && g_1[n$1_6]) && g_1[n$1_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_6 != n$1_6_1
          );
          
          // -- Define Inverse Function
            assume (forall n$1_6: Ref ::
              { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
              g_1[n$1_6] && NoPerm < FullPerm ==> qpRange67(n$1_6) && invRecv67(n$1_6) == n$1_6
            );
            assume (forall o_9: Ref ::
              { invRecv67(o_9) }
              (g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9) ==> invRecv67(o_9) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall n$1_6: Ref ::
              { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
              g_1[n$1_6] ==> n$1_6 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              ((g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9) ==> (NoPerm < FullPerm ==> invRecv67(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
          assume Heap[last, next] == y;
          if (y == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
          }
          if (y != null) {
            assume state(Heap, Mask);
            assume (forall v1: Ref, v2: Ref ::
              { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1, v2): bool) }
              (edge($$(Heap, g_1), v1, v2): bool) == ((edge($$(PreCallHeap, g_1), v1, v2): bool) || (v1 == last && v2 == y))
            );
          }
          if (y != null) {
            assume state(Heap, Mask);
            assume (forall v1_1: Ref, v2_1: Ref ::
              { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_1, v2_1): bool) }
              (exists_path($$(Heap, g_1), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_1, v2_1): bool) || ((exists_path($$(PreCallHeap, g_1), v1_1, last): bool) && (exists_path($$(PreCallHeap, g_1), y, v2_1): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { exists_path($$(g), u, v) }
  //     !exists_path($$(g), u, v) ==>
  //     u != v &&
  //     (forall w: Ref ::
  //       { edge($$(g), u, w) }
  //       { exists_path($$(g), w, v) }
  //       !edge($$(g), u, w) || !exists_path($$(g), w, v))) -- list_append.vpr@467.9--467.136
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g), u, v) } !exists_path($$(g), u, v) ==> u != v && (forall w: Ref :: { edge($$(g), u, w) } { exists_path($$(g), w, v) } !edge($$(g), u, w) || !exists_path($$(g), w, v)))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@467.52--467.57) [5102]"}
                  (forall n_38: Ref, n_38_1: Ref ::
                  { neverTriggered68(n_38), neverTriggered68(n_38_1) }
                  (((n_38 != n_38_1 && g_1[n_38]) && g_1[n_38_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_38 != n_38_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@467.52--467.57) [5103]"}
                  (forall n_38: Ref ::
                  { ExhaleWellDef0Heap[n_38, next] } { QPMask[n_38, next] } { ExhaleWellDef0Heap[n_38, next] }
                  g_1[n_38] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_38, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_38: Ref ::
                  { ExhaleWellDef0Heap[n_38, next] } { QPMask[n_38, next] } { ExhaleWellDef0Heap[n_38, next] }
                  g_1[n_38] && NoPerm < FullPerm ==> qpRange68(n_38) && invRecv68(n_38) == n_38
                );
                assume (forall o_9: Ref ::
                  { invRecv68(o_9) }
                  g_1[invRecv68(o_9)] && (NoPerm < FullPerm && qpRange68(o_9)) ==> invRecv68(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(Heap, g_1), u_2, v_3): bool)) {
              if (u_2 != v_3) {
                if (*) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      
                    
                    // -- check if receiver n is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@467.99--467.104) [5104]"}
                        (forall n_39: Ref, n_39_1: Ref ::
                        { neverTriggered69(n_39), neverTriggered69(n_39_1) }
                        (((n_39 != n_39_1 && g_1[n_39]) && g_1[n_39_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_39 != n_39_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@467.99--467.104) [5105]"}
                        (forall n_39: Ref ::
                        { ExhaleWellDef0Heap[n_39, next] } { QPMask[n_39, next] } { ExhaleWellDef0Heap[n_39, next] }
                        g_1[n_39] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_39, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n
                      assume (forall n_39: Ref ::
                        { ExhaleWellDef0Heap[n_39, next] } { QPMask[n_39, next] } { ExhaleWellDef0Heap[n_39, next] }
                        g_1[n_39] && NoPerm < FullPerm ==> qpRange69(n_39) && invRecv69(n_39) == n_39
                      );
                      assume (forall o_9: Ref ::
                        { invRecv69(o_9) }
                        g_1[invRecv69(o_9)] && (NoPerm < FullPerm && qpRange69(o_9)) ==> invRecv69(o_9) == o_9
                      );
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                    ExhaleWellDef0Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  if ((edge($$(Heap, g_1), u_2, w_3): bool)) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                      ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@467.126--467.131) [5106]"}
                          (forall n_40: Ref, n_40_1: Ref ::
                          { neverTriggered70(n_40), neverTriggered70(n_40_1) }
                          (((n_40 != n_40_1 && g_1[n_40]) && g_1[n_40_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_40 != n_40_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@467.126--467.131) [5107]"}
                          (forall n_40: Ref ::
                          { ExhaleWellDef0Heap[n_40, next] } { QPMask[n_40, next] } { ExhaleWellDef0Heap[n_40, next] }
                          g_1[n_40] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_40, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_40: Ref ::
                          { ExhaleWellDef0Heap[n_40, next] } { QPMask[n_40, next] } { ExhaleWellDef0Heap[n_40, next] }
                          g_1[n_40] && NoPerm < FullPerm ==> qpRange70(n_40) && invRecv70(n_40) == n_40
                        );
                        assume (forall o_9: Ref ::
                          { invRecv70(o_9) }
                          g_1[invRecv70(o_9)] && (NoPerm < FullPerm && qpRange70(o_9)) ==> invRecv70(o_9) == o_9
                        );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                      ExhaleWellDef0Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                  }
                  assume false;
                }
              }
            }
            assume false;
          }
        if (*) {
          if (!(exists_path($$(Heap, g_1), u_1_1, v_1_1): bool)) {
            assert {:msg "  Assert might fail. Assertion u != v might not hold. (list_append.vpr@467.16--467.136) [5108]"}
              u_1_1 != v_1_1;
            if (*) {
              assert {:msg "  Assert might fail. Assertion !edge($$(g), u, w) || !exists_path($$(g), w, v) might not hold. (list_append.vpr@467.16--467.136) [5109]"}
                !(edge($$(Heap, g_1), u_1_1, w_1_1): bool) || !(exists_path($$(Heap, g_1), w_1_1, v_1_1): bool);
              assume false;
            }
            assume (forall w_2_1: Ref ::
              { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_1_1, w_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), w_2_1, v_1_1): bool) }
              !(edge($$(Heap, g_1), u_1_1, w_2_1): bool) || !(exists_path($$(Heap, g_1), w_2_1, v_1_1): bool)
            );
          }
          assume false;
        }
        assume (forall u_2_1: Ref, v_2_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_2_1, v_2_1): bool) }
          !(exists_path($$(Heap, g_1), u_2_1, v_2_1): bool) ==> u_2_1 != v_2_1 && (forall w_3_1: Ref ::
            { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_2_1, w_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), w_3_1, v_2_1): bool) }
            !(edge($$(Heap, g_1), u_2_1, w_3_1): bool) || !(exists_path($$(Heap, g_1), w_3_1, v_2_1): bool)
          )
        );
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { exists_path($$(g), u, v) }
  //     { edge($$(g), u, v) }
  //     !exists_path($$(g), u, v) ==> !edge($$(g), u, v)) -- list_append.vpr@468.9--468.83
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g), u, v) } { edge($$(g), u, v) } !exists_path($$(g), u, v) ==> !edge($$(g), u, v))
          if (*) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@468.52--468.57) [5110]"}
                  (forall n_41: Ref, n_41_1: Ref ::
                  { neverTriggered71(n_41), neverTriggered71(n_41_1) }
                  (((n_41 != n_41_1 && g_1[n_41]) && g_1[n_41_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_41 != n_41_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@468.52--468.57) [5111]"}
                  (forall n_41: Ref ::
                  { ExhaleWellDef0Heap[n_41, next] } { QPMask[n_41, next] } { ExhaleWellDef0Heap[n_41, next] }
                  g_1[n_41] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_41, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_41: Ref ::
                  { ExhaleWellDef0Heap[n_41, next] } { QPMask[n_41, next] } { ExhaleWellDef0Heap[n_41, next] }
                  g_1[n_41] && NoPerm < FullPerm ==> qpRange71(n_41) && invRecv71(n_41) == n_41
                );
                assume (forall o_9: Ref ::
                  { invRecv71(o_9) }
                  g_1[invRecv71(o_9)] && (NoPerm < FullPerm && qpRange71(o_9)) ==> invRecv71(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(Heap, g_1), u_3, v_4): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@468.73--468.78) [5112]"}
                    (forall n_42: Ref, n_42_1: Ref ::
                    { neverTriggered72(n_42), neverTriggered72(n_42_1) }
                    (((n_42 != n_42_1 && g_1[n_42]) && g_1[n_42_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_42 != n_42_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@468.73--468.78) [5113]"}
                    (forall n_42: Ref ::
                    { ExhaleWellDef0Heap[n_42, next] } { QPMask[n_42, next] } { ExhaleWellDef0Heap[n_42, next] }
                    g_1[n_42] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_42, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_42: Ref ::
                    { ExhaleWellDef0Heap[n_42, next] } { QPMask[n_42, next] } { ExhaleWellDef0Heap[n_42, next] }
                    g_1[n_42] && NoPerm < FullPerm ==> qpRange72(n_42) && invRecv72(n_42) == n_42
                  );
                  assume (forall o_9: Ref ::
                    { invRecv72(o_9) }
                    g_1[invRecv72(o_9)] && (NoPerm < FullPerm && qpRange72(o_9)) ==> invRecv72(o_9) == o_9
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                ExhaleWellDef0Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        if (*) {
          if (!(exists_path($$(Heap, g_1), u_4, v_4_1): bool)) {
            assert {:msg "  Assert might fail. Assertion !edge($$(g), u, v) might not hold. (list_append.vpr@468.16--468.83) [5114]"}
              !(edge($$(Heap, g_1), u_4, v_4_1): bool);
          }
          assume false;
        }
        assume (forall u_5_1: Ref, v_5_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_5_1, v_5_1): bool) } { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_5_1, v_5_1): bool) }
          !(exists_path($$(Heap, g_1), u_5_1, v_5_1): bool) ==> !(edge($$(Heap, g_1), u_5_1, v_5_1): bool)
        );
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: res := x -- list_append.vpr@528.5--528.13
    res := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert func_graph($$(g)) -- list_append.vpr@546.5--546.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of func_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@546.23--546.28) [5115]"}
            (forall n_43: Ref, n_43_1: Ref ::
            { neverTriggered73(n_43), neverTriggered73(n_43_1) }
            (((n_43 != n_43_1 && g_1[n_43]) && g_1[n_43_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_43 != n_43_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@546.23--546.28) [5116]"}
            (forall n_43: Ref ::
            { ExhaleWellDef0Heap[n_43, next] } { QPMask[n_43, next] } { ExhaleWellDef0Heap[n_43, next] }
            g_1[n_43] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_43, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_43: Ref ::
            { ExhaleWellDef0Heap[n_43, next] } { QPMask[n_43, next] } { ExhaleWellDef0Heap[n_43, next] }
            g_1[n_43] && NoPerm < FullPerm ==> qpRange73(n_43) && invRecv73(n_43) == n_43
          );
          assume (forall o_9: Ref ::
            { invRecv73(o_9) }
            g_1[invRecv73(o_9)] && (NoPerm < FullPerm && qpRange73(o_9)) ==> invRecv73(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion func_graph($$(g)) might not hold. (list_append.vpr@546.12--546.29) [5117]"}
      (func_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acyclic_graph($$(g)) -- list_append.vpr@547.5--547.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acyclic_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@547.26--547.31) [5118]"}
            (forall n_44: Ref, n_44_1: Ref ::
            { neverTriggered74(n_44), neverTriggered74(n_44_1) }
            (((n_44 != n_44_1 && g_1[n_44]) && g_1[n_44_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_44 != n_44_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@547.26--547.31) [5119]"}
            (forall n_44: Ref ::
            { ExhaleWellDef0Heap[n_44, next] } { QPMask[n_44, next] } { ExhaleWellDef0Heap[n_44, next] }
            g_1[n_44] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_44, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_44: Ref ::
            { ExhaleWellDef0Heap[n_44, next] } { QPMask[n_44, next] } { ExhaleWellDef0Heap[n_44, next] }
            g_1[n_44] && NoPerm < FullPerm ==> qpRange74(n_44) && invRecv74(n_44) == n_44
          );
          assume (forall o_9: Ref ::
            { invRecv74(o_9) }
            g_1[invRecv74(o_9)] && (NoPerm < FullPerm && qpRange74(o_9)) ==> invRecv74(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion acyclic_graph($$(g)) might not hold. (list_append.vpr@547.12--547.32) [5120]"}
      (acyclic_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert unshared_graph($$(g)) -- list_append.vpr@548.5--548.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of unshared_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@548.27--548.32) [5121]"}
            (forall n_45: Ref, n_45_1: Ref ::
            { neverTriggered75(n_45), neverTriggered75(n_45_1) }
            (((n_45 != n_45_1 && g_1[n_45]) && g_1[n_45_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_45 != n_45_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@548.27--548.32) [5122]"}
            (forall n_45: Ref ::
            { ExhaleWellDef0Heap[n_45, next] } { QPMask[n_45, next] } { ExhaleWellDef0Heap[n_45, next] }
            g_1[n_45] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_45, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_45: Ref ::
            { ExhaleWellDef0Heap[n_45, next] } { QPMask[n_45, next] } { ExhaleWellDef0Heap[n_45, next] }
            g_1[n_45] && NoPerm < FullPerm ==> qpRange75(n_45) && invRecv75(n_45) == n_45
          );
          assume (forall o_9: Ref ::
            { invRecv75(o_9) }
            g_1[invRecv75(o_9)] && (NoPerm < FullPerm && qpRange75(o_9)) ==> invRecv75(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion unshared_graph($$(g)) might not hold. (list_append.vpr@548.12--548.33) [5123]"}
      (unshared_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall u: Ref ::
  //     { exists_path($$(g), res, u) }
  //     { exists_path(old_g, x, u) }
  //     { exists_path(old_g, y, u) }
  //     exists_path($$(g), res, u) ==
  //     (exists_path(old_g, x, u) || exists_path(old_g, y, u))) -- list_append.vpr@556.5--556.106
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall u: Ref :: { exists_path($$(g), res, u) } { exists_path(old_g, x, u) } { exists_path(old_g, y, u) } exists_path($$(g), res, u) == (exists_path(old_g, x, u) || exists_path(old_g, y, u)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@556.40--556.45) [5124]"}
              (forall n_46: Ref, n_46_1: Ref ::
              { neverTriggered76(n_46), neverTriggered76(n_46_1) }
              (((n_46 != n_46_1 && g_1[n_46]) && g_1[n_46_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_46 != n_46_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@556.40--556.45) [5125]"}
              (forall n_46: Ref ::
              { ExhaleWellDef0Heap[n_46, next] } { QPMask[n_46, next] } { ExhaleWellDef0Heap[n_46, next] }
              g_1[n_46] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_46, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_46: Ref ::
              { ExhaleWellDef0Heap[n_46, next] } { QPMask[n_46, next] } { ExhaleWellDef0Heap[n_46, next] }
              g_1[n_46] && NoPerm < FullPerm ==> qpRange76(n_46) && invRecv76(n_46) == n_46
            );
            assume (forall o_9: Ref ::
              { invRecv76(o_9) }
              g_1[invRecv76(o_9)] && (NoPerm < FullPerm && qpRange76(o_9)) ==> invRecv76(o_9) == o_9
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
      assert {:msg "  Assert might fail. Assertion exists_path($$(g), res, u) == (exists_path(old_g, x, u) || exists_path(old_g, y, u)) might not hold. (list_append.vpr@556.12--556.106) [5126]"}
        (exists_path($$(Heap, g_1), res, u_7): bool) == ((exists_path(old_g, x, u_7): bool) || (exists_path(old_g, y, u_7): bool));
      assume false;
    }
    assume (forall u_8_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), res, u_8_1): bool) } { (exists_path(old_g, x, u_8_1): bool) } { (exists_path(old_g, y, u_8_1): bool) }
      (exists_path($$(Heap, g_1), res, u_8_1): bool) == ((exists_path(old_g, x, u_8_1): bool) || (exists_path(old_g, y, u_8_1): bool))
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { edge($$(g), u, v) }
  //     { edge(old_g, u, v) }
  //     edge($$(g), u, v) == (edge(old_g, u, v) || u == last && v == y)) -- list_append.vpr@557.5--557.92
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { edge($$(g), u, v) } { edge(old_g, u, v) } edge($$(g), u, v) == (edge(old_g, u, v) || u == last && v == y))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list_append.vpr@557.40--557.45) [5127]"}
              (forall n_47: Ref, n_47_1: Ref ::
              { neverTriggered77(n_47), neverTriggered77(n_47_1) }
              (((n_47 != n_47_1 && g_1[n_47]) && g_1[n_47_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_47 != n_47_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list_append.vpr@557.40--557.45) [5128]"}
              (forall n_47: Ref ::
              { ExhaleWellDef0Heap[n_47, next] } { QPMask[n_47, next] } { ExhaleWellDef0Heap[n_47, next] }
              g_1[n_47] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_47, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_47: Ref ::
              { ExhaleWellDef0Heap[n_47, next] } { QPMask[n_47, next] } { ExhaleWellDef0Heap[n_47, next] }
              g_1[n_47] && NoPerm < FullPerm ==> qpRange77(n_47) && invRecv77(n_47) == n_47
            );
            assume (forall o_9: Ref ::
              { invRecv77(o_9) }
              g_1[invRecv77(o_9)] && (NoPerm < FullPerm && qpRange77(o_9)) ==> invRecv77(o_9) == o_9
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
      assert {:msg "  Assert might fail. Assertion edge($$(g), u, v) == (edge(old_g, u, v) || u == last && v == y) might not hold. (list_append.vpr@557.12--557.92) [5129]"}
        (edge($$(Heap, g_1), u_10, v_7): bool) == ((edge(old_g, u_10, v_7): bool) || (u_10 == last && v_7 == y));
      assume false;
    }
    assume (forall u_11_1: Ref, v_8_1: Ref ::
      { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), u_11_1, v_8_1): bool) } { (edge(old_g, u_11_1, v_8_1): bool) }
      (edge($$(Heap, g_1), u_11_1, v_8_1): bool) == ((edge(old_g, u_11_1, v_8_1): bool) || (u_11_1 == last && v_8_1 == y))
    );
    assume state(Heap, Mask);
}