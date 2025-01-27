// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/delete_edge1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_30: Ref, f_42: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_30, f_42] }
  Heap[o_30, $allocated] ==> Heap[Heap[o_30, f_42], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref, f_43: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, f_43] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_31, f_43) ==> Heap[o_31, f_43] == ExhaleHeap[o_31, f_43]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14), ExhaleHeap[null, PredicateMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> Heap[null, PredicateMaskField(pm_f_14)] == ExhaleHeap[null, PredicateMaskField(pm_f_14)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsPredicateField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_14, f_43] }
    Heap[null, PredicateMaskField(pm_f_14)][o2_14, f_43] ==> Heap[o2_14, f_43] == ExhaleHeap[o2_14, f_43]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14), ExhaleHeap[null, WandMaskField(pm_f_14)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> Heap[null, WandMaskField(pm_f_14)] == ExhaleHeap[null, WandMaskField(pm_f_14)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_14: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_14) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_14) && IsWandField(pm_f_14) ==> (forall <A, B> o2_14: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_14, f_43] }
    Heap[null, WandMaskField(pm_f_14)][o2_14, f_43] ==> Heap[o2_14, f_43] == ExhaleHeap[o2_14, f_43]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_31: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_31, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_31, $allocated] ==> ExhaleHeap[o_31, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_30: Ref, f_36: (Field A B), v: B ::
  { Heap[o_30, f_36:=v] }
  succHeap(Heap, Heap[o_30, f_36:=v])
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
function  neverTriggered37(n$0_2: Ref): bool;
function  neverTriggered38(n$0_3: Ref): bool;
function  neverTriggered39(n_8: Ref): bool;
function  neverTriggered40(n_9: Ref): bool;
function  neverTriggered41(n_10_1: Ref): bool;
function  neverTriggered42(n$3_1: Ref): bool;
function  neverTriggered43(n$5_1: Ref): bool;
function  neverTriggered44(n_11_2: Ref): bool;
function  neverTriggered45(n$3_2: Ref): bool;
function  neverTriggered46(n$5_2: Ref): bool;
function  neverTriggered47(n_12: Ref): bool;
function  neverTriggered48(n_13_2: Ref): bool;
function  neverTriggered49(n_14_1: Ref): bool;
function  neverTriggered50(n$1_2: Ref): bool;
function  neverTriggered51(n_15: Ref): bool;
function  neverTriggered52(n_16_1: Ref): bool;
function  neverTriggered53(n_1: Ref): bool;
function  neverTriggered54(n$1_1: Ref): bool;
function  neverTriggered55(n_4: Ref): bool;
function  neverTriggered56(n_5: Ref): bool;
function  neverTriggered57(n_6: Ref): bool;
function  neverTriggered58(n_7: Ref): bool;
function  neverTriggered59(n_8: Ref): bool;
function  neverTriggered60(n$0_2: Ref): bool;
function  neverTriggered61(n$0_3: Ref): bool;
function  neverTriggered62(n$0_4: Ref): bool;
function  neverTriggered63(n$0_5: Ref): bool;
function  neverTriggered64(n$0_6: Ref): bool;
function  neverTriggered65(n$0_7: Ref): bool;
function  neverTriggered66(n$0_8: Ref): bool;
function  neverTriggered67(n$0_9: Ref): bool;
function  neverTriggered68(n_13_2: Ref): bool;
function  neverTriggered69(n_14_1: Ref): bool;
function  neverTriggered70(n_15: Ref): bool;
function  neverTriggered71(n_16_1: Ref): bool;
function  neverTriggered72(n_17: Ref): bool;
function  neverTriggered73(n$1_2: Ref): bool;
function  neverTriggered74(n_1: Ref): bool;
function  neverTriggered75(n_2: Ref): bool;
function  neverTriggered76(n_3: Ref): bool;
function  neverTriggered77(n$0_2: Ref): bool;
function  neverTriggered78(n$0_3: Ref): bool;
function  neverTriggered79(n_8: Ref): bool;
function  neverTriggered80(n$3_1: Ref): bool;
function  neverTriggered81(n$5_1: Ref): bool;
function  neverTriggered82(n_9: Ref): bool;
function  neverTriggered83(n_10_1: Ref): bool;
function  neverTriggered84(n_11_2: Ref): bool;
function  neverTriggered85(n$3_2: Ref): bool;
function  neverTriggered86(n$5_2: Ref): bool;
function  neverTriggered87(n_12: Ref): bool;
function  neverTriggered88(n_13_2: Ref): bool;
function  neverTriggered89(n_14_1: Ref): bool;
function  neverTriggered90(n$1_2: Ref): bool;
function  neverTriggered91(n_18: Ref): bool;
function  neverTriggered92(n_19: Ref): bool;
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
function  invRecv78(recv: Ref): Ref;
function  invRecv79(recv: Ref): Ref;
function  invRecv80(recv: Ref): Ref;
function  invRecv81(recv: Ref): Ref;
function  invRecv82(recv: Ref): Ref;
function  invRecv83(recv: Ref): Ref;
function  invRecv84(recv: Ref): Ref;
function  invRecv85(recv: Ref): Ref;
function  invRecv86(recv: Ref): Ref;
function  invRecv87(recv: Ref): Ref;
function  invRecv88(recv: Ref): Ref;
function  invRecv89(recv: Ref): Ref;
function  invRecv90(recv: Ref): Ref;
function  invRecv91(recv: Ref): Ref;
function  invRecv92(recv: Ref): Ref;
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
function  qpRange78(recv: Ref): bool;
function  qpRange79(recv: Ref): bool;
function  qpRange80(recv: Ref): bool;
function  qpRange81(recv: Ref): bool;
function  qpRange82(recv: Ref): bool;
function  qpRange83(recv: Ref): bool;
function  qpRange84(recv: Ref): bool;
function  qpRange85(recv: Ref): bool;
function  qpRange86(recv: Ref): bool;
function  qpRange87(recv: Ref): bool;
function  qpRange88(recv: Ref): bool;
function  qpRange89(recv: Ref): bool;
function  qpRange90(recv: Ref): bool;
function  qpRange91(recv: Ref): bool;
function  qpRange92(recv: Ref): bool;

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
// Translation of domain FramingWisdoms
// ==================================================

// The type for domain FramingWisdoms
type FramingWisdomsDomainType;

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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@186.14--186.69) [8827]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (delete_edge1.vpr@186.14--186.69) [8828]"}
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
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (delete_edge1.vpr@188.13--192.44) [8829]"}
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
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp2(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp2(Heap2Heap, g0, g1) == apply_TCFraming#condqp2(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp3(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp3(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp3(Heap2Heap, g0, g1) == apply_TCFraming#condqp3(Heap1Heap, g0, g1)
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
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@231.14--231.62) [8830]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && NoPerm < FullPerm ==> qpRange2(n_5) && invRecv2(n_5) == n_5
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (g0[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g0[invRecv2(o_9)] && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@232.14--232.62) [8831]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && NoPerm < FullPerm ==> qpRange3(n_7) && invRecv3(n_7) == n_7
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (g1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g1[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@240.134--240.140) [8832]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@240.134--240.140) [8833]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered4(n_8), neverTriggered4(n_8_1) }
                  (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@240.134--240.140) [8834]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@240.162--240.177) [8835]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@240.162--240.177) [8836]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered5(n_9), neverTriggered5(n_9_1) }
                (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@240.162--240.177) [8837]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@241.134--241.140) [8838]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@241.134--241.140) [8839]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered6(n_10_1), neverTriggered6(n_10_2) }
                  (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@241.134--241.140) [8840]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@241.162--241.177) [8841]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                Set#Union(g1, g0)[n_11_2] && dummyFunction(Heap[n_11_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@241.162--241.177) [8842]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered7(n_11_2), neverTriggered7(n_11_3) }
                (((n_11_2 != n_11_3 && Set#Union(g1, g0)[n_11_2]) && Set#Union(g1, g0)[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@241.162--241.177) [8843]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@242.135--242.141) [8844]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g0[n_12] && dummyFunction(Heap[n_12, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@242.135--242.141) [8845]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered8(n_12), neverTriggered8(n_12_1) }
                  (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@242.135--242.141) [8846]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@242.164--242.179) [8847]"}
                (forall n_13_2: Ref ::
                { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                Set#Union(g0, g1)[n_13_2] && dummyFunction(Heap[n_13_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@242.164--242.179) [8848]"}
                (forall n_13_2: Ref, n_13_3: Ref ::
                { neverTriggered9(n_13_2), neverTriggered9(n_13_3) }
                (((n_13_2 != n_13_3 && Set#Union(g0, g1)[n_13_2]) && Set#Union(g0, g1)[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@242.164--242.179) [8849]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@243.135--243.141) [8850]"}
                  (forall n_14_1: Ref ::
                  { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                  g1[n_14_1] && dummyFunction(Heap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@243.135--243.141) [8851]"}
                  (forall n_14_1: Ref, n_14_2: Ref ::
                  { neverTriggered10(n_14_1), neverTriggered10(n_14_2) }
                  (((n_14_1 != n_14_2 && g1[n_14_1]) && g1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@243.135--243.141) [8852]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@243.164--243.179) [8853]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@243.164--243.179) [8854]"}
                (forall n_15: Ref, n_15_1: Ref ::
                { neverTriggered11(n_15), neverTriggered11(n_15_1) }
                (((n_15 != n_15_1 && Set#Union(g1, g0)[n_15]) && Set#Union(g1, g0)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@243.164--243.179) [8855]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@276.14--276.34) [8856]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (delete_edge1.vpr@276.14--276.34) [8857]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@276.14--276.34) [8858]"}
            HasDirectPerm(Mask, n$0_28, next);
        }
        if (g_1[n$0_28] && Heap[n$0_28, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@276.14--276.34) [8859]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@277.14--277.28) [8860]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@278.13--278.33) [8861]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (delete_edge1.vpr@278.13--278.33) [8862]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@278.13--278.33) [8863]"}
            HasDirectPerm(PostMask, n$2_21, next);
        }
        if (g_1[n$2_21] && PostHeap[n$2_21, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@278.13--278.33) [8864]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@279.13--279.24) [8865]"}
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@280.27--280.32) [8866]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@280.27--280.32) [8867]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered14(n_2), neverTriggered14(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@280.27--280.32) [8868]"}
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@280.40--280.45) [8869]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@280.40--280.45) [8870]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered15(n_3), neverTriggered15(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@280.40--280.45) [8871]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@283.18--283.23) [8872]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@283.18--283.23) [8873]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered16(n_4), neverTriggered16(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@283.18--283.23) [8874]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@283.45--283.50) [8875]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@283.45--283.50) [8876]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered17(n_5), neverTriggered17(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@283.45--283.50) [8877]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@287.29--287.34) [8878]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@287.29--287.34) [8879]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered18(n_6), neverTriggered18(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@287.29--287.34) [8880]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@288.37--288.42) [8881]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@288.37--288.42) [8882]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered19(n_7), neverTriggered19(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@288.37--288.42) [8883]"}
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
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@288.71--288.76) [8884]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@288.71--288.76) [8885]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered20(n_8), neverTriggered20(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@288.71--288.76) [8886]"}
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
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@288.103--288.108) [8887]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@288.103--288.108) [8888]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered21(n_9), neverTriggered21(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@288.103--288.108) [8889]"}
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
    assert {:msg "  Postcondition of link might not hold. Assertion !((null in g)) might not hold. (delete_edge1.vpr@278.13--278.33) [8890]"}
      !g_1[null];
    assert {:msg "  Postcondition of link might not hold. Assertion (x in g) might not hold. (delete_edge1.vpr@278.13--278.33) [8891]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access x.next (delete_edge1.vpr@278.13--278.33) [8892]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@278.13--278.33) [8893]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@278.13--278.33) [8894]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered22(n$1_2), neverTriggered22(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access n$1.next (delete_edge1.vpr@278.13--278.33) [8895]"}
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
        assert {:msg "  Postcondition of link might not hold. Assertion (n$2.next in g) might not hold. (delete_edge1.vpr@278.13--278.33) [8896]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link might not hold. Assertion x.next == y might not hold. (delete_edge1.vpr@279.13--279.24) [8897]"}
      Heap[x, next] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link might not hold. Assertion $$(g) == old($$(g)) might not hold. (delete_edge1.vpr@280.13--280.46) [8898]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (delete_edge1.vpr@281.13--283.78) [8899]"}
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
          assert {:msg "  Postcondition of link might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (delete_edge1.vpr@284.13--288.118) [8900]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@309.14--309.34) [8901]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (delete_edge1.vpr@309.14--309.34) [8902]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@309.14--309.34) [8903]"}
            HasDirectPerm(Mask, n$0_12, next);
        }
        if (g_1[n$0_12] && Heap[n$0_12, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@309.14--309.34) [8904]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@310.13--310.33) [8905]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (delete_edge1.vpr@310.13--310.33) [8906]"}
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@310.13--310.33) [8907]"}
            HasDirectPerm(PostMask, n$2_5, next);
        }
        if (g_1[n$2_5] && PostHeap[n$2_5, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@310.13--310.33) [8908]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@311.13--311.27) [8909]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@312.13--312.56) [8910]"}
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@312.37--312.42) [8911]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@312.37--312.42) [8912]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered25(n_2), neverTriggered25(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@312.37--312.42) [8913]"}
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@312.50--312.55) [8914]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@312.50--312.55) [8915]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered26(n_3), neverTriggered26(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@312.50--312.55) [8916]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@313.13--315.89) [8917]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@315.18--315.23) [8918]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@315.18--315.23) [8919]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered27(n_4), neverTriggered27(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@315.18--315.23) [8920]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@315.45--315.50) [8921]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@315.45--315.50) [8922]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered28(n_5), neverTriggered28(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@315.45--315.50) [8923]"}
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
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@313.13--315.89) [8924]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@316.13--320.129) [8925]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@319.29--319.34) [8926]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@319.29--319.34) [8927]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered29(n_6), neverTriggered29(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@319.29--319.34) [8928]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@320.37--320.42) [8929]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@320.37--320.42) [8930]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered30(n_7), neverTriggered30(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@320.37--320.42) [8931]"}
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
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@320.72--320.77) [8932]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@320.72--320.77) [8933]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered31(n_8), neverTriggered31(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@320.72--320.77) [8934]"}
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
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@320.104--320.109) [8935]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@320.104--320.109) [8936]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered32(n_9), neverTriggered32(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@320.104--320.109) [8937]"}
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
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@316.13--320.129) [8938]"}
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
    assert {:msg "  Postcondition of unlink might not hold. Assertion !((null in g)) might not hold. (delete_edge1.vpr@310.13--310.33) [8939]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink might not hold. Assertion (x in g) might not hold. (delete_edge1.vpr@310.13--310.33) [8940]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access x.next (delete_edge1.vpr@310.13--310.33) [8941]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@310.13--310.33) [8942]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@310.13--310.33) [8943]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered33(n$1_2), neverTriggered33(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access n$1.next (delete_edge1.vpr@310.13--310.33) [8944]"}
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
        assert {:msg "  Postcondition of unlink might not hold. Assertion (n$2.next in g) might not hold. (delete_edge1.vpr@310.13--310.33) [8945]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink might not hold. Assertion x.next == null might not hold. (delete_edge1.vpr@311.13--311.27) [8946]"}
      Heap[x, next] == null;
    if (oldHeap[x, next] == null) {
      assert {:msg "  Postcondition of unlink might not hold. Assertion $$(g) == old($$(g)) might not hold. (delete_edge1.vpr@312.13--312.56) [8947]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))) might not hold. (delete_edge1.vpr@313.13--315.89) [8948]"}
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
          assert {:msg "  Postcondition of unlink might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))) might not hold. (delete_edge1.vpr@316.13--320.129) [8949]"}
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
// Translation of method unjoin
// ==================================================

procedure unjoin(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_19: Ref;
  var n$1_11: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$2_12: Ref;
  var n_52: Ref;
  var m: Ref;
  var n_53: Ref;
  var m_2: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_8: Ref;
  var n$6_3: Ref;
  var n$7: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_g: (Set Ref);
  var perm: Perm;
  var n$0_4: Ref;
  var n$4_2: Ref;
  var n$6_2: Ref;
  var n$7_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { g0[r_1_1], g1[r_1_1] }
      g0[r_1_1] ==> !g1[r_1_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$0_1: Ref ::
      { g0[r$0_1], g1[r$0_1] }
      g1[r$0_1] ==> !g0[r$0_1]
    );
    assume state(Heap, Mask);
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in (g0 union g1)) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@325.14--325.32) [8950]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && Set#Union(g0, g1)[n_1]) && Set#Union(g0, g1)[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        Set#Union(g0, g1)[n_1] && NoPerm < FullPerm ==> qpRange34(n_1) && invRecv34(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv34(o_9) }
        (Set#Union(g0, g1)[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9) ==> invRecv34(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        Set#Union(g0, g1)[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Set#Union(g0, g1)[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9) ==> (NoPerm < FullPerm ==> invRecv34(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv34(o_9)] && NoPerm < FullPerm) && qpRange34(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in (g0 union g1)) } { (n$0 in (g0 union g1)), n$0.next } (n$0 in (g0 union g1)) && n$0.next != null ==> (n$0.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$0_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@325.14--325.32) [8951]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        if (Set#Union(g0, g1)[n$0_19] && Heap[n$0_19, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@325.14--325.32) [8952]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$0_1, next]] } { Set#Union(g0, g1)[n$0_1], Heap[n$0_1, next] }
      Set#Union(g0, g1)[n$0_1] && Heap[n$0_1, next] != null ==> Set#Union(g0, g1)[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume g1[x1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { exists_path($$(g0), n$1, x0) } (n$1 in g0) ==> exists_path($$(g0), n$1, x0))
      if (*) {
        if (g0[n$1_11]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@221.74--221.79) [8953]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@221.74--221.79) [8954]"}
                (forall n_2: Ref, n_2_1: Ref ::
                { neverTriggered35(n_2), neverTriggered35(n_2_1) }
                (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@221.74--221.79) [8955]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && NoPerm < 1 / 2 ==> qpRange35(n_2) && invRecv35(n_2) == n_2
              );
              assume (forall o_9: Ref ::
                { invRecv35(o_9) }
                g0[invRecv35(o_9)] && (NoPerm < 1 / 2 && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
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
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), n$1_1, x0): bool) }
      g0[n$1_1] ==> (exists_path($$(Heap, g0), n$1_1, x0): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { exists_path($$(g1), x1, n$2) } (n$2 in g1) ==> exists_path($$(g1), x1, n$2))
      if (*) {
        if (g1[n$2_12]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@215.74--215.79) [8956]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@215.74--215.79) [8957]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered36(n_3), neverTriggered36(n_3_1) }
                (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@215.74--215.79) [8958]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && NoPerm < 1 / 2 ==> qpRange36(n_3) && invRecv36(n_3) == n_3
              );
              assume (forall o_9: Ref ::
                { invRecv36(o_9) }
                g1[invRecv36(o_9)] && (NoPerm < 1 / 2 && qpRange36(o_9)) ==> invRecv36(o_9) == o_9
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
    assume (forall n$2_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), x1, n$2_1): bool) }
      g1[n$2_1] ==> (exists_path($$(Heap, g1), x1, n$2_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { (n in g0), (m in g1) } (n in g0) && (m in g1) ==> edge($$((g0 union g1)), n, m) == (n == x0 && m == x1))
      if (*) {
        if (g0[n_52] && g1[m]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@333.87--333.102) [8959]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] && dummyFunction(Heap[n$0_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@333.87--333.102) [8960]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered37(n$0_2), neverTriggered37(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && Set#Union(g0, g1)[n$0_2]) && Set#Union(g0, g1)[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@333.87--333.102) [8961]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] && NoPerm < 1 / 2 ==> qpRange37(n$0_2) && invRecv37(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv37(o_9) }
                Set#Union(g0, g1)[invRecv37(o_9)] && (NoPerm < 1 / 2 && qpRange37(o_9)) ==> invRecv37(o_9) == o_9
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
    assume (forall n_5: Ref, m_1: Ref ::
      { g0[n_5], g1[m_1] }
      g0[n_5] && g1[m_1] ==> (edge($$(Heap, Set#Union(g0, g1)), n_5, m_1): bool) == (n_5 == x0 && m_1 == x1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { (n in g1), (m in g0) } (n in g1) && (m in g0) ==> !edge($$((g0 union g1)), n, m))
      if (*) {
        if (g1[n_53] && g0[m_2]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@334.87--334.102) [8962]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] && dummyFunction(Heap[n$0_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@334.87--334.102) [8963]"}
                (forall n$0_3: Ref, n$0_3_1: Ref ::
                { neverTriggered38(n$0_3), neverTriggered38(n$0_3_1) }
                (((n$0_3 != n$0_3_1 && Set#Union(g0, g1)[n$0_3]) && Set#Union(g0, g1)[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@334.87--334.102) [8964]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] && NoPerm < 1 / 2 ==> qpRange38(n$0_3) && invRecv38(n$0_3) == n$0_3
              );
              assume (forall o_9: Ref ::
                { invRecv38(o_9) }
                Set#Union(g0, g1)[invRecv38(o_9)] && (NoPerm < 1 / 2 && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
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
    assume (forall n_7: Ref, m_3: Ref ::
      { g1[n_7], g0[m_3] }
      g1[n_7] && g0[m_3] ==> !(edge($$(Heap, Set#Union(g0, g1)), n_7, m_3): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@224.19--224.24) [8965]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@224.19--224.24) [8966]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered39(n_8), neverTriggered39(n_8_1) }
            (((n_8 != n_8_1 && Set#Union(g0, g1)[n_8]) && Set#Union(g0, g1)[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@224.19--224.24) [8967]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && NoPerm < 1 / 2 ==> qpRange39(n_8) && invRecv39(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv39(o_9) }
            Set#Union(g0, g1)[invRecv39(o_9)] && (NoPerm < 1 / 2 && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of func_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@225.16--225.21) [8968]"}
            (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@225.16--225.21) [8969]"}
            (forall n_9: Ref, n_9_1: Ref ::
            { neverTriggered40(n_9), neverTriggered40(n_9_1) }
            (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@225.16--225.21) [8970]"}
            (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] ==> 1 / 2 > NoPerm ==> Mask[n_9, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            Set#Union(g0, g1)[n_9] && NoPerm < 1 / 2 ==> qpRange40(n_9) && invRecv40(n_9) == n_9
          );
          assume (forall o_9: Ref ::
            { invRecv40(o_9) }
            Set#Union(g0, g1)[invRecv40(o_9)] && (NoPerm < 1 / 2 && qpRange40(o_9)) ==> invRecv40(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (func_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of unshared_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@226.20--226.25) [8971]"}
            (forall n_10_1: Ref ::
            { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@226.20--226.25) [8972]"}
            (forall n_10_1: Ref, n_10_2: Ref ::
            { neverTriggered41(n_10_1), neverTriggered41(n_10_2) }
            (((n_10_1 != n_10_2 && Set#Union(g0, g1)[n_10_1]) && Set#Union(g0, g1)[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@226.20--226.25) [8973]"}
            (forall n_10_1: Ref ::
            { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_10_1: Ref ::
            { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
            Set#Union(g0, g1)[n_10_1] && NoPerm < 1 / 2 ==> qpRange41(n_10_1) && invRecv41(n_10_1) == n_10_1
          );
          assume (forall o_9: Ref ::
            { invRecv41(o_9) }
            Set#Union(g0, g1)[invRecv41(o_9)] && (NoPerm < 1 / 2 && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (unshared_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.next == x1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.next (delete_edge1.vpr@339.14--339.27) [8974]"}
        HasDirectPerm(Mask, x0, next);
    assume Heap[x0, next] == x1;
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
    assume !g0[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in g0) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (delete_edge1.vpr@344.13--344.22) [8975]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && g0[n$3_1]) && g0[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        g0[n$3_1] && NoPerm < FullPerm ==> qpRange42(n$3_1) && invRecv42(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv42(o_9) }
        (g0[invRecv42(o_9)] && NoPerm < FullPerm) && qpRange42(o_9) ==> invRecv42(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        g0[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv42(o_9)] && NoPerm < FullPerm) && qpRange42(o_9) ==> (NoPerm < FullPerm ==> invRecv42(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g0[invRecv42(o_9)] && NoPerm < FullPerm) && qpRange42(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in g0) } { (n$4 in g0), n$4.next } (n$4 in g0) && n$4.next != null ==> (n$4.next in g0))
      if (*) {
        if (g0[n$4_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (delete_edge1.vpr@344.13--344.22) [8976]"}
            HasDirectPerm(PostMask, n$4_8, next);
        }
        if (g0[n$4_8] && PostHeap[n$4_8, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (delete_edge1.vpr@344.13--344.22) [8977]"}
            HasDirectPerm(PostMask, n$4_8, next);
        }
        assume false;
      }
    assume (forall n$4_1: Ref ::
      { g0[PostHeap[n$4_1, next]] } { g0[n$4_1], PostHeap[n$4_1, next] }
      g0[n$4_1] && PostHeap[n$4_1, next] != null ==> g0[PostHeap[n$4_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$5: Ref :: { n$5.next } (n$5 in g1) ==> acc(n$5.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (delete_edge1.vpr@345.13--345.22) [8978]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && g1[n$5_1]) && g1[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        g1[n$5_1] && NoPerm < FullPerm ==> qpRange43(n$5_1) && invRecv43(n$5_1) == n$5_1
      );
      assume (forall o_9: Ref ::
        { invRecv43(o_9) }
        (g1[invRecv43(o_9)] && NoPerm < FullPerm) && qpRange43(o_9) ==> invRecv43(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        g1[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv43(o_9)] && NoPerm < FullPerm) && qpRange43(o_9) ==> (NoPerm < FullPerm ==> invRecv43(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g1[invRecv43(o_9)] && NoPerm < FullPerm) && qpRange43(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.next in g1) } { (n$6 in g1), n$6.next } (n$6 in g1) && n$6.next != null ==> (n$6.next in g1))
      if (*) {
        if (g1[n$6_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (delete_edge1.vpr@345.13--345.22) [8979]"}
            HasDirectPerm(PostMask, n$6_3, next);
        }
        if (g1[n$6_3] && PostHeap[n$6_3, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (delete_edge1.vpr@345.13--345.22) [8980]"}
            HasDirectPerm(PostMask, n$6_3, next);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[PostHeap[n$6_1, next]] } { g1[n$6_1], PostHeap[n$6_1, next] }
      g1[n$6_1] && PostHeap[n$6_1, next] != null ==> g1[PostHeap[n$6_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$7: Ref :: { exists_path($$(g1), x1, n$7) } (n$7 in g1) ==> exists_path($$(g1), x1, n$7))
      if (*) {
        if (g1[n$7]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@215.74--215.79) [8981]"}
                (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] && dummyFunction(PostHeap[n_11_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@215.74--215.79) [8982]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered44(n_11_2), neverTriggered44(n_11_3) }
                (((n_11_2 != n_11_3 && g1[n_11_2]) && g1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@215.74--215.79) [8983]"}
                (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] && NoPerm < 1 / 2 ==> qpRange44(n_11_2) && invRecv44(n_11_2) == n_11_2
              );
              assume (forall o_9: Ref ::
                { invRecv44(o_9) }
                g1[invRecv44(o_9)] && (NoPerm < 1 / 2 && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
              );
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
    assume (forall n$7_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g1)), g1), x1, n$7_1): bool) }
      g1[n$7_1] ==> (exists_path($$(PostHeap, g1), x1, n$7_1): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- delete_edge1.vpr@374.12--374.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@374.12--374.34) [8984]"}
            (forall n_12: Ref, n_12_1: Ref ::
            { neverTriggered47(n_12), neverTriggered47(n_12_1) }
            (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12 != n_12_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@374.12--374.34) [8985]"}
            (forall n_12: Ref ::
            { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
            g0[n_12] ==> FullPerm > NoPerm ==> Mask[n_12, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_12: Ref ::
            { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
            g0[n_12] && NoPerm < FullPerm ==> qpRange47(n_12) && invRecv47(n_12) == n_12
          );
          assume (forall o_9: Ref ::
            { invRecv47(o_9) }
            g0[invRecv47(o_9)] && (NoPerm < FullPerm && qpRange47(o_9)) ==> invRecv47(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@374.12--374.34) [8986]"}
            (forall n_13_2: Ref, n_13_3: Ref ::
            { neverTriggered48(n_13_2), neverTriggered48(n_13_3) }
            (((n_13_2 != n_13_3 && g1[n_13_2]) && g1[n_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13_2 != n_13_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@374.12--374.34) [8987]"}
            (forall n_13_2: Ref ::
            { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
            g1[n_13_2] ==> FullPerm > NoPerm ==> Mask[n_13_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_13_2: Ref ::
            { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
            g1[n_13_2] && NoPerm < FullPerm ==> qpRange48(n_13_2) && invRecv48(n_13_2) == n_13_2
          );
          assume (forall o_9: Ref ::
            { invRecv48(o_9) }
            g1[invRecv48(o_9)] && (NoPerm < FullPerm && qpRange48(o_9)) ==> invRecv48(o_9) == o_9
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (delete_edge1.vpr@374.12--374.34) [8988]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unlink((g0 union g1), x0) -- delete_edge1.vpr@377.5--377.28
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_g := Set#Union(g0, g1);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method unlink might not hold. Assertion (x0 in (g0 union g1)) might not hold. (delete_edge1.vpr@377.5--377.28) [8989]"}
        arg_g[x0];
      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in (g0 union g1))) might not hold. (delete_edge1.vpr@377.5--377.28) [8990]"}
        !arg_g[null];
      assert {:msg "  The precondition of method unlink might not hold. Assertion (x0 in (g0 union g1)) might not hold. (delete_edge1.vpr@377.5--377.28) [8991]"}
        arg_g[x0];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access x0.next (delete_edge1.vpr@377.5--377.28) [8992]"}
          perm <= Mask[x0, next];
      }
      Mask := Mask[x0, next:=Mask[x0, next] - perm];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@377.5--377.28) [8993]"}
          (forall n_14_1: Ref ::
          { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
          (arg_g[n_14_1] && n_14_1 != x0) && dummyFunction(Heap[n_14_1, next]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@377.5--377.28) [8994]"}
          (forall n_14_1: Ref, n_14_2: Ref ::
          { neverTriggered49(n_14_1), neverTriggered49(n_14_2) }
          (((n_14_1 != n_14_2 && (arg_g[n_14_1] && n_14_1 != x0)) && (arg_g[n_14_2] && n_14_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@377.5--377.28) [8995]"}
          (forall n_14_1: Ref ::
          { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
          arg_g[n_14_1] && n_14_1 != x0 ==> Mask[n_14_1, next] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_14_1: Ref ::
          { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
          (arg_g[n_14_1] && n_14_1 != x0) && NoPerm < 1 / 2 ==> qpRange49(n_14_1) && invRecv49(n_14_1) == n_14_1
        );
        assume (forall o_9: Ref ::
          { invRecv49(o_9) }
          (arg_g[invRecv49(o_9)] && invRecv49(o_9) != x0) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
        );
      
      // -- assume permission updates for field next
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((arg_g[invRecv49(o_9)] && invRecv49(o_9) != x0) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((arg_g[invRecv49(o_9)] && invRecv49(o_9) != x0) && (NoPerm < 1 / 2 && qpRange49(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (arg_g[n$0_4] && Heap[n$0_4, next] != null) {
          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in (g0 union g1)) might not hold. (delete_edge1.vpr@377.5--377.28) [8996]"}
            arg_g[Heap[n$0_4, next]];
        }
        assume false;
      }
      assume (forall n$0_5_1_1: Ref ::
        { arg_g[Heap[n$0_5_1_1, next]] } { arg_g[n$0_5_1_1], Heap[n$0_5_1_1, next] }
        arg_g[n$0_5_1_1] && Heap[n$0_5_1_1, next] != null ==> arg_g[Heap[n$0_5_1_1, next]]
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume !arg_g[null];
      assume arg_g[x0];
      perm := FullPerm;
      assume x0 != null;
      Mask := Mask[x0, next:=Mask[x0, next] + perm];
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@377.5--377.28) [8997]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        
        (((n$1_2 != n$1_2_1 && (arg_g[n$1_2] && n$1_2 != x0)) && (arg_g[n$1_2_1] && n$1_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
      
      // -- Define Inverse Function
        assume (forall n$1_2: Ref ::
          { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
          (arg_g[n$1_2] && n$1_2 != x0) && NoPerm < 1 / 2 ==> qpRange50(n$1_2) && invRecv50(n$1_2) == n$1_2
        );
        assume (forall o_9: Ref ::
          { invRecv50(o_9) }
          ((arg_g[invRecv50(o_9)] && invRecv50(o_9) != x0) && NoPerm < 1 / 2) && qpRange50(o_9) ==> invRecv50(o_9) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (delete_edge1.vpr@377.5--377.28) [8998]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        arg_g[n$1_2] && n$1_2 != x0 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_2: Ref ::
          { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
          (arg_g[n$1_2] && n$1_2 != x0) && 1 / 2 > NoPerm ==> n$1_2 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          (((arg_g[invRecv50(o_9)] && invRecv50(o_9) != x0) && NoPerm < 1 / 2) && qpRange50(o_9) ==> (NoPerm < 1 / 2 ==> invRecv50(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((arg_g[invRecv50(o_9)] && invRecv50(o_9) != x0) && NoPerm < 1 / 2) && qpRange50(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2_2: Ref ::
        { arg_g[Heap[n$2_2, next]] } { arg_g[n$2_2], Heap[n$2_2, next] }
        arg_g[n$2_2] && Heap[n$2_2, next] != null ==> arg_g[Heap[n$2_2, next]]
      );
      assume Heap[x0, next] == null;
      if (PreCallHeap[x0, next] == null) {
        assume state(Heap, Mask);
        assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
      }
      if (PreCallHeap[x0, next] != null) {
        assume state(Heap, Mask);
        assume (forall v1: Ref, v2: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(Heap, arg_g)), arg_g), v1, v2): bool) }
          (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) && !(v1 == x0 && v2 == PreCallHeap[x0, next]))
        );
      }
      if (PreCallHeap[x0, next] != null) {
        assume state(Heap, Mask);
        assume (forall v1_1: Ref, v2_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, arg_g)), arg_g), v1_1, v2_1): bool) }
          v1_1 != v2_1 ==> (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, arg_g), v1_1, v2_1): bool) && !((exists_path($$(PreCallHeap, arg_g), v1_1, x0): bool) && (exists_path($$(PreCallHeap, arg_g), PreCallHeap[x0, next], v2_1): bool)))
        );
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- delete_edge1.vpr@398.12--398.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@398.12--398.34) [8999]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered51(n_15), neverTriggered51(n_15_1) }
            (((n_15 != n_15_1 && g0[n_15]) && g0[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@398.12--398.34) [9000]"}
            (forall n_15: Ref ::
            { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
            g0[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
            g0[n_15] && NoPerm < FullPerm ==> qpRange51(n_15) && invRecv51(n_15) == n_15
          );
          assume (forall o_9: Ref ::
            { invRecv51(o_9) }
            g0[invRecv51(o_9)] && (NoPerm < FullPerm && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@398.12--398.34) [9001]"}
            (forall n_16_1: Ref, n_16_2: Ref ::
            { neverTriggered52(n_16_1), neverTriggered52(n_16_2) }
            (((n_16_1 != n_16_2 && g1[n_16_1]) && g1[n_16_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_16_1 != n_16_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@398.12--398.34) [9002]"}
            (forall n_16_1: Ref ::
            { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
            g1[n_16_1] ==> FullPerm > NoPerm ==> Mask[n_16_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_16_1: Ref ::
            { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
            g1[n_16_1] && NoPerm < FullPerm ==> qpRange52(n_16_1) && invRecv52(n_16_1) == n_16_1
          );
          assume (forall o_9: Ref ::
            { invRecv52(o_9) }
            g1[invRecv52(o_9)] && (NoPerm < FullPerm && qpRange52(o_9)) ==> invRecv52(o_9) == o_9
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (delete_edge1.vpr@398.12--398.34) [9003]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of unjoin might not hold. Assertion !((null in g0)) might not hold. (delete_edge1.vpr@344.13--344.22) [9004]"}
      !g0[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (delete_edge1.vpr@344.13--344.22) [9005]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered45(n$3_2), neverTriggered45(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && g0[n$3_2]) && g0[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unjoin might not hold. There might be insufficient permission to access n$3.next (delete_edge1.vpr@344.13--344.22) [9006]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        g0[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        g0[n$3_2] && NoPerm < FullPerm ==> qpRange45(n$3_2) && invRecv45(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv45(o_9) }
        g0[invRecv45(o_9)] && (NoPerm < FullPerm && qpRange45(o_9)) ==> invRecv45(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g0[invRecv45(o_9)] && (NoPerm < FullPerm && qpRange45(o_9)) ==> invRecv45(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g0[invRecv45(o_9)] && (NoPerm < FullPerm && qpRange45(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g0[n$4_2] && Heap[n$4_2, next] != null) {
        assert {:msg "  Postcondition of unjoin might not hold. Assertion (n$4.next in g0) might not hold. (delete_edge1.vpr@344.13--344.22) [9007]"}
          g0[Heap[n$4_2, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { g0[Heap[n$4_3_1, next]] } { g0[n$4_3_1], Heap[n$4_3_1, next] }
      g0[n$4_3_1] && Heap[n$4_3_1, next] != null ==> g0[Heap[n$4_3_1, next]]
    );
    assert {:msg "  Postcondition of unjoin might not hold. Assertion !((null in g1)) might not hold. (delete_edge1.vpr@345.13--345.22) [9008]"}
      !g1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (delete_edge1.vpr@345.13--345.22) [9009]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered46(n$5_2), neverTriggered46(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && g1[n$5_2]) && g1[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unjoin might not hold. There might be insufficient permission to access n$5.next (delete_edge1.vpr@345.13--345.22) [9010]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        g1[n$5_2] ==> Mask[n$5_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        g1[n$5_2] && NoPerm < FullPerm ==> qpRange46(n$5_2) && invRecv46(n$5_2) == n$5_2
      );
      assume (forall o_9: Ref ::
        { invRecv46(o_9) }
        g1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9)) ==> invRecv46(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9)) ==> invRecv46(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g1[invRecv46(o_9)] && (NoPerm < FullPerm && qpRange46(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g1[n$6_2] && Heap[n$6_2, next] != null) {
        assert {:msg "  Postcondition of unjoin might not hold. Assertion (n$6.next in g1) might not hold. (delete_edge1.vpr@345.13--345.22) [9011]"}
          g1[Heap[n$6_2, next]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g1[Heap[n$6_3_1, next]] } { g1[n$6_3_1], Heap[n$6_3_1, next] }
      g1[n$6_3_1] && Heap[n$6_3_1, next] != null ==> g1[Heap[n$6_3_1, next]]
    );
    if (*) {
      if (g1[n$7_2]) {
        assert {:msg "  Postcondition of unjoin might not hold. Assertion exists_path($$(g1), x1, n$7) might not hold. (delete_edge1.vpr@347.13--347.34) [9012]"}
          (exists_path($$(Heap, g1), x1, n$7_2): bool);
      }
      assume false;
    }
    assume (forall n$7_3_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), x1, n$7_3_1): bool) }
      g1[n$7_3_1] ==> (exists_path($$(Heap, g1), x1, n$7_3_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink_dags
// ==================================================

procedure unlink_dags(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_29: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_22: Ref;
  var n_54: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_9: Ref;
  var v2_9: Ref;
  var v1_10: Ref;
  var v2_10: Ref;
  var n_55: Ref;
  var n_56: Ref;
  var u_25: Ref;
  var v_25: Ref;
  var n$2_2: Ref;
  var n_20: Ref;
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
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@448.14--448.22) [9013]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange53(n_1) && invRecv53(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv53(o_9) }
        (g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9) ==> invRecv53(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9) ==> (NoPerm < FullPerm ==> invRecv53(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_29]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@448.14--448.22) [9014]"}
            HasDirectPerm(Mask, n$0_29, next);
        }
        if (g_1[n$0_29] && Heap[n$0_29, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@448.14--448.22) [9015]"}
            HasDirectPerm(Mask, n$0_29, next);
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@449.13--449.21) [9016]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange54(n$1_1) && invRecv54(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv54(o_9) }
        (g_1[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9) ==> invRecv54(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9) ==> (NoPerm < FullPerm ==> invRecv54(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_22]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@449.13--449.21) [9017]"}
            HasDirectPerm(PostMask, n$2_22, next);
        }
        if (g_1[n$2_22] && PostHeap[n$2_22, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (delete_edge1.vpr@449.13--449.21) [9018]"}
            HasDirectPerm(PostMask, n$2_22, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@450.13--450.27) [9019]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { old(n.next) } (n in g) && n != x ==> n.next == old(n.next))
      if (*) {
        if (g_1[n_54] && n_54 != x) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (delete_edge1.vpr@452.13--452.87) [9020]"}
            HasDirectPerm(PostMask, n_54, next);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (delete_edge1.vpr@452.13--452.87) [9021]"}
            HasDirectPerm(oldMask, n_54, next);
        }
        assume false;
      }
    assume (forall n_3: Ref ::
      { oldHeap[n_3, next] }
      g_1[n_3] && n_3 != x ==> PostHeap[n_3, next] == oldHeap[n_3, next]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@453.13--453.56) [9022]"}
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@453.37--453.42) [9023]"}
              (forall n_4: Ref ::
              { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
              g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@453.37--453.42) [9024]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered55(n_4), neverTriggered55(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@453.37--453.42) [9025]"}
              (forall n_4: Ref ::
              { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange55(n_4) && invRecv55(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv55(o_9) }
              g_1[invRecv55(o_9)] && (NoPerm < 1 / 2 && qpRange55(o_9)) ==> invRecv55(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@453.50--453.55) [9026]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@453.50--453.55) [9027]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered56(n_5), neverTriggered56(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@453.50--453.55) [9028]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange56(n_5) && invRecv56(n_5) == n_5
            );
            assume (forall o_9: Ref ::
              { invRecv56(o_9) }
              g_1[invRecv56(o_9)] && (NoPerm < 1 / 2 && qpRange56(o_9)) ==> invRecv56(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@454.13--456.89) [9029]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@456.18--456.23) [9030]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@456.18--456.23) [9031]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered57(n_6), neverTriggered57(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@456.18--456.23) [9032]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange57(n_6) && invRecv57(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv57(o_9) }
                g_1[invRecv57(o_9)] && (NoPerm < 1 / 2 && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@456.45--456.50) [9033]"}
                (forall n_7: Ref ::
                { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@456.45--456.50) [9034]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered58(n_7), neverTriggered58(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@456.45--456.50) [9035]"}
                (forall n_7: Ref ::
                { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange58(n_7) && invRecv58(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv58(o_9) }
                g_1[invRecv58(o_9)] && (NoPerm < 1 / 2 && qpRange58(o_9)) ==> invRecv58(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_9, v2_9): bool)) {
            if (v1_9 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@454.13--456.89) [9036]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9037]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } exists_path($$(g), v1, v2) == (v1 == v2 || v1 != v2 && ((exists n: Ref :: { exists_path(old($$(g)), v1, n) } { exists_path(old($$(g)), n, v2) } { exists_path(old($$(g)), n, x) } { exists_path(old($$(g)), x, n) } { exists_path(old($$(g)), n, old(x.next)) } { exists_path(old($$(g)), old(x.next), n) } exists_path(old($$(g)), v1, n) && (exists_path(old($$(g)), n, v2) && (!exists_path(old($$(g)), n, x) && !exists_path(old($$(g)), x, n) || !exists_path(old($$(g)), n, old(x.next)) && !exists_path(old($$(g)), old(x.next), n)))) || ((exists n: Ref :: { exists_path(old($$(g)), x, n) } { exists_path(old($$(g)), n, old(x.next)) } n != x && (n != old(x.next) && (exists_path(old($$(g)), x, n) && exists_path(old($$(g)), n, old(x.next))))) || (exists u: Ref, v: Ref :: { edge(old($$(g)), u, v) } { exists_path(old($$(g)), v1, u), exists_path(old($$(g)), old(x.next), v) } { exists_path(old($$(g)), v1, u), exists_path(old($$(g)), v, v2) } { exists_path(old($$(g)), u, x), exists_path(old($$(g)), old(x.next), v) } { exists_path(old($$(g)), u, x), exists_path(old($$(g)), v, v2) } (u != x || v != old(x.next)) && (edge(old($$(g)), u, v) && (exists_path(old($$(g)), v1, u) && (exists_path(old($$(g)), u, x) && (exists_path(old($$(g)), old(x.next), v) && exists_path(old($$(g)), v, v2))))))))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@460.27--460.32) [9038]"}
                (forall n_8: Ref ::
                { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                g_1[n_8] && dummyFunction(PostHeap[n_8, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@460.27--460.32) [9039]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered59(n_8), neverTriggered59(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@460.27--460.32) [9040]"}
                (forall n_8: Ref ::
                { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> PostMask[n_8, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange59(n_8) && invRecv59(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv59(o_9) }
                g_1[invRecv59(o_9)] && (NoPerm < 1 / 2 && qpRange59(o_9)) ==> invRecv59(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!(v1_10 == v2_10)) {
            if (v1_10 != v2_10) {
              if (*) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.51--461.56) [9041]"}
                      (forall n$0_2: Ref ::
                      { oldHeap[n$0_2, next] } { QPMask[n$0_2, next] } { oldHeap[n$0_2, next] }
                      g_1[n$0_2] && dummyFunction(oldHeap[n$0_2, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n$0 is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.51--461.56) [9042]"}
                      (forall n$0_2: Ref, n$0_2_1: Ref ::
                      { neverTriggered60(n$0_2), neverTriggered60(n$0_2_1) }
                      (((n$0_2 != n$0_2_1 && g_1[n$0_2]) && g_1[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.51--461.56) [9043]"}
                      (forall n$0_2: Ref ::
                      { oldHeap[n$0_2, next] } { QPMask[n$0_2, next] } { oldHeap[n$0_2, next] }
                      g_1[n$0_2] ==> 1 / 2 > NoPerm ==> oldMask[n$0_2, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n$0
                    assume (forall n$0_2: Ref ::
                      { oldHeap[n$0_2, next] } { QPMask[n$0_2, next] } { oldHeap[n$0_2, next] }
                      g_1[n$0_2] && NoPerm < 1 / 2 ==> qpRange60(n$0_2) && invRecv60(n$0_2) == n$0_2
                    );
                    assume (forall o_9: Ref ::
                      { invRecv60(o_9) }
                      g_1[invRecv60(o_9)] && (NoPerm < 1 / 2 && qpRange60(o_9)) ==> invRecv60(o_9) == o_9
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                if ((exists_path($$(oldHeap, g_1), v1_10, n_55): bool)) {
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := oldHeap;
                    ExhaleWellDef0Mask := oldMask;
                    havoc QPMask;
                    
                    // -- check that the permission amount is positive
                      assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.83--461.88) [9044]"}
                        (forall n$0_3: Ref ::
                        { oldHeap[n$0_3, next] } { QPMask[n$0_3, next] } { oldHeap[n$0_3, next] }
                        g_1[n$0_3] && dummyFunction(oldHeap[n$0_3, next]) ==> 1 / 2 >= NoPerm
                      );
                    
                    // -- check if receiver n$0 is injective
                      assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.83--461.88) [9045]"}
                        (forall n$0_3: Ref, n$0_3_1: Ref ::
                        { neverTriggered61(n$0_3), neverTriggered61(n$0_3_1) }
                        (((n$0_3 != n$0_3_1 && g_1[n$0_3]) && g_1[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
                      );
                    
                    // -- check if sufficient permission is held
                      assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.83--461.88) [9046]"}
                        (forall n$0_3: Ref ::
                        { oldHeap[n$0_3, next] } { QPMask[n$0_3, next] } { oldHeap[n$0_3, next] }
                        g_1[n$0_3] ==> 1 / 2 > NoPerm ==> oldMask[n$0_3, next] > NoPerm
                      );
                    
                    // -- assumptions for inverse of receiver n$0
                      assume (forall n$0_3: Ref ::
                        { oldHeap[n$0_3, next] } { QPMask[n$0_3, next] } { oldHeap[n$0_3, next] }
                        g_1[n$0_3] && NoPerm < 1 / 2 ==> qpRange61(n$0_3) && invRecv61(n$0_3) == n$0_3
                      );
                      assume (forall o_9: Ref ::
                        { invRecv61(o_9) }
                        g_1[invRecv61(o_9)] && (NoPerm < 1 / 2 && qpRange61(o_9)) ==> invRecv61(o_9) == o_9
                      );
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
                  if ((exists_path($$(oldHeap, g_1), n_55, v2_10): bool)) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := oldHeap;
                      ExhaleWellDef0Mask := oldMask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.118--461.123) [9047]"}
                          (forall n$0_4: Ref ::
                          { oldHeap[n$0_4, next] } { QPMask[n$0_4, next] } { oldHeap[n$0_4, next] }
                          g_1[n$0_4] && dummyFunction(oldHeap[n$0_4, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n$0 is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.118--461.123) [9048]"}
                          (forall n$0_4: Ref, n$0_4_1: Ref ::
                          { neverTriggered62(n$0_4), neverTriggered62(n$0_4_1) }
                          (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.118--461.123) [9049]"}
                          (forall n$0_4: Ref ::
                          { oldHeap[n$0_4, next] } { QPMask[n$0_4, next] } { oldHeap[n$0_4, next] }
                          g_1[n$0_4] ==> 1 / 2 > NoPerm ==> oldMask[n$0_4, next] > NoPerm
                        );
                      
                      // -- assumptions for inverse of receiver n$0
                        assume (forall n$0_4: Ref ::
                          { oldHeap[n$0_4, next] } { QPMask[n$0_4, next] } { oldHeap[n$0_4, next] }
                          g_1[n$0_4] && NoPerm < 1 / 2 ==> qpRange62(n$0_4) && invRecv62(n$0_4) == n$0_4
                        );
                        assume (forall o_9: Ref ::
                          { invRecv62(o_9) }
                          g_1[invRecv62(o_9)] && (NoPerm < 1 / 2 && qpRange62(o_9)) ==> invRecv62(o_9) == o_9
                        );
                      // Finish exhale
                      // Stop execution
                      assume false;
                    }
                    if (!(exists_path($$(oldHeap, g_1), n_55, x): bool)) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.150--461.155) [9050]"}
                            (forall n$0_5: Ref ::
                            { oldHeap[n$0_5, next] } { QPMask[n$0_5, next] } { oldHeap[n$0_5, next] }
                            g_1[n$0_5] && dummyFunction(oldHeap[n$0_5, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n$0 is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.150--461.155) [9051]"}
                            (forall n$0_5: Ref, n$0_5_1: Ref ::
                            { neverTriggered63(n$0_5), neverTriggered63(n$0_5_1) }
                            (((n$0_5 != n$0_5_1 && g_1[n$0_5]) && g_1[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.150--461.155) [9052]"}
                            (forall n$0_5: Ref ::
                            { oldHeap[n$0_5, next] } { QPMask[n$0_5, next] } { oldHeap[n$0_5, next] }
                            g_1[n$0_5] ==> 1 / 2 > NoPerm ==> oldMask[n$0_5, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n$0
                          assume (forall n$0_5: Ref ::
                            { oldHeap[n$0_5, next] } { QPMask[n$0_5, next] } { oldHeap[n$0_5, next] }
                            g_1[n$0_5] && NoPerm < 1 / 2 ==> qpRange63(n$0_5) && invRecv63(n$0_5) == n$0_5
                          );
                          assume (forall o_9: Ref ::
                            { invRecv63(o_9) }
                            g_1[invRecv63(o_9)] && (NoPerm < 1 / 2 && qpRange63(o_9)) ==> invRecv63(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                    }
                    if (!(!(exists_path($$(oldHeap, g_1), n_55, x): bool) && !(exists_path($$(oldHeap, g_1), x, n_55): bool))) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.182--461.187) [9053]"}
                            (forall n$0_6: Ref ::
                            { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                            g_1[n$0_6] && dummyFunction(oldHeap[n$0_6, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n$0 is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.182--461.187) [9054]"}
                            (forall n$0_6: Ref, n$0_6_1: Ref ::
                            { neverTriggered64(n$0_6), neverTriggered64(n$0_6_1) }
                            (((n$0_6 != n$0_6_1 && g_1[n$0_6]) && g_1[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.182--461.187) [9055]"}
                            (forall n$0_6: Ref ::
                            { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                            g_1[n$0_6] ==> 1 / 2 > NoPerm ==> oldMask[n$0_6, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n$0
                          assume (forall n$0_6: Ref ::
                            { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                            g_1[n$0_6] && NoPerm < 1 / 2 ==> qpRange64(n$0_6) && invRecv64(n$0_6) == n$0_6
                          );
                          assume (forall o_9: Ref ::
                            { invRecv64(o_9) }
                            g_1[invRecv64(o_9)] && (NoPerm < 1 / 2 && qpRange64(o_9)) ==> invRecv64(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9056]"}
                        HasDirectPerm(oldMask, x, next);
                      if (!(exists_path($$(oldHeap, g_1), n_55, oldHeap[x, next]): bool)) {
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := oldHeap;
                          ExhaleWellDef0Mask := oldMask;
                          havoc QPMask;
                          
                          // -- check that the permission amount is positive
                            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@461.224--461.229) [9057]"}
                              (forall n$0_7: Ref ::
                              { oldHeap[n$0_7, next] } { QPMask[n$0_7, next] } { oldHeap[n$0_7, next] }
                              g_1[n$0_7] && dummyFunction(oldHeap[n$0_7, next]) ==> 1 / 2 >= NoPerm
                            );
                          
                          // -- check if receiver n$0 is injective
                            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@461.224--461.229) [9058]"}
                              (forall n$0_7: Ref, n$0_7_1: Ref ::
                              { neverTriggered65(n$0_7), neverTriggered65(n$0_7_1) }
                              (((n$0_7 != n$0_7_1 && g_1[n$0_7]) && g_1[n$0_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_1
                            );
                          
                          // -- check if sufficient permission is held
                            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@461.224--461.229) [9059]"}
                              (forall n$0_7: Ref ::
                              { oldHeap[n$0_7, next] } { QPMask[n$0_7, next] } { oldHeap[n$0_7, next] }
                              g_1[n$0_7] ==> 1 / 2 > NoPerm ==> oldMask[n$0_7, next] > NoPerm
                            );
                          
                          // -- assumptions for inverse of receiver n$0
                            assume (forall n$0_7: Ref ::
                              { oldHeap[n$0_7, next] } { QPMask[n$0_7, next] } { oldHeap[n$0_7, next] }
                              g_1[n$0_7] && NoPerm < 1 / 2 ==> qpRange65(n$0_7) && invRecv65(n$0_7) == n$0_7
                            );
                            assume (forall o_9: Ref ::
                              { invRecv65(o_9) }
                              g_1[invRecv65(o_9)] && (NoPerm < 1 / 2 && qpRange65(o_9)) ==> invRecv65(o_9) == o_9
                            );
                          // Finish exhale
                          // Stop execution
                          assume false;
                        }
                        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9060]"}
                          HasDirectPerm(oldMask, x, next);
                      }
                    }
                  }
                }
                assume false;
              }
              if (!(exists n_10_1: Ref ::
                { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_10, n_10_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_10_1, v2_10): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_10_1, x): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_10_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_10_1, oldHeap[x, next]): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], n_10_1): bool) }
                (exists_path($$(oldHeap, g_1), v1_10, n_10_1): bool) && ((exists_path($$(oldHeap, g_1), n_10_1, v2_10): bool) && ((!(exists_path($$(oldHeap, g_1), n_10_1, x): bool) && !(exists_path($$(oldHeap, g_1), x, n_10_1): bool)) || (!(exists_path($$(oldHeap, g_1), n_10_1, oldHeap[x, next]): bool) && !(exists_path($$(oldHeap, g_1), oldHeap[x, next], n_10_1): bool))))
              )) {
                if (*) {
                  if (n_56 != x) {
                    assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9061]"}
                      HasDirectPerm(oldMask, x, next);
                    if (n_56 != oldHeap[x, next]) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@463.81--463.86) [9062]"}
                            (forall n$0_8: Ref ::
                            { oldHeap[n$0_8, next] } { QPMask[n$0_8, next] } { oldHeap[n$0_8, next] }
                            g_1[n$0_8] && dummyFunction(oldHeap[n$0_8, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n$0 is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@463.81--463.86) [9063]"}
                            (forall n$0_8: Ref, n$0_8_1: Ref ::
                            { neverTriggered66(n$0_8), neverTriggered66(n$0_8_1) }
                            (((n$0_8 != n$0_8_1 && g_1[n$0_8]) && g_1[n$0_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_8 != n$0_8_1
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@463.81--463.86) [9064]"}
                            (forall n$0_8: Ref ::
                            { oldHeap[n$0_8, next] } { QPMask[n$0_8, next] } { oldHeap[n$0_8, next] }
                            g_1[n$0_8] ==> 1 / 2 > NoPerm ==> oldMask[n$0_8, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n$0
                          assume (forall n$0_8: Ref ::
                            { oldHeap[n$0_8, next] } { QPMask[n$0_8, next] } { oldHeap[n$0_8, next] }
                            g_1[n$0_8] && NoPerm < 1 / 2 ==> qpRange66(n$0_8) && invRecv66(n$0_8) == n$0_8
                          );
                          assume (forall o_9: Ref ::
                            { invRecv66(o_9) }
                            g_1[invRecv66(o_9)] && (NoPerm < 1 / 2 && qpRange66(o_9)) ==> invRecv66(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      if ((exists_path($$(oldHeap, g_1), x, n_56): bool)) {
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := oldHeap;
                          ExhaleWellDef0Mask := oldMask;
                          havoc QPMask;
                          
                          // -- check that the permission amount is positive
                            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@463.112--463.117) [9065]"}
                              (forall n$0_9: Ref ::
                              { oldHeap[n$0_9, next] } { QPMask[n$0_9, next] } { oldHeap[n$0_9, next] }
                              g_1[n$0_9] && dummyFunction(oldHeap[n$0_9, next]) ==> 1 / 2 >= NoPerm
                            );
                          
                          // -- check if receiver n$0 is injective
                            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@463.112--463.117) [9066]"}
                              (forall n$0_9: Ref, n$0_9_1: Ref ::
                              { neverTriggered67(n$0_9), neverTriggered67(n$0_9_1) }
                              (((n$0_9 != n$0_9_1 && g_1[n$0_9]) && g_1[n$0_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_9 != n$0_9_1
                            );
                          
                          // -- check if sufficient permission is held
                            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@463.112--463.117) [9067]"}
                              (forall n$0_9: Ref ::
                              { oldHeap[n$0_9, next] } { QPMask[n$0_9, next] } { oldHeap[n$0_9, next] }
                              g_1[n$0_9] ==> 1 / 2 > NoPerm ==> oldMask[n$0_9, next] > NoPerm
                            );
                          
                          // -- assumptions for inverse of receiver n$0
                            assume (forall n$0_9: Ref ::
                              { oldHeap[n$0_9, next] } { QPMask[n$0_9, next] } { oldHeap[n$0_9, next] }
                              g_1[n$0_9] && NoPerm < 1 / 2 ==> qpRange67(n$0_9) && invRecv67(n$0_9) == n$0_9
                            );
                            assume (forall o_9: Ref ::
                              { invRecv67(o_9) }
                              g_1[invRecv67(o_9)] && (NoPerm < 1 / 2 && qpRange67(o_9)) ==> invRecv67(o_9) == o_9
                            );
                          // Finish exhale
                          // Stop execution
                          assume false;
                        }
                        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9068]"}
                          HasDirectPerm(oldMask, x, next);
                      }
                    }
                  }
                  assume false;
                }
                if (!(exists n_12: Ref ::
                  { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_12): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_12, oldHeap[x, next]): bool) }
                  n_12 != x && (n_12 != oldHeap[x, next] && ((exists_path($$(oldHeap, g_1), x, n_12): bool) && (exists_path($$(oldHeap, g_1), n_12, oldHeap[x, next]): bool)))
                )) {
                  if (*) {
                    if (!(u_25 != x)) {
                      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9069]"}
                        HasDirectPerm(oldMask, x, next);
                    }
                    if (u_25 != x || v_25 != oldHeap[x, next]) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@465.83--465.88) [9070]"}
                            (forall n_13_2: Ref ::
                            { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                            g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@465.83--465.88) [9071]"}
                            (forall n_13_2: Ref, n_13_3: Ref ::
                            { neverTriggered68(n_13_2), neverTriggered68(n_13_3) }
                            (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@465.83--465.88) [9072]"}
                            (forall n_13_2: Ref ::
                            { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                            g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n
                          assume (forall n_13_2: Ref ::
                            { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                            g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange68(n_13_2) && invRecv68(n_13_2) == n_13_2
                          );
                          assume (forall o_9: Ref ::
                            { invRecv68(o_9) }
                            g_1[invRecv68(o_9)] && (NoPerm < 1 / 2 && qpRange68(o_9)) ==> invRecv68(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      if ((edge($$(oldHeap, g_1), u_25, v_25): bool)) {
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := oldHeap;
                          ExhaleWellDef0Mask := oldMask;
                          havoc QPMask;
                          
                          // -- check that the permission amount is positive
                            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@465.114--465.119) [9073]"}
                              (forall n_14_1: Ref ::
                              { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                              g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                            );
                          
                          // -- check if receiver n is injective
                            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@465.114--465.119) [9074]"}
                              (forall n_14_1: Ref, n_14_2: Ref ::
                              { neverTriggered69(n_14_1), neverTriggered69(n_14_2) }
                              (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                            );
                          
                          // -- check if sufficient permission is held
                            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@465.114--465.119) [9075]"}
                              (forall n_14_1: Ref ::
                              { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                              g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, next] > NoPerm
                            );
                          
                          // -- assumptions for inverse of receiver n
                            assume (forall n_14_1: Ref ::
                              { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                              g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange69(n_14_1) && invRecv69(n_14_1) == n_14_1
                            );
                            assume (forall o_9: Ref ::
                              { invRecv69(o_9) }
                              g_1[invRecv69(o_9)] && (NoPerm < 1 / 2 && qpRange69(o_9)) ==> invRecv69(o_9) == o_9
                            );
                          // Finish exhale
                          // Stop execution
                          assume false;
                        }
                        if ((exists_path($$(oldHeap, g_1), v1_10, u_25): bool)) {
                          if (*) {
                            // Exhale precondition of function application
                            ExhaleWellDef0Heap := oldHeap;
                            ExhaleWellDef0Mask := oldMask;
                            havoc QPMask;
                            
                            // -- check that the permission amount is positive
                              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@465.146--465.151) [9076]"}
                                (forall n_15: Ref ::
                                { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                g_1[n_15] && dummyFunction(oldHeap[n_15, next]) ==> 1 / 2 >= NoPerm
                              );
                            
                            // -- check if receiver n is injective
                              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@465.146--465.151) [9077]"}
                                (forall n_15: Ref, n_15_1: Ref ::
                                { neverTriggered70(n_15), neverTriggered70(n_15_1) }
                                (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                              );
                            
                            // -- check if sufficient permission is held
                              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@465.146--465.151) [9078]"}
                                (forall n_15: Ref ::
                                { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, next] > NoPerm
                              );
                            
                            // -- assumptions for inverse of receiver n
                              assume (forall n_15: Ref ::
                                { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                g_1[n_15] && NoPerm < 1 / 2 ==> qpRange70(n_15) && invRecv70(n_15) == n_15
                              );
                              assume (forall o_9: Ref ::
                                { invRecv70(o_9) }
                                g_1[invRecv70(o_9)] && (NoPerm < 1 / 2 && qpRange70(o_9)) ==> invRecv70(o_9) == o_9
                              );
                            // Finish exhale
                            // Stop execution
                            assume false;
                          }
                          if ((exists_path($$(oldHeap, g_1), u_25, x): bool)) {
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef0Heap := oldHeap;
                              ExhaleWellDef0Mask := oldMask;
                              havoc QPMask;
                              
                              // -- check that the permission amount is positive
                                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@465.177--465.182) [9079]"}
                                  (forall n_16_1: Ref ::
                                  { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                  g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, next]) ==> 1 / 2 >= NoPerm
                                );
                              
                              // -- check if receiver n is injective
                                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@465.177--465.182) [9080]"}
                                  (forall n_16_1: Ref, n_16_2: Ref ::
                                  { neverTriggered71(n_16_1), neverTriggered71(n_16_2) }
                                  (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                                );
                              
                              // -- check if sufficient permission is held
                                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@465.177--465.182) [9081]"}
                                  (forall n_16_1: Ref ::
                                  { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                  g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, next] > NoPerm
                                );
                              
                              // -- assumptions for inverse of receiver n
                                assume (forall n_16_1: Ref ::
                                  { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                  g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange71(n_16_1) && invRecv71(n_16_1) == n_16_1
                                );
                                assume (forall o_9: Ref ::
                                  { invRecv71(o_9) }
                                  g_1[invRecv71(o_9)] && (NoPerm < 1 / 2 && qpRange71(o_9)) ==> invRecv71(o_9) == o_9
                                );
                              // Finish exhale
                              // Stop execution
                              assume false;
                            }
                            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (delete_edge1.vpr@457.13--466.18) [9082]"}
                              HasDirectPerm(oldMask, x, next);
                            if ((exists_path($$(oldHeap, g_1), oldHeap[x, next], v_25): bool)) {
                              if (*) {
                                // Exhale precondition of function application
                                ExhaleWellDef0Heap := oldHeap;
                                ExhaleWellDef0Mask := oldMask;
                                havoc QPMask;
                                
                                // -- check that the permission amount is positive
                                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@465.218--465.223) [9083]"}
                                    (forall n_17: Ref ::
                                    { oldHeap[n_17, next] } { QPMask[n_17, next] } { oldHeap[n_17, next] }
                                    g_1[n_17] && dummyFunction(oldHeap[n_17, next]) ==> 1 / 2 >= NoPerm
                                  );
                                
                                // -- check if receiver n is injective
                                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@465.218--465.223) [9084]"}
                                    (forall n_17: Ref, n_17_1: Ref ::
                                    { neverTriggered72(n_17), neverTriggered72(n_17_1) }
                                    (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                                  );
                                
                                // -- check if sufficient permission is held
                                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@465.218--465.223) [9085]"}
                                    (forall n_17: Ref ::
                                    { oldHeap[n_17, next] } { QPMask[n_17, next] } { oldHeap[n_17, next] }
                                    g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, next] > NoPerm
                                  );
                                
                                // -- assumptions for inverse of receiver n
                                  assume (forall n_17: Ref ::
                                    { oldHeap[n_17, next] } { QPMask[n_17, next] } { oldHeap[n_17, next] }
                                    g_1[n_17] && NoPerm < 1 / 2 ==> qpRange72(n_17) && invRecv72(n_17) == n_17
                                  );
                                  assume (forall o_9: Ref ::
                                    { invRecv72(o_9) }
                                    g_1[invRecv72(o_9)] && (NoPerm < 1 / 2 && qpRange72(o_9)) ==> invRecv72(o_9) == o_9
                                  );
                                // Finish exhale
                                // Stop execution
                                assume false;
                              }
                            }
                          }
                        }
                      }
                    }
                    assume false;
                  }
                }
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == (v1_3 == v2_3 || (v1_3 != v2_3 && ((exists n_18: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_3, n_18): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_18, v2_3): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_18, x): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_18): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_18, oldHeap[x, next]): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], n_18): bool) }
          (exists_path($$(oldHeap, g_1), v1_3, n_18): bool) && ((exists_path($$(oldHeap, g_1), n_18, v2_3): bool) && ((!(exists_path($$(oldHeap, g_1), n_18, x): bool) && !(exists_path($$(oldHeap, g_1), x, n_18): bool)) || (!(exists_path($$(oldHeap, g_1), n_18, oldHeap[x, next]): bool) && !(exists_path($$(oldHeap, g_1), oldHeap[x, next], n_18): bool))))
        ) || ((exists n_19: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_19): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_19, oldHeap[x, next]): bool) }
          n_19 != x && (n_19 != oldHeap[x, next] && ((exists_path($$(oldHeap, g_1), x, n_19): bool) && (exists_path($$(oldHeap, g_1), n_19, oldHeap[x, next]): bool)))
        ) || (exists u_1_1: Ref, v_1_1: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_1_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_3, u_1_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_3, u_1_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_1_1, v2_3): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_1_1, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_1_1, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_1_1, v2_3): bool) }
          (u_1_1 != x || v_1_1 != oldHeap[x, next]) && ((edge($$(oldHeap, g_1), u_1_1, v_1_1): bool) && ((exists_path($$(oldHeap, g_1), v1_3, u_1_1): bool) && ((exists_path($$(oldHeap, g_1), u_1_1, x): bool) && ((exists_path($$(oldHeap, g_1), oldHeap[x, next], v_1_1): bool) && (exists_path($$(oldHeap, g_1), v_1_1, v2_3): bool)))))
        )))))
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
    assert {:msg "  Postcondition of unlink_dags might not hold. Assertion !((null in g)) might not hold. (delete_edge1.vpr@449.13--449.21) [9086]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@449.13--449.21) [9087]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered73(n$1_2), neverTriggered73(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_dags might not hold. There might be insufficient permission to access n$1.next (delete_edge1.vpr@449.13--449.21) [9088]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange73(n$1_2) && invRecv73(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv73(o_9) }
        g_1[invRecv73(o_9)] && (NoPerm < FullPerm && qpRange73(o_9)) ==> invRecv73(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv73(o_9)] && (NoPerm < FullPerm && qpRange73(o_9)) ==> invRecv73(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv73(o_9)] && (NoPerm < FullPerm && qpRange73(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of unlink_dags might not hold. Assertion (n$2.next in g) might not hold. (delete_edge1.vpr@449.13--449.21) [9089]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink_dags might not hold. Assertion x.next == null might not hold. (delete_edge1.vpr@450.13--450.27) [9090]"}
      Heap[x, next] == null;
    if (*) {
      if (g_1[n_20] && n_20 != x) {
        assert {:msg "  Postcondition of unlink_dags might not hold. Assertion n.next == old(n.next) might not hold. (delete_edge1.vpr@452.13--452.87) [9091]"}
          Heap[n_20, next] == oldHeap[n_20, next];
      }
      assume false;
    }
    assume (forall n_21_1_1: Ref ::
      { oldHeap[n_21_1_1, next] }
      g_1[n_21_1_1] && n_21_1_1 != x ==> Heap[n_21_1_1, next] == oldHeap[n_21_1_1, next]
    );
    if (oldHeap[x, next] == null) {
      assert {:msg "  Postcondition of unlink_dags might not hold. Assertion $$(g) == old($$(g)) might not hold. (delete_edge1.vpr@453.13--453.56) [9092]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_dags might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))) might not hold. (delete_edge1.vpr@454.13--456.89) [9093]"}
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
        assert {:msg "  Postcondition of unlink_dags might not hold. Assertion exists_path($$(g), v1, v2) == (v1 == v2 || v1 != v2 && ((exists n: Ref :: { exists_path(old($$(g)), v1, n) } { exists_path(old($$(g)), n, v2) } { exists_path(old($$(g)), n, x) } { exists_path(old($$(g)), x, n) } { exists_path(old($$(g)), n, old(x.next)) } { exists_path(old($$(g)), old(x.next), n) } exists_path(old($$(g)), v1, n) && (exists_path(old($$(g)), n, v2) && (!exists_path(old($$(g)), n, x) && !exists_path(old($$(g)), x, n) || !exists_path(old($$(g)), n, old(x.next)) && !exists_path(old($$(g)), old(x.next), n)))) || ((exists n: Ref :: { exists_path(old($$(g)), x, n) } { exists_path(old($$(g)), n, old(x.next)) } n != x && (n != old(x.next) && (exists_path(old($$(g)), x, n) && exists_path(old($$(g)), n, old(x.next))))) || (exists u: Ref, v: Ref :: { edge(old($$(g)), u, v) } { exists_path(old($$(g)), v1, u), exists_path(old($$(g)), old(x.next), v) } { exists_path(old($$(g)), v1, u), exists_path(old($$(g)), v, v2) } { exists_path(old($$(g)), u, x), exists_path(old($$(g)), old(x.next), v) } { exists_path(old($$(g)), u, x), exists_path(old($$(g)), v, v2) } (u != x || v != old(x.next)) && (edge(old($$(g)), u, v) && (exists_path(old($$(g)), v1, u) && (exists_path(old($$(g)), u, x) && (exists_path(old($$(g)), old(x.next), v) && exists_path(old($$(g)), v, v2))))))))) might not hold. (delete_edge1.vpr@457.13--466.18) [9094]"}
          (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == (v1_6 == v2_6 || (v1_6 != v2_6 && ((exists n_22: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_6, n_22): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_22, v2_6): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_22, x): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_22): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_22, oldHeap[x, next]): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], n_22): bool) }
          (exists_path($$(oldHeap, g_1), v1_6, n_22): bool) && ((exists_path($$(oldHeap, g_1), n_22, v2_6): bool) && ((!(exists_path($$(oldHeap, g_1), n_22, x): bool) && !(exists_path($$(oldHeap, g_1), x, n_22): bool)) || (!(exists_path($$(oldHeap, g_1), n_22, oldHeap[x, next]): bool) && !(exists_path($$(oldHeap, g_1), oldHeap[x, next], n_22): bool))))
        ) || ((exists n_23: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_23): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_23, oldHeap[x, next]): bool) }
          n_23 != x && (n_23 != oldHeap[x, next] && ((exists_path($$(oldHeap, g_1), x, n_23): bool) && (exists_path($$(oldHeap, g_1), n_23, oldHeap[x, next]): bool)))
        ) || (exists u_2_2: Ref, v_2_2: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_2_2, v_2_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_6, u_2_2): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_2_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_6, u_2_2): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_2_2, v2_6): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_2_2, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_2_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_2_2, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_2_2, v2_6): bool) }
          (u_2_2 != x || v_2_2 != oldHeap[x, next]) && ((edge($$(oldHeap, g_1), u_2_2, v_2_2): bool) && ((exists_path($$(oldHeap, g_1), v1_6, u_2_2): bool) && ((exists_path($$(oldHeap, g_1), u_2_2, x): bool) && ((exists_path($$(oldHeap, g_1), oldHeap[x, next], v_2_2): bool) && (exists_path($$(oldHeap, g_1), v_2_2, v2_6): bool)))))
        )))));
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == (v1_7_1 == v2_7_1 || (v1_7_1 != v2_7_1 && ((exists n_24: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_7_1, n_24): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_24, v2_7_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_24, x): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_24): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_24, oldHeap[x, next]): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], n_24): bool) }
          (exists_path($$(oldHeap, g_1), v1_7_1, n_24): bool) && ((exists_path($$(oldHeap, g_1), n_24, v2_7_1): bool) && ((!(exists_path($$(oldHeap, g_1), n_24, x): bool) && !(exists_path($$(oldHeap, g_1), x, n_24): bool)) || (!(exists_path($$(oldHeap, g_1), n_24, oldHeap[x, next]): bool) && !(exists_path($$(oldHeap, g_1), oldHeap[x, next], n_24): bool))))
        ) || ((exists n_25: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x, n_25): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), n_25, oldHeap[x, next]): bool) }
          n_25 != x && (n_25 != oldHeap[x, next] && ((exists_path($$(oldHeap, g_1), x, n_25): bool) && (exists_path($$(oldHeap, g_1), n_25, oldHeap[x, next]): bool)))
        ) || (exists u_3_1: Ref, v_3_1: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_7_1, u_3_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_7_1, u_3_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_3_1, v2_7_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_3_1, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), oldHeap[x, next], v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), u_3_1, x): bool), (exists_path($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v_3_1, v2_7_1): bool) }
          (u_3_1 != x || v_3_1 != oldHeap[x, next]) && ((edge($$(oldHeap, g_1), u_3_1, v_3_1): bool) && ((exists_path($$(oldHeap, g_1), v1_7_1, u_3_1): bool) && ((exists_path($$(oldHeap, g_1), u_3_1, x): bool) && ((exists_path($$(oldHeap, g_1), oldHeap[x, next], v_3_1): bool) && (exists_path($$(oldHeap, g_1), v_3_1, v2_7_1): bool)))))
        )))))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unjoin_dags
// ==================================================

procedure unjoin_dags(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_30: Ref;
  var n$1_12: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$2_23: Ref;
  var n_57: Ref;
  var m_4: Ref;
  var n_58: Ref;
  var m_5: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_9: Ref;
  var n$6_4: Ref;
  var n$7_3: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_g: (Set Ref);
  var n$0_4: Ref;
  var n$4_2: Ref;
  var n$6_2: Ref;
  var n$7_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { g0[r_1_1], g1[r_1_1] }
      g0[r_1_1] ==> !g1[r_1_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$0_1: Ref ::
      { g0[r$0_1], g1[r$0_1] }
      g1[r$0_1] ==> !g0[r$0_1]
    );
    assume state(Heap, Mask);
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in (g0 union g1)) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (delete_edge1.vpr@471.14--471.32) [9095]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && Set#Union(g0, g1)[n_1]) && Set#Union(g0, g1)[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        Set#Union(g0, g1)[n_1] && NoPerm < FullPerm ==> qpRange74(n_1) && invRecv74(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv74(o_9) }
        (Set#Union(g0, g1)[invRecv74(o_9)] && NoPerm < FullPerm) && qpRange74(o_9) ==> invRecv74(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        Set#Union(g0, g1)[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((Set#Union(g0, g1)[invRecv74(o_9)] && NoPerm < FullPerm) && qpRange74(o_9) ==> (NoPerm < FullPerm ==> invRecv74(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv74(o_9)] && NoPerm < FullPerm) && qpRange74(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in (g0 union g1)) } { (n$0 in (g0 union g1)), n$0.next } (n$0 in (g0 union g1)) && n$0.next != null ==> (n$0.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$0_30]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@471.14--471.32) [9096]"}
            HasDirectPerm(Mask, n$0_30, next);
        }
        if (Set#Union(g0, g1)[n$0_30] && Heap[n$0_30, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (delete_edge1.vpr@471.14--471.32) [9097]"}
            HasDirectPerm(Mask, n$0_30, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$0_1, next]] } { Set#Union(g0, g1)[n$0_1], Heap[n$0_1, next] }
      Set#Union(g0, g1)[n$0_1] && Heap[n$0_1, next] != null ==> Set#Union(g0, g1)[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume g1[x1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { exists_path($$(g0), n$1, x0) } (n$1 in g0) ==> exists_path($$(g0), n$1, x0))
      if (*) {
        if (g0[n$1_12]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@221.74--221.79) [9098]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@221.74--221.79) [9099]"}
                (forall n_2: Ref, n_2_1: Ref ::
                { neverTriggered75(n_2), neverTriggered75(n_2_1) }
                (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@221.74--221.79) [9100]"}
                (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_2: Ref ::
                { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
                g0[n_2] && NoPerm < 1 / 2 ==> qpRange75(n_2) && invRecv75(n_2) == n_2
              );
              assume (forall o_9: Ref ::
                { invRecv75(o_9) }
                g0[invRecv75(o_9)] && (NoPerm < 1 / 2 && qpRange75(o_9)) ==> invRecv75(o_9) == o_9
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
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), n$1_1, x0): bool) }
      g0[n$1_1] ==> (exists_path($$(Heap, g0), n$1_1, x0): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { exists_path($$(g1), x1, n$2) } (n$2 in g1) ==> exists_path($$(g1), x1, n$2))
      if (*) {
        if (g1[n$2_23]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@215.74--215.79) [9101]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@215.74--215.79) [9102]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered76(n_3), neverTriggered76(n_3_1) }
                (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@215.74--215.79) [9103]"}
                (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
                g1[n_3] && NoPerm < 1 / 2 ==> qpRange76(n_3) && invRecv76(n_3) == n_3
              );
              assume (forall o_9: Ref ::
                { invRecv76(o_9) }
                g1[invRecv76(o_9)] && (NoPerm < 1 / 2 && qpRange76(o_9)) ==> invRecv76(o_9) == o_9
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
    assume (forall n$2_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), x1, n$2_1): bool) }
      g1[n$2_1] ==> (exists_path($$(Heap, g1), x1, n$2_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { (n in g0), (m in g1) } (n in g0) && (m in g1) ==> edge($$((g0 union g1)), n, m) == (n == x0 && m == x1))
      if (*) {
        if (g0[n_57] && g1[m_4]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@479.87--479.102) [9104]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] && dummyFunction(Heap[n$0_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@479.87--479.102) [9105]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered77(n$0_2), neverTriggered77(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && Set#Union(g0, g1)[n$0_2]) && Set#Union(g0, g1)[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@479.87--479.102) [9106]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                Set#Union(g0, g1)[n$0_2] && NoPerm < 1 / 2 ==> qpRange77(n$0_2) && invRecv77(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv77(o_9) }
                Set#Union(g0, g1)[invRecv77(o_9)] && (NoPerm < 1 / 2 && qpRange77(o_9)) ==> invRecv77(o_9) == o_9
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
    assume (forall n_5: Ref, m_1: Ref ::
      { g0[n_5], g1[m_1] }
      g0[n_5] && g1[m_1] ==> (edge($$(Heap, Set#Union(g0, g1)), n_5, m_1): bool) == (n_5 == x0 && m_1 == x1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { (n in g1), (m in g0) } (n in g1) && (m in g0) ==> !edge($$((g0 union g1)), n, m))
      if (*) {
        if (g1[n_58] && g0[m_5]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@480.87--480.102) [9107]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] && dummyFunction(Heap[n$0_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (delete_edge1.vpr@480.87--480.102) [9108]"}
                (forall n$0_3: Ref, n$0_3_1: Ref ::
                { neverTriggered78(n$0_3), neverTriggered78(n$0_3_1) }
                (((n$0_3 != n$0_3_1 && Set#Union(g0, g1)[n$0_3]) && Set#Union(g0, g1)[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (delete_edge1.vpr@480.87--480.102) [9109]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3: Ref ::
                { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                Set#Union(g0, g1)[n$0_3] && NoPerm < 1 / 2 ==> qpRange78(n$0_3) && invRecv78(n$0_3) == n$0_3
              );
              assume (forall o_9: Ref ::
                { invRecv78(o_9) }
                Set#Union(g0, g1)[invRecv78(o_9)] && (NoPerm < 1 / 2 && qpRange78(o_9)) ==> invRecv78(o_9) == o_9
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
    assume (forall n_7: Ref, m_3: Ref ::
      { g1[n_7], g0[m_3] }
      g1[n_7] && g0[m_3] ==> !(edge($$(Heap, Set#Union(g0, g1)), n_7, m_3): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@484.28--484.43) [9110]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@484.28--484.43) [9111]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered79(n_8), neverTriggered79(n_8_1) }
            (((n_8 != n_8_1 && Set#Union(g0, g1)[n_8]) && Set#Union(g0, g1)[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@484.28--484.43) [9112]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            Set#Union(g0, g1)[n_8] && NoPerm < 1 / 2 ==> qpRange79(n_8) && invRecv79(n_8) == n_8
          );
          assume (forall o_9: Ref ::
            { invRecv79(o_9) }
            Set#Union(g0, g1)[invRecv79(o_9)] && (NoPerm < 1 / 2 && qpRange79(o_9)) ==> invRecv79(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, Set#Union(g0, g1))): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.next == x1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.next (delete_edge1.vpr@485.14--485.27) [9113]"}
        HasDirectPerm(Mask, x0, next);
    assume Heap[x0, next] == x1;
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
    assume !g0[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in g0) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (delete_edge1.vpr@490.13--490.22) [9114]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && g0[n$3_1]) && g0[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        g0[n$3_1] && NoPerm < FullPerm ==> qpRange80(n$3_1) && invRecv80(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv80(o_9) }
        (g0[invRecv80(o_9)] && NoPerm < FullPerm) && qpRange80(o_9) ==> invRecv80(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, next] } { QPMask[n$3_1, next] } { PostHeap[n$3_1, next] }
        g0[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g0[invRecv80(o_9)] && NoPerm < FullPerm) && qpRange80(o_9) ==> (NoPerm < FullPerm ==> invRecv80(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g0[invRecv80(o_9)] && NoPerm < FullPerm) && qpRange80(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in g0) } { (n$4 in g0), n$4.next } (n$4 in g0) && n$4.next != null ==> (n$4.next in g0))
      if (*) {
        if (g0[n$4_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (delete_edge1.vpr@490.13--490.22) [9115]"}
            HasDirectPerm(PostMask, n$4_9, next);
        }
        if (g0[n$4_9] && PostHeap[n$4_9, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (delete_edge1.vpr@490.13--490.22) [9116]"}
            HasDirectPerm(PostMask, n$4_9, next);
        }
        assume false;
      }
    assume (forall n$4_1: Ref ::
      { g0[PostHeap[n$4_1, next]] } { g0[n$4_1], PostHeap[n$4_1, next] }
      g0[n$4_1] && PostHeap[n$4_1, next] != null ==> g0[PostHeap[n$4_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$5: Ref :: { n$5.next } (n$5 in g1) ==> acc(n$5.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (delete_edge1.vpr@491.13--491.22) [9117]"}
      (forall n$5_1: Ref, n$5_1_1: Ref ::
      
      (((n$5_1 != n$5_1_1 && g1[n$5_1]) && g1[n$5_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_1 != n$5_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        g1[n$5_1] && NoPerm < FullPerm ==> qpRange81(n$5_1) && invRecv81(n$5_1) == n$5_1
      );
      assume (forall o_9: Ref ::
        { invRecv81(o_9) }
        (g1[invRecv81(o_9)] && NoPerm < FullPerm) && qpRange81(o_9) ==> invRecv81(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$5_1: Ref ::
        { PostHeap[n$5_1, next] } { QPMask[n$5_1, next] } { PostHeap[n$5_1, next] }
        g1[n$5_1] ==> n$5_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g1[invRecv81(o_9)] && NoPerm < FullPerm) && qpRange81(o_9) ==> (NoPerm < FullPerm ==> invRecv81(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g1[invRecv81(o_9)] && NoPerm < FullPerm) && qpRange81(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.next in g1) } { (n$6 in g1), n$6.next } (n$6 in g1) && n$6.next != null ==> (n$6.next in g1))
      if (*) {
        if (g1[n$6_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (delete_edge1.vpr@491.13--491.22) [9118]"}
            HasDirectPerm(PostMask, n$6_4, next);
        }
        if (g1[n$6_4] && PostHeap[n$6_4, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.next (delete_edge1.vpr@491.13--491.22) [9119]"}
            HasDirectPerm(PostMask, n$6_4, next);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[PostHeap[n$6_1, next]] } { g1[n$6_1], PostHeap[n$6_1, next] }
      g1[n$6_1] && PostHeap[n$6_1, next] != null ==> g1[PostHeap[n$6_1, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acyclic_graph($$(g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@493.27--493.33) [9120]"}
            (forall n_9: Ref ::
            { PostHeap[n_9, next] } { QPMask[n_9, next] } { PostHeap[n_9, next] }
            g1[n_9] && dummyFunction(PostHeap[n_9, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@493.27--493.33) [9121]"}
            (forall n_9: Ref, n_9_1: Ref ::
            { neverTriggered82(n_9), neverTriggered82(n_9_1) }
            (((n_9 != n_9_1 && g1[n_9]) && g1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@493.27--493.33) [9122]"}
            (forall n_9: Ref ::
            { PostHeap[n_9, next] } { QPMask[n_9, next] } { PostHeap[n_9, next] }
            g1[n_9] ==> 1 / 2 > NoPerm ==> PostMask[n_9, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_9: Ref ::
            { PostHeap[n_9, next] } { QPMask[n_9, next] } { PostHeap[n_9, next] }
            g1[n_9] && NoPerm < 1 / 2 ==> qpRange82(n_9) && invRecv82(n_9) == n_9
          );
          assume (forall o_9: Ref ::
            { invRecv82(o_9) }
            g1[invRecv82(o_9)] && (NoPerm < 1 / 2 && qpRange82(o_9)) ==> invRecv82(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(PostHeap, g1)): bool);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acyclic_graph($$(g0))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@494.27--494.33) [9123]"}
            (forall n_10_1: Ref ::
            { PostHeap[n_10_1, next] } { QPMask[n_10_1, next] } { PostHeap[n_10_1, next] }
            g0[n_10_1] && dummyFunction(PostHeap[n_10_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@494.27--494.33) [9124]"}
            (forall n_10_1: Ref, n_10_2: Ref ::
            { neverTriggered83(n_10_1), neverTriggered83(n_10_2) }
            (((n_10_1 != n_10_2 && g0[n_10_1]) && g0[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@494.27--494.33) [9125]"}
            (forall n_10_1: Ref ::
            { PostHeap[n_10_1, next] } { QPMask[n_10_1, next] } { PostHeap[n_10_1, next] }
            g0[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_10_1: Ref ::
            { PostHeap[n_10_1, next] } { QPMask[n_10_1, next] } { PostHeap[n_10_1, next] }
            g0[n_10_1] && NoPerm < 1 / 2 ==> qpRange83(n_10_1) && invRecv83(n_10_1) == n_10_1
          );
          assume (forall o_9: Ref ::
            { invRecv83(o_9) }
            g0[invRecv83(o_9)] && (NoPerm < 1 / 2 && qpRange83(o_9)) ==> invRecv83(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(PostHeap, g0)): bool);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$7: Ref :: { exists_path($$(g1), x1, n$7) } (n$7 in g1) ==> exists_path($$(g1), x1, n$7))
      if (*) {
        if (g1[n$7_3]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (delete_edge1.vpr@215.74--215.79) [9126]"}
                (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] && dummyFunction(PostHeap[n_11_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@215.74--215.79) [9127]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered84(n_11_2), neverTriggered84(n_11_3) }
                (((n_11_2 != n_11_3 && g1[n_11_2]) && g1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@215.74--215.79) [9128]"}
                (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_2: Ref ::
                { PostHeap[n_11_2, next] } { QPMask[n_11_2, next] } { PostHeap[n_11_2, next] }
                g1[n_11_2] && NoPerm < 1 / 2 ==> qpRange84(n_11_2) && invRecv84(n_11_2) == n_11_2
              );
              assume (forall o_9: Ref ::
                { invRecv84(o_9) }
                g1[invRecv84(o_9)] && (NoPerm < 1 / 2 && qpRange84(o_9)) ==> invRecv84(o_9) == o_9
              );
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
    assume (forall n$7_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g1)), g1), x1, n$7_1): bool) }
      g1[n$7_1] ==> (exists_path($$(PostHeap, g1), x1, n$7_1): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- delete_edge1.vpr@498.12--498.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@498.12--498.34) [9129]"}
            (forall n_12: Ref, n_12_1: Ref ::
            { neverTriggered87(n_12), neverTriggered87(n_12_1) }
            (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12 != n_12_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@498.12--498.34) [9130]"}
            (forall n_12: Ref ::
            { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
            g0[n_12] ==> FullPerm > NoPerm ==> Mask[n_12, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_12: Ref ::
            { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
            g0[n_12] && NoPerm < FullPerm ==> qpRange87(n_12) && invRecv87(n_12) == n_12
          );
          assume (forall o_9: Ref ::
            { invRecv87(o_9) }
            g0[invRecv87(o_9)] && (NoPerm < FullPerm && qpRange87(o_9)) ==> invRecv87(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@498.12--498.34) [9131]"}
            (forall n_13_2: Ref, n_13_3: Ref ::
            { neverTriggered88(n_13_2), neverTriggered88(n_13_3) }
            (((n_13_2 != n_13_3 && g1[n_13_2]) && g1[n_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13_2 != n_13_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@498.12--498.34) [9132]"}
            (forall n_13_2: Ref ::
            { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
            g1[n_13_2] ==> FullPerm > NoPerm ==> Mask[n_13_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_13_2: Ref ::
            { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
            g1[n_13_2] && NoPerm < FullPerm ==> qpRange88(n_13_2) && invRecv88(n_13_2) == n_13_2
          );
          assume (forall o_9: Ref ::
            { invRecv88(o_9) }
            g1[invRecv88(o_9)] && (NoPerm < FullPerm && qpRange88(o_9)) ==> invRecv88(o_9) == o_9
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (delete_edge1.vpr@498.12--498.34) [9133]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unlink_dags((g0 union g1), x0) -- delete_edge1.vpr@499.5--499.32
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_g := Set#Union(g0, g1);
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method unlink_dags might not hold. Assertion (x0 in (g0 union g1)) might not hold. (delete_edge1.vpr@499.5--499.32) [9134]"}
        arg_g[x0];
      assert {:msg "  The precondition of method unlink_dags might not hold. Assertion !((null in (g0 union g1))) might not hold. (delete_edge1.vpr@499.5--499.32) [9135]"}
        !arg_g[null];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method unlink_dags might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@499.5--499.32) [9136]"}
          (forall n_14_1: Ref, n_14_2: Ref ::
          { neverTriggered89(n_14_1), neverTriggered89(n_14_2) }
          (((n_14_1 != n_14_2 && arg_g[n_14_1]) && arg_g[n_14_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14_1 != n_14_2
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method unlink_dags might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@499.5--499.32) [9137]"}
          (forall n_14_1: Ref ::
          { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
          arg_g[n_14_1] ==> Mask[n_14_1, next] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_14_1: Ref ::
          { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
          arg_g[n_14_1] && NoPerm < FullPerm ==> qpRange89(n_14_1) && invRecv89(n_14_1) == n_14_1
        );
        assume (forall o_9: Ref ::
          { invRecv89(o_9) }
          arg_g[invRecv89(o_9)] && (NoPerm < FullPerm && qpRange89(o_9)) ==> invRecv89(o_9) == o_9
        );
      
      // -- assume permission updates for field next
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          (arg_g[invRecv89(o_9)] && (NoPerm < FullPerm && qpRange89(o_9)) ==> invRecv89(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(arg_g[invRecv89(o_9)] && (NoPerm < FullPerm && qpRange89(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (arg_g[n$0_4] && Heap[n$0_4, next] != null) {
          assert {:msg "  The precondition of method unlink_dags might not hold. Assertion (n$0.next in (g0 union g1)) might not hold. (delete_edge1.vpr@499.5--499.32) [9138]"}
            arg_g[Heap[n$0_4, next]];
        }
        assume false;
      }
      assume (forall n$0_5_1_1: Ref ::
        { arg_g[Heap[n$0_5_1_1, next]] } { arg_g[n$0_5_1_1], Heap[n$0_5_1_1, next] }
        arg_g[n$0_5_1_1] && Heap[n$0_5_1_1, next] != null ==> arg_g[Heap[n$0_5_1_1, next]]
      );
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume !arg_g[null];
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (delete_edge1.vpr@499.5--499.32) [9139]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        
        (((n$1_2 != n$1_2_1 && arg_g[n$1_2]) && arg_g[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
      
      // -- Define Inverse Function
        assume (forall n$1_2: Ref ::
          { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
          arg_g[n$1_2] && NoPerm < FullPerm ==> qpRange90(n$1_2) && invRecv90(n$1_2) == n$1_2
        );
        assume (forall o_9: Ref ::
          { invRecv90(o_9) }
          (arg_g[invRecv90(o_9)] && NoPerm < FullPerm) && qpRange90(o_9) ==> invRecv90(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_2: Ref ::
          { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
          arg_g[n$1_2] ==> n$1_2 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((arg_g[invRecv90(o_9)] && NoPerm < FullPerm) && qpRange90(o_9) ==> (NoPerm < FullPerm ==> invRecv90(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((arg_g[invRecv90(o_9)] && NoPerm < FullPerm) && qpRange90(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2_2: Ref ::
        { arg_g[Heap[n$2_2, next]] } { arg_g[n$2_2], Heap[n$2_2, next] }
        arg_g[n$2_2] && Heap[n$2_2, next] != null ==> arg_g[Heap[n$2_2, next]]
      );
      assume Heap[x0, next] == null;
      assume (forall n_15: Ref ::
        { PreCallHeap[n_15, next] }
        arg_g[n_15] && n_15 != x0 ==> Heap[n_15, next] == PreCallHeap[n_15, next]
      );
      if (PreCallHeap[x0, next] == null) {
        assume state(Heap, Mask);
        assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
      }
      if (PreCallHeap[x0, next] != null) {
        assume state(Heap, Mask);
        assume (forall v1: Ref, v2: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(Heap, arg_g)), arg_g), v1, v2): bool) }
          (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) && !(v1 == x0 && v2 == PreCallHeap[x0, next]))
        );
      }
      if (PreCallHeap[x0, next] != null) {
        assume state(Heap, Mask);
        assume (forall v1_1: Ref, v2_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, arg_g)), arg_g), v1_1, v2_1): bool) }
          (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == (v1_1 == v2_1 || (v1_1 != v2_1 && ((exists n_16_1: Ref ::
            { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), v1_1, n_16_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), n_16_1, v2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), n_16_1, x0): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), x0, n_16_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), n_16_1, PreCallHeap[x0, next]): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), PreCallHeap[x0, next], n_16_1): bool) }
            (exists_path($$(PreCallHeap, arg_g), v1_1, n_16_1): bool) && ((exists_path($$(PreCallHeap, arg_g), n_16_1, v2_1): bool) && ((!(exists_path($$(PreCallHeap, arg_g), n_16_1, x0): bool) && !(exists_path($$(PreCallHeap, arg_g), x0, n_16_1): bool)) || (!(exists_path($$(PreCallHeap, arg_g), n_16_1, PreCallHeap[x0, next]): bool) && !(exists_path($$(PreCallHeap, arg_g), PreCallHeap[x0, next], n_16_1): bool))))
          ) || ((exists n_17: Ref ::
            { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), x0, n_17): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), n_17, PreCallHeap[x0, next]): bool) }
            n_17 != x0 && (n_17 != PreCallHeap[x0, next] && ((exists_path($$(PreCallHeap, arg_g), x0, n_17): bool) && (exists_path($$(PreCallHeap, arg_g), n_17, PreCallHeap[x0, next]): bool)))
          ) || (exists u_1: Ref, v_2: Ref ::
            { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), u_1, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), v1_1, u_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), PreCallHeap[x0, next], v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), v1_1, u_1): bool), (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), v_2, v2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), u_1, x0): bool), (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), PreCallHeap[x0, next], v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), u_1, x0): bool), (exists_path($$#frame(FrameFragment($$#condqp1(PreCallHeap, arg_g)), arg_g), v_2, v2_1): bool) }
            (u_1 != x0 || v_2 != PreCallHeap[x0, next]) && ((edge($$(PreCallHeap, arg_g), u_1, v_2): bool) && ((exists_path($$(PreCallHeap, arg_g), v1_1, u_1): bool) && ((exists_path($$(PreCallHeap, arg_g), u_1, x0): bool) && ((exists_path($$(PreCallHeap, arg_g), PreCallHeap[x0, next], v_2): bool) && (exists_path($$(PreCallHeap, arg_g), v_2, v2_1): bool)))))
          )))))
        );
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- delete_edge1.vpr@500.12--500.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@500.12--500.34) [9140]"}
            (forall n_18: Ref, n_18_1: Ref ::
            { neverTriggered91(n_18), neverTriggered91(n_18_1) }
            (((n_18 != n_18_1 && g0[n_18]) && g0[n_18_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_18 != n_18_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@500.12--500.34) [9141]"}
            (forall n_18: Ref ::
            { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
            g0[n_18] ==> FullPerm > NoPerm ==> Mask[n_18, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_18: Ref ::
            { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
            g0[n_18] && NoPerm < FullPerm ==> qpRange91(n_18) && invRecv91(n_18) == n_18
          );
          assume (forall o_9: Ref ::
            { invRecv91(o_9) }
            g0[invRecv91(o_9)] && (NoPerm < FullPerm && qpRange91(o_9)) ==> invRecv91(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (delete_edge1.vpr@500.12--500.34) [9142]"}
            (forall n_19: Ref, n_19_1: Ref ::
            { neverTriggered92(n_19), neverTriggered92(n_19_1) }
            (((n_19 != n_19_1 && g1[n_19]) && g1[n_19_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_19 != n_19_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (delete_edge1.vpr@500.12--500.34) [9143]"}
            (forall n_19: Ref ::
            { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
            g1[n_19] ==> FullPerm > NoPerm ==> Mask[n_19, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_19: Ref ::
            { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
            g1[n_19] && NoPerm < FullPerm ==> qpRange92(n_19) && invRecv92(n_19) == n_19
          );
          assume (forall o_9: Ref ::
            { invRecv92(o_9) }
            g1[invRecv92(o_9)] && (NoPerm < FullPerm && qpRange92(o_9)) ==> invRecv92(o_9) == o_9
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (delete_edge1.vpr@500.12--500.34) [9144]"}
          Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g0, g1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion !((null in g0)) might not hold. (delete_edge1.vpr@490.13--490.22) [9145]"}
      !g0[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (delete_edge1.vpr@490.13--490.22) [9146]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered85(n$3_2), neverTriggered85(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && g0[n$3_2]) && g0[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unjoin_dags might not hold. There might be insufficient permission to access n$3.next (delete_edge1.vpr@490.13--490.22) [9147]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        g0[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        g0[n$3_2] && NoPerm < FullPerm ==> qpRange85(n$3_2) && invRecv85(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv85(o_9) }
        g0[invRecv85(o_9)] && (NoPerm < FullPerm && qpRange85(o_9)) ==> invRecv85(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g0[invRecv85(o_9)] && (NoPerm < FullPerm && qpRange85(o_9)) ==> invRecv85(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g0[invRecv85(o_9)] && (NoPerm < FullPerm && qpRange85(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g0[n$4_2] && Heap[n$4_2, next] != null) {
        assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion (n$4.next in g0) might not hold. (delete_edge1.vpr@490.13--490.22) [9148]"}
          g0[Heap[n$4_2, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { g0[Heap[n$4_3_1, next]] } { g0[n$4_3_1], Heap[n$4_3_1, next] }
      g0[n$4_3_1] && Heap[n$4_3_1, next] != null ==> g0[Heap[n$4_3_1, next]]
    );
    assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion !((null in g1)) might not hold. (delete_edge1.vpr@491.13--491.22) [9149]"}
      !g1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$5 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$5.next might not be injective. (delete_edge1.vpr@491.13--491.22) [9150]"}
        (forall n$5_2: Ref, n$5_2_1: Ref ::
        { neverTriggered86(n$5_2), neverTriggered86(n$5_2_1) }
        (((n$5_2 != n$5_2_1 && g1[n$5_2]) && g1[n$5_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$5_2 != n$5_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unjoin_dags might not hold. There might be insufficient permission to access n$5.next (delete_edge1.vpr@491.13--491.22) [9151]"}
        (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        g1[n$5_2] ==> Mask[n$5_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$5
      assume (forall n$5_2: Ref ::
        { Heap[n$5_2, next] } { QPMask[n$5_2, next] } { Heap[n$5_2, next] }
        g1[n$5_2] && NoPerm < FullPerm ==> qpRange86(n$5_2) && invRecv86(n$5_2) == n$5_2
      );
      assume (forall o_9: Ref ::
        { invRecv86(o_9) }
        g1[invRecv86(o_9)] && (NoPerm < FullPerm && qpRange86(o_9)) ==> invRecv86(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g1[invRecv86(o_9)] && (NoPerm < FullPerm && qpRange86(o_9)) ==> invRecv86(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g1[invRecv86(o_9)] && (NoPerm < FullPerm && qpRange86(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g1[n$6_2] && Heap[n$6_2, next] != null) {
        assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion (n$6.next in g1) might not hold. (delete_edge1.vpr@491.13--491.22) [9152]"}
          g1[Heap[n$6_2, next]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g1[Heap[n$6_3_1, next]] } { g1[n$6_3_1], Heap[n$6_3_1, next] }
      g1[n$6_3_1] && Heap[n$6_3_1, next] != null ==> g1[Heap[n$6_3_1, next]]
    );
    assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion acyclic_graph($$(g1)) might not hold. (delete_edge1.vpr@493.13--493.34) [9153]"}
      (acyclic_graph($$(Heap, g1)): bool);
    assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion acyclic_graph($$(g0)) might not hold. (delete_edge1.vpr@494.13--494.34) [9154]"}
      (acyclic_graph($$(Heap, g0)): bool);
    if (*) {
      if (g1[n$7_2]) {
        assert {:msg "  Postcondition of unjoin_dags might not hold. Assertion exists_path($$(g1), x1, n$7) might not hold. (delete_edge1.vpr@496.13--496.34) [9155]"}
          (exists_path($$(Heap, g1), x1, n$7_2): bool);
      }
      assume false;
    }
    assume (forall n$7_3_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), x1, n$7_3_1): bool) }
      g1[n$7_3_1] ==> (exists_path($$(Heap, g1), x1, n$7_3_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}