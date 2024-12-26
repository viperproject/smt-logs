// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:52:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/binary/create_edge1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/binary/create_edge1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_70: Ref, f_75: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_70, f_75] }
  Heap[o_70, $allocated] ==> Heap[Heap[o_70, f_75], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_71: Ref, f_76: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_71, f_76] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_71, f_76) ==> Heap[o_71, f_76] == ExhaleHeap[o_71, f_76]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_38), ExhaleHeap[null, PredicateMaskField(pm_f_38)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsPredicateField(pm_f_38) ==> Heap[null, PredicateMaskField(pm_f_38)] == ExhaleHeap[null, PredicateMaskField(pm_f_38)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_38) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsPredicateField(pm_f_38) ==> (forall <A, B> o2_38: Ref, f_76: (Field A B) ::
    { ExhaleHeap[o2_38, f_76] }
    Heap[null, PredicateMaskField(pm_f_38)][o2_38, f_76] ==> Heap[o2_38, f_76] == ExhaleHeap[o2_38, f_76]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_38), ExhaleHeap[null, WandMaskField(pm_f_38)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsWandField(pm_f_38) ==> Heap[null, WandMaskField(pm_f_38)] == ExhaleHeap[null, WandMaskField(pm_f_38)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_38: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_38) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_38) && IsWandField(pm_f_38) ==> (forall <A, B> o2_38: Ref, f_76: (Field A B) ::
    { ExhaleHeap[o2_38, f_76] }
    Heap[null, WandMaskField(pm_f_38)][o2_38, f_76] ==> Heap[o2_38, f_76] == ExhaleHeap[o2_38, f_76]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_71: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_71, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_71, $allocated] ==> ExhaleHeap[o_71, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_70: Ref, f_77: (Field A B), v: B ::
  { Heap[o_70, f_77:=v] }
  succHeap(Heap, Heap[o_70, f_77:=v])
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

function  neverTriggered1(n_5: Ref): bool;
function  neverTriggered2(n_7: Ref): bool;
function  neverTriggered3(n_9: Ref): bool;
function  neverTriggered4(n_11_1: Ref): bool;
function  neverTriggered5(n_13: Ref): bool;
function  neverTriggered6(n_15: Ref): bool;
function  neverTriggered7(n_16: Ref): bool;
function  neverTriggered8(n_17: Ref): bool;
function  neverTriggered9(n_18: Ref): bool;
function  neverTriggered10(n_19: Ref): bool;
function  neverTriggered11(n_20: Ref): bool;
function  neverTriggered12(n_21: Ref): bool;
function  neverTriggered13(n_22: Ref): bool;
function  neverTriggered14(n_23: Ref): bool;
function  neverTriggered15(n_24: Ref): bool;
function  neverTriggered16(n_25_1: Ref): bool;
function  neverTriggered17(n_26_1: Ref): bool;
function  neverTriggered18(n_27_1: Ref): bool;
function  neverTriggered19(n_28_1: Ref): bool;
function  neverTriggered20(n_29_1: Ref): bool;
function  neverTriggered21(n_30_1: Ref): bool;
function  neverTriggered22(n_31_1: Ref): bool;
function  neverTriggered23(n_1: Ref): bool;
function  neverTriggered24(n$0_1: Ref): bool;
function  neverTriggered25(n$3_1_2: Ref): bool;
function  neverTriggered26(n$4_1_2: Ref): bool;
function  neverTriggered27(n_2: Ref): bool;
function  neverTriggered28(n_3: Ref): bool;
function  neverTriggered29(n_4_1: Ref): bool;
function  neverTriggered30(n_5: Ref): bool;
function  neverTriggered31(n_6: Ref): bool;
function  neverTriggered32(n_7: Ref): bool;
function  neverTriggered33(n_8: Ref): bool;
function  neverTriggered34(n_9: Ref): bool;
function  neverTriggered35(n_10_1: Ref): bool;
function  neverTriggered36(n_11_1: Ref): bool;
function  neverTriggered37(n_12_1: Ref): bool;
function  neverTriggered38(n_13: Ref): bool;
function  neverTriggered39(n_14: Ref): bool;
function  neverTriggered40(n_15: Ref): bool;
function  neverTriggered41(n_16: Ref): bool;
function  neverTriggered42(n_17: Ref): bool;
function  neverTriggered43(n$3_2: Ref): bool;
function  neverTriggered44(n$4_2_1: Ref): bool;
function  neverTriggered45(n_1: Ref): bool;
function  neverTriggered46(n$0_1: Ref): bool;
function  neverTriggered47(n$3_1_2: Ref): bool;
function  neverTriggered48(n$4_1_2: Ref): bool;
function  neverTriggered49(n_2: Ref): bool;
function  neverTriggered50(n_3: Ref): bool;
function  neverTriggered51(n_4_1: Ref): bool;
function  neverTriggered52(n_5: Ref): bool;
function  neverTriggered53(n_6: Ref): bool;
function  neverTriggered54(n_7: Ref): bool;
function  neverTriggered55(n_8: Ref): bool;
function  neverTriggered56(n_9: Ref): bool;
function  neverTriggered57(n_10_1: Ref): bool;
function  neverTriggered58(n_11_1: Ref): bool;
function  neverTriggered59(n_12_1: Ref): bool;
function  neverTriggered60(n_13: Ref): bool;
function  neverTriggered61(n_14: Ref): bool;
function  neverTriggered62(n_15: Ref): bool;
function  neverTriggered63(n_16: Ref): bool;
function  neverTriggered64(n_17: Ref): bool;
function  neverTriggered65(n$3_2: Ref): bool;
function  neverTriggered66(n$4_2_1: Ref): bool;
function  neverTriggered67(n_1: Ref): bool;
function  neverTriggered68(n$0_1: Ref): bool;
function  neverTriggered69(n$3_1_2: Ref): bool;
function  neverTriggered70(n$4_1_2: Ref): bool;
function  neverTriggered71(n_2: Ref): bool;
function  neverTriggered72(n_3: Ref): bool;
function  neverTriggered73(n_4_1: Ref): bool;
function  neverTriggered74(n_5: Ref): bool;
function  neverTriggered75(n_6: Ref): bool;
function  neverTriggered76(n_7: Ref): bool;
function  neverTriggered77(n_8: Ref): bool;
function  neverTriggered78(n_9: Ref): bool;
function  neverTriggered79(n_10_1: Ref): bool;
function  neverTriggered80(n_11_1: Ref): bool;
function  neverTriggered81(n_12_1: Ref): bool;
function  neverTriggered82(n_13: Ref): bool;
function  neverTriggered83(n_14: Ref): bool;
function  neverTriggered84(n_15: Ref): bool;
function  neverTriggered85(n_16: Ref): bool;
function  neverTriggered86(n_17: Ref): bool;
function  neverTriggered87(n$3_2: Ref): bool;
function  neverTriggered88(n$4_2_1: Ref): bool;
function  neverTriggered89(n_1: Ref): bool;
function  neverTriggered90(n$0_1: Ref): bool;
function  neverTriggered91(n$3_1_2: Ref): bool;
function  neverTriggered92(n$4_1_2: Ref): bool;
function  neverTriggered93(n_2: Ref): bool;
function  neverTriggered94(n_3: Ref): bool;
function  neverTriggered95(n_4_1: Ref): bool;
function  neverTriggered96(n_5: Ref): bool;
function  neverTriggered97(n_6: Ref): bool;
function  neverTriggered98(n_7: Ref): bool;
function  neverTriggered99(n_8: Ref): bool;
function  neverTriggered100(n_9: Ref): bool;
function  neverTriggered101(n_10_1: Ref): bool;
function  neverTriggered102(n_11_1: Ref): bool;
function  neverTriggered103(n_12_1: Ref): bool;
function  neverTriggered104(n_13: Ref): bool;
function  neverTriggered105(n_14: Ref): bool;
function  neverTriggered106(n_15: Ref): bool;
function  neverTriggered107(n_16: Ref): bool;
function  neverTriggered108(n_17: Ref): bool;
function  neverTriggered109(n$3_2: Ref): bool;
function  neverTriggered110(n$4_2_1: Ref): bool;
function  neverTriggered111(n_1: Ref): bool;
function  neverTriggered112(n$0_1: Ref): bool;
function  neverTriggered113(n$3_1_2: Ref): bool;
function  neverTriggered114(n$4_1_2: Ref): bool;
function  neverTriggered115(n$0_2_1: Ref): bool;
function  neverTriggered116(n$0_3_2: Ref): bool;
function  neverTriggered117(n$0_4: Ref): bool;
function  neverTriggered118(n$0_5: Ref): bool;
function  neverTriggered119(n_6: Ref): bool;
function  neverTriggered120(n_7: Ref): bool;
function  neverTriggered121(n$9_1: Ref): bool;
function  neverTriggered122(n$10_1: Ref): bool;
function  neverTriggered123(n$0_6: Ref): bool;
function  neverTriggered124(n$0_7: Ref): bool;
function  neverTriggered125(n$9_2: Ref): bool;
function  neverTriggered126(n$10_2: Ref): bool;
function  neverTriggered127(n_12_1: Ref): bool;
function  neverTriggered128(n_13: Ref): bool;
function  neverTriggered129(n_14: Ref): bool;
function  neverTriggered130(n_15: Ref): bool;
function  neverTriggered131(n_16: Ref): bool;
function  neverTriggered132(n$0_10: Ref): bool;
function  neverTriggered133(n$3_2: Ref): bool;
function  neverTriggered134(n$4_2_1: Ref): bool;
function  neverTriggered135(n_17: Ref): bool;
function  neverTriggered136(n$0_11: Ref): bool;
function  neverTriggered137(n$3_3: Ref): bool;
function  neverTriggered138(n$4_3: Ref): bool;
function  neverTriggered139(n_1: Ref): bool;
function  neverTriggered140(n$0_1: Ref): bool;
function  neverTriggered141(n_2: Ref): bool;
function  neverTriggered142(n_3: Ref): bool;
function  neverTriggered143(n$3_1_2: Ref): bool;
function  neverTriggered144(n$4_1_2: Ref): bool;
function  neverTriggered145(n_4_1: Ref): bool;
function  neverTriggered146(n_5: Ref): bool;
function  neverTriggered147(n$0_2_1: Ref): bool;
function  neverTriggered148(n$0_3_2: Ref): bool;
function  neverTriggered149(n$0_4: Ref): bool;
function  neverTriggered150(n$0_5: Ref): bool;
function  neverTriggered151(n_10_1: Ref): bool;
function  neverTriggered152(n_11_1: Ref): bool;
function  neverTriggered153(n$9_1: Ref): bool;
function  neverTriggered154(n$10_1: Ref): bool;
function  neverTriggered155(n$0_6: Ref): bool;
function  neverTriggered156(n$0_7: Ref): bool;
function  neverTriggered157(n_14: Ref): bool;
function  neverTriggered158(n_15: Ref): bool;
function  neverTriggered159(n$9_2: Ref): bool;
function  neverTriggered160(n$10_2: Ref): bool;
function  neverTriggered161(n_18: Ref): bool;
function  neverTriggered162(n_19: Ref): bool;
function  neverTriggered163(n_20: Ref): bool;
function  neverTriggered164(n_21: Ref): bool;
function  neverTriggered165(n_22: Ref): bool;
function  neverTriggered166(n_23: Ref): bool;
function  neverTriggered167(n_24: Ref): bool;
function  neverTriggered168(n_25_1: Ref): bool;
function  neverTriggered169(n_26_1: Ref): bool;
function  neverTriggered170(n_27_1: Ref): bool;
function  neverTriggered171(n_28_1: Ref): bool;
function  neverTriggered172(n_29_1: Ref): bool;
function  neverTriggered173(n_30_1: Ref): bool;
function  neverTriggered174(n_31_1: Ref): bool;
function  neverTriggered175(n_32_1: Ref): bool;
function  neverTriggered176(n_33_1: Ref): bool;
function  neverTriggered177(n_34_1: Ref): bool;
function  neverTriggered178(n$0_12: Ref): bool;
function  neverTriggered179(n$3_2: Ref): bool;
function  neverTriggered180(n$4_2_1: Ref): bool;
function  neverTriggered181(n_35_1: Ref): bool;
function  neverTriggered182(n$0_13_2: Ref): bool;
function  neverTriggered183(n$3_3: Ref): bool;
function  neverTriggered184(n$4_3: Ref): bool;
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
function  invRecv93(recv: Ref): Ref;
function  invRecv94(recv: Ref): Ref;
function  invRecv95(recv: Ref): Ref;
function  invRecv96(recv: Ref): Ref;
function  invRecv97(recv: Ref): Ref;
function  invRecv98(recv: Ref): Ref;
function  invRecv99(recv: Ref): Ref;
function  invRecv100(recv: Ref): Ref;
function  invRecv101(recv: Ref): Ref;
function  invRecv102(recv: Ref): Ref;
function  invRecv103(recv: Ref): Ref;
function  invRecv104(recv: Ref): Ref;
function  invRecv105(recv: Ref): Ref;
function  invRecv106(recv: Ref): Ref;
function  invRecv107(recv: Ref): Ref;
function  invRecv108(recv: Ref): Ref;
function  invRecv109(recv: Ref): Ref;
function  invRecv110(recv: Ref): Ref;
function  invRecv111(recv: Ref): Ref;
function  invRecv112(recv: Ref): Ref;
function  invRecv113(recv: Ref): Ref;
function  invRecv114(recv: Ref): Ref;
function  invRecv115(recv: Ref): Ref;
function  invRecv116(recv: Ref): Ref;
function  invRecv117(recv: Ref): Ref;
function  invRecv118(recv: Ref): Ref;
function  invRecv119(recv: Ref): Ref;
function  invRecv120(recv: Ref): Ref;
function  invRecv121(recv: Ref): Ref;
function  invRecv122(recv: Ref): Ref;
function  invRecv123(recv: Ref): Ref;
function  invRecv124(recv: Ref): Ref;
function  invRecv125(recv: Ref): Ref;
function  invRecv126(recv: Ref): Ref;
function  invRecv127(recv: Ref): Ref;
function  invRecv128(recv: Ref): Ref;
function  invRecv129(recv: Ref): Ref;
function  invRecv130(recv: Ref): Ref;
function  invRecv131(recv: Ref): Ref;
function  invRecv132(recv: Ref): Ref;
function  invRecv133(recv: Ref): Ref;
function  invRecv134(recv: Ref): Ref;
function  invRecv135(recv: Ref): Ref;
function  invRecv136(recv: Ref): Ref;
function  invRecv137(recv: Ref): Ref;
function  invRecv138(recv: Ref): Ref;
function  invRecv139(recv: Ref): Ref;
function  invRecv140(recv: Ref): Ref;
function  invRecv141(recv: Ref): Ref;
function  invRecv142(recv: Ref): Ref;
function  invRecv143(recv: Ref): Ref;
function  invRecv144(recv: Ref): Ref;
function  invRecv145(recv: Ref): Ref;
function  invRecv146(recv: Ref): Ref;
function  invRecv147(recv: Ref): Ref;
function  invRecv148(recv: Ref): Ref;
function  invRecv149(recv: Ref): Ref;
function  invRecv150(recv: Ref): Ref;
function  invRecv151(recv: Ref): Ref;
function  invRecv152(recv: Ref): Ref;
function  invRecv153(recv: Ref): Ref;
function  invRecv154(recv: Ref): Ref;
function  invRecv155(recv: Ref): Ref;
function  invRecv156(recv: Ref): Ref;
function  invRecv157(recv: Ref): Ref;
function  invRecv158(recv: Ref): Ref;
function  invRecv159(recv: Ref): Ref;
function  invRecv160(recv: Ref): Ref;
function  invRecv161(recv: Ref): Ref;
function  invRecv162(recv: Ref): Ref;
function  invRecv163(recv: Ref): Ref;
function  invRecv164(recv: Ref): Ref;
function  invRecv165(recv: Ref): Ref;
function  invRecv166(recv: Ref): Ref;
function  invRecv167(recv: Ref): Ref;
function  invRecv168(recv: Ref): Ref;
function  invRecv169(recv: Ref): Ref;
function  invRecv170(recv: Ref): Ref;
function  invRecv171(recv: Ref): Ref;
function  invRecv172(recv: Ref): Ref;
function  invRecv173(recv: Ref): Ref;
function  invRecv174(recv: Ref): Ref;
function  invRecv175(recv: Ref): Ref;
function  invRecv176(recv: Ref): Ref;
function  invRecv177(recv: Ref): Ref;
function  invRecv178(recv: Ref): Ref;
function  invRecv179(recv: Ref): Ref;
function  invRecv180(recv: Ref): Ref;
function  invRecv181(recv: Ref): Ref;
function  invRecv182(recv: Ref): Ref;
function  invRecv183(recv: Ref): Ref;
function  invRecv184(recv: Ref): Ref;
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
function  qpRange93(recv: Ref): bool;
function  qpRange94(recv: Ref): bool;
function  qpRange95(recv: Ref): bool;
function  qpRange96(recv: Ref): bool;
function  qpRange97(recv: Ref): bool;
function  qpRange98(recv: Ref): bool;
function  qpRange99(recv: Ref): bool;
function  qpRange100(recv: Ref): bool;
function  qpRange101(recv: Ref): bool;
function  qpRange102(recv: Ref): bool;
function  qpRange103(recv: Ref): bool;
function  qpRange104(recv: Ref): bool;
function  qpRange105(recv: Ref): bool;
function  qpRange106(recv: Ref): bool;
function  qpRange107(recv: Ref): bool;
function  qpRange108(recv: Ref): bool;
function  qpRange109(recv: Ref): bool;
function  qpRange110(recv: Ref): bool;
function  qpRange111(recv: Ref): bool;
function  qpRange112(recv: Ref): bool;
function  qpRange113(recv: Ref): bool;
function  qpRange114(recv: Ref): bool;
function  qpRange115(recv: Ref): bool;
function  qpRange116(recv: Ref): bool;
function  qpRange117(recv: Ref): bool;
function  qpRange118(recv: Ref): bool;
function  qpRange119(recv: Ref): bool;
function  qpRange120(recv: Ref): bool;
function  qpRange121(recv: Ref): bool;
function  qpRange122(recv: Ref): bool;
function  qpRange123(recv: Ref): bool;
function  qpRange124(recv: Ref): bool;
function  qpRange125(recv: Ref): bool;
function  qpRange126(recv: Ref): bool;
function  qpRange127(recv: Ref): bool;
function  qpRange128(recv: Ref): bool;
function  qpRange129(recv: Ref): bool;
function  qpRange130(recv: Ref): bool;
function  qpRange131(recv: Ref): bool;
function  qpRange132(recv: Ref): bool;
function  qpRange133(recv: Ref): bool;
function  qpRange134(recv: Ref): bool;
function  qpRange135(recv: Ref): bool;
function  qpRange136(recv: Ref): bool;
function  qpRange137(recv: Ref): bool;
function  qpRange138(recv: Ref): bool;
function  qpRange139(recv: Ref): bool;
function  qpRange140(recv: Ref): bool;
function  qpRange141(recv: Ref): bool;
function  qpRange142(recv: Ref): bool;
function  qpRange143(recv: Ref): bool;
function  qpRange144(recv: Ref): bool;
function  qpRange145(recv: Ref): bool;
function  qpRange146(recv: Ref): bool;
function  qpRange147(recv: Ref): bool;
function  qpRange148(recv: Ref): bool;
function  qpRange149(recv: Ref): bool;
function  qpRange150(recv: Ref): bool;
function  qpRange151(recv: Ref): bool;
function  qpRange152(recv: Ref): bool;
function  qpRange153(recv: Ref): bool;
function  qpRange154(recv: Ref): bool;
function  qpRange155(recv: Ref): bool;
function  qpRange156(recv: Ref): bool;
function  qpRange157(recv: Ref): bool;
function  qpRange158(recv: Ref): bool;
function  qpRange159(recv: Ref): bool;
function  qpRange160(recv: Ref): bool;
function  qpRange161(recv: Ref): bool;
function  qpRange162(recv: Ref): bool;
function  qpRange163(recv: Ref): bool;
function  qpRange164(recv: Ref): bool;
function  qpRange165(recv: Ref): bool;
function  qpRange166(recv: Ref): bool;
function  qpRange167(recv: Ref): bool;
function  qpRange168(recv: Ref): bool;
function  qpRange169(recv: Ref): bool;
function  qpRange170(recv: Ref): bool;
function  qpRange171(recv: Ref): bool;
function  qpRange172(recv: Ref): bool;
function  qpRange173(recv: Ref): bool;
function  qpRange174(recv: Ref): bool;
function  qpRange175(recv: Ref): bool;
function  qpRange176(recv: Ref): bool;
function  qpRange177(recv: Ref): bool;
function  qpRange178(recv: Ref): bool;
function  qpRange179(recv: Ref): bool;
function  qpRange180(recv: Ref): bool;
function  qpRange181(recv: Ref): bool;
function  qpRange182(recv: Ref): bool;
function  qpRange183(recv: Ref): bool;
function  qpRange184(recv: Ref): bool;

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
function  create_edge(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain function create_edge_
function  create_edge_(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain axiom edge_injectivity
axiom (forall p_1: Ref, s_2: Ref ::
  { (create_edge(p_1, s_2): EdgeDomainType) }
  (edge_pred((create_edge(p_1, s_2): EdgeDomainType)): Ref) == p_1 && (edge_succ((create_edge(p_1, s_2): EdgeDomainType)): Ref) == s_2
);

// ==================================================
// Translation of domain TrClo
// ==================================================

// The type for domain TrClo
type TrCloDomainType;

// Translation of domain function exists_path
function  exists_path(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function exists_path_
function  exists_path_(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function exists_spath
function  exists_spath(EG: (Set EdgeDomainType), from_1: (Set Ref), to_1: Ref): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M_1: (Set Ref)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_8: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function edge
function  edge(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain function edge_
function  edge_(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain axiom ax_EdgeSynonim
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { (edge(EG_1, p_1, s_2): bool) }
  (edge(EG_1, p_1, s_2): bool) == (edge_(EG_1, p_1, s_2): bool)
);

// Translation of domain axiom ax_Edge
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { EG_1[(create_edge(p_1, s_2): EdgeDomainType)] } { (edge(EG_1, p_1, s_2): bool) }
  (edge_(EG_1, p_1, s_2): bool) == EG_1[(create_edge(p_1, s_2): EdgeDomainType)]
);

// Translation of domain axiom ax_NoExit
axiom (forall EG_1: (Set EdgeDomainType), U_1: (Set Ref), M: (Set Ref) ::
  { (apply_noExit(EG_1, U_1, M): bool) }
  (apply_noExit(EG_1, U_1, M): bool) ==> (forall u_3: Ref, v_2: Ref ::
    { (edge(EG_1, u_3, v_2): bool) } { M[u_3], M[v_2] }
    M[u_3] && (U_1[v_2] && !M[v_2]) ==> !(edge(EG_1, u_3, v_2): bool)
  ) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path(EG_1, u_1, v_1_1): bool) } { M[u_1], M[v_1_1] }
    M[u_1] && (U_1[v_1_1] && !M[v_1_1]) ==> !(exists_path(EG_1, u_1, v_1_1): bool)
  )
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) }
  (exists_path(EG_1, start, end): bool) == (exists_path_(EG_1, start, end): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) } { (edge(EG_1, start, end): bool) }
  (exists_path_(EG_1, start, end): bool) == (start == end || (exists w_2: Ref ::
    { (edge(EG_1, start, w_2): bool) } { (exists_path_(EG_1, w_2, end): bool) }
    (edge(EG_1, start, w_2): bool) && (exists_path_(EG_1, w_2, end): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_3: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_3, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_3, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_3, v_2): bool)
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
// Translation of domain __FieldEnum__
// ==================================================

// The type for domain __FieldEnum__
type __FieldEnum__DomainType;

// Translation of domain unique function __left__
const unique __left__: __FieldEnum__DomainType;

// Translation of domain unique function __right__
const unique __right__: __FieldEnum__DomainType;

// ==================================================
// Translation of all fields
// ==================================================

const unique l_8: Field NormalField Ref;
axiom !IsPredicateField(l_8);
axiom !IsWandField(l_8);
const unique r_6: Field NormalField Ref;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);
const unique marker: Field NormalField bool;
axiom !IsPredicateField(marker);
axiom !IsWandField(marker);

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
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.l } (n in refs) ==> acc(n.l, 1 / 2)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), l_8] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), l_8]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in refs) ==> acc(n.r, 1 / 2)) in function $$
// ==================================================

function  $$#condqp2(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), r_6] == Heap1Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), r_6]) ==> $$#condqp2(Heap2Heap, refs) == $$#condqp2(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_1: Ref, s_2: Ref ::
    { (create_edge(p_1, s_2): EdgeDomainType) }
    (refs[p_1] && (refs[s_2] && (Heap[p_1, l_8] == s_2 || Heap[p_1, r_6] == s_2))) == $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_1_1: Ref, s_1: Ref ::
    { refs[p_1_1], refs[s_1], (exists_path($$'(Heap, refs), p_1_1, s_1): bool) }
    refs[p_1_1] && (exists_path($$'(Heap, refs), p_1_1, s_1): bool) ==> refs[s_1]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_2_1: Ref, s_2_1: Ref ::
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
  var p_18: Ref;
  var s_7: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in refs) ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@167.14--167.62) [86568]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && refs[n_5]) && refs[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, l_8] } { QPMask[n_5, l_8] } { Heap[n_5, l_8] }
        refs[n_5] && NoPerm < 1 / 2 ==> qpRange1(n_5) && invRecv1(n_5) == n_5
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@167.14--167.62) [86569]"}
      (forall n_5: Ref ::
      { Heap[n_5, l_8] } { QPMask[n_5, l_8] } { Heap[n_5, l_8] }
      refs[n_5] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, l_8] } { QPMask[n_5, l_8] } { Heap[n_5, l_8] }
        refs[n_5] && 1 / 2 > NoPerm ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in refs) ==> acc(n.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@168.14--168.62) [86570]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && refs[n_7]) && refs[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
        refs[n_7] && NoPerm < 1 / 2 ==> qpRange2(n_7) && invRecv2(n_7) == n_7
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (refs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@168.14--168.62) [86571]"}
      (forall n_7: Ref ::
      { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
      refs[n_7] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
        refs[n_7] && 1 / 2 > NoPerm ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((refs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> invRecv2(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!((refs[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && (p.l == s || p.r == s))) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_18]) {
          if (refs[s_7]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (create_edge1.vpr@169.13--173.44) [86572]"}
              HasDirectPerm(Mask, p_18, l_8);
            if (!(Heap[p_18, l_8] == s_7)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.r (create_edge1.vpr@169.13--173.44) [86573]"}
                HasDirectPerm(Mask, p_18, r_6);
            }
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4_1: Ref ::
      { (create_edge(p_4_1, s_4_1): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4_1] && (Heap[p_4_1, l_8] == s_4_1 || Heap[p_4_1, r_6] == s_4_1))) == Result[(create_edge(p_4_1, s_4_1): EdgeDomainType)]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (p in refs) && exists_path(result, p, s) ==> (s in refs))
      if (*) {
        assume false;
      }
    assume (forall p_6_1: Ref, s_6_1: Ref ::
      { refs[p_6_1], refs[s_6_1], (exists_path(Result, p_6_1, s_6_1): bool) }
      refs[p_6_1] && (exists_path(Result, p_6_1, s_6_1): bool) ==> refs[s_6_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (s in refs) && exists_path(result, p, s) ==> (p in refs))
      if (*) {
        assume false;
      }
    assume (forall p_8: Ref, s_8_1: Ref ::
      { refs[p_8], refs[s_8_1], (exists_path(Result, p_8, s_8_1): bool) }
      refs[s_8_1] && (exists_path(Result, p_8, s_8_1): bool) ==> refs[p_8]
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
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp3(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), l_8] == Heap1Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), l_8]) ==> apply_TCFraming#condqp3(Heap2Heap, g0, g1) == apply_TCFraming#condqp3(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in g0) ==> acc(n.r, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp4(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp4(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), r_6] == Heap1Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), r_6]) ==> apply_TCFraming#condqp4(Heap2Heap, g0, g1) == apply_TCFraming#condqp4(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.l } (n in g1) ==> acc(n.l, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp5(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp5(fnAppH1_2: int, fnAppH2_2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), l_8] == Heap1Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), l_8]) ==> apply_TCFraming#condqp5(Heap2Heap, g0, g1) == apply_TCFraming#condqp5(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in g1) ==> acc(n.r, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp6(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp6(fnAppH1_3: int, fnAppH2_3: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1)), r_6] == Heap1Heap[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1)), r_6]) ==> apply_TCFraming#condqp6(Heap2Heap, g0, g1) == apply_TCFraming#condqp6(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_13: Ref ::
    { g0[n$0_13], g1[n$0_13] }
    g0[n$0_13] ==> !g1[n$0_13]
  ) && (forall n$1_12: Ref ::
    { g0[n$1_12], g1[n$1_12] }
    g1[n$1_12] ==> !g0[n$1_12]
  ) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_13: Ref ::
    { g0[n$0_13], g1[n$0_13] }
    g0[n$0_13] ==> !g1[n$0_13]
  ) && (forall n$1_12: Ref ::
    { g0[n$1_12], g1[n$1_12] }
    g1[n$1_12] ==> !g0[n$1_12]
  ) ==> (forall u_3: Ref, v_2: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_3, v_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_3, v_2): bool) }
    g0[u_3] && (g0[v_2] && (exists_path($$(Heap, g0), u_3, v_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_3, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_13: Ref ::
    { g0[n$0_13], g1[n$0_13] }
    g0[n$0_13] ==> !g1[n$0_13]
  ) && (forall n$1_12: Ref ::
    { g0[n$1_12], g1[n$1_12] }
    g1[n$1_12] ==> !g0[n$1_12]
  ) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_1, v_1_1): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), FrameFragment($$#condqp2(Heap, Set#Union(g1, g0)))), Set#Union(g1, g0)), u_1, v_1_1): bool) }
    g1[u_1] && (g1[v_1_1] && (exists_path($$(Heap, g1), u_1, v_1_1): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_1, v_1_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_13: Ref ::
    { g0[n$0_13], g1[n$0_13] }
    g0[n$0_13] ==> !g1[n$0_13]
  ) && (forall n$1_12: Ref ::
    { g0[n$1_12], g1[n$1_12] }
    g1[n$1_12] ==> !g0[n$1_12]
  ) ==> (forall u_2_1: Ref, v_2_1: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_2_1, v_2_1): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_2_1, v_2_1): bool) }
    g0[u_2_1] && (g0[v_2_1] && !(exists_path($$(Heap, g0), u_2_1, v_2_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_2_1, v_2_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_13: Ref ::
    { g0[n$0_13], g1[n$0_13] }
    g0[n$0_13] ==> !g1[n$0_13]
  ) && (forall n$1_12: Ref ::
    { g0[n$1_12], g1[n$1_12] }
    g1[n$1_12] ==> !g0[n$1_12]
  ) ==> (forall u_3_1: Ref, v_3_1: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_3_1, v_3_1): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
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
  var u_27: Ref;
  var v_27: Ref;
  var u_28: Ref;
  var v_28: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@202.14--202.56) [86574]"}
      (forall n_9: Ref, n_9_1: Ref ::
      
      (((n_9 != n_9_1 && g0[n_9]) && g0[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
    );
    
    // -- Define Inverse Function
      assume (forall n_9: Ref ::
        { Heap[n_9, l_8] } { QPMask[n_9, l_8] } { Heap[n_9, l_8] }
        g0[n_9] && NoPerm < FullPerm ==> qpRange3(n_9) && invRecv3(n_9) == n_9
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (g0[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_9: Ref ::
        { Heap[n_9, l_8] } { QPMask[n_9, l_8] } { Heap[n_9, l_8] }
        g0[n_9] ==> n_9 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g0[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4) ==> (NoPerm < FullPerm ==> invRecv3(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g0[invRecv3(o_4)] && NoPerm < FullPerm) && qpRange3(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in g0) ==> acc(n.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@203.14--203.56) [86575]"}
      (forall n_11_1: Ref, n_11_2: Ref ::
      
      (((n_11_1 != n_11_2 && g0[n_11_1]) && g0[n_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_1 != n_11_2
    );
    
    // -- Define Inverse Function
      assume (forall n_11_1: Ref ::
        { Heap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { Heap[n_11_1, r_6] }
        g0[n_11_1] && NoPerm < FullPerm ==> qpRange4(n_11_1) && invRecv4(n_11_1) == n_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (g0[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_11_1: Ref ::
        { Heap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { Heap[n_11_1, r_6] }
        g0[n_11_1] ==> n_11_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g0[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g0[invRecv4(o_4)] && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g1) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@204.14--204.56) [86576]"}
      (forall n_13: Ref, n_13_1: Ref ::
      
      (((n_13 != n_13_1 && g1[n_13]) && g1[n_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13 != n_13_1
    );
    
    // -- Define Inverse Function
      assume (forall n_13: Ref ::
        { Heap[n_13, l_8] } { QPMask[n_13, l_8] } { Heap[n_13, l_8] }
        g1[n_13] && NoPerm < FullPerm ==> qpRange5(n_13) && invRecv5(n_13) == n_13
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (g1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> invRecv5(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_13: Ref ::
        { Heap[n_13, l_8] } { QPMask[n_13, l_8] } { Heap[n_13, l_8] }
        g1[n_13] ==> n_13 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4) ==> (NoPerm < FullPerm ==> invRecv5(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g1[invRecv5(o_4)] && NoPerm < FullPerm) && qpRange5(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in g1) ==> acc(n.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@205.14--205.56) [86577]"}
      (forall n_15: Ref, n_15_1: Ref ::
      
      (((n_15 != n_15_1 && g1[n_15]) && g1[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
    );
    
    // -- Define Inverse Function
      assume (forall n_15: Ref ::
        { Heap[n_15, r_6] } { QPMask[n_15, r_6] } { Heap[n_15, r_6] }
        g1[n_15] && NoPerm < FullPerm ==> qpRange6(n_15) && invRecv6(n_15) == n_15
      );
      assume (forall o_4: Ref ::
        { invRecv6(o_4) }
        (g1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> invRecv6(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_15: Ref ::
        { Heap[n_15, r_6] } { QPMask[n_15, r_6] } { Heap[n_15, r_6] }
        g1[n_15] ==> n_15 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> invRecv6(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g1[invRecv6(o_4)] && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0 in g0), (n$0 in g1) } (n$0 in g0) ==> !((n$0 in g1)))
      if (*) {
        assume false;
      }
    assume (forall n$0_2_1: Ref ::
      { g0[n$0_2_1], g1[n$0_2_1] }
      g0[n$0_2_1] ==> !g1[n$0_2_1]
    );
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1 in g0), (n$1 in g1) } (n$1 in g1) ==> !((n$1 in g0)))
      if (*) {
        assume false;
      }
    assume (forall n$1_2: Ref ::
      { g0[n$1_2], g1[n$1_2] }
      g1[n$1_2] ==> !g0[n$1_2]
    );
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.134--214.140) [86578]"}
                  (forall n_16: Ref ::
                  { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
                  g0[n_16] && dummyFunction(Heap[n_16, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@214.134--214.140) [86579]"}
                  (forall n_16: Ref, n_16_1: Ref ::
                  { neverTriggered7(n_16), neverTriggered7(n_16_1) }
                  (((n_16 != n_16_1 && g0[n_16]) && g0[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@214.134--214.140) [86580]"}
                  (forall n_16: Ref ::
                  { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
                  g0[n_16] ==> 1 / 2 > NoPerm ==> Mask[n_16, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_16: Ref ::
                  { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
                  g0[n_16] && NoPerm < 1 / 2 ==> qpRange7(n_16) && invRecv7(n_16) == n_16
                );
                assume (forall o_4: Ref ::
                  { invRecv7(o_4) }
                  g0[invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.134--214.140) [86581]"}
                  (forall n_17: Ref ::
                  { Heap[n_17, r_6] } { QPMask[n_17, r_6] } { Heap[n_17, r_6] }
                  g0[n_17] && dummyFunction(Heap[n_17, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@214.134--214.140) [86582]"}
                  (forall n_17: Ref, n_17_1: Ref ::
                  { neverTriggered8(n_17), neverTriggered8(n_17_1) }
                  (((n_17 != n_17_1 && g0[n_17]) && g0[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@214.134--214.140) [86583]"}
                  (forall n_17: Ref ::
                  { Heap[n_17, r_6] } { QPMask[n_17, r_6] } { Heap[n_17, r_6] }
                  g0[n_17] ==> 1 / 2 > NoPerm ==> Mask[n_17, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_17: Ref ::
                  { Heap[n_17, r_6] } { QPMask[n_17, r_6] } { Heap[n_17, r_6] }
                  g0[n_17] && NoPerm < 1 / 2 ==> qpRange8(n_17) && invRecv8(n_17) == n_17
                );
                assume (forall o_4: Ref ::
                  { invRecv8(o_4) }
                  g0[invRecv8(o_4)] && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.162--214.177) [86584]"}
                (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] && dummyFunction(Heap[n_18, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@214.162--214.177) [86585]"}
                (forall n_18: Ref, n_18_1: Ref ::
                { neverTriggered9(n_18), neverTriggered9(n_18_1) }
                (((n_18 != n_18_1 && Set#Union(g0, g1)[n_18]) && Set#Union(g0, g1)[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@214.162--214.177) [86586]"}
                (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] ==> 1 / 2 > NoPerm ==> Mask[n_18, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] && NoPerm < 1 / 2 ==> qpRange9(n_18) && invRecv9(n_18) == n_18
              );
              assume (forall o_4: Ref ::
                { invRecv9(o_4) }
                Set#Union(g0, g1)[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.162--214.177) [86587]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] && dummyFunction(Heap[n_19, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@214.162--214.177) [86588]"}
                (forall n_19: Ref, n_19_1: Ref ::
                { neverTriggered10(n_19), neverTriggered10(n_19_1) }
                (((n_19 != n_19_1 && Set#Union(g0, g1)[n_19]) && Set#Union(g0, g1)[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@214.162--214.177) [86589]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] ==> 1 / 2 > NoPerm ==> Mask[n_19, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] && NoPerm < 1 / 2 ==> qpRange10(n_19) && invRecv10(n_19) == n_19
              );
              assume (forall o_4: Ref ::
                { invRecv10(o_4) }
                Set#Union(g0, g1)[invRecv10(o_4)] && (NoPerm < 1 / 2 && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
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
    assume (forall u_5: Ref, v_5_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_5, v_5_1): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_5, v_5_1): bool) }
      g0[u_5] && (g0[v_5_1] && (exists_path($$(Heap, g0), u_5, v_5_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_5, v_5_1): bool)
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.134--215.140) [86590]"}
                  (forall n_20: Ref ::
                  { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                  g1[n_20] && dummyFunction(Heap[n_20, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@215.134--215.140) [86591]"}
                  (forall n_20: Ref, n_20_1: Ref ::
                  { neverTriggered11(n_20), neverTriggered11(n_20_1) }
                  (((n_20 != n_20_1 && g1[n_20]) && g1[n_20_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@215.134--215.140) [86592]"}
                  (forall n_20: Ref ::
                  { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                  g1[n_20] ==> 1 / 2 > NoPerm ==> Mask[n_20, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_20: Ref ::
                  { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                  g1[n_20] && NoPerm < 1 / 2 ==> qpRange11(n_20) && invRecv11(n_20) == n_20
                );
                assume (forall o_4: Ref ::
                  { invRecv11(o_4) }
                  g1[invRecv11(o_4)] && (NoPerm < 1 / 2 && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.134--215.140) [86593]"}
                  (forall n_21: Ref ::
                  { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                  g1[n_21] && dummyFunction(Heap[n_21, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@215.134--215.140) [86594]"}
                  (forall n_21: Ref, n_21_1: Ref ::
                  { neverTriggered12(n_21), neverTriggered12(n_21_1) }
                  (((n_21 != n_21_1 && g1[n_21]) && g1[n_21_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@215.134--215.140) [86595]"}
                  (forall n_21: Ref ::
                  { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                  g1[n_21] ==> 1 / 2 > NoPerm ==> Mask[n_21, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_21: Ref ::
                  { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                  g1[n_21] && NoPerm < 1 / 2 ==> qpRange12(n_21) && invRecv12(n_21) == n_21
                );
                assume (forall o_4: Ref ::
                  { invRecv12(o_4) }
                  g1[invRecv12(o_4)] && (NoPerm < 1 / 2 && qpRange12(o_4)) ==> invRecv12(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.162--215.177) [86596]"}
                (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] && dummyFunction(Heap[n_22, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@215.162--215.177) [86597]"}
                (forall n_22: Ref, n_22_1: Ref ::
                { neverTriggered13(n_22), neverTriggered13(n_22_1) }
                (((n_22 != n_22_1 && Set#Union(g1, g0)[n_22]) && Set#Union(g1, g0)[n_22_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@215.162--215.177) [86598]"}
                (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] ==> 1 / 2 > NoPerm ==> Mask[n_22, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] && NoPerm < 1 / 2 ==> qpRange13(n_22) && invRecv13(n_22) == n_22
              );
              assume (forall o_4: Ref ::
                { invRecv13(o_4) }
                Set#Union(g1, g0)[invRecv13(o_4)] && (NoPerm < 1 / 2 && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.162--215.177) [86599]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] && dummyFunction(Heap[n_23, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@215.162--215.177) [86600]"}
                (forall n_23: Ref, n_23_1: Ref ::
                { neverTriggered14(n_23), neverTriggered14(n_23_1) }
                (((n_23 != n_23_1 && Set#Union(g1, g0)[n_23]) && Set#Union(g1, g0)[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@215.162--215.177) [86601]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] ==> 1 / 2 > NoPerm ==> Mask[n_23, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] && NoPerm < 1 / 2 ==> qpRange14(n_23) && invRecv14(n_23) == n_23
              );
              assume (forall o_4: Ref ::
                { invRecv14(o_4) }
                Set#Union(g1, g0)[invRecv14(o_4)] && (NoPerm < 1 / 2 && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
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
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_7, v_7): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), FrameFragment($$#condqp2(Heap, Set#Union(g1, g0)))), Set#Union(g1, g0)), u_7, v_7): bool) }
      g1[u_7] && (g1[v_7] && (exists_path($$(Heap, g1), u_7, v_7): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_7, v_7): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_27]) {
          if (g0[v_27]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.135--217.141) [86602]"}
                  (forall n_24: Ref ::
                  { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                  g0[n_24] && dummyFunction(Heap[n_24, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@217.135--217.141) [86603]"}
                  (forall n_24: Ref, n_24_1: Ref ::
                  { neverTriggered15(n_24), neverTriggered15(n_24_1) }
                  (((n_24 != n_24_1 && g0[n_24]) && g0[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@217.135--217.141) [86604]"}
                  (forall n_24: Ref ::
                  { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                  g0[n_24] ==> 1 / 2 > NoPerm ==> Mask[n_24, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_24: Ref ::
                  { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                  g0[n_24] && NoPerm < 1 / 2 ==> qpRange15(n_24) && invRecv15(n_24) == n_24
                );
                assume (forall o_4: Ref ::
                  { invRecv15(o_4) }
                  g0[invRecv15(o_4)] && (NoPerm < 1 / 2 && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.135--217.141) [86605]"}
                  (forall n_25_1: Ref ::
                  { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                  g0[n_25_1] && dummyFunction(Heap[n_25_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@217.135--217.141) [86606]"}
                  (forall n_25_1: Ref, n_25_2: Ref ::
                  { neverTriggered16(n_25_1), neverTriggered16(n_25_2) }
                  (((n_25_1 != n_25_2 && g0[n_25_1]) && g0[n_25_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_25_1 != n_25_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@217.135--217.141) [86607]"}
                  (forall n_25_1: Ref ::
                  { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                  g0[n_25_1] ==> 1 / 2 > NoPerm ==> Mask[n_25_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_25_1: Ref ::
                  { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                  g0[n_25_1] && NoPerm < 1 / 2 ==> qpRange16(n_25_1) && invRecv16(n_25_1) == n_25_1
                );
                assume (forall o_4: Ref ::
                  { invRecv16(o_4) }
                  g0[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
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
        if (g0[u_27] && (g0[v_27] && !(exists_path($$(Heap, g0), u_27, v_27): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.164--217.179) [86608]"}
                (forall n_26_1: Ref ::
                { Heap[n_26_1, l_8] } { QPMask[n_26_1, l_8] } { Heap[n_26_1, l_8] }
                Set#Union(g0, g1)[n_26_1] && dummyFunction(Heap[n_26_1, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@217.164--217.179) [86609]"}
                (forall n_26_1: Ref, n_26_2: Ref ::
                { neverTriggered17(n_26_1), neverTriggered17(n_26_2) }
                (((n_26_1 != n_26_2 && Set#Union(g0, g1)[n_26_1]) && Set#Union(g0, g1)[n_26_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_26_1 != n_26_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@217.164--217.179) [86610]"}
                (forall n_26_1: Ref ::
                { Heap[n_26_1, l_8] } { QPMask[n_26_1, l_8] } { Heap[n_26_1, l_8] }
                Set#Union(g0, g1)[n_26_1] ==> 1 / 2 > NoPerm ==> Mask[n_26_1, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_26_1: Ref ::
                { Heap[n_26_1, l_8] } { QPMask[n_26_1, l_8] } { Heap[n_26_1, l_8] }
                Set#Union(g0, g1)[n_26_1] && NoPerm < 1 / 2 ==> qpRange17(n_26_1) && invRecv17(n_26_1) == n_26_1
              );
              assume (forall o_4: Ref ::
                { invRecv17(o_4) }
                Set#Union(g0, g1)[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.164--217.179) [86611]"}
                (forall n_27_1: Ref ::
                { Heap[n_27_1, r_6] } { QPMask[n_27_1, r_6] } { Heap[n_27_1, r_6] }
                Set#Union(g0, g1)[n_27_1] && dummyFunction(Heap[n_27_1, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@217.164--217.179) [86612]"}
                (forall n_27_1: Ref, n_27_2: Ref ::
                { neverTriggered18(n_27_1), neverTriggered18(n_27_2) }
                (((n_27_1 != n_27_2 && Set#Union(g0, g1)[n_27_1]) && Set#Union(g0, g1)[n_27_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_27_1 != n_27_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@217.164--217.179) [86613]"}
                (forall n_27_1: Ref ::
                { Heap[n_27_1, r_6] } { QPMask[n_27_1, r_6] } { Heap[n_27_1, r_6] }
                Set#Union(g0, g1)[n_27_1] ==> 1 / 2 > NoPerm ==> Mask[n_27_1, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_27_1: Ref ::
                { Heap[n_27_1, r_6] } { QPMask[n_27_1, r_6] } { Heap[n_27_1, r_6] }
                Set#Union(g0, g1)[n_27_1] && NoPerm < 1 / 2 ==> qpRange18(n_27_1) && invRecv18(n_27_1) == n_27_1
              );
              assume (forall o_4: Ref ::
                { invRecv18(o_4) }
                Set#Union(g0, g1)[invRecv18(o_4)] && (NoPerm < 1 / 2 && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
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
    assume (forall u_9: Ref, v_9: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_9, v_9): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_9, v_9): bool) }
      g0[u_9] && (g0[v_9] && !(exists_path($$(Heap, g0), u_9, v_9): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_9, v_9): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_28]) {
          if (g1[v_28]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.135--218.141) [86614]"}
                  (forall n_28_1: Ref ::
                  { Heap[n_28_1, l_8] } { QPMask[n_28_1, l_8] } { Heap[n_28_1, l_8] }
                  g1[n_28_1] && dummyFunction(Heap[n_28_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@218.135--218.141) [86615]"}
                  (forall n_28_1: Ref, n_28_2: Ref ::
                  { neverTriggered19(n_28_1), neverTriggered19(n_28_2) }
                  (((n_28_1 != n_28_2 && g1[n_28_1]) && g1[n_28_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_28_1 != n_28_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@218.135--218.141) [86616]"}
                  (forall n_28_1: Ref ::
                  { Heap[n_28_1, l_8] } { QPMask[n_28_1, l_8] } { Heap[n_28_1, l_8] }
                  g1[n_28_1] ==> 1 / 2 > NoPerm ==> Mask[n_28_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_28_1: Ref ::
                  { Heap[n_28_1, l_8] } { QPMask[n_28_1, l_8] } { Heap[n_28_1, l_8] }
                  g1[n_28_1] && NoPerm < 1 / 2 ==> qpRange19(n_28_1) && invRecv19(n_28_1) == n_28_1
                );
                assume (forall o_4: Ref ::
                  { invRecv19(o_4) }
                  g1[invRecv19(o_4)] && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.135--218.141) [86617]"}
                  (forall n_29_1: Ref ::
                  { Heap[n_29_1, r_6] } { QPMask[n_29_1, r_6] } { Heap[n_29_1, r_6] }
                  g1[n_29_1] && dummyFunction(Heap[n_29_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@218.135--218.141) [86618]"}
                  (forall n_29_1: Ref, n_29_2: Ref ::
                  { neverTriggered20(n_29_1), neverTriggered20(n_29_2) }
                  (((n_29_1 != n_29_2 && g1[n_29_1]) && g1[n_29_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_29_1 != n_29_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@218.135--218.141) [86619]"}
                  (forall n_29_1: Ref ::
                  { Heap[n_29_1, r_6] } { QPMask[n_29_1, r_6] } { Heap[n_29_1, r_6] }
                  g1[n_29_1] ==> 1 / 2 > NoPerm ==> Mask[n_29_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_29_1: Ref ::
                  { Heap[n_29_1, r_6] } { QPMask[n_29_1, r_6] } { Heap[n_29_1, r_6] }
                  g1[n_29_1] && NoPerm < 1 / 2 ==> qpRange20(n_29_1) && invRecv20(n_29_1) == n_29_1
                );
                assume (forall o_4: Ref ::
                  { invRecv20(o_4) }
                  g1[invRecv20(o_4)] && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
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
        if (g1[u_28] && (g1[v_28] && !(exists_path($$(Heap, g1), u_28, v_28): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.164--218.179) [86620]"}
                (forall n_30_1: Ref ::
                { Heap[n_30_1, l_8] } { QPMask[n_30_1, l_8] } { Heap[n_30_1, l_8] }
                Set#Union(g1, g0)[n_30_1] && dummyFunction(Heap[n_30_1, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@218.164--218.179) [86621]"}
                (forall n_30_1: Ref, n_30_2: Ref ::
                { neverTriggered21(n_30_1), neverTriggered21(n_30_2) }
                (((n_30_1 != n_30_2 && Set#Union(g1, g0)[n_30_1]) && Set#Union(g1, g0)[n_30_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_30_1 != n_30_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@218.164--218.179) [86622]"}
                (forall n_30_1: Ref ::
                { Heap[n_30_1, l_8] } { QPMask[n_30_1, l_8] } { Heap[n_30_1, l_8] }
                Set#Union(g1, g0)[n_30_1] ==> 1 / 2 > NoPerm ==> Mask[n_30_1, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_30_1: Ref ::
                { Heap[n_30_1, l_8] } { QPMask[n_30_1, l_8] } { Heap[n_30_1, l_8] }
                Set#Union(g1, g0)[n_30_1] && NoPerm < 1 / 2 ==> qpRange21(n_30_1) && invRecv21(n_30_1) == n_30_1
              );
              assume (forall o_4: Ref ::
                { invRecv21(o_4) }
                Set#Union(g1, g0)[invRecv21(o_4)] && (NoPerm < 1 / 2 && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.164--218.179) [86623]"}
                (forall n_31_1: Ref ::
                { Heap[n_31_1, r_6] } { QPMask[n_31_1, r_6] } { Heap[n_31_1, r_6] }
                Set#Union(g1, g0)[n_31_1] && dummyFunction(Heap[n_31_1, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@218.164--218.179) [86624]"}
                (forall n_31_1: Ref, n_31_2: Ref ::
                { neverTriggered22(n_31_1), neverTriggered22(n_31_2) }
                (((n_31_1 != n_31_2 && Set#Union(g1, g0)[n_31_1]) && Set#Union(g1, g0)[n_31_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_31_1 != n_31_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@218.164--218.179) [86625]"}
                (forall n_31_1: Ref ::
                { Heap[n_31_1, r_6] } { QPMask[n_31_1, r_6] } { Heap[n_31_1, r_6] }
                Set#Union(g1, g0)[n_31_1] ==> 1 / 2 > NoPerm ==> Mask[n_31_1, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_31_1: Ref ::
                { Heap[n_31_1, r_6] } { QPMask[n_31_1, r_6] } { Heap[n_31_1, r_6] }
                Set#Union(g1, g0)[n_31_1] && NoPerm < 1 / 2 ==> qpRange22(n_31_1) && invRecv22(n_31_1) == n_31_1
              );
              assume (forall o_4: Ref ::
                { invRecv22(o_4) }
                Set#Union(g1, g0)[invRecv22(o_4)] && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
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
    assume (forall u_11: Ref, v_11: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_11, v_11): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_11, v_11): bool) }
      g1[u_11] && (g1[v_11] && !(exists_path($$(Heap, g1), u_11, v_11): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_11, v_11): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method link_left
// ==================================================

procedure link_left(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$1_18: Ref;
  var n$2_30: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5: Ref;
  var n$6_5: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_22: Ref;
  var v2_22: Ref;
  var n$5_2: Ref;
  var n$6_2: Ref;
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
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@244.14--244.45) [86626]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l_8:=Mask[x, l_8] + perm];
    assume state(Heap, Mask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@244.14--244.45) [86627]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_6:=Mask[x, r_6] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@244.14--244.45) [86628]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange23(n_1) && invRecv23(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        ((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4) ==> invRecv23(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@244.14--244.45) [86629]"}
      (forall n_1: Ref ::
      { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4) ==> (NoPerm < 1 / 2 ==> invRecv23(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@244.14--244.45) [86630]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange24(n$0_1) && invRecv24(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@244.14--244.45) [86631]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> invRecv24(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@244.14--244.45) [86632]"}
            HasDirectPerm(Mask, n$1_18, l_8);
        }
        if (g_1[n$1_18] && Heap[n$1_18, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@244.14--244.45) [86633]"}
            HasDirectPerm(Mask, n$1_18, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l_8]] } { g_1[n$1_1], Heap[n$1_1, l_8] }
      g_1[n$1_1] && Heap[n$1_1, l_8] != null ==> g_1[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_30]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@244.14--244.45) [86634]"}
            HasDirectPerm(Mask, n$2_30, r_6);
        }
        if (g_1[n$2_30] && Heap[n$2_30, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@244.14--244.45) [86635]"}
            HasDirectPerm(Mask, n$2_30, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[Heap[n$2_1_1, r_6]] } { g_1[n$2_1_1], Heap[n$2_1_1, r_6] }
      g_1[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g_1[Heap[n$2_1_1, r_6]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.l == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@245.14--245.25) [86636]"}
        HasDirectPerm(Mask, x, l_8);
    assume Heap[x, l_8] == null;
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
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [86637]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l_8:=PostMask[x, l_8] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [86638]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_6:=PostMask[x, r_6] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@246.13--246.44) [86639]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && (g_1[n$3_1_2] && n$3_1_2 != x)) && (g_1[n$3_1_3] && n$3_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && NoPerm < 1 / 2 ==> qpRange25(n$3_1_2) && invRecv25(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        ((g_1[invRecv25(o_4)] && invRecv25(o_4) != x) && NoPerm < 1 / 2) && qpRange25(o_4) ==> invRecv25(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [86640]"}
      (forall n$3_1_2: Ref ::
      { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
      g_1[n$3_1_2] && n$3_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && 1 / 2 > NoPerm ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv25(o_4)] && invRecv25(o_4) != x) && NoPerm < 1 / 2) && qpRange25(o_4) ==> (NoPerm < 1 / 2 ==> invRecv25(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv25(o_4)] && invRecv25(o_4) != x) && NoPerm < 1 / 2) && qpRange25(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@246.13--246.44) [86641]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && (g_1[n$4_1_2] && n$4_1_2 != x)) && (g_1[n$4_1_3] && n$4_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && NoPerm < 1 / 2 ==> qpRange26(n$4_1_2) && invRecv26(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        ((g_1[invRecv26(o_4)] && invRecv26(o_4) != x) && NoPerm < 1 / 2) && qpRange26(o_4) ==> invRecv26(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [86642]"}
      (forall n$4_1_2: Ref ::
      { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
      g_1[n$4_1_2] && n$4_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && 1 / 2 > NoPerm ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv26(o_4)] && invRecv26(o_4) != x) && NoPerm < 1 / 2) && qpRange26(o_4) ==> (NoPerm < 1 / 2 ==> invRecv26(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv26(o_4)] && invRecv26(o_4) != x) && NoPerm < 1 / 2) && qpRange26(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@246.13--246.44) [86643]"}
            HasDirectPerm(PostMask, n$5, l_8);
        }
        if (g_1[n$5] && PostHeap[n$5, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@246.13--246.44) [86644]"}
            HasDirectPerm(PostMask, n$5, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l_8]] } { g_1[n$5_1], PostHeap[n$5_1, l_8] }
      g_1[n$5_1] && PostHeap[n$5_1, l_8] != null ==> g_1[PostHeap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@246.13--246.44) [86645]"}
            HasDirectPerm(PostMask, n$6_5, r_6);
        }
        if (g_1[n$6_5] && PostHeap[n$6_5, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@246.13--246.44) [86646]"}
            HasDirectPerm(PostMask, n$6_5, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_6]] } { g_1[n$6_1], PostHeap[n$6_1, r_6] }
      g_1[n$6_1] && PostHeap[n$6_1, r_6] != null ==> g_1[PostHeap[n$6_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.l == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@247.13--247.21) [86647]"}
        HasDirectPerm(PostMask, x, l_8);
    assume PostHeap[x, l_8] == y;
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.27--248.32) [86648]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@248.27--248.32) [86649]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered27(n_2), neverTriggered27(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@248.27--248.32) [86650]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange27(n_2) && invRecv27(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv27(o_4) }
              g_1[invRecv27(o_4)] && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.27--248.32) [86651]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@248.27--248.32) [86652]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered28(n_3), neverTriggered28(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@248.27--248.32) [86653]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange28(n_3) && invRecv28(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv28(o_4) }
              g_1[invRecv28(o_4)] && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.40--248.45) [86654]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && dummyFunction(oldHeap[n_4_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@248.40--248.45) [86655]"}
              (forall n_4_1: Ref, n_4_2: Ref ::
              { neverTriggered29(n_4_1), neverTriggered29(n_4_2) }
              (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@248.40--248.45) [86656]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] ==> 1 / 2 > NoPerm ==> oldMask[n_4_1, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange29(n_4_1) && invRecv29(n_4_1) == n_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv29(o_4) }
              g_1[invRecv29(o_4)] && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> invRecv29(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.40--248.45) [86657]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@248.40--248.45) [86658]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered30(n_5), neverTriggered30(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@248.40--248.45) [86659]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange30(n_5) && invRecv30(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv30(o_4) }
              g_1[invRecv30(o_4)] && (NoPerm < 1 / 2 && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.18--251.23) [86660]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@251.18--251.23) [86661]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered31(n_6), neverTriggered31(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@251.18--251.23) [86662]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange31(n_6) && invRecv31(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv31(o_4) }
                g_1[invRecv31(o_4)] && (NoPerm < 1 / 2 && qpRange31(o_4)) ==> invRecv31(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.18--251.23) [86663]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@251.18--251.23) [86664]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered32(n_7), neverTriggered32(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@251.18--251.23) [86665]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange32(n_7) && invRecv32(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv32(o_4) }
                g_1[invRecv32(o_4)] && (NoPerm < 1 / 2 && qpRange32(o_4)) ==> invRecv32(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.45--251.50) [86666]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@251.45--251.50) [86667]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered33(n_8), neverTriggered33(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@251.45--251.50) [86668]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange33(n_8) && invRecv33(n_8) == n_8
              );
              assume (forall o_4: Ref ::
                { invRecv33(o_4) }
                g_1[invRecv33(o_4)] && (NoPerm < 1 / 2 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.45--251.50) [86669]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@251.45--251.50) [86670]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered34(n_9), neverTriggered34(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@251.45--251.50) [86671]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange34(n_9) && invRecv34(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv34(o_4) }
                g_1[invRecv34(o_4)] && (NoPerm < 1 / 2 && qpRange34(o_4)) ==> invRecv34(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(oldHeap, g_1)), FrameFragment($$#condqp2(oldHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == x && v2_1 == y))
      );
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (v1_22 != v2_22) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.25--256.30) [86672]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.25--256.30) [86673]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered35(n_10_1), neverTriggered35(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.25--256.30) [86674]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange35(n_10_1) && invRecv35(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv35(o_4) }
                  g_1[invRecv35(o_4)] && (NoPerm < 1 / 2 && qpRange35(o_4)) ==> invRecv35(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.25--256.30) [86675]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && dummyFunction(PostHeap[n_11_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.25--256.30) [86676]"}
                  (forall n_11_1: Ref, n_11_2: Ref ::
                  { neverTriggered36(n_11_1), neverTriggered36(n_11_2) }
                  (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.25--256.30) [86677]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] ==> 1 / 2 > NoPerm ==> PostMask[n_11_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange36(n_11_1) && invRecv36(n_11_1) == n_11_1
                );
                assume (forall o_4: Ref ::
                  { invRecv36(o_4) }
                  g_1[invRecv36(o_4)] && (NoPerm < 1 / 2 && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.59--256.64) [86678]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && dummyFunction(oldHeap[n_12_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.59--256.64) [86679]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered37(n_12_1), neverTriggered37(n_12_2) }
                  (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.59--256.64) [86680]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] ==> 1 / 2 > NoPerm ==> oldMask[n_12_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange37(n_12_1) && invRecv37(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv37(o_4) }
                  g_1[invRecv37(o_4)] && (NoPerm < 1 / 2 && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.59--256.64) [86681]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && dummyFunction(oldHeap[n_13, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.59--256.64) [86682]"}
                  (forall n_13: Ref, n_13_1: Ref ::
                  { neverTriggered38(n_13), neverTriggered38(n_13_1) }
                  (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.59--256.64) [86683]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] ==> 1 / 2 > NoPerm ==> oldMask[n_13, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && NoPerm < 1 / 2 ==> qpRange38(n_13) && invRecv38(n_13) == n_13
                );
                assume (forall o_4: Ref ::
                  { invRecv38(o_4) }
                  g_1[invRecv38(o_4)] && (NoPerm < 1 / 2 && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_22, v2_22): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.93--256.98) [86684]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && dummyFunction(oldHeap[n_14, l_8]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.93--256.98) [86685]"}
                    (forall n_14: Ref, n_14_1: Ref ::
                    { neverTriggered39(n_14), neverTriggered39(n_14_1) }
                    (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.93--256.98) [86686]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] ==> 1 / 2 > NoPerm ==> oldMask[n_14, l_8] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && NoPerm < 1 / 2 ==> qpRange39(n_14) && invRecv39(n_14) == n_14
                  );
                  assume (forall o_4: Ref ::
                    { invRecv39(o_4) }
                    g_1[invRecv39(o_4)] && (NoPerm < 1 / 2 && qpRange39(o_4)) ==> invRecv39(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.93--256.98) [86687]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_6]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.93--256.98) [86688]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered40(n_15), neverTriggered40(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.93--256.98) [86689]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_6] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange40(n_15) && invRecv40(n_15) == n_15
                  );
                  assume (forall o_4: Ref ::
                    { invRecv40(o_4) }
                    g_1[invRecv40(o_4)] && (NoPerm < 1 / 2 && qpRange40(o_4)) ==> invRecv40(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_22, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.125--256.130) [86690]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && dummyFunction(oldHeap[n_16, l_8]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.125--256.130) [86691]"}
                      (forall n_16: Ref, n_16_1: Ref ::
                      { neverTriggered41(n_16), neverTriggered41(n_16_1) }
                      (((n_16 != n_16_1 && g_1[n_16]) && g_1[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.125--256.130) [86692]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] ==> 1 / 2 > NoPerm ==> oldMask[n_16, l_8] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && NoPerm < 1 / 2 ==> qpRange41(n_16) && invRecv41(n_16) == n_16
                    );
                    assume (forall o_4: Ref ::
                      { invRecv41(o_4) }
                      g_1[invRecv41(o_4)] && (NoPerm < 1 / 2 && qpRange41(o_4)) ==> invRecv41(o_4) == o_4
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.125--256.130) [86693]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_6]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.125--256.130) [86694]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered42(n_17), neverTriggered42(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.125--256.130) [86695]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_6] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange42(n_17) && invRecv42(n_17) == n_17
                    );
                    assume (forall o_4: Ref ::
                      { invRecv42(o_4) }
                      g_1[invRecv42(o_4)] && (NoPerm < 1 / 2 && qpRange42(o_4)) ==> invRecv42(o_4) == o_4
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
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
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
    assert {:msg "  Postcondition of link_left might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@246.13--246.44) [86696]"}
      !g_1[null];
    assert {:msg "  Postcondition of link_left might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@246.13--246.44) [86697]"}
      g_1[x];
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [86698]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@246.13--246.44) [86699]"}
        perm <= Mask[x, l_8];
    }
    Mask := Mask[x, l_8:=Mask[x, l_8] - perm];
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [86700]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@246.13--246.44) [86701]"}
        perm <= Mask[x, r_6];
    }
    Mask := Mask[x, r_6:=Mask[x, r_6] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [86702]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l_8]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@246.13--246.44) [86703]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered43(n$3_2), neverTriggered43(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@246.13--246.44) [86704]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l_8] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange43(n$3_2) && invRecv43(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv43(o_4) }
        (g_1[invRecv43(o_4)] && invRecv43(o_4) != x) && (NoPerm < 1 / 2 && qpRange43(o_4)) ==> invRecv43(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g_1[invRecv43(o_4)] && invRecv43(o_4) != x) && (NoPerm < 1 / 2 && qpRange43(o_4)) ==> invRecv43(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((g_1[invRecv43(o_4)] && invRecv43(o_4) != x) && (NoPerm < 1 / 2 && qpRange43(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [86705]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && dummyFunction(Heap[n$4_2_1, r_6]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@246.13--246.44) [86706]"}
        (forall n$4_2_1: Ref, n$4_2_2: Ref ::
        { neverTriggered44(n$4_2_1), neverTriggered44(n$4_2_2) }
        (((n$4_2_1 != n$4_2_2 && (g_1[n$4_2_1] && n$4_2_1 != x)) && (g_1[n$4_2_2] && n$4_2_2 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@246.13--246.44) [86707]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        g_1[n$4_2_1] && n$4_2_1 != x ==> Mask[n$4_2_1, r_6] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && NoPerm < 1 / 2 ==> qpRange44(n$4_2_1) && invRecv44(n$4_2_1) == n$4_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv44(o_4) }
        (g_1[invRecv44(o_4)] && invRecv44(o_4) != x) && (NoPerm < 1 / 2 && qpRange44(o_4)) ==> invRecv44(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g_1[invRecv44(o_4)] && invRecv44(o_4) != x) && (NoPerm < 1 / 2 && qpRange44(o_4)) ==> invRecv44(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((g_1[invRecv44(o_4)] && invRecv44(o_4) != x) && (NoPerm < 1 / 2 && qpRange44(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l_8] != null) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@246.13--246.44) [86708]"}
          g_1[Heap[n$5_2, l_8]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l_8]] } { g_1[n$5_3_1], Heap[n$5_3_1, l_8] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l_8] != null ==> g_1[Heap[n$5_3_1, l_8]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_6] != null) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@246.13--246.44) [86709]"}
          g_1[Heap[n$6_2, r_6]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_6]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_6] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_6] != null ==> g_1[Heap[n$6_3_1, r_6]]
    );
    assert {:msg "  Postcondition of link_left might not hold. Assertion x.l == y might not hold. (create_edge1.vpr@247.13--247.21) [86710]"}
      Heap[x, l_8] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link_left might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@248.13--248.46) [86711]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (create_edge1.vpr@249.13--251.78) [86712]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) || (v1_4 == x && v2_4 == y));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(oldHeap, g_1)), FrameFragment($$#condqp2(oldHeap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) || (v1_5_1 == x && v2_5_1 == y))
      );
    }
    if (y != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of link_left might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (create_edge1.vpr@252.13--257.10) [86713]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method link_right
// ==================================================

procedure link_right(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$1_19: Ref;
  var n$2_31: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_3: Ref;
  var n$6_6: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_23: Ref;
  var v2_23: Ref;
  var n$5_2: Ref;
  var n$6_2: Ref;
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
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@262.14--262.46) [86714]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l_8:=Mask[x, l_8] + perm];
    assume state(Heap, Mask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@262.14--262.46) [86715]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_6:=Mask[x, r_6] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@262.14--262.46) [86716]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange45(n_1) && invRecv45(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv45(o_4) }
        ((g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && NoPerm < 1 / 2) && qpRange45(o_4) ==> invRecv45(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@262.14--262.46) [86717]"}
      (forall n_1: Ref ::
      { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && NoPerm < 1 / 2) && qpRange45(o_4) ==> (NoPerm < 1 / 2 ==> invRecv45(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv45(o_4)] && invRecv45(o_4) != x) && NoPerm < 1 / 2) && qpRange45(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@262.14--262.46) [86718]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange46(n$0_1) && invRecv46(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv46(o_4) }
        ((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4) ==> invRecv46(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@262.14--262.46) [86719]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4) ==> (NoPerm < 1 / 2 ==> invRecv46(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv46(o_4)] && invRecv46(o_4) != x) && NoPerm < 1 / 2) && qpRange46(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@262.14--262.46) [86720]"}
            HasDirectPerm(Mask, n$1_19, l_8);
        }
        if (g_1[n$1_19] && Heap[n$1_19, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@262.14--262.46) [86721]"}
            HasDirectPerm(Mask, n$1_19, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l_8]] } { g_1[n$1_1], Heap[n$1_1, l_8] }
      g_1[n$1_1] && Heap[n$1_1, l_8] != null ==> g_1[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_31]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@262.14--262.46) [86722]"}
            HasDirectPerm(Mask, n$2_31, r_6);
        }
        if (g_1[n$2_31] && Heap[n$2_31, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@262.14--262.46) [86723]"}
            HasDirectPerm(Mask, n$2_31, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[Heap[n$2_1_1, r_6]] } { g_1[n$2_1_1], Heap[n$2_1_1, r_6] }
      g_1[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g_1[Heap[n$2_1_1, r_6]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@263.14--263.25) [86724]"}
        HasDirectPerm(Mask, x, r_6);
    assume Heap[x, r_6] == null;
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
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [86725]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l_8:=PostMask[x, l_8] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [86726]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_6:=PostMask[x, r_6] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@264.13--264.45) [86727]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && (g_1[n$3_1_2] && n$3_1_2 != x)) && (g_1[n$3_1_3] && n$3_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && NoPerm < 1 / 2 ==> qpRange47(n$3_1_2) && invRecv47(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv47(o_4) }
        ((g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && NoPerm < 1 / 2) && qpRange47(o_4) ==> invRecv47(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [86728]"}
      (forall n$3_1_2: Ref ::
      { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
      g_1[n$3_1_2] && n$3_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && 1 / 2 > NoPerm ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && NoPerm < 1 / 2) && qpRange47(o_4) ==> (NoPerm < 1 / 2 ==> invRecv47(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv47(o_4)] && invRecv47(o_4) != x) && NoPerm < 1 / 2) && qpRange47(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@264.13--264.45) [86729]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && (g_1[n$4_1_2] && n$4_1_2 != x)) && (g_1[n$4_1_3] && n$4_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && NoPerm < 1 / 2 ==> qpRange48(n$4_1_2) && invRecv48(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv48(o_4) }
        ((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4) ==> invRecv48(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [86730]"}
      (forall n$4_1_2: Ref ::
      { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
      g_1[n$4_1_2] && n$4_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && 1 / 2 > NoPerm ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4) ==> (NoPerm < 1 / 2 ==> invRecv48(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv48(o_4)] && invRecv48(o_4) != x) && NoPerm < 1 / 2) && qpRange48(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@264.13--264.45) [86731]"}
            HasDirectPerm(PostMask, n$5_3, l_8);
        }
        if (g_1[n$5_3] && PostHeap[n$5_3, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@264.13--264.45) [86732]"}
            HasDirectPerm(PostMask, n$5_3, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l_8]] } { g_1[n$5_1], PostHeap[n$5_1, l_8] }
      g_1[n$5_1] && PostHeap[n$5_1, l_8] != null ==> g_1[PostHeap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@264.13--264.45) [86733]"}
            HasDirectPerm(PostMask, n$6_6, r_6);
        }
        if (g_1[n$6_6] && PostHeap[n$6_6, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@264.13--264.45) [86734]"}
            HasDirectPerm(PostMask, n$6_6, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_6]] } { g_1[n$6_1], PostHeap[n$6_1, r_6] }
      g_1[n$6_1] && PostHeap[n$6_1, r_6] != null ==> g_1[PostHeap[n$6_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.r == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@265.13--265.21) [86735]"}
        HasDirectPerm(PostMask, x, r_6);
    assume PostHeap[x, r_6] == y;
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.27--266.32) [86736]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@266.27--266.32) [86737]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered49(n_2), neverTriggered49(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@266.27--266.32) [86738]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange49(n_2) && invRecv49(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv49(o_4) }
              g_1[invRecv49(o_4)] && (NoPerm < 1 / 2 && qpRange49(o_4)) ==> invRecv49(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.27--266.32) [86739]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@266.27--266.32) [86740]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered50(n_3), neverTriggered50(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@266.27--266.32) [86741]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange50(n_3) && invRecv50(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv50(o_4) }
              g_1[invRecv50(o_4)] && (NoPerm < 1 / 2 && qpRange50(o_4)) ==> invRecv50(o_4) == o_4
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.40--266.45) [86742]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && dummyFunction(oldHeap[n_4_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@266.40--266.45) [86743]"}
              (forall n_4_1: Ref, n_4_2: Ref ::
              { neverTriggered51(n_4_1), neverTriggered51(n_4_2) }
              (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@266.40--266.45) [86744]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] ==> 1 / 2 > NoPerm ==> oldMask[n_4_1, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange51(n_4_1) && invRecv51(n_4_1) == n_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv51(o_4) }
              g_1[invRecv51(o_4)] && (NoPerm < 1 / 2 && qpRange51(o_4)) ==> invRecv51(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.40--266.45) [86745]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@266.40--266.45) [86746]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered52(n_5), neverTriggered52(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@266.40--266.45) [86747]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange52(n_5) && invRecv52(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv52(o_4) }
              g_1[invRecv52(o_4)] && (NoPerm < 1 / 2 && qpRange52(o_4)) ==> invRecv52(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.18--269.23) [86748]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@269.18--269.23) [86749]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered53(n_6), neverTriggered53(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@269.18--269.23) [86750]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange53(n_6) && invRecv53(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv53(o_4) }
                g_1[invRecv53(o_4)] && (NoPerm < 1 / 2 && qpRange53(o_4)) ==> invRecv53(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.18--269.23) [86751]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@269.18--269.23) [86752]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered54(n_7), neverTriggered54(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@269.18--269.23) [86753]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange54(n_7) && invRecv54(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv54(o_4) }
                g_1[invRecv54(o_4)] && (NoPerm < 1 / 2 && qpRange54(o_4)) ==> invRecv54(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.45--269.50) [86754]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@269.45--269.50) [86755]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered55(n_8), neverTriggered55(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@269.45--269.50) [86756]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange55(n_8) && invRecv55(n_8) == n_8
              );
              assume (forall o_4: Ref ::
                { invRecv55(o_4) }
                g_1[invRecv55(o_4)] && (NoPerm < 1 / 2 && qpRange55(o_4)) ==> invRecv55(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.45--269.50) [86757]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@269.45--269.50) [86758]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered56(n_9), neverTriggered56(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@269.45--269.50) [86759]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange56(n_9) && invRecv56(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv56(o_4) }
                g_1[invRecv56(o_4)] && (NoPerm < 1 / 2 && qpRange56(o_4)) ==> invRecv56(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(oldHeap, g_1)), FrameFragment($$#condqp2(oldHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == x && v2_1 == y))
      );
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (v1_23 != v2_23) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.25--274.30) [86760]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.25--274.30) [86761]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered57(n_10_1), neverTriggered57(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.25--274.30) [86762]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange57(n_10_1) && invRecv57(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv57(o_4) }
                  g_1[invRecv57(o_4)] && (NoPerm < 1 / 2 && qpRange57(o_4)) ==> invRecv57(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.25--274.30) [86763]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && dummyFunction(PostHeap[n_11_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.25--274.30) [86764]"}
                  (forall n_11_1: Ref, n_11_2: Ref ::
                  { neverTriggered58(n_11_1), neverTriggered58(n_11_2) }
                  (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.25--274.30) [86765]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] ==> 1 / 2 > NoPerm ==> PostMask[n_11_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange58(n_11_1) && invRecv58(n_11_1) == n_11_1
                );
                assume (forall o_4: Ref ::
                  { invRecv58(o_4) }
                  g_1[invRecv58(o_4)] && (NoPerm < 1 / 2 && qpRange58(o_4)) ==> invRecv58(o_4) == o_4
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.59--274.64) [86766]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && dummyFunction(oldHeap[n_12_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.59--274.64) [86767]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered59(n_12_1), neverTriggered59(n_12_2) }
                  (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.59--274.64) [86768]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] ==> 1 / 2 > NoPerm ==> oldMask[n_12_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange59(n_12_1) && invRecv59(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv59(o_4) }
                  g_1[invRecv59(o_4)] && (NoPerm < 1 / 2 && qpRange59(o_4)) ==> invRecv59(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.59--274.64) [86769]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && dummyFunction(oldHeap[n_13, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.59--274.64) [86770]"}
                  (forall n_13: Ref, n_13_1: Ref ::
                  { neverTriggered60(n_13), neverTriggered60(n_13_1) }
                  (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.59--274.64) [86771]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] ==> 1 / 2 > NoPerm ==> oldMask[n_13, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && NoPerm < 1 / 2 ==> qpRange60(n_13) && invRecv60(n_13) == n_13
                );
                assume (forall o_4: Ref ::
                  { invRecv60(o_4) }
                  g_1[invRecv60(o_4)] && (NoPerm < 1 / 2 && qpRange60(o_4)) ==> invRecv60(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_23, v2_23): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.93--274.98) [86772]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && dummyFunction(oldHeap[n_14, l_8]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.93--274.98) [86773]"}
                    (forall n_14: Ref, n_14_1: Ref ::
                    { neverTriggered61(n_14), neverTriggered61(n_14_1) }
                    (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.93--274.98) [86774]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] ==> 1 / 2 > NoPerm ==> oldMask[n_14, l_8] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && NoPerm < 1 / 2 ==> qpRange61(n_14) && invRecv61(n_14) == n_14
                  );
                  assume (forall o_4: Ref ::
                    { invRecv61(o_4) }
                    g_1[invRecv61(o_4)] && (NoPerm < 1 / 2 && qpRange61(o_4)) ==> invRecv61(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.93--274.98) [86775]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_6]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.93--274.98) [86776]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered62(n_15), neverTriggered62(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.93--274.98) [86777]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_6] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange62(n_15) && invRecv62(n_15) == n_15
                  );
                  assume (forall o_4: Ref ::
                    { invRecv62(o_4) }
                    g_1[invRecv62(o_4)] && (NoPerm < 1 / 2 && qpRange62(o_4)) ==> invRecv62(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_23, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.125--274.130) [86778]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && dummyFunction(oldHeap[n_16, l_8]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.125--274.130) [86779]"}
                      (forall n_16: Ref, n_16_1: Ref ::
                      { neverTriggered63(n_16), neverTriggered63(n_16_1) }
                      (((n_16 != n_16_1 && g_1[n_16]) && g_1[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.125--274.130) [86780]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] ==> 1 / 2 > NoPerm ==> oldMask[n_16, l_8] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && NoPerm < 1 / 2 ==> qpRange63(n_16) && invRecv63(n_16) == n_16
                    );
                    assume (forall o_4: Ref ::
                      { invRecv63(o_4) }
                      g_1[invRecv63(o_4)] && (NoPerm < 1 / 2 && qpRange63(o_4)) ==> invRecv63(o_4) == o_4
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.125--274.130) [86781]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_6]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.125--274.130) [86782]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered64(n_17), neverTriggered64(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.125--274.130) [86783]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_6] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange64(n_17) && invRecv64(n_17) == n_17
                    );
                    assume (forall o_4: Ref ::
                      { invRecv64(o_4) }
                      g_1[invRecv64(o_4)] && (NoPerm < 1 / 2 && qpRange64(o_4)) ==> invRecv64(o_4) == o_4
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
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
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
    assert {:msg "  Postcondition of link_right might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@264.13--264.45) [86784]"}
      !g_1[null];
    assert {:msg "  Postcondition of link_right might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@264.13--264.45) [86785]"}
      g_1[x];
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [86786]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@264.13--264.45) [86787]"}
        perm <= Mask[x, l_8];
    }
    Mask := Mask[x, l_8:=Mask[x, l_8] - perm];
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [86788]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@264.13--264.45) [86789]"}
        perm <= Mask[x, r_6];
    }
    Mask := Mask[x, r_6:=Mask[x, r_6] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [86790]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l_8]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@264.13--264.45) [86791]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered65(n$3_2), neverTriggered65(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@264.13--264.45) [86792]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l_8] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange65(n$3_2) && invRecv65(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv65(o_4) }
        (g_1[invRecv65(o_4)] && invRecv65(o_4) != x) && (NoPerm < 1 / 2 && qpRange65(o_4)) ==> invRecv65(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g_1[invRecv65(o_4)] && invRecv65(o_4) != x) && (NoPerm < 1 / 2 && qpRange65(o_4)) ==> invRecv65(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((g_1[invRecv65(o_4)] && invRecv65(o_4) != x) && (NoPerm < 1 / 2 && qpRange65(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [86793]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && dummyFunction(Heap[n$4_2_1, r_6]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@264.13--264.45) [86794]"}
        (forall n$4_2_1: Ref, n$4_2_2: Ref ::
        { neverTriggered66(n$4_2_1), neverTriggered66(n$4_2_2) }
        (((n$4_2_1 != n$4_2_2 && (g_1[n$4_2_1] && n$4_2_1 != x)) && (g_1[n$4_2_2] && n$4_2_2 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@264.13--264.45) [86795]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        g_1[n$4_2_1] && n$4_2_1 != x ==> Mask[n$4_2_1, r_6] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && NoPerm < 1 / 2 ==> qpRange66(n$4_2_1) && invRecv66(n$4_2_1) == n$4_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv66(o_4) }
        (g_1[invRecv66(o_4)] && invRecv66(o_4) != x) && (NoPerm < 1 / 2 && qpRange66(o_4)) ==> invRecv66(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g_1[invRecv66(o_4)] && invRecv66(o_4) != x) && (NoPerm < 1 / 2 && qpRange66(o_4)) ==> invRecv66(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((g_1[invRecv66(o_4)] && invRecv66(o_4) != x) && (NoPerm < 1 / 2 && qpRange66(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l_8] != null) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@264.13--264.45) [86796]"}
          g_1[Heap[n$5_2, l_8]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l_8]] } { g_1[n$5_3_1], Heap[n$5_3_1, l_8] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l_8] != null ==> g_1[Heap[n$5_3_1, l_8]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_6] != null) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@264.13--264.45) [86797]"}
          g_1[Heap[n$6_2, r_6]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_6]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_6] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_6] != null ==> g_1[Heap[n$6_3_1, r_6]]
    );
    assert {:msg "  Postcondition of link_right might not hold. Assertion x.r == y might not hold. (create_edge1.vpr@265.13--265.21) [86798]"}
      Heap[x, r_6] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link_right might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@266.13--266.46) [86799]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (create_edge1.vpr@267.13--269.78) [86800]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) || (v1_4 == x && v2_4 == y));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(oldHeap, g_1)), FrameFragment($$#condqp2(oldHeap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) || (v1_5_1 == x && v2_5_1 == y))
      );
    }
    if (y != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of link_right might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (create_edge1.vpr@270.13--275.10) [86801]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink_left
// ==================================================

procedure unlink_left(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$1_20: Ref;
  var n$2_28: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_4: Ref;
  var n$6_7: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_24: Ref;
  var v2_24: Ref;
  var v1_21: Ref;
  var v2_21: Ref;
  var n$5_2: Ref;
  var n$6_2: Ref;
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
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@279.14--279.45) [86802]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l_8:=Mask[x, l_8] + perm];
    assume state(Heap, Mask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@279.14--279.45) [86803]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_6:=Mask[x, r_6] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@279.14--279.45) [86804]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange67(n_1) && invRecv67(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv67(o_4) }
        ((g_1[invRecv67(o_4)] && invRecv67(o_4) != x) && NoPerm < 1 / 2) && qpRange67(o_4) ==> invRecv67(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@279.14--279.45) [86805]"}
      (forall n_1: Ref ::
      { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv67(o_4)] && invRecv67(o_4) != x) && NoPerm < 1 / 2) && qpRange67(o_4) ==> (NoPerm < 1 / 2 ==> invRecv67(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv67(o_4)] && invRecv67(o_4) != x) && NoPerm < 1 / 2) && qpRange67(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@279.14--279.45) [86806]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange68(n$0_1) && invRecv68(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv68(o_4) }
        ((g_1[invRecv68(o_4)] && invRecv68(o_4) != x) && NoPerm < 1 / 2) && qpRange68(o_4) ==> invRecv68(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@279.14--279.45) [86807]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv68(o_4)] && invRecv68(o_4) != x) && NoPerm < 1 / 2) && qpRange68(o_4) ==> (NoPerm < 1 / 2 ==> invRecv68(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv68(o_4)] && invRecv68(o_4) != x) && NoPerm < 1 / 2) && qpRange68(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_20]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@279.14--279.45) [86808]"}
            HasDirectPerm(Mask, n$1_20, l_8);
        }
        if (g_1[n$1_20] && Heap[n$1_20, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@279.14--279.45) [86809]"}
            HasDirectPerm(Mask, n$1_20, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l_8]] } { g_1[n$1_1], Heap[n$1_1, l_8] }
      g_1[n$1_1] && Heap[n$1_1, l_8] != null ==> g_1[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_28]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@279.14--279.45) [86810]"}
            HasDirectPerm(Mask, n$2_28, r_6);
        }
        if (g_1[n$2_28] && Heap[n$2_28, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@279.14--279.45) [86811]"}
            HasDirectPerm(Mask, n$2_28, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[Heap[n$2_1_1, r_6]] } { g_1[n$2_1_1], Heap[n$2_1_1, r_6] }
      g_1[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g_1[Heap[n$2_1_1, r_6]]
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
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [86812]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l_8:=PostMask[x, l_8] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [86813]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_6:=PostMask[x, r_6] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@280.13--280.44) [86814]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && (g_1[n$3_1_2] && n$3_1_2 != x)) && (g_1[n$3_1_3] && n$3_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && NoPerm < 1 / 2 ==> qpRange69(n$3_1_2) && invRecv69(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv69(o_4) }
        ((g_1[invRecv69(o_4)] && invRecv69(o_4) != x) && NoPerm < 1 / 2) && qpRange69(o_4) ==> invRecv69(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [86815]"}
      (forall n$3_1_2: Ref ::
      { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
      g_1[n$3_1_2] && n$3_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && 1 / 2 > NoPerm ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv69(o_4)] && invRecv69(o_4) != x) && NoPerm < 1 / 2) && qpRange69(o_4) ==> (NoPerm < 1 / 2 ==> invRecv69(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv69(o_4)] && invRecv69(o_4) != x) && NoPerm < 1 / 2) && qpRange69(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@280.13--280.44) [86816]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && (g_1[n$4_1_2] && n$4_1_2 != x)) && (g_1[n$4_1_3] && n$4_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && NoPerm < 1 / 2 ==> qpRange70(n$4_1_2) && invRecv70(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv70(o_4) }
        ((g_1[invRecv70(o_4)] && invRecv70(o_4) != x) && NoPerm < 1 / 2) && qpRange70(o_4) ==> invRecv70(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [86817]"}
      (forall n$4_1_2: Ref ::
      { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
      g_1[n$4_1_2] && n$4_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && 1 / 2 > NoPerm ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv70(o_4)] && invRecv70(o_4) != x) && NoPerm < 1 / 2) && qpRange70(o_4) ==> (NoPerm < 1 / 2 ==> invRecv70(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv70(o_4)] && invRecv70(o_4) != x) && NoPerm < 1 / 2) && qpRange70(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@280.13--280.44) [86818]"}
            HasDirectPerm(PostMask, n$5_4, l_8);
        }
        if (g_1[n$5_4] && PostHeap[n$5_4, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@280.13--280.44) [86819]"}
            HasDirectPerm(PostMask, n$5_4, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l_8]] } { g_1[n$5_1], PostHeap[n$5_1, l_8] }
      g_1[n$5_1] && PostHeap[n$5_1, l_8] != null ==> g_1[PostHeap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_7]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@280.13--280.44) [86820]"}
            HasDirectPerm(PostMask, n$6_7, r_6);
        }
        if (g_1[n$6_7] && PostHeap[n$6_7, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@280.13--280.44) [86821]"}
            HasDirectPerm(PostMask, n$6_7, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_6]] } { g_1[n$6_1], PostHeap[n$6_1, r_6] }
      g_1[n$6_1] && PostHeap[n$6_1, r_6] != null ==> g_1[PostHeap[n$6_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.l == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@281.13--281.24) [86822]"}
        HasDirectPerm(PostMask, x, l_8);
    assume PostHeap[x, l_8] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@282.13--282.53) [86823]"}
        HasDirectPerm(oldMask, x, l_8);
    if (oldHeap[x, l_8] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.34--282.39) [86824]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@282.34--282.39) [86825]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered71(n_2), neverTriggered71(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@282.34--282.39) [86826]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange71(n_2) && invRecv71(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv71(o_4) }
              g_1[invRecv71(o_4)] && (NoPerm < 1 / 2 && qpRange71(o_4)) ==> invRecv71(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.34--282.39) [86827]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@282.34--282.39) [86828]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered72(n_3), neverTriggered72(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@282.34--282.39) [86829]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange72(n_3) && invRecv72(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv72(o_4) }
              g_1[invRecv72(o_4)] && (NoPerm < 1 / 2 && qpRange72(o_4)) ==> invRecv72(o_4) == o_4
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.47--282.52) [86830]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && dummyFunction(oldHeap[n_4_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@282.47--282.52) [86831]"}
              (forall n_4_1: Ref, n_4_2: Ref ::
              { neverTriggered73(n_4_1), neverTriggered73(n_4_2) }
              (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@282.47--282.52) [86832]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] ==> 1 / 2 > NoPerm ==> oldMask[n_4_1, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange73(n_4_1) && invRecv73(n_4_1) == n_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv73(o_4) }
              g_1[invRecv73(o_4)] && (NoPerm < 1 / 2 && qpRange73(o_4)) ==> invRecv73(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.47--282.52) [86833]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@282.47--282.52) [86834]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered74(n_5), neverTriggered74(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@282.47--282.52) [86835]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange74(n_5) && invRecv74(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv74(o_4) }
              g_1[invRecv74(o_4)] && (NoPerm < 1 / 2 && qpRange74(o_4)) ==> invRecv74(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@283.13--285.86) [86836]"}
        HasDirectPerm(oldMask, x, l_8);
    if (oldHeap[x, l_8] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.l))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.18--285.23) [86837]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@285.18--285.23) [86838]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered75(n_6), neverTriggered75(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@285.18--285.23) [86839]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange75(n_6) && invRecv75(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv75(o_4) }
                g_1[invRecv75(o_4)] && (NoPerm < 1 / 2 && qpRange75(o_4)) ==> invRecv75(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.18--285.23) [86840]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@285.18--285.23) [86841]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered76(n_7), neverTriggered76(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@285.18--285.23) [86842]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange76(n_7) && invRecv76(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv76(o_4) }
                g_1[invRecv76(o_4)] && (NoPerm < 1 / 2 && qpRange76(o_4)) ==> invRecv76(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.45--285.50) [86843]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@285.45--285.50) [86844]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered77(n_8), neverTriggered77(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@285.45--285.50) [86845]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange77(n_8) && invRecv77(n_8) == n_8
              );
              assume (forall o_4: Ref ::
                { invRecv77(o_4) }
                g_1[invRecv77(o_4)] && (NoPerm < 1 / 2 && qpRange77(o_4)) ==> invRecv77(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.45--285.50) [86846]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@285.45--285.50) [86847]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered78(n_9), neverTriggered78(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@285.45--285.50) [86848]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange78(n_9) && invRecv78(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv78(o_4) }
                g_1[invRecv78(o_4)] && (NoPerm < 1 / 2 && qpRange78(o_4)) ==> invRecv78(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_24, v2_24): bool)) {
            if (v1_24 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@283.13--285.86) [86849]"}
                HasDirectPerm(oldMask, x, l_8);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, l_8]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@286.13--291.10) [86850]"}
        HasDirectPerm(oldMask, x, l_8);
    if (oldHeap[x, l_8] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.l), v2))))
        if (*) {
          if (v1_21 != v2_21) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.25--290.30) [86851]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.25--290.30) [86852]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered79(n_10_1), neverTriggered79(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.25--290.30) [86853]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange79(n_10_1) && invRecv79(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv79(o_4) }
                  g_1[invRecv79(o_4)] && (NoPerm < 1 / 2 && qpRange79(o_4)) ==> invRecv79(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.25--290.30) [86854]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && dummyFunction(PostHeap[n_11_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.25--290.30) [86855]"}
                  (forall n_11_1: Ref, n_11_2: Ref ::
                  { neverTriggered80(n_11_1), neverTriggered80(n_11_2) }
                  (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.25--290.30) [86856]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] ==> 1 / 2 > NoPerm ==> PostMask[n_11_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange80(n_11_1) && invRecv80(n_11_1) == n_11_1
                );
                assume (forall o_4: Ref ::
                  { invRecv80(o_4) }
                  g_1[invRecv80(o_4)] && (NoPerm < 1 / 2 && qpRange80(o_4)) ==> invRecv80(o_4) == o_4
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.59--290.64) [86857]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && dummyFunction(oldHeap[n_12_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.59--290.64) [86858]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered81(n_12_1), neverTriggered81(n_12_2) }
                  (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.59--290.64) [86859]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] ==> 1 / 2 > NoPerm ==> oldMask[n_12_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange81(n_12_1) && invRecv81(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv81(o_4) }
                  g_1[invRecv81(o_4)] && (NoPerm < 1 / 2 && qpRange81(o_4)) ==> invRecv81(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.59--290.64) [86860]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && dummyFunction(oldHeap[n_13, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.59--290.64) [86861]"}
                  (forall n_13: Ref, n_13_1: Ref ::
                  { neverTriggered82(n_13), neverTriggered82(n_13_1) }
                  (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.59--290.64) [86862]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] ==> 1 / 2 > NoPerm ==> oldMask[n_13, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && NoPerm < 1 / 2 ==> qpRange82(n_13) && invRecv82(n_13) == n_13
                );
                assume (forall o_4: Ref ::
                  { invRecv82(o_4) }
                  g_1[invRecv82(o_4)] && (NoPerm < 1 / 2 && qpRange82(o_4)) ==> invRecv82(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_21, v2_21): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.94--290.99) [86863]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && dummyFunction(oldHeap[n_14, l_8]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.94--290.99) [86864]"}
                    (forall n_14: Ref, n_14_1: Ref ::
                    { neverTriggered83(n_14), neverTriggered83(n_14_1) }
                    (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.94--290.99) [86865]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] ==> 1 / 2 > NoPerm ==> oldMask[n_14, l_8] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && NoPerm < 1 / 2 ==> qpRange83(n_14) && invRecv83(n_14) == n_14
                  );
                  assume (forall o_4: Ref ::
                    { invRecv83(o_4) }
                    g_1[invRecv83(o_4)] && (NoPerm < 1 / 2 && qpRange83(o_4)) ==> invRecv83(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.94--290.99) [86866]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_6]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.94--290.99) [86867]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered84(n_15), neverTriggered84(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.94--290.99) [86868]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_6] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange84(n_15) && invRecv84(n_15) == n_15
                  );
                  assume (forall o_4: Ref ::
                    { invRecv84(o_4) }
                    g_1[invRecv84(o_4)] && (NoPerm < 1 / 2 && qpRange84(o_4)) ==> invRecv84(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_21, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.126--290.131) [86869]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && dummyFunction(oldHeap[n_16, l_8]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.126--290.131) [86870]"}
                      (forall n_16: Ref, n_16_1: Ref ::
                      { neverTriggered85(n_16), neverTriggered85(n_16_1) }
                      (((n_16 != n_16_1 && g_1[n_16]) && g_1[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.126--290.131) [86871]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] ==> 1 / 2 > NoPerm ==> oldMask[n_16, l_8] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && NoPerm < 1 / 2 ==> qpRange85(n_16) && invRecv85(n_16) == n_16
                    );
                    assume (forall o_4: Ref ::
                      { invRecv85(o_4) }
                      g_1[invRecv85(o_4)] && (NoPerm < 1 / 2 && qpRange85(o_4)) ==> invRecv85(o_4) == o_4
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.126--290.131) [86872]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_6]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.126--290.131) [86873]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered86(n_17), neverTriggered86(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.126--290.131) [86874]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_6] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange86(n_17) && invRecv86(n_17) == n_17
                    );
                    assume (forall o_4: Ref ::
                      { invRecv86(o_4) }
                      g_1[invRecv86(o_4)] && (NoPerm < 1 / 2 && qpRange86(o_4)) ==> invRecv86(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@286.13--291.10) [86875]"}
                  HasDirectPerm(oldMask, x, l_8);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l_8], v2_3): bool)))
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
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@280.13--280.44) [86876]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@280.13--280.44) [86877]"}
      g_1[x];
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [86878]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@280.13--280.44) [86879]"}
        perm <= Mask[x, l_8];
    }
    Mask := Mask[x, l_8:=Mask[x, l_8] - perm];
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [86880]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@280.13--280.44) [86881]"}
        perm <= Mask[x, r_6];
    }
    Mask := Mask[x, r_6:=Mask[x, r_6] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [86882]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l_8]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@280.13--280.44) [86883]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered87(n$3_2), neverTriggered87(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@280.13--280.44) [86884]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l_8] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange87(n$3_2) && invRecv87(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv87(o_4) }
        (g_1[invRecv87(o_4)] && invRecv87(o_4) != x) && (NoPerm < 1 / 2 && qpRange87(o_4)) ==> invRecv87(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g_1[invRecv87(o_4)] && invRecv87(o_4) != x) && (NoPerm < 1 / 2 && qpRange87(o_4)) ==> invRecv87(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((g_1[invRecv87(o_4)] && invRecv87(o_4) != x) && (NoPerm < 1 / 2 && qpRange87(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [86885]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && dummyFunction(Heap[n$4_2_1, r_6]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@280.13--280.44) [86886]"}
        (forall n$4_2_1: Ref, n$4_2_2: Ref ::
        { neverTriggered88(n$4_2_1), neverTriggered88(n$4_2_2) }
        (((n$4_2_1 != n$4_2_2 && (g_1[n$4_2_1] && n$4_2_1 != x)) && (g_1[n$4_2_2] && n$4_2_2 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@280.13--280.44) [86887]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        g_1[n$4_2_1] && n$4_2_1 != x ==> Mask[n$4_2_1, r_6] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && NoPerm < 1 / 2 ==> qpRange88(n$4_2_1) && invRecv88(n$4_2_1) == n$4_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv88(o_4) }
        (g_1[invRecv88(o_4)] && invRecv88(o_4) != x) && (NoPerm < 1 / 2 && qpRange88(o_4)) ==> invRecv88(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g_1[invRecv88(o_4)] && invRecv88(o_4) != x) && (NoPerm < 1 / 2 && qpRange88(o_4)) ==> invRecv88(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((g_1[invRecv88(o_4)] && invRecv88(o_4) != x) && (NoPerm < 1 / 2 && qpRange88(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l_8] != null) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@280.13--280.44) [86888]"}
          g_1[Heap[n$5_2, l_8]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l_8]] } { g_1[n$5_3_1], Heap[n$5_3_1, l_8] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l_8] != null ==> g_1[Heap[n$5_3_1, l_8]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_6] != null) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@280.13--280.44) [86889]"}
          g_1[Heap[n$6_2, r_6]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_6]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_6] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_6] != null ==> g_1[Heap[n$6_3_1, r_6]]
    );
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion x.l == null might not hold. (create_edge1.vpr@281.13--281.24) [86890]"}
      Heap[x, l_8] == null;
    if (oldHeap[x, l_8] == null) {
      assert {:msg "  Postcondition of unlink_left might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@282.13--282.53) [86891]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, l_8] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.l))) might not hold. (create_edge1.vpr@283.13--285.86) [86892]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, l_8]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, l_8]))
      );
    }
    if (oldHeap[x, l_8] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink_left might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.l), v2))) might not hold. (create_edge1.vpr@286.13--291.10) [86893]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l_8], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l_8], v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink_right
// ==================================================

procedure unlink_right(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$1_21: Ref;
  var n$2_32: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_5: Ref;
  var n$6_8: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_25: Ref;
  var v2_25: Ref;
  var v1_26: Ref;
  var v2_26: Ref;
  var n$5_2: Ref;
  var n$6_2: Ref;
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
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@295.14--295.46) [86894]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l_8:=Mask[x, l_8] + perm];
    assume state(Heap, Mask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@295.14--295.46) [86895]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_6:=Mask[x, r_6] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@295.14--295.46) [86896]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange89(n_1) && invRecv89(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv89(o_4) }
        ((g_1[invRecv89(o_4)] && invRecv89(o_4) != x) && NoPerm < 1 / 2) && qpRange89(o_4) ==> invRecv89(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@295.14--295.46) [86897]"}
      (forall n_1: Ref ::
      { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv89(o_4)] && invRecv89(o_4) != x) && NoPerm < 1 / 2) && qpRange89(o_4) ==> (NoPerm < 1 / 2 ==> invRecv89(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv89(o_4)] && invRecv89(o_4) != x) && NoPerm < 1 / 2) && qpRange89(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@295.14--295.46) [86898]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange90(n$0_1) && invRecv90(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv90(o_4) }
        ((g_1[invRecv90(o_4)] && invRecv90(o_4) != x) && NoPerm < 1 / 2) && qpRange90(o_4) ==> invRecv90(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@295.14--295.46) [86899]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv90(o_4)] && invRecv90(o_4) != x) && NoPerm < 1 / 2) && qpRange90(o_4) ==> (NoPerm < 1 / 2 ==> invRecv90(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv90(o_4)] && invRecv90(o_4) != x) && NoPerm < 1 / 2) && qpRange90(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_21]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@295.14--295.46) [86900]"}
            HasDirectPerm(Mask, n$1_21, l_8);
        }
        if (g_1[n$1_21] && Heap[n$1_21, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@295.14--295.46) [86901]"}
            HasDirectPerm(Mask, n$1_21, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l_8]] } { g_1[n$1_1], Heap[n$1_1, l_8] }
      g_1[n$1_1] && Heap[n$1_1, l_8] != null ==> g_1[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_32]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@295.14--295.46) [86902]"}
            HasDirectPerm(Mask, n$2_32, r_6);
        }
        if (g_1[n$2_32] && Heap[n$2_32, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@295.14--295.46) [86903]"}
            HasDirectPerm(Mask, n$2_32, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[Heap[n$2_1_1, r_6]] } { g_1[n$2_1_1], Heap[n$2_1_1, r_6] }
      g_1[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g_1[Heap[n$2_1_1, r_6]]
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
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [86904]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l_8:=PostMask[x, l_8] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [86905]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_6:=PostMask[x, r_6] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@296.13--296.45) [86906]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && (g_1[n$3_1_2] && n$3_1_2 != x)) && (g_1[n$3_1_3] && n$3_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && NoPerm < 1 / 2 ==> qpRange91(n$3_1_2) && invRecv91(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv91(o_4) }
        ((g_1[invRecv91(o_4)] && invRecv91(o_4) != x) && NoPerm < 1 / 2) && qpRange91(o_4) ==> invRecv91(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [86907]"}
      (forall n$3_1_2: Ref ::
      { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
      g_1[n$3_1_2] && n$3_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { PostHeap[n$3_1_2, l_8] }
        (g_1[n$3_1_2] && n$3_1_2 != x) && 1 / 2 > NoPerm ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (((g_1[invRecv91(o_4)] && invRecv91(o_4) != x) && NoPerm < 1 / 2) && qpRange91(o_4) ==> (NoPerm < 1 / 2 ==> invRecv91(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + 1 / 2) && (!(((g_1[invRecv91(o_4)] && invRecv91(o_4) != x) && NoPerm < 1 / 2) && qpRange91(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@296.13--296.45) [86908]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && (g_1[n$4_1_2] && n$4_1_2 != x)) && (g_1[n$4_1_3] && n$4_1_3 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && NoPerm < 1 / 2 ==> qpRange92(n$4_1_2) && invRecv92(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv92(o_4) }
        ((g_1[invRecv92(o_4)] && invRecv92(o_4) != x) && NoPerm < 1 / 2) && qpRange92(o_4) ==> invRecv92(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [86909]"}
      (forall n$4_1_2: Ref ::
      { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
      g_1[n$4_1_2] && n$4_1_2 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { PostHeap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { PostHeap[n$4_1_2, r_6] }
        (g_1[n$4_1_2] && n$4_1_2 != x) && 1 / 2 > NoPerm ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (((g_1[invRecv92(o_4)] && invRecv92(o_4) != x) && NoPerm < 1 / 2) && qpRange92(o_4) ==> (NoPerm < 1 / 2 ==> invRecv92(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + 1 / 2) && (!(((g_1[invRecv92(o_4)] && invRecv92(o_4) != x) && NoPerm < 1 / 2) && qpRange92(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@296.13--296.45) [86910]"}
            HasDirectPerm(PostMask, n$5_5, l_8);
        }
        if (g_1[n$5_5] && PostHeap[n$5_5, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@296.13--296.45) [86911]"}
            HasDirectPerm(PostMask, n$5_5, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l_8]] } { g_1[n$5_1], PostHeap[n$5_1, l_8] }
      g_1[n$5_1] && PostHeap[n$5_1, l_8] != null ==> g_1[PostHeap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@296.13--296.45) [86912]"}
            HasDirectPerm(PostMask, n$6_8, r_6);
        }
        if (g_1[n$6_8] && PostHeap[n$6_8, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@296.13--296.45) [86913]"}
            HasDirectPerm(PostMask, n$6_8, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_6]] } { g_1[n$6_1], PostHeap[n$6_1, r_6] }
      g_1[n$6_1] && PostHeap[n$6_1, r_6] != null ==> g_1[PostHeap[n$6_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@297.13--297.24) [86914]"}
        HasDirectPerm(PostMask, x, r_6);
    assume PostHeap[x, r_6] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@298.13--298.53) [86915]"}
        HasDirectPerm(oldMask, x, r_6);
    if (oldHeap[x, r_6] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.34--298.39) [86916]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@298.34--298.39) [86917]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered93(n_2), neverTriggered93(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@298.34--298.39) [86918]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l_8] } { QPMask[n_2, l_8] } { PostHeap[n_2, l_8] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange93(n_2) && invRecv93(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv93(o_4) }
              g_1[invRecv93(o_4)] && (NoPerm < 1 / 2 && qpRange93(o_4)) ==> invRecv93(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.34--298.39) [86919]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@298.34--298.39) [86920]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered94(n_3), neverTriggered94(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@298.34--298.39) [86921]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_6] } { QPMask[n_3, r_6] } { PostHeap[n_3, r_6] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange94(n_3) && invRecv94(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv94(o_4) }
              g_1[invRecv94(o_4)] && (NoPerm < 1 / 2 && qpRange94(o_4)) ==> invRecv94(o_4) == o_4
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.47--298.52) [86922]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && dummyFunction(oldHeap[n_4_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@298.47--298.52) [86923]"}
              (forall n_4_1: Ref, n_4_2: Ref ::
              { neverTriggered95(n_4_1), neverTriggered95(n_4_2) }
              (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@298.47--298.52) [86924]"}
              (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] ==> 1 / 2 > NoPerm ==> oldMask[n_4_1, l_8] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4_1: Ref ::
              { oldHeap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { oldHeap[n_4_1, l_8] }
              g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange95(n_4_1) && invRecv95(n_4_1) == n_4_1
            );
            assume (forall o_4: Ref ::
              { invRecv95(o_4) }
              g_1[invRecv95(o_4)] && (NoPerm < 1 / 2 && qpRange95(o_4)) ==> invRecv95(o_4) == o_4
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.47--298.52) [86925]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@298.47--298.52) [86926]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered96(n_5), neverTriggered96(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@298.47--298.52) [86927]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_6] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_6] } { QPMask[n_5, r_6] } { oldHeap[n_5, r_6] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange96(n_5) && invRecv96(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv96(o_4) }
              g_1[invRecv96(o_4)] && (NoPerm < 1 / 2 && qpRange96(o_4)) ==> invRecv96(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@299.13--301.86) [86928]"}
        HasDirectPerm(oldMask, x, r_6);
    if (oldHeap[x, r_6] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.r))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.18--301.23) [86929]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@301.18--301.23) [86930]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered97(n_6), neverTriggered97(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@301.18--301.23) [86931]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l_8] } { QPMask[n_6, l_8] } { PostHeap[n_6, l_8] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange97(n_6) && invRecv97(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv97(o_4) }
                g_1[invRecv97(o_4)] && (NoPerm < 1 / 2 && qpRange97(o_4)) ==> invRecv97(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.18--301.23) [86932]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@301.18--301.23) [86933]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered98(n_7), neverTriggered98(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@301.18--301.23) [86934]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_6] } { QPMask[n_7, r_6] } { PostHeap[n_7, r_6] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange98(n_7) && invRecv98(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv98(o_4) }
                g_1[invRecv98(o_4)] && (NoPerm < 1 / 2 && qpRange98(o_4)) ==> invRecv98(o_4) == o_4
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.45--301.50) [86935]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@301.45--301.50) [86936]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered99(n_8), neverTriggered99(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@301.45--301.50) [86937]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l_8] } { QPMask[n_8, l_8] } { oldHeap[n_8, l_8] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange99(n_8) && invRecv99(n_8) == n_8
              );
              assume (forall o_4: Ref ::
                { invRecv99(o_4) }
                g_1[invRecv99(o_4)] && (NoPerm < 1 / 2 && qpRange99(o_4)) ==> invRecv99(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.45--301.50) [86938]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@301.45--301.50) [86939]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered100(n_9), neverTriggered100(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@301.45--301.50) [86940]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_6] } { QPMask[n_9, r_6] } { oldHeap[n_9, r_6] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange100(n_9) && invRecv100(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv100(o_4) }
                g_1[invRecv100(o_4)] && (NoPerm < 1 / 2 && qpRange100(o_4)) ==> invRecv100(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_25, v2_25): bool)) {
            if (v1_25 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@299.13--301.86) [86941]"}
                HasDirectPerm(oldMask, x, r_6);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, r_6]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@302.13--307.10) [86942]"}
        HasDirectPerm(oldMask, x, r_6);
    if (oldHeap[x, r_6] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.r), v2))))
        if (*) {
          if (v1_26 != v2_26) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.25--306.30) [86943]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.25--306.30) [86944]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered101(n_10_1), neverTriggered101(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.25--306.30) [86945]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { PostHeap[n_10_1, l_8] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange101(n_10_1) && invRecv101(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv101(o_4) }
                  g_1[invRecv101(o_4)] && (NoPerm < 1 / 2 && qpRange101(o_4)) ==> invRecv101(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.25--306.30) [86946]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && dummyFunction(PostHeap[n_11_1, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.25--306.30) [86947]"}
                  (forall n_11_1: Ref, n_11_2: Ref ::
                  { neverTriggered102(n_11_1), neverTriggered102(n_11_2) }
                  (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.25--306.30) [86948]"}
                  (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] ==> 1 / 2 > NoPerm ==> PostMask[n_11_1, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_1: Ref ::
                  { PostHeap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { PostHeap[n_11_1, r_6] }
                  g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange102(n_11_1) && invRecv102(n_11_1) == n_11_1
                );
                assume (forall o_4: Ref ::
                  { invRecv102(o_4) }
                  g_1[invRecv102(o_4)] && (NoPerm < 1 / 2 && qpRange102(o_4)) ==> invRecv102(o_4) == o_4
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.59--306.64) [86949]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && dummyFunction(oldHeap[n_12_1, l_8]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.59--306.64) [86950]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered103(n_12_1), neverTriggered103(n_12_2) }
                  (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.59--306.64) [86951]"}
                  (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] ==> 1 / 2 > NoPerm ==> oldMask[n_12_1, l_8] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { oldHeap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { oldHeap[n_12_1, l_8] }
                  g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange103(n_12_1) && invRecv103(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv103(o_4) }
                  g_1[invRecv103(o_4)] && (NoPerm < 1 / 2 && qpRange103(o_4)) ==> invRecv103(o_4) == o_4
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.59--306.64) [86952]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && dummyFunction(oldHeap[n_13, r_6]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.59--306.64) [86953]"}
                  (forall n_13: Ref, n_13_1: Ref ::
                  { neverTriggered104(n_13), neverTriggered104(n_13_1) }
                  (((n_13 != n_13_1 && g_1[n_13]) && g_1[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.59--306.64) [86954]"}
                  (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] ==> 1 / 2 > NoPerm ==> oldMask[n_13, r_6] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13: Ref ::
                  { oldHeap[n_13, r_6] } { QPMask[n_13, r_6] } { oldHeap[n_13, r_6] }
                  g_1[n_13] && NoPerm < 1 / 2 ==> qpRange104(n_13) && invRecv104(n_13) == n_13
                );
                assume (forall o_4: Ref ::
                  { invRecv104(o_4) }
                  g_1[invRecv104(o_4)] && (NoPerm < 1 / 2 && qpRange104(o_4)) ==> invRecv104(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_26, v2_26): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.94--306.99) [86955]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && dummyFunction(oldHeap[n_14, l_8]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.94--306.99) [86956]"}
                    (forall n_14: Ref, n_14_1: Ref ::
                    { neverTriggered105(n_14), neverTriggered105(n_14_1) }
                    (((n_14 != n_14_1 && g_1[n_14]) && g_1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.94--306.99) [86957]"}
                    (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] ==> 1 / 2 > NoPerm ==> oldMask[n_14, l_8] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14: Ref ::
                    { oldHeap[n_14, l_8] } { QPMask[n_14, l_8] } { oldHeap[n_14, l_8] }
                    g_1[n_14] && NoPerm < 1 / 2 ==> qpRange105(n_14) && invRecv105(n_14) == n_14
                  );
                  assume (forall o_4: Ref ::
                    { invRecv105(o_4) }
                    g_1[invRecv105(o_4)] && (NoPerm < 1 / 2 && qpRange105(o_4)) ==> invRecv105(o_4) == o_4
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.94--306.99) [86958]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_6]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.94--306.99) [86959]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered106(n_15), neverTriggered106(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.94--306.99) [86960]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_6] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_6] } { QPMask[n_15, r_6] } { oldHeap[n_15, r_6] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange106(n_15) && invRecv106(n_15) == n_15
                  );
                  assume (forall o_4: Ref ::
                    { invRecv106(o_4) }
                    g_1[invRecv106(o_4)] && (NoPerm < 1 / 2 && qpRange106(o_4)) ==> invRecv106(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_26, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.126--306.131) [86961]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && dummyFunction(oldHeap[n_16, l_8]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.126--306.131) [86962]"}
                      (forall n_16: Ref, n_16_1: Ref ::
                      { neverTriggered107(n_16), neverTriggered107(n_16_1) }
                      (((n_16 != n_16_1 && g_1[n_16]) && g_1[n_16_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.126--306.131) [86963]"}
                      (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] ==> 1 / 2 > NoPerm ==> oldMask[n_16, l_8] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16: Ref ::
                      { oldHeap[n_16, l_8] } { QPMask[n_16, l_8] } { oldHeap[n_16, l_8] }
                      g_1[n_16] && NoPerm < 1 / 2 ==> qpRange107(n_16) && invRecv107(n_16) == n_16
                    );
                    assume (forall o_4: Ref ::
                      { invRecv107(o_4) }
                      g_1[invRecv107(o_4)] && (NoPerm < 1 / 2 && qpRange107(o_4)) ==> invRecv107(o_4) == o_4
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.126--306.131) [86964]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_6]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.126--306.131) [86965]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered108(n_17), neverTriggered108(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.126--306.131) [86966]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_6] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_6] } { QPMask[n_17, r_6] } { oldHeap[n_17, r_6] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange108(n_17) && invRecv108(n_17) == n_17
                    );
                    assume (forall o_4: Ref ::
                      { invRecv108(o_4) }
                      g_1[invRecv108(o_4)] && (NoPerm < 1 / 2 && qpRange108(o_4)) ==> invRecv108(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@302.13--307.10) [86967]"}
                  HasDirectPerm(oldMask, x, r_6);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_6], v2_3): bool)))
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
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@296.13--296.45) [86968]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@296.13--296.45) [86969]"}
      g_1[x];
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [86970]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@296.13--296.45) [86971]"}
        perm <= Mask[x, l_8];
    }
    Mask := Mask[x, l_8:=Mask[x, l_8] - perm];
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [86972]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@296.13--296.45) [86973]"}
        perm <= Mask[x, r_6];
    }
    Mask := Mask[x, r_6:=Mask[x, r_6] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [86974]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l_8]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@296.13--296.45) [86975]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered109(n$3_2), neverTriggered109(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@296.13--296.45) [86976]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l_8] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange109(n$3_2) && invRecv109(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv109(o_4) }
        (g_1[invRecv109(o_4)] && invRecv109(o_4) != x) && (NoPerm < 1 / 2 && qpRange109(o_4)) ==> invRecv109(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g_1[invRecv109(o_4)] && invRecv109(o_4) != x) && (NoPerm < 1 / 2 && qpRange109(o_4)) ==> invRecv109(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((g_1[invRecv109(o_4)] && invRecv109(o_4) != x) && (NoPerm < 1 / 2 && qpRange109(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [86977]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && dummyFunction(Heap[n$4_2_1, r_6]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@296.13--296.45) [86978]"}
        (forall n$4_2_1: Ref, n$4_2_2: Ref ::
        { neverTriggered110(n$4_2_1), neverTriggered110(n$4_2_2) }
        (((n$4_2_1 != n$4_2_2 && (g_1[n$4_2_1] && n$4_2_1 != x)) && (g_1[n$4_2_2] && n$4_2_2 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@296.13--296.45) [86979]"}
        (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        g_1[n$4_2_1] && n$4_2_1 != x ==> Mask[n$4_2_1, r_6] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2_1: Ref ::
        { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
        (g_1[n$4_2_1] && n$4_2_1 != x) && NoPerm < 1 / 2 ==> qpRange110(n$4_2_1) && invRecv110(n$4_2_1) == n$4_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv110(o_4) }
        (g_1[invRecv110(o_4)] && invRecv110(o_4) != x) && (NoPerm < 1 / 2 && qpRange110(o_4)) ==> invRecv110(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g_1[invRecv110(o_4)] && invRecv110(o_4) != x) && (NoPerm < 1 / 2 && qpRange110(o_4)) ==> invRecv110(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((g_1[invRecv110(o_4)] && invRecv110(o_4) != x) && (NoPerm < 1 / 2 && qpRange110(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l_8] != null) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@296.13--296.45) [86980]"}
          g_1[Heap[n$5_2, l_8]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l_8]] } { g_1[n$5_3_1], Heap[n$5_3_1, l_8] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l_8] != null ==> g_1[Heap[n$5_3_1, l_8]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_6] != null) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@296.13--296.45) [86981]"}
          g_1[Heap[n$6_2, r_6]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_6]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_6] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_6] != null ==> g_1[Heap[n$6_3_1, r_6]]
    );
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion x.r == null might not hold. (create_edge1.vpr@297.13--297.24) [86982]"}
      Heap[x, r_6] == null;
    if (oldHeap[x, r_6] == null) {
      assert {:msg "  Postcondition of unlink_right might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@298.13--298.53) [86983]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, r_6] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.r))) might not hold. (create_edge1.vpr@299.13--301.86) [86984]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, r_6]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, r_6]))
      );
    }
    if (oldHeap[x, r_6] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink_right might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.r), v2))) might not hold. (create_edge1.vpr@302.13--307.10) [86985]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_6], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_6], v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method join
// ==================================================

procedure join(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1_2: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_22: Ref;
  var n$2_33: Ref;
  var n$5_6: Ref;
  var n$6_9: Ref;
  var n_39: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n_40: Ref;
  var m_6: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$11: Ref;
  var n$12: Ref;
  var n_41: Ref;
  var n$0_8: Ref;
  var n$1_2: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_g: (Set Ref);
  var perm: Perm;
  var n$1_4: Ref;
  var n$2_2: Ref;
  var arg_g_1: (Set Ref);
  var n$1_6: Ref;
  var n$2_4_1: Ref;
  var n$11_2: Ref;
  var n$12_2: Ref;
  var n_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1_2, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@311.14--311.23) [86986]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange111(n_1) && invRecv111(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv111(o_4) }
        (g0[invRecv111(o_4)] && NoPerm < FullPerm) && qpRange111(o_4) ==> invRecv111(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g0[invRecv111(o_4)] && NoPerm < FullPerm) && qpRange111(o_4) ==> (NoPerm < FullPerm ==> invRecv111(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g0[invRecv111(o_4)] && NoPerm < FullPerm) && qpRange111(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g0) ==> acc(n$0.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@311.14--311.23) [86987]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && g0[n$0_1]) && g0[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        g0[n$0_1] && NoPerm < FullPerm ==> qpRange112(n$0_1) && invRecv112(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv112(o_4) }
        (g0[invRecv112(o_4)] && NoPerm < FullPerm) && qpRange112(o_4) ==> invRecv112(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        g0[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g0[invRecv112(o_4)] && NoPerm < FullPerm) && qpRange112(o_4) ==> (NoPerm < FullPerm ==> invRecv112(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g0[invRecv112(o_4)] && NoPerm < FullPerm) && qpRange112(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g0) } { (n$1 in g0), n$1.l } (n$1 in g0) && n$1.l != null ==> (n$1.l in g0))
      if (*) {
        if (g0[n$1_22]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@311.14--311.23) [86988]"}
            HasDirectPerm(Mask, n$1_22, l_8);
        }
        if (g0[n$1_22] && Heap[n$1_22, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@311.14--311.23) [86989]"}
            HasDirectPerm(Mask, n$1_22, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g0[Heap[n$1_1, l_8]] } { g0[n$1_1], Heap[n$1_1, l_8] }
      g0[n$1_1] && Heap[n$1_1, l_8] != null ==> g0[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g0) } { (n$2 in g0), n$2.r } (n$2 in g0) && n$2.r != null ==> (n$2.r in g0))
      if (*) {
        if (g0[n$2_33]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@311.14--311.23) [86990]"}
            HasDirectPerm(Mask, n$2_33, r_6);
        }
        if (g0[n$2_33] && Heap[n$2_33, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@311.14--311.23) [86991]"}
            HasDirectPerm(Mask, n$2_33, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g0[Heap[n$2_1_1, r_6]] } { g0[n$2_1_1], Heap[n$2_1_1, r_6] }
      g0[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g0[Heap[n$2_1_1, r_6]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume state(Heap, Mask);
    assume g0[x];
    assume state(Heap, Mask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g1) ==> acc(n$3.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@315.14--315.23) [86992]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && g1[n$3_1_2]) && g1[n$3_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { Heap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { Heap[n$3_1_2, l_8] }
        g1[n$3_1_2] && NoPerm < FullPerm ==> qpRange113(n$3_1_2) && invRecv113(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv113(o_4) }
        (g1[invRecv113(o_4)] && NoPerm < FullPerm) && qpRange113(o_4) ==> invRecv113(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { Heap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { Heap[n$3_1_2, l_8] }
        g1[n$3_1_2] ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g1[invRecv113(o_4)] && NoPerm < FullPerm) && qpRange113(o_4) ==> (NoPerm < FullPerm ==> invRecv113(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g1[invRecv113(o_4)] && NoPerm < FullPerm) && qpRange113(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g1) ==> acc(n$4.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@315.14--315.23) [86993]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && g1[n$4_1_2]) && g1[n$4_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { Heap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { Heap[n$4_1_2, r_6] }
        g1[n$4_1_2] && NoPerm < FullPerm ==> qpRange114(n$4_1_2) && invRecv114(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv114(o_4) }
        (g1[invRecv114(o_4)] && NoPerm < FullPerm) && qpRange114(o_4) ==> invRecv114(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { Heap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { Heap[n$4_1_2, r_6] }
        g1[n$4_1_2] ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g1[invRecv114(o_4)] && NoPerm < FullPerm) && qpRange114(o_4) ==> (NoPerm < FullPerm ==> invRecv114(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g1[invRecv114(o_4)] && NoPerm < FullPerm) && qpRange114(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g1) } { (n$5 in g1), n$5.l } (n$5 in g1) && n$5.l != null ==> (n$5.l in g1))
      if (*) {
        if (g1[n$5_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@315.14--315.23) [86994]"}
            HasDirectPerm(Mask, n$5_6, l_8);
        }
        if (g1[n$5_6] && Heap[n$5_6, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@315.14--315.23) [86995]"}
            HasDirectPerm(Mask, n$5_6, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g1[Heap[n$5_1, l_8]] } { g1[n$5_1], Heap[n$5_1, l_8] }
      g1[n$5_1] && Heap[n$5_1, l_8] != null ==> g1[Heap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g1) } { (n$6 in g1), n$6.r } (n$6 in g1) && n$6.r != null ==> (n$6.r in g1))
      if (*) {
        if (g1[n$6_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@315.14--315.23) [86996]"}
            HasDirectPerm(Mask, n$6_9, r_6);
        }
        if (g1[n$6_9] && Heap[n$6_9, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@315.14--315.23) [86997]"}
            HasDirectPerm(Mask, n$6_9, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[Heap[n$6_1, r_6]] } { g1[n$6_1], Heap[n$6_1, r_6] }
      g1[n$6_1] && Heap[n$6_1, r_6] != null ==> g1[Heap[n$6_1, r_6]]
    );
    assume state(Heap, Mask);
    assume g1[x1_2];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$7: Ref :: { (n$7 in g0), (n$7 in g1) } (n$7 in g0) ==> !((n$7 in g1)))
      if (*) {
        assume false;
      }
    assume (forall n$7_1: Ref ::
      { g0[n$7_1], g1[n$7_1] }
      g0[n$7_1] ==> !g1[n$7_1]
    );
    
    // -- Check definedness of (forall n$8: Ref :: { (n$8 in g0), (n$8 in g1) } (n$8 in g1) ==> !((n$8 in g0)))
      if (*) {
        assume false;
      }
    assume (forall n$8_1: Ref ::
      { g0[n$8_1], g1[n$8_1] }
      g1[n$8_1] ==> !g0[n$8_1]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { (n in g0) } (n in g0) ==> exists_path($$(g0), x, n))
      if (*) {
        if (g0[n_39]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@319.66--319.72) [86998]"}
                (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] && dummyFunction(Heap[n$0_2_1, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@319.66--319.72) [86999]"}
                (forall n$0_2_1: Ref, n$0_2_2: Ref ::
                { neverTriggered115(n$0_2_1), neverTriggered115(n$0_2_2) }
                (((n$0_2_1 != n$0_2_2 && g0[n$0_2_1]) && g0[n$0_2_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2_1 != n$0_2_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@319.66--319.72) [87000]"}
                (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] ==> 1 / 2 > NoPerm ==> Mask[n$0_2_1, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] && NoPerm < 1 / 2 ==> qpRange115(n$0_2_1) && invRecv115(n$0_2_1) == n$0_2_1
              );
              assume (forall o_4: Ref ::
                { invRecv115(o_4) }
                g0[invRecv115(o_4)] && (NoPerm < 1 / 2 && qpRange115(o_4)) ==> invRecv115(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@319.66--319.72) [87001]"}
                (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] && dummyFunction(Heap[n$0_3_2, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@319.66--319.72) [87002]"}
                (forall n$0_3_2: Ref, n$0_3_3: Ref ::
                { neverTriggered116(n$0_3_2), neverTriggered116(n$0_3_3) }
                (((n$0_3_2 != n$0_3_3 && g0[n$0_3_2]) && g0[n$0_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3_2 != n$0_3_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@319.66--319.72) [87003]"}
                (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_3_2, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] && NoPerm < 1 / 2 ==> qpRange116(n$0_3_2) && invRecv116(n$0_3_2) == n$0_3_2
              );
              assume (forall o_4: Ref ::
                { invRecv116(o_4) }
                g0[invRecv116(o_4)] && (NoPerm < 1 / 2 && qpRange116(o_4)) ==> invRecv116(o_4) == o_4
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
    assume (forall n_3: Ref ::
      { g0[n_3] }
      g0[n_3] ==> (exists_path($$(Heap, g0), x, n_3): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g0), n, x0) } (n in g0) ==> exists_path($$(g0), n, x0))
      if (*) {
        if (g0[n_40]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@320.83--320.89) [87004]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] && dummyFunction(Heap[n$0_4, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@320.83--320.89) [87005]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered117(n$0_4), neverTriggered117(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g0[n$0_4]) && g0[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@320.83--320.89) [87006]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] ==> 1 / 2 > NoPerm ==> Mask[n$0_4, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] && NoPerm < 1 / 2 ==> qpRange117(n$0_4) && invRecv117(n$0_4) == n$0_4
              );
              assume (forall o_4: Ref ::
                { invRecv117(o_4) }
                g0[invRecv117(o_4)] && (NoPerm < 1 / 2 && qpRange117(o_4)) ==> invRecv117(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@320.83--320.89) [87007]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] && dummyFunction(Heap[n$0_5, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@320.83--320.89) [87008]"}
                (forall n$0_5: Ref, n$0_5_2: Ref ::
                { neverTriggered118(n$0_5), neverTriggered118(n$0_5_2) }
                (((n$0_5 != n$0_5_2 && g0[n$0_5]) && g0[n$0_5_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@320.83--320.89) [87009]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] ==> 1 / 2 > NoPerm ==> Mask[n$0_5, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] && NoPerm < 1 / 2 ==> qpRange118(n$0_5) && invRecv118(n$0_5) == n$0_5
              );
              assume (forall o_4: Ref ::
                { invRecv118(o_4) }
                g0[invRecv118(o_4)] && (NoPerm < 1 / 2 && qpRange118(o_4)) ==> invRecv118(o_4) == o_4
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
    assume (forall n_5: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), n_5, x0): bool) }
      g0[n_5] ==> (exists_path($$(Heap, g0), n_5, x0): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall m: Ref :: { exists_path($$(g1), x1, m) } { (m in g1) } (m in g1) ==> exists_path($$(g1), x1, m))
      if (*) {
        if (g1[m_6]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@321.94--321.100) [87010]"}
                (forall n_6: Ref ::
                { Heap[n_6, l_8] } { QPMask[n_6, l_8] } { Heap[n_6, l_8] }
                g1[n_6] && dummyFunction(Heap[n_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@321.94--321.100) [87011]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered119(n_6), neverTriggered119(n_6_1) }
                (((n_6 != n_6_1 && g1[n_6]) && g1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@321.94--321.100) [87012]"}
                (forall n_6: Ref ::
                { Heap[n_6, l_8] } { QPMask[n_6, l_8] } { Heap[n_6, l_8] }
                g1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { Heap[n_6, l_8] } { QPMask[n_6, l_8] } { Heap[n_6, l_8] }
                g1[n_6] && NoPerm < 1 / 2 ==> qpRange119(n_6) && invRecv119(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv119(o_4) }
                g1[invRecv119(o_4)] && (NoPerm < 1 / 2 && qpRange119(o_4)) ==> invRecv119(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@321.94--321.100) [87013]"}
                (forall n_7: Ref ::
                { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
                g1[n_7] && dummyFunction(Heap[n_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@321.94--321.100) [87014]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered120(n_7), neverTriggered120(n_7_1) }
                (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@321.94--321.100) [87015]"}
                (forall n_7: Ref ::
                { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
                g1[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, r_6] } { QPMask[n_7, r_6] } { Heap[n_7, r_6] }
                g1[n_7] && NoPerm < 1 / 2 ==> qpRange120(n_7) && invRecv120(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv120(o_4) }
                g1[invRecv120(o_4)] && (NoPerm < 1 / 2 && qpRange120(o_4)) ==> invRecv120(o_4) == o_4
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
    assume (forall m_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), x1_2, m_1_1): bool) } { g1[m_1_1] }
      g1[m_1_1] ==> (exists_path($$(Heap, g1), x1_2, m_1_1): bool)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.l == null || x0.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.l (create_edge1.vpr@323.14--323.42) [87016]"}
        HasDirectPerm(Mask, x0, l_8);
      if (!(Heap[x0, l_8] == null)) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.r (create_edge1.vpr@323.14--323.42) [87017]"}
          HasDirectPerm(Mask, x0, r_6);
      }
    assume Heap[x0, l_8] == null || Heap[x0, r_6] == null;
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
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n$9: Ref :: { n$9.l } (n$9 in (g0 union g1)) ==> acc(n$9.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@325.13--325.31) [87018]"}
      (forall n$9_1: Ref, n$9_1_1: Ref ::
      
      (((n$9_1 != n$9_1_1 && Set#Union(g0, g1)[n$9_1]) && Set#Union(g0, g1)[n$9_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_1 != n$9_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l_8] } { QPMask[n$9_1, l_8] } { PostHeap[n$9_1, l_8] }
        Set#Union(g0, g1)[n$9_1] && NoPerm < FullPerm ==> qpRange121(n$9_1) && invRecv121(n$9_1) == n$9_1
      );
      assume (forall o_4: Ref ::
        { invRecv121(o_4) }
        (Set#Union(g0, g1)[invRecv121(o_4)] && NoPerm < FullPerm) && qpRange121(o_4) ==> invRecv121(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l_8] } { QPMask[n$9_1, l_8] } { PostHeap[n$9_1, l_8] }
        Set#Union(g0, g1)[n$9_1] ==> n$9_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((Set#Union(g0, g1)[invRecv121(o_4)] && NoPerm < FullPerm) && qpRange121(o_4) ==> (NoPerm < FullPerm ==> invRecv121(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + FullPerm) && (!((Set#Union(g0, g1)[invRecv121(o_4)] && NoPerm < FullPerm) && qpRange121(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$10: Ref :: { n$10.r } (n$10 in (g0 union g1)) ==> acc(n$10.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@325.13--325.31) [87019]"}
      (forall n$10_1: Ref, n$10_1_1: Ref ::
      
      (((n$10_1 != n$10_1_1 && Set#Union(g0, g1)[n$10_1]) && Set#Union(g0, g1)[n$10_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_1 != n$10_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_6] } { QPMask[n$10_1, r_6] } { PostHeap[n$10_1, r_6] }
        Set#Union(g0, g1)[n$10_1] && NoPerm < FullPerm ==> qpRange122(n$10_1) && invRecv122(n$10_1) == n$10_1
      );
      assume (forall o_4: Ref ::
        { invRecv122(o_4) }
        (Set#Union(g0, g1)[invRecv122(o_4)] && NoPerm < FullPerm) && qpRange122(o_4) ==> invRecv122(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_6] } { QPMask[n$10_1, r_6] } { PostHeap[n$10_1, r_6] }
        Set#Union(g0, g1)[n$10_1] ==> n$10_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((Set#Union(g0, g1)[invRecv122(o_4)] && NoPerm < FullPerm) && qpRange122(o_4) ==> (NoPerm < FullPerm ==> invRecv122(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + FullPerm) && (!((Set#Union(g0, g1)[invRecv122(o_4)] && NoPerm < FullPerm) && qpRange122(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$11: Ref :: { (n$11.l in (g0 union g1)) } { (n$11 in (g0 union g1)), n$11.l } (n$11 in (g0 union g1)) && n$11.l != null ==> (n$11.l in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$11]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@325.13--325.31) [87020]"}
            HasDirectPerm(PostMask, n$11, l_8);
        }
        if (Set#Union(g0, g1)[n$11] && PostHeap[n$11, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@325.13--325.31) [87021]"}
            HasDirectPerm(PostMask, n$11, l_8);
        }
        assume false;
      }
    assume (forall n$11_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$11_1, l_8]] } { Set#Union(g0, g1)[n$11_1], PostHeap[n$11_1, l_8] }
      Set#Union(g0, g1)[n$11_1] && PostHeap[n$11_1, l_8] != null ==> Set#Union(g0, g1)[PostHeap[n$11_1, l_8]]
    );
    
    // -- Check definedness of (forall n$12: Ref :: { (n$12.r in (g0 union g1)) } { (n$12 in (g0 union g1)), n$12.r } (n$12 in (g0 union g1)) && n$12.r != null ==> (n$12.r in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@325.13--325.31) [87022]"}
            HasDirectPerm(PostMask, n$12, r_6);
        }
        if (Set#Union(g0, g1)[n$12] && PostHeap[n$12, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@325.13--325.31) [87023]"}
            HasDirectPerm(PostMask, n$12, r_6);
        }
        assume false;
      }
    assume (forall n$12_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$12_1, r_6]] } { Set#Union(g0, g1)[n$12_1], PostHeap[n$12_1, r_6] }
      Set#Union(g0, g1)[n$12_1] && PostHeap[n$12_1, r_6] != null ==> Set#Union(g0, g1)[PostHeap[n$12_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in (g0 union g1)) } { exists_path($$((g0 union g1)), x, n) } (n in (g0 union g1)) ==> exists_path($$((g0 union g1)), x, n))
      if (*) {
        if (Set#Union(g0, g1)[n_41]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@326.64--326.79) [87024]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] && dummyFunction(PostHeap[n$0_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@326.64--326.79) [87025]"}
                (forall n$0_6: Ref, n$0_6_1: Ref ::
                { neverTriggered123(n$0_6), neverTriggered123(n$0_6_1) }
                (((n$0_6 != n$0_6_1 && Set#Union(g0, g1)[n$0_6]) && Set#Union(g0, g1)[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@326.64--326.79) [87026]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] ==> 1 / 2 > NoPerm ==> PostMask[n$0_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] && NoPerm < 1 / 2 ==> qpRange123(n$0_6) && invRecv123(n$0_6) == n$0_6
              );
              assume (forall o_4: Ref ::
                { invRecv123(o_4) }
                Set#Union(g0, g1)[invRecv123(o_4)] && (NoPerm < 1 / 2 && qpRange123(o_4)) ==> invRecv123(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@326.64--326.79) [87027]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] && dummyFunction(PostHeap[n$0_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@326.64--326.79) [87028]"}
                (forall n$0_7: Ref, n$0_7_2: Ref ::
                { neverTriggered124(n$0_7), neverTriggered124(n$0_7_2) }
                (((n$0_7 != n$0_7_2 && Set#Union(g0, g1)[n$0_7]) && Set#Union(g0, g1)[n$0_7_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@326.64--326.79) [87029]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] ==> 1 / 2 > NoPerm ==> PostMask[n$0_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] && NoPerm < 1 / 2 ==> qpRange124(n$0_7) && invRecv124(n$0_7) == n$0_7
              );
              assume (forall o_4: Ref ::
                { invRecv124(o_4) }
                Set#Union(g0, g1)[invRecv124(o_4)] && (NoPerm < 1 / 2 && qpRange124(o_4)) ==> invRecv124(o_4) == o_4
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
    assume (forall n_9: Ref ::
      { Set#Union(g0, g1)[n_9] } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), FrameFragment($$#condqp2(PostHeap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_9): bool) }
      Set#Union(g0, g1)[n_9] ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), x, n_9): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- create_edge1.vpr@328.12--328.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@328.12--328.34) [87030]"}
            (forall n_12_1: Ref, n_12_2: Ref ::
            { neverTriggered127(n_12_1), neverTriggered127(n_12_2) }
            (((n_12_1 != n_12_2 && g0[n_12_1]) && g0[n_12_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12_1 != n_12_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@328.12--328.34) [87031]"}
            (forall n_12_1: Ref ::
            { Heap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { Heap[n_12_1, l_8] }
            g0[n_12_1] ==> FullPerm > NoPerm ==> Mask[n_12_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_12_1: Ref ::
            { Heap[n_12_1, l_8] } { QPMask[n_12_1, l_8] } { Heap[n_12_1, l_8] }
            g0[n_12_1] && NoPerm < FullPerm ==> qpRange127(n_12_1) && invRecv127(n_12_1) == n_12_1
          );
          assume (forall o_4: Ref ::
            { invRecv127(o_4) }
            g0[invRecv127(o_4)] && (NoPerm < FullPerm && qpRange127(o_4)) ==> invRecv127(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@328.12--328.34) [87032]"}
            (forall n_13: Ref, n_13_1: Ref ::
            { neverTriggered128(n_13), neverTriggered128(n_13_1) }
            (((n_13 != n_13_1 && g0[n_13]) && g0[n_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13 != n_13_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@328.12--328.34) [87033]"}
            (forall n_13: Ref ::
            { Heap[n_13, r_6] } { QPMask[n_13, r_6] } { Heap[n_13, r_6] }
            g0[n_13] ==> FullPerm > NoPerm ==> Mask[n_13, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_13: Ref ::
            { Heap[n_13, r_6] } { QPMask[n_13, r_6] } { Heap[n_13, r_6] }
            g0[n_13] && NoPerm < FullPerm ==> qpRange128(n_13) && invRecv128(n_13) == n_13
          );
          assume (forall o_4: Ref ::
            { invRecv128(o_4) }
            g0[invRecv128(o_4)] && (NoPerm < FullPerm && qpRange128(o_4)) ==> invRecv128(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@328.12--328.34) [87034]"}
            (forall n_14: Ref, n_14_1: Ref ::
            { neverTriggered129(n_14), neverTriggered129(n_14_1) }
            (((n_14 != n_14_1 && g1[n_14]) && g1[n_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14 != n_14_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@328.12--328.34) [87035]"}
            (forall n_14: Ref ::
            { Heap[n_14, l_8] } { QPMask[n_14, l_8] } { Heap[n_14, l_8] }
            g1[n_14] ==> FullPerm > NoPerm ==> Mask[n_14, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_14: Ref ::
            { Heap[n_14, l_8] } { QPMask[n_14, l_8] } { Heap[n_14, l_8] }
            g1[n_14] && NoPerm < FullPerm ==> qpRange129(n_14) && invRecv129(n_14) == n_14
          );
          assume (forall o_4: Ref ::
            { invRecv129(o_4) }
            g1[invRecv129(o_4)] && (NoPerm < FullPerm && qpRange129(o_4)) ==> invRecv129(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@328.12--328.34) [87036]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered130(n_15), neverTriggered130(n_15_1) }
            (((n_15 != n_15_1 && g1[n_15]) && g1[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@328.12--328.34) [87037]"}
            (forall n_15: Ref ::
            { Heap[n_15, r_6] } { QPMask[n_15, r_6] } { Heap[n_15, r_6] }
            g1[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { Heap[n_15, r_6] } { QPMask[n_15, r_6] } { Heap[n_15, r_6] }
            g1[n_15] && NoPerm < FullPerm ==> qpRange130(n_15) && invRecv130(n_15) == n_15
          );
          assume (forall o_4: Ref ::
            { invRecv130(o_4) }
            g1[invRecv130(o_4)] && (NoPerm < FullPerm && qpRange130(o_4)) ==> invRecv130(o_4) == o_4
          );
        if (*) {
          if (g0[n$0_8]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g1)) might not hold. (create_edge1.vpr@328.12--328.34) [87038]"}
              !g1[n$0_8];
          }
          assume false;
        }
        assume (forall n$0_9_1: Ref ::
          { g0[n$0_9_1], g1[n$0_9_1] }
          g0[n$0_9_1] ==> !g1[n$0_9_1]
        );
        if (*) {
          if (g1[n$1_2]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g0)) might not hold. (create_edge1.vpr@328.12--328.34) [87039]"}
              !g0[n$1_2];
          }
          assume false;
        }
        assume (forall n$1_3_1_1: Ref ::
          { g0[n$1_3_1_1], g1[n$1_3_1_1] }
          g1[n$1_3_1_1] ==> !g0[n$1_3_1_1]
        );
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
  
  // -- Translating statement: if (x0.l == null) -- create_edge1.vpr@330.5--334.6
    
    // -- Check definedness of x0.l == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x0.l (create_edge1.vpr@330.10--330.22) [87040]"}
        HasDirectPerm(Mask, x0, l_8);
    if (Heap[x0, l_8] == null) {
      
      // -- Translating statement: link_left((g0 union g1), x0, x1) -- create_edge1.vpr@331.9--331.37
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [87041]"}
            arg_g[x0];
          if (x1_2 != null) {
            assert {:msg "  The precondition of method link_left might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [87042]"}
              arg_g[x1_2];
          }
          assert {:msg "  The precondition of method link_left might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@331.9--331.37) [87043]"}
            !arg_g[null];
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [87044]"}
            arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [87045]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@331.9--331.37) [87046]"}
              perm <= Mask[x0, l_8];
          }
          Mask := Mask[x0, l_8:=Mask[x0, l_8] - perm];
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [87047]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@331.9--331.37) [87048]"}
              perm <= Mask[x0, r_6];
          }
          Mask := Mask[x0, r_6:=Mask[x0, r_6] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [87049]"}
              (forall n_16: Ref ::
              { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
              (arg_g[n_16] && n_16 != x0) && dummyFunction(Heap[n_16, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@331.9--331.37) [87050]"}
              (forall n_16: Ref, n_16_1: Ref ::
              { neverTriggered131(n_16), neverTriggered131(n_16_1) }
              (((n_16 != n_16_1 && (arg_g[n_16] && n_16 != x0)) && (arg_g[n_16_1] && n_16_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@331.9--331.37) [87051]"}
              (forall n_16: Ref ::
              { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
              arg_g[n_16] && n_16 != x0 ==> Mask[n_16, l_8] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_16: Ref ::
              { Heap[n_16, l_8] } { QPMask[n_16, l_8] } { Heap[n_16, l_8] }
              (arg_g[n_16] && n_16 != x0) && NoPerm < 1 / 2 ==> qpRange131(n_16) && invRecv131(n_16) == n_16
            );
            assume (forall o_4: Ref ::
              { invRecv131(o_4) }
              (arg_g[invRecv131(o_4)] && invRecv131(o_4) != x0) && (NoPerm < 1 / 2 && qpRange131(o_4)) ==> invRecv131(o_4) == o_4
            );
          
          // -- assume permission updates for field l
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              ((arg_g[invRecv131(o_4)] && invRecv131(o_4) != x0) && (NoPerm < 1 / 2 && qpRange131(o_4)) ==> invRecv131(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((arg_g[invRecv131(o_4)] && invRecv131(o_4) != x0) && (NoPerm < 1 / 2 && qpRange131(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [87052]"}
              (forall n$0_10: Ref ::
              { Heap[n$0_10, r_6] } { QPMask[n$0_10, r_6] } { Heap[n$0_10, r_6] }
              (arg_g[n$0_10] && n$0_10 != x0) && dummyFunction(Heap[n$0_10, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@331.9--331.37) [87053]"}
              (forall n$0_10: Ref, n$0_10_2: Ref ::
              { neverTriggered132(n$0_10), neverTriggered132(n$0_10_2) }
              (((n$0_10 != n$0_10_2 && (arg_g[n$0_10] && n$0_10 != x0)) && (arg_g[n$0_10_2] && n$0_10_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_10 != n$0_10_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@331.9--331.37) [87054]"}
              (forall n$0_10: Ref ::
              { Heap[n$0_10, r_6] } { QPMask[n$0_10, r_6] } { Heap[n$0_10, r_6] }
              arg_g[n$0_10] && n$0_10 != x0 ==> Mask[n$0_10, r_6] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_10: Ref ::
              { Heap[n$0_10, r_6] } { QPMask[n$0_10, r_6] } { Heap[n$0_10, r_6] }
              (arg_g[n$0_10] && n$0_10 != x0) && NoPerm < 1 / 2 ==> qpRange132(n$0_10) && invRecv132(n$0_10) == n$0_10
            );
            assume (forall o_4: Ref ::
              { invRecv132(o_4) }
              (arg_g[invRecv132(o_4)] && invRecv132(o_4) != x0) && (NoPerm < 1 / 2 && qpRange132(o_4)) ==> invRecv132(o_4) == o_4
            );
          
          // -- assume permission updates for field r
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              ((arg_g[invRecv132(o_4)] && invRecv132(o_4) != x0) && (NoPerm < 1 / 2 && qpRange132(o_4)) ==> invRecv132(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((arg_g[invRecv132(o_4)] && invRecv132(o_4) != x0) && (NoPerm < 1 / 2 && qpRange132(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g[n$1_4] && Heap[n$1_4, l_8] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [87055]"}
                arg_g[Heap[n$1_4, l_8]];
            }
            assume false;
          }
          assume (forall n$1_5_1_1: Ref ::
            { arg_g[Heap[n$1_5_1_1, l_8]] } { arg_g[n$1_5_1_1], Heap[n$1_5_1_1, l_8] }
            arg_g[n$1_5_1_1] && Heap[n$1_5_1_1, l_8] != null ==> arg_g[Heap[n$1_5_1_1, l_8]]
          );
          if (*) {
            if (arg_g[n$2_2] && Heap[n$2_2, r_6] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [87056]"}
                arg_g[Heap[n$2_2, r_6]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { arg_g[Heap[n$2_3_1, r_6]] } { arg_g[n$2_3_1], Heap[n$2_3_1, r_6] }
            arg_g[n$2_3_1] && Heap[n$2_3_1, r_6] != null ==> arg_g[Heap[n$2_3_1, r_6]]
          );
          assert {:msg "  The precondition of method link_left might not hold. Assertion x0.l == null might not hold. (create_edge1.vpr@331.9--331.37) [87057]"}
            Heap[x0, l_8] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g[null];
          assume arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [87058]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l_8:=Mask[x0, l_8] + perm];
          assume state(Heap, Mask);
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [87059]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_6:=Mask[x0, r_6] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@331.9--331.37) [87060]"}
            (forall n$3_2: Ref, n$3_2_1: Ref ::
            
            (((n$3_2 != n$3_2_1 && (arg_g[n$3_2] && n$3_2 != x0)) && (arg_g[n$3_2_1] && n$3_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
              (arg_g[n$3_2] && n$3_2 != x0) && NoPerm < 1 / 2 ==> qpRange133(n$3_2) && invRecv133(n$3_2) == n$3_2
            );
            assume (forall o_4: Ref ::
              { invRecv133(o_4) }
              ((arg_g[invRecv133(o_4)] && invRecv133(o_4) != x0) && NoPerm < 1 / 2) && qpRange133(o_4) ==> invRecv133(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [87061]"}
            (forall n$3_2: Ref ::
            { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
            arg_g[n$3_2] && n$3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
              (arg_g[n$3_2] && n$3_2 != x0) && 1 / 2 > NoPerm ==> n$3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              (((arg_g[invRecv133(o_4)] && invRecv133(o_4) != x0) && NoPerm < 1 / 2) && qpRange133(o_4) ==> (NoPerm < 1 / 2 ==> invRecv133(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((arg_g[invRecv133(o_4)] && invRecv133(o_4) != x0) && NoPerm < 1 / 2) && qpRange133(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@331.9--331.37) [87062]"}
            (forall n$4_2_1: Ref, n$4_2_2: Ref ::
            
            (((n$4_2_1 != n$4_2_2 && (arg_g[n$4_2_1] && n$4_2_1 != x0)) && (arg_g[n$4_2_2] && n$4_2_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_2_1: Ref ::
              { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
              (arg_g[n$4_2_1] && n$4_2_1 != x0) && NoPerm < 1 / 2 ==> qpRange134(n$4_2_1) && invRecv134(n$4_2_1) == n$4_2_1
            );
            assume (forall o_4: Ref ::
              { invRecv134(o_4) }
              ((arg_g[invRecv134(o_4)] && invRecv134(o_4) != x0) && NoPerm < 1 / 2) && qpRange134(o_4) ==> invRecv134(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [87063]"}
            (forall n$4_2_1: Ref ::
            { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
            arg_g[n$4_2_1] && n$4_2_1 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_2_1: Ref ::
              { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
              (arg_g[n$4_2_1] && n$4_2_1 != x0) && 1 / 2 > NoPerm ==> n$4_2_1 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              (((arg_g[invRecv134(o_4)] && invRecv134(o_4) != x0) && NoPerm < 1 / 2) && qpRange134(o_4) ==> (NoPerm < 1 / 2 ==> invRecv134(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((arg_g[invRecv134(o_4)] && invRecv134(o_4) != x0) && NoPerm < 1 / 2) && qpRange134(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_2: Ref ::
            { arg_g[Heap[n$5_2, l_8]] } { arg_g[n$5_2], Heap[n$5_2, l_8] }
            arg_g[n$5_2] && Heap[n$5_2, l_8] != null ==> arg_g[Heap[n$5_2, l_8]]
          );
          assume (forall n$6_2: Ref ::
            { arg_g[Heap[n$6_2, r_6]] } { arg_g[n$6_2], Heap[n$6_2, r_6] }
            arg_g[n$6_2] && Heap[n$6_2, r_6] != null ==> arg_g[Heap[n$6_2, r_6]]
          );
          assume Heap[x0, l_8] == x1_2;
          if (x1_2 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1: Ref, v2: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g)), FrameFragment($$#condqp2(PreCallHeap, arg_g))), arg_g), v1, v2): bool) }
              (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) || (v1 == x0 && v2 == x1_2))
            );
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_1: Ref, v2_1: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g)), FrameFragment($$#condqp2(Heap, arg_g))), arg_g), v1_1, v2_1): bool) }
              v1_1 != v2_1 ==> (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, arg_g), v1_1, v2_1): bool) || ((exists_path($$(PreCallHeap, arg_g), v1_1, x0): bool) && (exists_path($$(PreCallHeap, arg_g), x1_2, v2_1): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: link_right((g0 union g1), x0, x1) -- create_edge1.vpr@333.9--333.38
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g_1 := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [87064]"}
            arg_g_1[x0];
          if (x1_2 != null) {
            assert {:msg "  The precondition of method link_right might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [87065]"}
              arg_g_1[x1_2];
          }
          assert {:msg "  The precondition of method link_right might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@333.9--333.38) [87066]"}
            !arg_g_1[null];
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [87067]"}
            arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [87068]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@333.9--333.38) [87069]"}
              perm <= Mask[x0, l_8];
          }
          Mask := Mask[x0, l_8:=Mask[x0, l_8] - perm];
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [87070]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@333.9--333.38) [87071]"}
              perm <= Mask[x0, r_6];
          }
          Mask := Mask[x0, r_6:=Mask[x0, r_6] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [87072]"}
              (forall n_17: Ref ::
              { Heap[n_17, l_8] } { QPMask[n_17, l_8] } { Heap[n_17, l_8] }
              (arg_g_1[n_17] && n_17 != x0) && dummyFunction(Heap[n_17, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@333.9--333.38) [87073]"}
              (forall n_17: Ref, n_17_1: Ref ::
              { neverTriggered135(n_17), neverTriggered135(n_17_1) }
              (((n_17 != n_17_1 && (arg_g_1[n_17] && n_17 != x0)) && (arg_g_1[n_17_1] && n_17_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@333.9--333.38) [87074]"}
              (forall n_17: Ref ::
              { Heap[n_17, l_8] } { QPMask[n_17, l_8] } { Heap[n_17, l_8] }
              arg_g_1[n_17] && n_17 != x0 ==> Mask[n_17, l_8] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_17: Ref ::
              { Heap[n_17, l_8] } { QPMask[n_17, l_8] } { Heap[n_17, l_8] }
              (arg_g_1[n_17] && n_17 != x0) && NoPerm < 1 / 2 ==> qpRange135(n_17) && invRecv135(n_17) == n_17
            );
            assume (forall o_4: Ref ::
              { invRecv135(o_4) }
              (arg_g_1[invRecv135(o_4)] && invRecv135(o_4) != x0) && (NoPerm < 1 / 2 && qpRange135(o_4)) ==> invRecv135(o_4) == o_4
            );
          
          // -- assume permission updates for field l
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              ((arg_g_1[invRecv135(o_4)] && invRecv135(o_4) != x0) && (NoPerm < 1 / 2 && qpRange135(o_4)) ==> invRecv135(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((arg_g_1[invRecv135(o_4)] && invRecv135(o_4) != x0) && (NoPerm < 1 / 2 && qpRange135(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [87075]"}
              (forall n$0_11: Ref ::
              { Heap[n$0_11, r_6] } { QPMask[n$0_11, r_6] } { Heap[n$0_11, r_6] }
              (arg_g_1[n$0_11] && n$0_11 != x0) && dummyFunction(Heap[n$0_11, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@333.9--333.38) [87076]"}
              (forall n$0_11: Ref, n$0_11_2: Ref ::
              { neverTriggered136(n$0_11), neverTriggered136(n$0_11_2) }
              (((n$0_11 != n$0_11_2 && (arg_g_1[n$0_11] && n$0_11 != x0)) && (arg_g_1[n$0_11_2] && n$0_11_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_11 != n$0_11_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@333.9--333.38) [87077]"}
              (forall n$0_11: Ref ::
              { Heap[n$0_11, r_6] } { QPMask[n$0_11, r_6] } { Heap[n$0_11, r_6] }
              arg_g_1[n$0_11] && n$0_11 != x0 ==> Mask[n$0_11, r_6] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_11: Ref ::
              { Heap[n$0_11, r_6] } { QPMask[n$0_11, r_6] } { Heap[n$0_11, r_6] }
              (arg_g_1[n$0_11] && n$0_11 != x0) && NoPerm < 1 / 2 ==> qpRange136(n$0_11) && invRecv136(n$0_11) == n$0_11
            );
            assume (forall o_4: Ref ::
              { invRecv136(o_4) }
              (arg_g_1[invRecv136(o_4)] && invRecv136(o_4) != x0) && (NoPerm < 1 / 2 && qpRange136(o_4)) ==> invRecv136(o_4) == o_4
            );
          
          // -- assume permission updates for field r
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              ((arg_g_1[invRecv136(o_4)] && invRecv136(o_4) != x0) && (NoPerm < 1 / 2 && qpRange136(o_4)) ==> invRecv136(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((arg_g_1[invRecv136(o_4)] && invRecv136(o_4) != x0) && (NoPerm < 1 / 2 && qpRange136(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g_1[n$1_6] && Heap[n$1_6, l_8] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [87078]"}
                arg_g_1[Heap[n$1_6, l_8]];
            }
            assume false;
          }
          assume (forall n$1_7_1_1: Ref ::
            { arg_g_1[Heap[n$1_7_1_1, l_8]] } { arg_g_1[n$1_7_1_1], Heap[n$1_7_1_1, l_8] }
            arg_g_1[n$1_7_1_1] && Heap[n$1_7_1_1, l_8] != null ==> arg_g_1[Heap[n$1_7_1_1, l_8]]
          );
          if (*) {
            if (arg_g_1[n$2_4_1] && Heap[n$2_4_1, r_6] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [87079]"}
                arg_g_1[Heap[n$2_4_1, r_6]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { arg_g_1[Heap[n$2_5_1_1, r_6]] } { arg_g_1[n$2_5_1_1], Heap[n$2_5_1_1, r_6] }
            arg_g_1[n$2_5_1_1] && Heap[n$2_5_1_1, r_6] != null ==> arg_g_1[Heap[n$2_5_1_1, r_6]]
          );
          assert {:msg "  The precondition of method link_right might not hold. Assertion x0.r == null might not hold. (create_edge1.vpr@333.9--333.38) [87080]"}
            Heap[x0, r_6] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g_1[null];
          assume arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [87081]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l_8:=Mask[x0, l_8] + perm];
          assume state(Heap, Mask);
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [87082]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_6:=Mask[x0, r_6] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@333.9--333.38) [87083]"}
            (forall n$3_3: Ref, n$3_3_1: Ref ::
            
            (((n$3_3 != n$3_3_1 && (arg_g_1[n$3_3] && n$3_3 != x0)) && (arg_g_1[n$3_3_1] && n$3_3_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_3 != n$3_3_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && NoPerm < 1 / 2 ==> qpRange137(n$3_3) && invRecv137(n$3_3) == n$3_3
            );
            assume (forall o_4: Ref ::
              { invRecv137(o_4) }
              ((arg_g_1[invRecv137(o_4)] && invRecv137(o_4) != x0) && NoPerm < 1 / 2) && qpRange137(o_4) ==> invRecv137(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [87084]"}
            (forall n$3_3: Ref ::
            { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
            arg_g_1[n$3_3] && n$3_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && 1 / 2 > NoPerm ==> n$3_3 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              (((arg_g_1[invRecv137(o_4)] && invRecv137(o_4) != x0) && NoPerm < 1 / 2) && qpRange137(o_4) ==> (NoPerm < 1 / 2 ==> invRecv137(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((arg_g_1[invRecv137(o_4)] && invRecv137(o_4) != x0) && NoPerm < 1 / 2) && qpRange137(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@333.9--333.38) [87085]"}
            (forall n$4_3: Ref, n$4_3_2: Ref ::
            
            (((n$4_3 != n$4_3_2 && (arg_g_1[n$4_3] && n$4_3 != x0)) && (arg_g_1[n$4_3_2] && n$4_3_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_3 != n$4_3_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
              (arg_g_1[n$4_3] && n$4_3 != x0) && NoPerm < 1 / 2 ==> qpRange138(n$4_3) && invRecv138(n$4_3) == n$4_3
            );
            assume (forall o_4: Ref ::
              { invRecv138(o_4) }
              ((arg_g_1[invRecv138(o_4)] && invRecv138(o_4) != x0) && NoPerm < 1 / 2) && qpRange138(o_4) ==> invRecv138(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [87086]"}
            (forall n$4_3: Ref ::
            { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
            arg_g_1[n$4_3] && n$4_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
              (arg_g_1[n$4_3] && n$4_3 != x0) && 1 / 2 > NoPerm ==> n$4_3 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              (((arg_g_1[invRecv138(o_4)] && invRecv138(o_4) != x0) && NoPerm < 1 / 2) && qpRange138(o_4) ==> (NoPerm < 1 / 2 ==> invRecv138(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((arg_g_1[invRecv138(o_4)] && invRecv138(o_4) != x0) && NoPerm < 1 / 2) && qpRange138(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_3_2: Ref ::
            { arg_g_1[Heap[n$5_3_2, l_8]] } { arg_g_1[n$5_3_2], Heap[n$5_3_2, l_8] }
            arg_g_1[n$5_3_2] && Heap[n$5_3_2, l_8] != null ==> arg_g_1[Heap[n$5_3_2, l_8]]
          );
          assume (forall n$6_3_2: Ref ::
            { arg_g_1[Heap[n$6_3_2, r_6]] } { arg_g_1[n$6_3_2], Heap[n$6_3_2, r_6] }
            arg_g_1[n$6_3_2] && Heap[n$6_3_2, r_6] != null ==> arg_g_1[Heap[n$6_3_2, r_6]]
          );
          assume Heap[x0, r_6] == x1_2;
          if (x1_2 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g_1), $$(PreCallHeap, arg_g_1));
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_2_1: Ref, v2_2_1: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g_1)), FrameFragment($$#condqp2(PreCallHeap, arg_g_1))), arg_g_1), v1_2_1, v2_2_1): bool) }
              (edge($$(Heap, arg_g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, arg_g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == x0 && v2_2_1 == x1_2))
            );
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_3: Ref, v2_3: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g_1)), FrameFragment($$#condqp2(Heap, arg_g_1))), arg_g_1), v1_3, v2_3): bool) }
              v1_3 != v2_3 ==> (exists_path($$(Heap, arg_g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, arg_g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, arg_g_1), v1_3, x0): bool) && (exists_path($$(PreCallHeap, arg_g_1), x1_2, v2_3): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of join might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@325.13--325.31) [87087]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$9 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@325.13--325.31) [87088]"}
        (forall n$9_2: Ref, n$9_2_1: Ref ::
        { neverTriggered125(n$9_2), neverTriggered125(n$9_2_1) }
        (((n$9_2 != n$9_2_1 && Set#Union(g0, g1)[n$9_2]) && Set#Union(g0, g1)[n$9_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_2 != n$9_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of join might not hold. There might be insufficient permission to access n$9.l (create_edge1.vpr@325.13--325.31) [87089]"}
        (forall n$9_2: Ref ::
        { Heap[n$9_2, l_8] } { QPMask[n$9_2, l_8] } { Heap[n$9_2, l_8] }
        Set#Union(g0, g1)[n$9_2] ==> Mask[n$9_2, l_8] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$9
      assume (forall n$9_2: Ref ::
        { Heap[n$9_2, l_8] } { QPMask[n$9_2, l_8] } { Heap[n$9_2, l_8] }
        Set#Union(g0, g1)[n$9_2] && NoPerm < FullPerm ==> qpRange125(n$9_2) && invRecv125(n$9_2) == n$9_2
      );
      assume (forall o_4: Ref ::
        { invRecv125(o_4) }
        Set#Union(g0, g1)[invRecv125(o_4)] && (NoPerm < FullPerm && qpRange125(o_4)) ==> invRecv125(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (Set#Union(g0, g1)[invRecv125(o_4)] && (NoPerm < FullPerm && qpRange125(o_4)) ==> invRecv125(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - FullPerm) && (!(Set#Union(g0, g1)[invRecv125(o_4)] && (NoPerm < FullPerm && qpRange125(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$10 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@325.13--325.31) [87090]"}
        (forall n$10_2: Ref, n$10_2_1: Ref ::
        { neverTriggered126(n$10_2), neverTriggered126(n$10_2_1) }
        (((n$10_2 != n$10_2_1 && Set#Union(g0, g1)[n$10_2]) && Set#Union(g0, g1)[n$10_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_2 != n$10_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of join might not hold. There might be insufficient permission to access n$10.r (create_edge1.vpr@325.13--325.31) [87091]"}
        (forall n$10_2: Ref ::
        { Heap[n$10_2, r_6] } { QPMask[n$10_2, r_6] } { Heap[n$10_2, r_6] }
        Set#Union(g0, g1)[n$10_2] ==> Mask[n$10_2, r_6] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$10
      assume (forall n$10_2: Ref ::
        { Heap[n$10_2, r_6] } { QPMask[n$10_2, r_6] } { Heap[n$10_2, r_6] }
        Set#Union(g0, g1)[n$10_2] && NoPerm < FullPerm ==> qpRange126(n$10_2) && invRecv126(n$10_2) == n$10_2
      );
      assume (forall o_4: Ref ::
        { invRecv126(o_4) }
        Set#Union(g0, g1)[invRecv126(o_4)] && (NoPerm < FullPerm && qpRange126(o_4)) ==> invRecv126(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (Set#Union(g0, g1)[invRecv126(o_4)] && (NoPerm < FullPerm && qpRange126(o_4)) ==> invRecv126(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - FullPerm) && (!(Set#Union(g0, g1)[invRecv126(o_4)] && (NoPerm < FullPerm && qpRange126(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$11_2] && Heap[n$11_2, l_8] != null) {
        assert {:msg "  Postcondition of join might not hold. Assertion (n$11.l in (g0 union g1)) might not hold. (create_edge1.vpr@325.13--325.31) [87092]"}
          Set#Union(g0, g1)[Heap[n$11_2, l_8]];
      }
      assume false;
    }
    assume (forall n$11_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$11_3_1, l_8]] } { Set#Union(g0, g1)[n$11_3_1], Heap[n$11_3_1, l_8] }
      Set#Union(g0, g1)[n$11_3_1] && Heap[n$11_3_1, l_8] != null ==> Set#Union(g0, g1)[Heap[n$11_3_1, l_8]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n$12_2] && Heap[n$12_2, r_6] != null) {
        assert {:msg "  Postcondition of join might not hold. Assertion (n$12.r in (g0 union g1)) might not hold. (create_edge1.vpr@325.13--325.31) [87093]"}
          Set#Union(g0, g1)[Heap[n$12_2, r_6]];
      }
      assume false;
    }
    assume (forall n$12_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$12_3_1, r_6]] } { Set#Union(g0, g1)[n$12_3_1], Heap[n$12_3_1, r_6] }
      Set#Union(g0, g1)[n$12_3_1] && Heap[n$12_3_1, r_6] != null ==> Set#Union(g0, g1)[Heap[n$12_3_1, r_6]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n_10_1]) {
        assert {:msg "  Postcondition of join might not hold. Assertion exists_path($$((g0 union g1)), x, n) might not hold. (create_edge1.vpr@326.13--326.84) [87094]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), x, n_10_1): bool);
      }
      assume false;
    }
    assume (forall n_11_1_1: Ref ::
      { Set#Union(g0, g1)[n_11_1_1] } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_11_1_1): bool) }
      Set#Union(g0, g1)[n_11_1_1] ==> (exists_path($$(Heap, Set#Union(g0, g1)), x, n_11_1_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method connect_DAGs
// ==================================================

procedure connect_DAGs(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1_2: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_23: Ref;
  var n$2_34: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$5_7: Ref;
  var n$6_10: Ref;
  var n_42: Ref;
  var n_43: Ref;
  var m_7: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$11_3: Ref;
  var n$12_3: Ref;
  var n_44: Ref;
  var u_29: Ref;
  var v_29: Ref;
  var u$0: Ref;
  var v$0: Ref;
  var u$1: Ref;
  var v$1: Ref;
  var u$2: Ref;
  var v$2: Ref;
  var n$0_8: Ref;
  var n$1_2: Ref;
  var n$0_10: Ref;
  var n$1_4: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_g: (Set Ref);
  var perm: Perm;
  var n$1_6: Ref;
  var n$2_2: Ref;
  var arg_g_1: (Set Ref);
  var n$1_8: Ref;
  var n$2_4_1: Ref;
  var n$11_2: Ref;
  var n$12_2: Ref;
  var n_16: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1_2, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@348.14--348.23) [87095]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange139(n_1) && invRecv139(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv139(o_4) }
        (g0[invRecv139(o_4)] && NoPerm < FullPerm) && qpRange139(o_4) ==> invRecv139(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l_8] } { QPMask[n_1, l_8] } { Heap[n_1, l_8] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g0[invRecv139(o_4)] && NoPerm < FullPerm) && qpRange139(o_4) ==> (NoPerm < FullPerm ==> invRecv139(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g0[invRecv139(o_4)] && NoPerm < FullPerm) && qpRange139(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g0) ==> acc(n$0.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@348.14--348.23) [87096]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && g0[n$0_1]) && g0[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        g0[n$0_1] && NoPerm < FullPerm ==> qpRange140(n$0_1) && invRecv140(n$0_1) == n$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv140(o_4) }
        (g0[invRecv140(o_4)] && NoPerm < FullPerm) && qpRange140(o_4) ==> invRecv140(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_6] } { QPMask[n$0_1, r_6] } { Heap[n$0_1, r_6] }
        g0[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g0[invRecv140(o_4)] && NoPerm < FullPerm) && qpRange140(o_4) ==> (NoPerm < FullPerm ==> invRecv140(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g0[invRecv140(o_4)] && NoPerm < FullPerm) && qpRange140(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g0) } { (n$1 in g0), n$1.l } (n$1 in g0) && n$1.l != null ==> (n$1.l in g0))
      if (*) {
        if (g0[n$1_23]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@348.14--348.23) [87097]"}
            HasDirectPerm(Mask, n$1_23, l_8);
        }
        if (g0[n$1_23] && Heap[n$1_23, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@348.14--348.23) [87098]"}
            HasDirectPerm(Mask, n$1_23, l_8);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g0[Heap[n$1_1, l_8]] } { g0[n$1_1], Heap[n$1_1, l_8] }
      g0[n$1_1] && Heap[n$1_1, l_8] != null ==> g0[Heap[n$1_1, l_8]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g0) } { (n$2 in g0), n$2.r } (n$2 in g0) && n$2.r != null ==> (n$2.r in g0))
      if (*) {
        if (g0[n$2_34]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@348.14--348.23) [87099]"}
            HasDirectPerm(Mask, n$2_34, r_6);
        }
        if (g0[n$2_34] && Heap[n$2_34, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@348.14--348.23) [87100]"}
            HasDirectPerm(Mask, n$2_34, r_6);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g0[Heap[n$2_1_1, r_6]] } { g0[n$2_1_1], Heap[n$2_1_1, r_6] }
      g0[n$2_1_1] && Heap[n$2_1_1, r_6] != null ==> g0[Heap[n$2_1_1, r_6]]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$(g0))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@349.28--349.34) [87101]"}
            (forall n_2: Ref ::
            { Heap[n_2, l_8] } { QPMask[n_2, l_8] } { Heap[n_2, l_8] }
            g0[n_2] && dummyFunction(Heap[n_2, l_8]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@349.28--349.34) [87102]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered141(n_2), neverTriggered141(n_2_1) }
            (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@349.28--349.34) [87103]"}
            (forall n_2: Ref ::
            { Heap[n_2, l_8] } { QPMask[n_2, l_8] } { Heap[n_2, l_8] }
            g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, l_8] } { QPMask[n_2, l_8] } { Heap[n_2, l_8] }
            g0[n_2] && NoPerm < 1 / 2 ==> qpRange141(n_2) && invRecv141(n_2) == n_2
          );
          assume (forall o_4: Ref ::
            { invRecv141(o_4) }
            g0[invRecv141(o_4)] && (NoPerm < 1 / 2 && qpRange141(o_4)) ==> invRecv141(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@349.28--349.34) [87104]"}
            (forall n_3: Ref ::
            { Heap[n_3, r_6] } { QPMask[n_3, r_6] } { Heap[n_3, r_6] }
            g0[n_3] && dummyFunction(Heap[n_3, r_6]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@349.28--349.34) [87105]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered142(n_3), neverTriggered142(n_3_1) }
            (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@349.28--349.34) [87106]"}
            (forall n_3: Ref ::
            { Heap[n_3, r_6] } { QPMask[n_3, r_6] } { Heap[n_3, r_6] }
            g0[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, r_6] } { QPMask[n_3, r_6] } { Heap[n_3, r_6] }
            g0[n_3] && NoPerm < 1 / 2 ==> qpRange142(n_3) && invRecv142(n_3) == n_3
          );
          assume (forall o_4: Ref ::
            { invRecv142(o_4) }
            g0[invRecv142(o_4)] && (NoPerm < 1 / 2 && qpRange142(o_4)) ==> invRecv142(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, g0)): bool);
    assume state(Heap, Mask);
    assume g0[x0];
    assume state(Heap, Mask);
    assume g0[x];
    assume state(Heap, Mask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g1) ==> acc(n$3.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@353.14--353.23) [87107]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && g1[n$3_1_2]) && g1[n$3_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { Heap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { Heap[n$3_1_2, l_8] }
        g1[n$3_1_2] && NoPerm < FullPerm ==> qpRange143(n$3_1_2) && invRecv143(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv143(o_4) }
        (g1[invRecv143(o_4)] && NoPerm < FullPerm) && qpRange143(o_4) ==> invRecv143(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { Heap[n$3_1_2, l_8] } { QPMask[n$3_1_2, l_8] } { Heap[n$3_1_2, l_8] }
        g1[n$3_1_2] ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((g1[invRecv143(o_4)] && NoPerm < FullPerm) && qpRange143(o_4) ==> (NoPerm < FullPerm ==> invRecv143(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + FullPerm) && (!((g1[invRecv143(o_4)] && NoPerm < FullPerm) && qpRange143(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g1) ==> acc(n$4.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@353.14--353.23) [87108]"}
      (forall n$4_1_2: Ref, n$4_1_3: Ref ::
      
      (((n$4_1_2 != n$4_1_3 && g1[n$4_1_2]) && g1[n$4_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1_2 != n$4_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1_2: Ref ::
        { Heap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { Heap[n$4_1_2, r_6] }
        g1[n$4_1_2] && NoPerm < FullPerm ==> qpRange144(n$4_1_2) && invRecv144(n$4_1_2) == n$4_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv144(o_4) }
        (g1[invRecv144(o_4)] && NoPerm < FullPerm) && qpRange144(o_4) ==> invRecv144(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1_2: Ref ::
        { Heap[n$4_1_2, r_6] } { QPMask[n$4_1_2, r_6] } { Heap[n$4_1_2, r_6] }
        g1[n$4_1_2] ==> n$4_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((g1[invRecv144(o_4)] && NoPerm < FullPerm) && qpRange144(o_4) ==> (NoPerm < FullPerm ==> invRecv144(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + FullPerm) && (!((g1[invRecv144(o_4)] && NoPerm < FullPerm) && qpRange144(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g1) } { (n$5 in g1), n$5.l } (n$5 in g1) && n$5.l != null ==> (n$5.l in g1))
      if (*) {
        if (g1[n$5_7]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@353.14--353.23) [87109]"}
            HasDirectPerm(Mask, n$5_7, l_8);
        }
        if (g1[n$5_7] && Heap[n$5_7, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@353.14--353.23) [87110]"}
            HasDirectPerm(Mask, n$5_7, l_8);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g1[Heap[n$5_1, l_8]] } { g1[n$5_1], Heap[n$5_1, l_8] }
      g1[n$5_1] && Heap[n$5_1, l_8] != null ==> g1[Heap[n$5_1, l_8]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g1) } { (n$6 in g1), n$6.r } (n$6 in g1) && n$6.r != null ==> (n$6.r in g1))
      if (*) {
        if (g1[n$6_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@353.14--353.23) [87111]"}
            HasDirectPerm(Mask, n$6_10, r_6);
        }
        if (g1[n$6_10] && Heap[n$6_10, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@353.14--353.23) [87112]"}
            HasDirectPerm(Mask, n$6_10, r_6);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[Heap[n$6_1, r_6]] } { g1[n$6_1], Heap[n$6_1, r_6] }
      g1[n$6_1] && Heap[n$6_1, r_6] != null ==> g1[Heap[n$6_1, r_6]]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$(g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@354.28--354.34) [87113]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { Heap[n_4_1, l_8] }
            g1[n_4_1] && dummyFunction(Heap[n_4_1, l_8]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@354.28--354.34) [87114]"}
            (forall n_4_1: Ref, n_4_2: Ref ::
            { neverTriggered145(n_4_1), neverTriggered145(n_4_2) }
            (((n_4_1 != n_4_2 && g1[n_4_1]) && g1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@354.28--354.34) [87115]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { Heap[n_4_1, l_8] }
            g1[n_4_1] ==> 1 / 2 > NoPerm ==> Mask[n_4_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4_1: Ref ::
            { Heap[n_4_1, l_8] } { QPMask[n_4_1, l_8] } { Heap[n_4_1, l_8] }
            g1[n_4_1] && NoPerm < 1 / 2 ==> qpRange145(n_4_1) && invRecv145(n_4_1) == n_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv145(o_4) }
            g1[invRecv145(o_4)] && (NoPerm < 1 / 2 && qpRange145(o_4)) ==> invRecv145(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@354.28--354.34) [87116]"}
            (forall n_5: Ref ::
            { Heap[n_5, r_6] } { QPMask[n_5, r_6] } { Heap[n_5, r_6] }
            g1[n_5] && dummyFunction(Heap[n_5, r_6]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@354.28--354.34) [87117]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered146(n_5), neverTriggered146(n_5_1) }
            (((n_5 != n_5_1 && g1[n_5]) && g1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@354.28--354.34) [87118]"}
            (forall n_5: Ref ::
            { Heap[n_5, r_6] } { QPMask[n_5, r_6] } { Heap[n_5, r_6] }
            g1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, r_6] } { QPMask[n_5, r_6] } { Heap[n_5, r_6] }
            g1[n_5] && NoPerm < 1 / 2 ==> qpRange146(n_5) && invRecv146(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv146(o_4) }
            g1[invRecv146(o_4)] && (NoPerm < 1 / 2 && qpRange146(o_4)) ==> invRecv146(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, g1)): bool);
    assume state(Heap, Mask);
    assume g1[x1_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g0), x, n) } (n in g0) ==> exists_path($$(g0), x, n))
      if (*) {
        if (g0[n_42]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@357.82--357.88) [87119]"}
                (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] && dummyFunction(Heap[n$0_2_1, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@357.82--357.88) [87120]"}
                (forall n$0_2_1: Ref, n$0_2_2: Ref ::
                { neverTriggered147(n$0_2_1), neverTriggered147(n$0_2_2) }
                (((n$0_2_1 != n$0_2_2 && g0[n$0_2_1]) && g0[n$0_2_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2_1 != n$0_2_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@357.82--357.88) [87121]"}
                (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] ==> 1 / 2 > NoPerm ==> Mask[n$0_2_1, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2_1: Ref ::
                { Heap[n$0_2_1, l_8] } { QPMask[n$0_2_1, l_8] } { Heap[n$0_2_1, l_8] }
                g0[n$0_2_1] && NoPerm < 1 / 2 ==> qpRange147(n$0_2_1) && invRecv147(n$0_2_1) == n$0_2_1
              );
              assume (forall o_4: Ref ::
                { invRecv147(o_4) }
                g0[invRecv147(o_4)] && (NoPerm < 1 / 2 && qpRange147(o_4)) ==> invRecv147(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@357.82--357.88) [87122]"}
                (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] && dummyFunction(Heap[n$0_3_2, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@357.82--357.88) [87123]"}
                (forall n$0_3_2: Ref, n$0_3_3: Ref ::
                { neverTriggered148(n$0_3_2), neverTriggered148(n$0_3_3) }
                (((n$0_3_2 != n$0_3_3 && g0[n$0_3_2]) && g0[n$0_3_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3_2 != n$0_3_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@357.82--357.88) [87124]"}
                (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_3_2, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3_2: Ref ::
                { Heap[n$0_3_2, r_6] } { QPMask[n$0_3_2, r_6] } { Heap[n$0_3_2, r_6] }
                g0[n$0_3_2] && NoPerm < 1 / 2 ==> qpRange148(n$0_3_2) && invRecv148(n$0_3_2) == n$0_3_2
              );
              assume (forall o_4: Ref ::
                { invRecv148(o_4) }
                g0[invRecv148(o_4)] && (NoPerm < 1 / 2 && qpRange148(o_4)) ==> invRecv148(o_4) == o_4
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
    assume (forall n_7: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), x, n_7): bool) }
      g0[n_7] ==> (exists_path($$(Heap, g0), x, n_7): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g0), n, x0) } (n in g0) ==> exists_path($$(g0), n, x0))
      if (*) {
        if (g0[n_43]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@358.83--358.89) [87125]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] && dummyFunction(Heap[n$0_4, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@358.83--358.89) [87126]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered149(n$0_4), neverTriggered149(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g0[n$0_4]) && g0[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@358.83--358.89) [87127]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] ==> 1 / 2 > NoPerm ==> Mask[n$0_4, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, l_8] } { QPMask[n$0_4, l_8] } { Heap[n$0_4, l_8] }
                g0[n$0_4] && NoPerm < 1 / 2 ==> qpRange149(n$0_4) && invRecv149(n$0_4) == n$0_4
              );
              assume (forall o_4: Ref ::
                { invRecv149(o_4) }
                g0[invRecv149(o_4)] && (NoPerm < 1 / 2 && qpRange149(o_4)) ==> invRecv149(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@358.83--358.89) [87128]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] && dummyFunction(Heap[n$0_5, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@358.83--358.89) [87129]"}
                (forall n$0_5: Ref, n$0_5_2: Ref ::
                { neverTriggered150(n$0_5), neverTriggered150(n$0_5_2) }
                (((n$0_5 != n$0_5_2 && g0[n$0_5]) && g0[n$0_5_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@358.83--358.89) [87130]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] ==> 1 / 2 > NoPerm ==> Mask[n$0_5, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, r_6] } { QPMask[n$0_5, r_6] } { Heap[n$0_5, r_6] }
                g0[n$0_5] && NoPerm < 1 / 2 ==> qpRange150(n$0_5) && invRecv150(n$0_5) == n$0_5
              );
              assume (forall o_4: Ref ::
                { invRecv150(o_4) }
                g0[invRecv150(o_4)] && (NoPerm < 1 / 2 && qpRange150(o_4)) ==> invRecv150(o_4) == o_4
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
    assume (forall n_9: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), n_9, x0): bool) }
      g0[n_9] ==> (exists_path($$(Heap, g0), n_9, x0): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall m: Ref :: { exists_path($$(g1), x1, m) } (m in g1) ==> exists_path($$(g1), x1, m))
      if (*) {
        if (g1[m_7]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@359.83--359.89) [87131]"}
                (forall n_10_1: Ref ::
                { Heap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { Heap[n_10_1, l_8] }
                g1[n_10_1] && dummyFunction(Heap[n_10_1, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@359.83--359.89) [87132]"}
                (forall n_10_1: Ref, n_10_2: Ref ::
                { neverTriggered151(n_10_1), neverTriggered151(n_10_2) }
                (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@359.83--359.89) [87133]"}
                (forall n_10_1: Ref ::
                { Heap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { Heap[n_10_1, l_8] }
                g1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_10_1: Ref ::
                { Heap[n_10_1, l_8] } { QPMask[n_10_1, l_8] } { Heap[n_10_1, l_8] }
                g1[n_10_1] && NoPerm < 1 / 2 ==> qpRange151(n_10_1) && invRecv151(n_10_1) == n_10_1
              );
              assume (forall o_4: Ref ::
                { invRecv151(o_4) }
                g1[invRecv151(o_4)] && (NoPerm < 1 / 2 && qpRange151(o_4)) ==> invRecv151(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@359.83--359.89) [87134]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { Heap[n_11_1, r_6] }
                g1[n_11_1] && dummyFunction(Heap[n_11_1, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@359.83--359.89) [87135]"}
                (forall n_11_1: Ref, n_11_2: Ref ::
                { neverTriggered152(n_11_1), neverTriggered152(n_11_2) }
                (((n_11_1 != n_11_2 && g1[n_11_1]) && g1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@359.83--359.89) [87136]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { Heap[n_11_1, r_6] }
                g1[n_11_1] ==> 1 / 2 > NoPerm ==> Mask[n_11_1, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_1: Ref ::
                { Heap[n_11_1, r_6] } { QPMask[n_11_1, r_6] } { Heap[n_11_1, r_6] }
                g1[n_11_1] && NoPerm < 1 / 2 ==> qpRange152(n_11_1) && invRecv152(n_11_1) == n_11_1
              );
              assume (forall o_4: Ref ::
                { invRecv152(o_4) }
                g1[invRecv152(o_4)] && (NoPerm < 1 / 2 && qpRange152(o_4)) ==> invRecv152(o_4) == o_4
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
    assume (forall m_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), x1_2, m_1_1): bool) }
      g1[m_1_1] ==> (exists_path($$(Heap, g1), x1_2, m_1_1): bool)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.l == null || x0.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.l (create_edge1.vpr@361.14--361.42) [87137]"}
        HasDirectPerm(Mask, x0, l_8);
      if (!(Heap[x0, l_8] == null)) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.r (create_edge1.vpr@361.14--361.42) [87138]"}
          HasDirectPerm(Mask, x0, r_6);
      }
    assume Heap[x0, l_8] == null || Heap[x0, r_6] == null;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$7: Ref :: { (n$7 in g0), (n$7 in g1) } (n$7 in g0) ==> !((n$7 in g1)))
      if (*) {
        assume false;
      }
    assume (forall n$7_1: Ref ::
      { g0[n$7_1], g1[n$7_1] }
      g0[n$7_1] ==> !g1[n$7_1]
    );
    
    // -- Check definedness of (forall n$8: Ref :: { (n$8 in g0), (n$8 in g1) } (n$8 in g1) ==> !((n$8 in g0)))
      if (*) {
        assume false;
      }
    assume (forall n$8_1: Ref ::
      { g0[n$8_1], g1[n$8_1] }
      g1[n$8_1] ==> !g0[n$8_1]
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
    assume !Set#Union(g0, g1)[null];
    
    // -- Check definedness of (forall n$9: Ref :: { n$9.l } (n$9 in (g0 union g1)) ==> acc(n$9.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@365.13--365.31) [87139]"}
      (forall n$9_1: Ref, n$9_1_1: Ref ::
      
      (((n$9_1 != n$9_1_1 && Set#Union(g0, g1)[n$9_1]) && Set#Union(g0, g1)[n$9_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_1 != n$9_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l_8] } { QPMask[n$9_1, l_8] } { PostHeap[n$9_1, l_8] }
        Set#Union(g0, g1)[n$9_1] && NoPerm < FullPerm ==> qpRange153(n$9_1) && invRecv153(n$9_1) == n$9_1
      );
      assume (forall o_4: Ref ::
        { invRecv153(o_4) }
        (Set#Union(g0, g1)[invRecv153(o_4)] && NoPerm < FullPerm) && qpRange153(o_4) ==> invRecv153(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l_8] } { QPMask[n$9_1, l_8] } { PostHeap[n$9_1, l_8] }
        Set#Union(g0, g1)[n$9_1] ==> n$9_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        ((Set#Union(g0, g1)[invRecv153(o_4)] && NoPerm < FullPerm) && qpRange153(o_4) ==> (NoPerm < FullPerm ==> invRecv153(o_4) == o_4) && QPMask[o_4, l_8] == PostMask[o_4, l_8] + FullPerm) && (!((Set#Union(g0, g1)[invRecv153(o_4)] && NoPerm < FullPerm) && qpRange153(o_4)) ==> QPMask[o_4, l_8] == PostMask[o_4, l_8])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != l_8 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$10: Ref :: { n$10.r } (n$10 in (g0 union g1)) ==> acc(n$10.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@365.13--365.31) [87140]"}
      (forall n$10_1: Ref, n$10_1_1: Ref ::
      
      (((n$10_1 != n$10_1_1 && Set#Union(g0, g1)[n$10_1]) && Set#Union(g0, g1)[n$10_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_1 != n$10_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_6] } { QPMask[n$10_1, r_6] } { PostHeap[n$10_1, r_6] }
        Set#Union(g0, g1)[n$10_1] && NoPerm < FullPerm ==> qpRange154(n$10_1) && invRecv154(n$10_1) == n$10_1
      );
      assume (forall o_4: Ref ::
        { invRecv154(o_4) }
        (Set#Union(g0, g1)[invRecv154(o_4)] && NoPerm < FullPerm) && qpRange154(o_4) ==> invRecv154(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_6] } { QPMask[n$10_1, r_6] } { PostHeap[n$10_1, r_6] }
        Set#Union(g0, g1)[n$10_1] ==> n$10_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        ((Set#Union(g0, g1)[invRecv154(o_4)] && NoPerm < FullPerm) && qpRange154(o_4) ==> (NoPerm < FullPerm ==> invRecv154(o_4) == o_4) && QPMask[o_4, r_6] == PostMask[o_4, r_6] + FullPerm) && (!((Set#Union(g0, g1)[invRecv154(o_4)] && NoPerm < FullPerm) && qpRange154(o_4)) ==> QPMask[o_4, r_6] == PostMask[o_4, r_6])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != r_6 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$11: Ref :: { (n$11.l in (g0 union g1)) } { (n$11 in (g0 union g1)), n$11.l } (n$11 in (g0 union g1)) && n$11.l != null ==> (n$11.l in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$11_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@365.13--365.31) [87141]"}
            HasDirectPerm(PostMask, n$11_3, l_8);
        }
        if (Set#Union(g0, g1)[n$11_3] && PostHeap[n$11_3, l_8] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@365.13--365.31) [87142]"}
            HasDirectPerm(PostMask, n$11_3, l_8);
        }
        assume false;
      }
    assume (forall n$11_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$11_1, l_8]] } { Set#Union(g0, g1)[n$11_1], PostHeap[n$11_1, l_8] }
      Set#Union(g0, g1)[n$11_1] && PostHeap[n$11_1, l_8] != null ==> Set#Union(g0, g1)[PostHeap[n$11_1, l_8]]
    );
    
    // -- Check definedness of (forall n$12: Ref :: { (n$12.r in (g0 union g1)) } { (n$12 in (g0 union g1)), n$12.r } (n$12 in (g0 union g1)) && n$12.r != null ==> (n$12.r in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$12_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@365.13--365.31) [87143]"}
            HasDirectPerm(PostMask, n$12_3, r_6);
        }
        if (Set#Union(g0, g1)[n$12_3] && PostHeap[n$12_3, r_6] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@365.13--365.31) [87144]"}
            HasDirectPerm(PostMask, n$12_3, r_6);
        }
        assume false;
      }
    assume (forall n$12_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$12_1, r_6]] } { Set#Union(g0, g1)[n$12_1], PostHeap[n$12_1, r_6] }
      Set#Union(g0, g1)[n$12_1] && PostHeap[n$12_1, r_6] != null ==> Set#Union(g0, g1)[PostHeap[n$12_1, r_6]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$((g0 union g1)), x, n) } (n in (g0 union g1)) ==> exists_path($$((g0 union g1)), x, n))
      if (*) {
        if (Set#Union(g0, g1)[n_44]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@366.101--366.116) [87145]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] && dummyFunction(PostHeap[n$0_6, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@366.101--366.116) [87146]"}
                (forall n$0_6: Ref, n$0_6_1: Ref ::
                { neverTriggered155(n$0_6), neverTriggered155(n$0_6_1) }
                (((n$0_6 != n$0_6_1 && Set#Union(g0, g1)[n$0_6]) && Set#Union(g0, g1)[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@366.101--366.116) [87147]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] ==> 1 / 2 > NoPerm ==> PostMask[n$0_6, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l_8] } { QPMask[n$0_6, l_8] } { PostHeap[n$0_6, l_8] }
                Set#Union(g0, g1)[n$0_6] && NoPerm < 1 / 2 ==> qpRange155(n$0_6) && invRecv155(n$0_6) == n$0_6
              );
              assume (forall o_4: Ref ::
                { invRecv155(o_4) }
                Set#Union(g0, g1)[invRecv155(o_4)] && (NoPerm < 1 / 2 && qpRange155(o_4)) ==> invRecv155(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@366.101--366.116) [87148]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] && dummyFunction(PostHeap[n$0_7, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@366.101--366.116) [87149]"}
                (forall n$0_7: Ref, n$0_7_2: Ref ::
                { neverTriggered156(n$0_7), neverTriggered156(n$0_7_2) }
                (((n$0_7 != n$0_7_2 && Set#Union(g0, g1)[n$0_7]) && Set#Union(g0, g1)[n$0_7_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@366.101--366.116) [87150]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] ==> 1 / 2 > NoPerm ==> PostMask[n$0_7, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_6] } { QPMask[n$0_7, r_6] } { PostHeap[n$0_7, r_6] }
                Set#Union(g0, g1)[n$0_7] && NoPerm < 1 / 2 ==> qpRange156(n$0_7) && invRecv156(n$0_7) == n$0_7
              );
              assume (forall o_4: Ref ::
                { invRecv156(o_4) }
                Set#Union(g0, g1)[invRecv156(o_4)] && (NoPerm < 1 / 2 && qpRange156(o_4)) ==> invRecv156(o_4) == o_4
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
    assume (forall n_13: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), FrameFragment($$#condqp2(PostHeap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_13): bool) }
      Set#Union(g0, g1)[n_13] ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), x, n_13): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acyclic_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@368.27--368.42) [87151]"}
            (forall n_14: Ref ::
            { PostHeap[n_14, l_8] } { QPMask[n_14, l_8] } { PostHeap[n_14, l_8] }
            Set#Union(g0, g1)[n_14] && dummyFunction(PostHeap[n_14, l_8]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@368.27--368.42) [87152]"}
            (forall n_14: Ref, n_14_1: Ref ::
            { neverTriggered157(n_14), neverTriggered157(n_14_1) }
            (((n_14 != n_14_1 && Set#Union(g0, g1)[n_14]) && Set#Union(g0, g1)[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@368.27--368.42) [87153]"}
            (forall n_14: Ref ::
            { PostHeap[n_14, l_8] } { QPMask[n_14, l_8] } { PostHeap[n_14, l_8] }
            Set#Union(g0, g1)[n_14] ==> 1 / 2 > NoPerm ==> PostMask[n_14, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_14: Ref ::
            { PostHeap[n_14, l_8] } { QPMask[n_14, l_8] } { PostHeap[n_14, l_8] }
            Set#Union(g0, g1)[n_14] && NoPerm < 1 / 2 ==> qpRange157(n_14) && invRecv157(n_14) == n_14
          );
          assume (forall o_4: Ref ::
            { invRecv157(o_4) }
            Set#Union(g0, g1)[invRecv157(o_4)] && (NoPerm < 1 / 2 && qpRange157(o_4)) ==> invRecv157(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@368.27--368.42) [87154]"}
            (forall n_15: Ref ::
            { PostHeap[n_15, r_6] } { QPMask[n_15, r_6] } { PostHeap[n_15, r_6] }
            Set#Union(g0, g1)[n_15] && dummyFunction(PostHeap[n_15, r_6]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@368.27--368.42) [87155]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered158(n_15), neverTriggered158(n_15_1) }
            (((n_15 != n_15_1 && Set#Union(g0, g1)[n_15]) && Set#Union(g0, g1)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@368.27--368.42) [87156]"}
            (forall n_15: Ref ::
            { PostHeap[n_15, r_6] } { QPMask[n_15, r_6] } { PostHeap[n_15, r_6] }
            Set#Union(g0, g1)[n_15] ==> 1 / 2 > NoPerm ==> PostMask[n_15, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { PostHeap[n_15, r_6] } { QPMask[n_15, r_6] } { PostHeap[n_15, r_6] }
            Set#Union(g0, g1)[n_15] && NoPerm < 1 / 2 ==> qpRange158(n_15) && invRecv158(n_15) == n_15
          );
          assume (forall o_4: Ref ::
            { invRecv158(o_4) }
            Set#Union(g0, g1)[invRecv158(o_4)] && (NoPerm < 1 / 2 && qpRange158(o_4)) ==> invRecv158(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(PostHeap, Set#Union(g0, g1))): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale (forall u: Ref, v: Ref ::
  //     { exists_path($$((g0 union g1)), u, v), (u in g0), (v in g0) }
  //     (u in g0) && !((v in g0)) ==> !exists_path($$((g0 union g1)), u, v)) -- create_edge1.vpr@376.12--376.40
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$((g0 union g1)), u, v), (u in g0), (v in g0) } (u in g0) && !((v in g0)) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_29] && !g0[v_29]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [87157]"}
                (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] && dummyFunction(Heap[n_18, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@342.123--342.138) [87158]"}
                (forall n_18: Ref, n_18_1: Ref ::
                { neverTriggered161(n_18), neverTriggered161(n_18_1) }
                (((n_18 != n_18_1 && Set#Union(g0, g1)[n_18]) && Set#Union(g0, g1)[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@342.123--342.138) [87159]"}
                (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] ==> 1 / 2 > NoPerm ==> Mask[n_18, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_18: Ref ::
                { Heap[n_18, l_8] } { QPMask[n_18, l_8] } { Heap[n_18, l_8] }
                Set#Union(g0, g1)[n_18] && NoPerm < 1 / 2 ==> qpRange161(n_18) && invRecv161(n_18) == n_18
              );
              assume (forall o_4: Ref ::
                { invRecv161(o_4) }
                Set#Union(g0, g1)[invRecv161(o_4)] && (NoPerm < 1 / 2 && qpRange161(o_4)) ==> invRecv161(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [87160]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] && dummyFunction(Heap[n_19, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@342.123--342.138) [87161]"}
                (forall n_19: Ref, n_19_1: Ref ::
                { neverTriggered162(n_19), neverTriggered162(n_19_1) }
                (((n_19 != n_19_1 && Set#Union(g0, g1)[n_19]) && Set#Union(g0, g1)[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@342.123--342.138) [87162]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] ==> 1 / 2 > NoPerm ==> Mask[n_19, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_19: Ref ::
                { Heap[n_19, r_6] } { QPMask[n_19, r_6] } { Heap[n_19, r_6] }
                Set#Union(g0, g1)[n_19] && NoPerm < 1 / 2 ==> qpRange162(n_19) && invRecv162(n_19) == n_19
              );
              assume (forall o_4: Ref ::
                { invRecv162(o_4) }
                Set#Union(g0, g1)[invRecv162(o_4)] && (NoPerm < 1 / 2 && qpRange162(o_4)) ==> invRecv162(o_4) == o_4
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
    assume (forall u_1: Ref, v_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_1, v_1_1): bool), g0[u_1], g0[v_1_1] }
      g0[u_1] && !g0[v_1_1] ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_1, v_1_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall u$0: Ref, v$0: Ref ::
  //     { exists_path($$((g0 union g1)), u$0, v$0), (u$0 in g1), (v$0 in g1) }
  //     (u$0 in g1) && !((v$0 in g1)) ==>
  //     !exists_path($$((g0 union g1)), u$0, v$0)) -- create_edge1.vpr@376.12--376.40
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u$0: Ref, v$0: Ref :: { exists_path($$((g0 union g1)), u$0, v$0), (u$0 in g1), (v$0 in g1) } (u$0 in g1) && !((v$0 in g1)) ==> !exists_path($$((g0 union g1)), u$0, v$0))
      if (*) {
        if (g1[u$0] && !g1[v$0]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [87163]"}
                (forall n_20: Ref ::
                { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                Set#Union(g0, g1)[n_20] && dummyFunction(Heap[n_20, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@344.123--344.138) [87164]"}
                (forall n_20: Ref, n_20_1: Ref ::
                { neverTriggered163(n_20), neverTriggered163(n_20_1) }
                (((n_20 != n_20_1 && Set#Union(g0, g1)[n_20]) && Set#Union(g0, g1)[n_20_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@344.123--344.138) [87165]"}
                (forall n_20: Ref ::
                { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                Set#Union(g0, g1)[n_20] ==> 1 / 2 > NoPerm ==> Mask[n_20, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_20: Ref ::
                { Heap[n_20, l_8] } { QPMask[n_20, l_8] } { Heap[n_20, l_8] }
                Set#Union(g0, g1)[n_20] && NoPerm < 1 / 2 ==> qpRange163(n_20) && invRecv163(n_20) == n_20
              );
              assume (forall o_4: Ref ::
                { invRecv163(o_4) }
                Set#Union(g0, g1)[invRecv163(o_4)] && (NoPerm < 1 / 2 && qpRange163(o_4)) ==> invRecv163(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [87166]"}
                (forall n_21: Ref ::
                { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                Set#Union(g0, g1)[n_21] && dummyFunction(Heap[n_21, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@344.123--344.138) [87167]"}
                (forall n_21: Ref, n_21_1: Ref ::
                { neverTriggered164(n_21), neverTriggered164(n_21_1) }
                (((n_21 != n_21_1 && Set#Union(g0, g1)[n_21]) && Set#Union(g0, g1)[n_21_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@344.123--344.138) [87168]"}
                (forall n_21: Ref ::
                { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                Set#Union(g0, g1)[n_21] ==> 1 / 2 > NoPerm ==> Mask[n_21, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_21: Ref ::
                { Heap[n_21, r_6] } { QPMask[n_21, r_6] } { Heap[n_21, r_6] }
                Set#Union(g0, g1)[n_21] && NoPerm < 1 / 2 ==> qpRange164(n_21) && invRecv164(n_21) == n_21
              );
              assume (forall o_4: Ref ::
                { invRecv164(o_4) }
                Set#Union(g0, g1)[invRecv164(o_4)] && (NoPerm < 1 / 2 && qpRange164(o_4)) ==> invRecv164(o_4) == o_4
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
    assume (forall u$0_1: Ref, v$0_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u$0_1, v$0_1): bool), g1[u$0_1], g1[v$0_1] }
      g1[u$0_1] && !g1[v$0_1] ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u$0_1, v$0_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall u$1: Ref, v$1: Ref ::
  //     { exists_path($$((g1 union g0)), u$1, v$1), (u$1 in g1), (v$1 in g1) }
  //     (u$1 in g1) && !((v$1 in g1)) ==>
  //     !exists_path($$((g1 union g0)), u$1, v$1)) -- create_edge1.vpr@377.12--377.40
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u$1: Ref, v$1: Ref :: { exists_path($$((g1 union g0)), u$1, v$1), (u$1 in g1), (v$1 in g1) } (u$1 in g1) && !((v$1 in g1)) ==> !exists_path($$((g1 union g0)), u$1, v$1))
      if (*) {
        if (g1[u$1] && !g1[v$1]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [87169]"}
                (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] && dummyFunction(Heap[n_22, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@342.123--342.138) [87170]"}
                (forall n_22: Ref, n_22_1: Ref ::
                { neverTriggered165(n_22), neverTriggered165(n_22_1) }
                (((n_22 != n_22_1 && Set#Union(g1, g0)[n_22]) && Set#Union(g1, g0)[n_22_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@342.123--342.138) [87171]"}
                (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] ==> 1 / 2 > NoPerm ==> Mask[n_22, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_22: Ref ::
                { Heap[n_22, l_8] } { QPMask[n_22, l_8] } { Heap[n_22, l_8] }
                Set#Union(g1, g0)[n_22] && NoPerm < 1 / 2 ==> qpRange165(n_22) && invRecv165(n_22) == n_22
              );
              assume (forall o_4: Ref ::
                { invRecv165(o_4) }
                Set#Union(g1, g0)[invRecv165(o_4)] && (NoPerm < 1 / 2 && qpRange165(o_4)) ==> invRecv165(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [87172]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] && dummyFunction(Heap[n_23, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@342.123--342.138) [87173]"}
                (forall n_23: Ref, n_23_1: Ref ::
                { neverTriggered166(n_23), neverTriggered166(n_23_1) }
                (((n_23 != n_23_1 && Set#Union(g1, g0)[n_23]) && Set#Union(g1, g0)[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@342.123--342.138) [87174]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] ==> 1 / 2 > NoPerm ==> Mask[n_23, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_23: Ref ::
                { Heap[n_23, r_6] } { QPMask[n_23, r_6] } { Heap[n_23, r_6] }
                Set#Union(g1, g0)[n_23] && NoPerm < 1 / 2 ==> qpRange166(n_23) && invRecv166(n_23) == n_23
              );
              assume (forall o_4: Ref ::
                { invRecv166(o_4) }
                Set#Union(g1, g0)[invRecv166(o_4)] && (NoPerm < 1 / 2 && qpRange166(o_4)) ==> invRecv166(o_4) == o_4
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
    assume (forall u$1_1: Ref, v$1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), FrameFragment($$#condqp2(Heap, Set#Union(g1, g0)))), Set#Union(g1, g0)), u$1_1, v$1_1): bool), g1[u$1_1], g1[v$1_1] }
      g1[u$1_1] && !g1[v$1_1] ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u$1_1, v$1_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall u$2: Ref, v$2: Ref ::
  //     { exists_path($$((g1 union g0)), u$2, v$2), (u$2 in g0), (v$2 in g0) }
  //     (u$2 in g0) && !((v$2 in g0)) ==>
  //     !exists_path($$((g1 union g0)), u$2, v$2)) -- create_edge1.vpr@377.12--377.40
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u$2: Ref, v$2: Ref :: { exists_path($$((g1 union g0)), u$2, v$2), (u$2 in g0), (v$2 in g0) } (u$2 in g0) && !((v$2 in g0)) ==> !exists_path($$((g1 union g0)), u$2, v$2))
      if (*) {
        if (g0[u$2] && !g0[v$2]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [87175]"}
                (forall n_24: Ref ::
                { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                Set#Union(g1, g0)[n_24] && dummyFunction(Heap[n_24, l_8]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@344.123--344.138) [87176]"}
                (forall n_24: Ref, n_24_1: Ref ::
                { neverTriggered167(n_24), neverTriggered167(n_24_1) }
                (((n_24 != n_24_1 && Set#Union(g1, g0)[n_24]) && Set#Union(g1, g0)[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@344.123--344.138) [87177]"}
                (forall n_24: Ref ::
                { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                Set#Union(g1, g0)[n_24] ==> 1 / 2 > NoPerm ==> Mask[n_24, l_8] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_24: Ref ::
                { Heap[n_24, l_8] } { QPMask[n_24, l_8] } { Heap[n_24, l_8] }
                Set#Union(g1, g0)[n_24] && NoPerm < 1 / 2 ==> qpRange167(n_24) && invRecv167(n_24) == n_24
              );
              assume (forall o_4: Ref ::
                { invRecv167(o_4) }
                Set#Union(g1, g0)[invRecv167(o_4)] && (NoPerm < 1 / 2 && qpRange167(o_4)) ==> invRecv167(o_4) == o_4
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [87178]"}
                (forall n_25_1: Ref ::
                { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                Set#Union(g1, g0)[n_25_1] && dummyFunction(Heap[n_25_1, r_6]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@344.123--344.138) [87179]"}
                (forall n_25_1: Ref, n_25_2: Ref ::
                { neverTriggered168(n_25_1), neverTriggered168(n_25_2) }
                (((n_25_1 != n_25_2 && Set#Union(g1, g0)[n_25_1]) && Set#Union(g1, g0)[n_25_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_25_1 != n_25_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@344.123--344.138) [87180]"}
                (forall n_25_1: Ref ::
                { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                Set#Union(g1, g0)[n_25_1] ==> 1 / 2 > NoPerm ==> Mask[n_25_1, r_6] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_25_1: Ref ::
                { Heap[n_25_1, r_6] } { QPMask[n_25_1, r_6] } { Heap[n_25_1, r_6] }
                Set#Union(g1, g0)[n_25_1] && NoPerm < 1 / 2 ==> qpRange168(n_25_1) && invRecv168(n_25_1) == n_25_1
              );
              assume (forall o_4: Ref ::
                { invRecv168(o_4) }
                Set#Union(g1, g0)[invRecv168(o_4)] && (NoPerm < 1 / 2 && qpRange168(o_4)) ==> invRecv168(o_4) == o_4
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
    assume (forall u$2_1: Ref, v$2_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), FrameFragment($$#condqp2(Heap, Set#Union(g1, g0)))), Set#Union(g1, g0)), u$2_1, v$2_1): bool), g0[u$2_1], g0[v$2_1] }
      g0[u$2_1] && !g0[v$2_1] ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u$2_1, v$2_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- create_edge1.vpr@380.12--380.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@380.12--380.34) [87181]"}
            (forall n_26_1: Ref, n_26_2: Ref ::
            { neverTriggered169(n_26_1), neverTriggered169(n_26_2) }
            (((n_26_1 != n_26_2 && g0[n_26_1]) && g0[n_26_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_26_1 != n_26_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@380.12--380.34) [87182]"}
            (forall n_26_1: Ref ::
            { Heap[n_26_1, l_8] } { QPMask[n_26_1, l_8] } { Heap[n_26_1, l_8] }
            g0[n_26_1] ==> FullPerm > NoPerm ==> Mask[n_26_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_26_1: Ref ::
            { Heap[n_26_1, l_8] } { QPMask[n_26_1, l_8] } { Heap[n_26_1, l_8] }
            g0[n_26_1] && NoPerm < FullPerm ==> qpRange169(n_26_1) && invRecv169(n_26_1) == n_26_1
          );
          assume (forall o_4: Ref ::
            { invRecv169(o_4) }
            g0[invRecv169(o_4)] && (NoPerm < FullPerm && qpRange169(o_4)) ==> invRecv169(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@380.12--380.34) [87183]"}
            (forall n_27_1: Ref, n_27_2: Ref ::
            { neverTriggered170(n_27_1), neverTriggered170(n_27_2) }
            (((n_27_1 != n_27_2 && g0[n_27_1]) && g0[n_27_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_27_1 != n_27_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@380.12--380.34) [87184]"}
            (forall n_27_1: Ref ::
            { Heap[n_27_1, r_6] } { QPMask[n_27_1, r_6] } { Heap[n_27_1, r_6] }
            g0[n_27_1] ==> FullPerm > NoPerm ==> Mask[n_27_1, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_27_1: Ref ::
            { Heap[n_27_1, r_6] } { QPMask[n_27_1, r_6] } { Heap[n_27_1, r_6] }
            g0[n_27_1] && NoPerm < FullPerm ==> qpRange170(n_27_1) && invRecv170(n_27_1) == n_27_1
          );
          assume (forall o_4: Ref ::
            { invRecv170(o_4) }
            g0[invRecv170(o_4)] && (NoPerm < FullPerm && qpRange170(o_4)) ==> invRecv170(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@380.12--380.34) [87185]"}
            (forall n_28_1: Ref, n_28_2: Ref ::
            { neverTriggered171(n_28_1), neverTriggered171(n_28_2) }
            (((n_28_1 != n_28_2 && g1[n_28_1]) && g1[n_28_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_28_1 != n_28_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@380.12--380.34) [87186]"}
            (forall n_28_1: Ref ::
            { Heap[n_28_1, l_8] } { QPMask[n_28_1, l_8] } { Heap[n_28_1, l_8] }
            g1[n_28_1] ==> FullPerm > NoPerm ==> Mask[n_28_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_28_1: Ref ::
            { Heap[n_28_1, l_8] } { QPMask[n_28_1, l_8] } { Heap[n_28_1, l_8] }
            g1[n_28_1] && NoPerm < FullPerm ==> qpRange171(n_28_1) && invRecv171(n_28_1) == n_28_1
          );
          assume (forall o_4: Ref ::
            { invRecv171(o_4) }
            g1[invRecv171(o_4)] && (NoPerm < FullPerm && qpRange171(o_4)) ==> invRecv171(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@380.12--380.34) [87187]"}
            (forall n_29_1: Ref, n_29_2: Ref ::
            { neverTriggered172(n_29_1), neverTriggered172(n_29_2) }
            (((n_29_1 != n_29_2 && g1[n_29_1]) && g1[n_29_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_29_1 != n_29_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@380.12--380.34) [87188]"}
            (forall n_29_1: Ref ::
            { Heap[n_29_1, r_6] } { QPMask[n_29_1, r_6] } { Heap[n_29_1, r_6] }
            g1[n_29_1] ==> FullPerm > NoPerm ==> Mask[n_29_1, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_29_1: Ref ::
            { Heap[n_29_1, r_6] } { QPMask[n_29_1, r_6] } { Heap[n_29_1, r_6] }
            g1[n_29_1] && NoPerm < FullPerm ==> qpRange172(n_29_1) && invRecv172(n_29_1) == n_29_1
          );
          assume (forall o_4: Ref ::
            { invRecv172(o_4) }
            g1[invRecv172(o_4)] && (NoPerm < FullPerm && qpRange172(o_4)) ==> invRecv172(o_4) == o_4
          );
        if (*) {
          if (g0[n$0_8]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g1)) might not hold. (create_edge1.vpr@380.12--380.34) [87189]"}
              !g1[n$0_8];
          }
          assume false;
        }
        assume (forall n$0_9_1: Ref ::
          { g0[n$0_9_1], g1[n$0_9_1] }
          g0[n$0_9_1] ==> !g1[n$0_9_1]
        );
        if (*) {
          if (g1[n$1_2]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g0)) might not hold. (create_edge1.vpr@380.12--380.34) [87190]"}
              !g0[n$1_2];
          }
          assume false;
        }
        assume (forall n$1_3_1_1: Ref ::
          { g0[n$1_3_1_1], g1[n$1_3_1_1] }
          g1[n$1_3_1_1] ==> !g0[n$1_3_1_1]
        );
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
  
  // -- Translating statement: inhale apply_TCFraming(g1, g0) -- create_edge1.vpr@381.12--381.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g1, g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@381.12--381.34) [87191]"}
            (forall n_30_1: Ref, n_30_2: Ref ::
            { neverTriggered173(n_30_1), neverTriggered173(n_30_2) }
            (((n_30_1 != n_30_2 && g1[n_30_1]) && g1[n_30_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_30_1 != n_30_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@381.12--381.34) [87192]"}
            (forall n_30_1: Ref ::
            { Heap[n_30_1, l_8] } { QPMask[n_30_1, l_8] } { Heap[n_30_1, l_8] }
            g1[n_30_1] ==> FullPerm > NoPerm ==> Mask[n_30_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_30_1: Ref ::
            { Heap[n_30_1, l_8] } { QPMask[n_30_1, l_8] } { Heap[n_30_1, l_8] }
            g1[n_30_1] && NoPerm < FullPerm ==> qpRange173(n_30_1) && invRecv173(n_30_1) == n_30_1
          );
          assume (forall o_4: Ref ::
            { invRecv173(o_4) }
            g1[invRecv173(o_4)] && (NoPerm < FullPerm && qpRange173(o_4)) ==> invRecv173(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@381.12--381.34) [87193]"}
            (forall n_31_1: Ref, n_31_2: Ref ::
            { neverTriggered174(n_31_1), neverTriggered174(n_31_2) }
            (((n_31_1 != n_31_2 && g1[n_31_1]) && g1[n_31_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_31_1 != n_31_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@381.12--381.34) [87194]"}
            (forall n_31_1: Ref ::
            { Heap[n_31_1, r_6] } { QPMask[n_31_1, r_6] } { Heap[n_31_1, r_6] }
            g1[n_31_1] ==> FullPerm > NoPerm ==> Mask[n_31_1, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_31_1: Ref ::
            { Heap[n_31_1, r_6] } { QPMask[n_31_1, r_6] } { Heap[n_31_1, r_6] }
            g1[n_31_1] && NoPerm < FullPerm ==> qpRange174(n_31_1) && invRecv174(n_31_1) == n_31_1
          );
          assume (forall o_4: Ref ::
            { invRecv174(o_4) }
            g1[invRecv174(o_4)] && (NoPerm < FullPerm && qpRange174(o_4)) ==> invRecv174(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@381.12--381.34) [87195]"}
            (forall n_32_1: Ref, n_32_2: Ref ::
            { neverTriggered175(n_32_1), neverTriggered175(n_32_2) }
            (((n_32_1 != n_32_2 && g0[n_32_1]) && g0[n_32_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_32_1 != n_32_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@381.12--381.34) [87196]"}
            (forall n_32_1: Ref ::
            { Heap[n_32_1, l_8] } { QPMask[n_32_1, l_8] } { Heap[n_32_1, l_8] }
            g0[n_32_1] ==> FullPerm > NoPerm ==> Mask[n_32_1, l_8] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_32_1: Ref ::
            { Heap[n_32_1, l_8] } { QPMask[n_32_1, l_8] } { Heap[n_32_1, l_8] }
            g0[n_32_1] && NoPerm < FullPerm ==> qpRange175(n_32_1) && invRecv175(n_32_1) == n_32_1
          );
          assume (forall o_4: Ref ::
            { invRecv175(o_4) }
            g0[invRecv175(o_4)] && (NoPerm < FullPerm && qpRange175(o_4)) ==> invRecv175(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@381.12--381.34) [87197]"}
            (forall n_33_1: Ref, n_33_2: Ref ::
            { neverTriggered176(n_33_1), neverTriggered176(n_33_2) }
            (((n_33_1 != n_33_2 && g0[n_33_1]) && g0[n_33_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_33_1 != n_33_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@381.12--381.34) [87198]"}
            (forall n_33_1: Ref ::
            { Heap[n_33_1, r_6] } { QPMask[n_33_1, r_6] } { Heap[n_33_1, r_6] }
            g0[n_33_1] ==> FullPerm > NoPerm ==> Mask[n_33_1, r_6] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_33_1: Ref ::
            { Heap[n_33_1, r_6] } { QPMask[n_33_1, r_6] } { Heap[n_33_1, r_6] }
            g0[n_33_1] && NoPerm < FullPerm ==> qpRange176(n_33_1) && invRecv176(n_33_1) == n_33_1
          );
          assume (forall o_4: Ref ::
            { invRecv176(o_4) }
            g0[invRecv176(o_4)] && (NoPerm < FullPerm && qpRange176(o_4)) ==> invRecv176(o_4) == o_4
          );
        if (*) {
          if (g1[n$0_10]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g0)) might not hold. (create_edge1.vpr@381.12--381.34) [87199]"}
              !g0[n$0_10];
          }
          assume false;
        }
        assume (forall n$0_11_1: Ref ::
          { g1[n$0_11_1], g0[n$0_11_1] }
          g1[n$0_11_1] ==> !g0[n$0_11_1]
        );
        if (*) {
          if (g0[n$1_4]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g1)) might not hold. (create_edge1.vpr@381.12--381.34) [87200]"}
              !g1[n$1_4];
          }
          assume false;
        }
        assume (forall n$1_5_1_1: Ref ::
          { g1[n$1_5_1_1], g0[n$1_5_1_1] }
          g0[n$1_5_1_1] ==> !g1[n$1_5_1_1]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g1, g0);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x0.l == null) -- create_edge1.vpr@382.5--388.6
    
    // -- Check definedness of x0.l == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x0.l (create_edge1.vpr@382.10--382.22) [87201]"}
        HasDirectPerm(Mask, x0, l_8);
    if (Heap[x0, l_8] == null) {
      
      // -- Translating statement: link_left((g0 union g1), x0, x1) -- create_edge1.vpr@384.9--384.37
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [87202]"}
            arg_g[x0];
          if (x1_2 != null) {
            assert {:msg "  The precondition of method link_left might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [87203]"}
              arg_g[x1_2];
          }
          assert {:msg "  The precondition of method link_left might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@384.9--384.37) [87204]"}
            !arg_g[null];
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [87205]"}
            arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [87206]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@384.9--384.37) [87207]"}
              perm <= Mask[x0, l_8];
          }
          Mask := Mask[x0, l_8:=Mask[x0, l_8] - perm];
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [87208]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@384.9--384.37) [87209]"}
              perm <= Mask[x0, r_6];
          }
          Mask := Mask[x0, r_6:=Mask[x0, r_6] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [87210]"}
              (forall n_34_1: Ref ::
              { Heap[n_34_1, l_8] } { QPMask[n_34_1, l_8] } { Heap[n_34_1, l_8] }
              (arg_g[n_34_1] && n_34_1 != x0) && dummyFunction(Heap[n_34_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@384.9--384.37) [87211]"}
              (forall n_34_1: Ref, n_34_2: Ref ::
              { neverTriggered177(n_34_1), neverTriggered177(n_34_2) }
              (((n_34_1 != n_34_2 && (arg_g[n_34_1] && n_34_1 != x0)) && (arg_g[n_34_2] && n_34_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_34_1 != n_34_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@384.9--384.37) [87212]"}
              (forall n_34_1: Ref ::
              { Heap[n_34_1, l_8] } { QPMask[n_34_1, l_8] } { Heap[n_34_1, l_8] }
              arg_g[n_34_1] && n_34_1 != x0 ==> Mask[n_34_1, l_8] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_34_1: Ref ::
              { Heap[n_34_1, l_8] } { QPMask[n_34_1, l_8] } { Heap[n_34_1, l_8] }
              (arg_g[n_34_1] && n_34_1 != x0) && NoPerm < 1 / 2 ==> qpRange177(n_34_1) && invRecv177(n_34_1) == n_34_1
            );
            assume (forall o_4: Ref ::
              { invRecv177(o_4) }
              (arg_g[invRecv177(o_4)] && invRecv177(o_4) != x0) && (NoPerm < 1 / 2 && qpRange177(o_4)) ==> invRecv177(o_4) == o_4
            );
          
          // -- assume permission updates for field l
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              ((arg_g[invRecv177(o_4)] && invRecv177(o_4) != x0) && (NoPerm < 1 / 2 && qpRange177(o_4)) ==> invRecv177(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((arg_g[invRecv177(o_4)] && invRecv177(o_4) != x0) && (NoPerm < 1 / 2 && qpRange177(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [87213]"}
              (forall n$0_12: Ref ::
              { Heap[n$0_12, r_6] } { QPMask[n$0_12, r_6] } { Heap[n$0_12, r_6] }
              (arg_g[n$0_12] && n$0_12 != x0) && dummyFunction(Heap[n$0_12, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@384.9--384.37) [87214]"}
              (forall n$0_12: Ref, n$0_12_1: Ref ::
              { neverTriggered178(n$0_12), neverTriggered178(n$0_12_1) }
              (((n$0_12 != n$0_12_1 && (arg_g[n$0_12] && n$0_12 != x0)) && (arg_g[n$0_12_1] && n$0_12_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_12 != n$0_12_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@384.9--384.37) [87215]"}
              (forall n$0_12: Ref ::
              { Heap[n$0_12, r_6] } { QPMask[n$0_12, r_6] } { Heap[n$0_12, r_6] }
              arg_g[n$0_12] && n$0_12 != x0 ==> Mask[n$0_12, r_6] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_12: Ref ::
              { Heap[n$0_12, r_6] } { QPMask[n$0_12, r_6] } { Heap[n$0_12, r_6] }
              (arg_g[n$0_12] && n$0_12 != x0) && NoPerm < 1 / 2 ==> qpRange178(n$0_12) && invRecv178(n$0_12) == n$0_12
            );
            assume (forall o_4: Ref ::
              { invRecv178(o_4) }
              (arg_g[invRecv178(o_4)] && invRecv178(o_4) != x0) && (NoPerm < 1 / 2 && qpRange178(o_4)) ==> invRecv178(o_4) == o_4
            );
          
          // -- assume permission updates for field r
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              ((arg_g[invRecv178(o_4)] && invRecv178(o_4) != x0) && (NoPerm < 1 / 2 && qpRange178(o_4)) ==> invRecv178(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((arg_g[invRecv178(o_4)] && invRecv178(o_4) != x0) && (NoPerm < 1 / 2 && qpRange178(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g[n$1_6] && Heap[n$1_6, l_8] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [87216]"}
                arg_g[Heap[n$1_6, l_8]];
            }
            assume false;
          }
          assume (forall n$1_7_1_1: Ref ::
            { arg_g[Heap[n$1_7_1_1, l_8]] } { arg_g[n$1_7_1_1], Heap[n$1_7_1_1, l_8] }
            arg_g[n$1_7_1_1] && Heap[n$1_7_1_1, l_8] != null ==> arg_g[Heap[n$1_7_1_1, l_8]]
          );
          if (*) {
            if (arg_g[n$2_2] && Heap[n$2_2, r_6] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [87217]"}
                arg_g[Heap[n$2_2, r_6]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { arg_g[Heap[n$2_3_1, r_6]] } { arg_g[n$2_3_1], Heap[n$2_3_1, r_6] }
            arg_g[n$2_3_1] && Heap[n$2_3_1, r_6] != null ==> arg_g[Heap[n$2_3_1, r_6]]
          );
          assert {:msg "  The precondition of method link_left might not hold. Assertion x0.l == null might not hold. (create_edge1.vpr@384.9--384.37) [87218]"}
            Heap[x0, l_8] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g[null];
          assume arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [87219]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l_8:=Mask[x0, l_8] + perm];
          assume state(Heap, Mask);
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [87220]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_6:=Mask[x0, r_6] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@384.9--384.37) [87221]"}
            (forall n$3_2: Ref, n$3_2_1: Ref ::
            
            (((n$3_2 != n$3_2_1 && (arg_g[n$3_2] && n$3_2 != x0)) && (arg_g[n$3_2_1] && n$3_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
              (arg_g[n$3_2] && n$3_2 != x0) && NoPerm < 1 / 2 ==> qpRange179(n$3_2) && invRecv179(n$3_2) == n$3_2
            );
            assume (forall o_4: Ref ::
              { invRecv179(o_4) }
              ((arg_g[invRecv179(o_4)] && invRecv179(o_4) != x0) && NoPerm < 1 / 2) && qpRange179(o_4) ==> invRecv179(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [87222]"}
            (forall n$3_2: Ref ::
            { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
            arg_g[n$3_2] && n$3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l_8] } { QPMask[n$3_2, l_8] } { Heap[n$3_2, l_8] }
              (arg_g[n$3_2] && n$3_2 != x0) && 1 / 2 > NoPerm ==> n$3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              (((arg_g[invRecv179(o_4)] && invRecv179(o_4) != x0) && NoPerm < 1 / 2) && qpRange179(o_4) ==> (NoPerm < 1 / 2 ==> invRecv179(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((arg_g[invRecv179(o_4)] && invRecv179(o_4) != x0) && NoPerm < 1 / 2) && qpRange179(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@384.9--384.37) [87223]"}
            (forall n$4_2_1: Ref, n$4_2_2: Ref ::
            
            (((n$4_2_1 != n$4_2_2 && (arg_g[n$4_2_1] && n$4_2_1 != x0)) && (arg_g[n$4_2_2] && n$4_2_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2_1 != n$4_2_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_2_1: Ref ::
              { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
              (arg_g[n$4_2_1] && n$4_2_1 != x0) && NoPerm < 1 / 2 ==> qpRange180(n$4_2_1) && invRecv180(n$4_2_1) == n$4_2_1
            );
            assume (forall o_4: Ref ::
              { invRecv180(o_4) }
              ((arg_g[invRecv180(o_4)] && invRecv180(o_4) != x0) && NoPerm < 1 / 2) && qpRange180(o_4) ==> invRecv180(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [87224]"}
            (forall n$4_2_1: Ref ::
            { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
            arg_g[n$4_2_1] && n$4_2_1 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_2_1: Ref ::
              { Heap[n$4_2_1, r_6] } { QPMask[n$4_2_1, r_6] } { Heap[n$4_2_1, r_6] }
              (arg_g[n$4_2_1] && n$4_2_1 != x0) && 1 / 2 > NoPerm ==> n$4_2_1 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              (((arg_g[invRecv180(o_4)] && invRecv180(o_4) != x0) && NoPerm < 1 / 2) && qpRange180(o_4) ==> (NoPerm < 1 / 2 ==> invRecv180(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((arg_g[invRecv180(o_4)] && invRecv180(o_4) != x0) && NoPerm < 1 / 2) && qpRange180(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_2: Ref ::
            { arg_g[Heap[n$5_2, l_8]] } { arg_g[n$5_2], Heap[n$5_2, l_8] }
            arg_g[n$5_2] && Heap[n$5_2, l_8] != null ==> arg_g[Heap[n$5_2, l_8]]
          );
          assume (forall n$6_2: Ref ::
            { arg_g[Heap[n$6_2, r_6]] } { arg_g[n$6_2], Heap[n$6_2, r_6] }
            arg_g[n$6_2] && Heap[n$6_2, r_6] != null ==> arg_g[Heap[n$6_2, r_6]]
          );
          assume Heap[x0, l_8] == x1_2;
          if (x1_2 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1: Ref, v2: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g)), FrameFragment($$#condqp2(PreCallHeap, arg_g))), arg_g), v1, v2): bool) }
              (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) || (v1 == x0 && v2 == x1_2))
            );
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_1: Ref, v2_1: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g)), FrameFragment($$#condqp2(Heap, arg_g))), arg_g), v1_1, v2_1): bool) }
              v1_1 != v2_1 ==> (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, arg_g), v1_1, v2_1): bool) || ((exists_path($$(PreCallHeap, arg_g), v1_1, x0): bool) && (exists_path($$(PreCallHeap, arg_g), x1_2, v2_1): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: link_right((g0 union g1), x0, x1) -- create_edge1.vpr@387.9--387.38
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g_1 := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [87225]"}
            arg_g_1[x0];
          if (x1_2 != null) {
            assert {:msg "  The precondition of method link_right might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [87226]"}
              arg_g_1[x1_2];
          }
          assert {:msg "  The precondition of method link_right might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@387.9--387.38) [87227]"}
            !arg_g_1[null];
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [87228]"}
            arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [87229]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@387.9--387.38) [87230]"}
              perm <= Mask[x0, l_8];
          }
          Mask := Mask[x0, l_8:=Mask[x0, l_8] - perm];
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [87231]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@387.9--387.38) [87232]"}
              perm <= Mask[x0, r_6];
          }
          Mask := Mask[x0, r_6:=Mask[x0, r_6] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [87233]"}
              (forall n_35_1: Ref ::
              { Heap[n_35_1, l_8] } { QPMask[n_35_1, l_8] } { Heap[n_35_1, l_8] }
              (arg_g_1[n_35_1] && n_35_1 != x0) && dummyFunction(Heap[n_35_1, l_8]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@387.9--387.38) [87234]"}
              (forall n_35_1: Ref, n_35_2: Ref ::
              { neverTriggered181(n_35_1), neverTriggered181(n_35_2) }
              (((n_35_1 != n_35_2 && (arg_g_1[n_35_1] && n_35_1 != x0)) && (arg_g_1[n_35_2] && n_35_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_35_1 != n_35_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@387.9--387.38) [87235]"}
              (forall n_35_1: Ref ::
              { Heap[n_35_1, l_8] } { QPMask[n_35_1, l_8] } { Heap[n_35_1, l_8] }
              arg_g_1[n_35_1] && n_35_1 != x0 ==> Mask[n_35_1, l_8] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_35_1: Ref ::
              { Heap[n_35_1, l_8] } { QPMask[n_35_1, l_8] } { Heap[n_35_1, l_8] }
              (arg_g_1[n_35_1] && n_35_1 != x0) && NoPerm < 1 / 2 ==> qpRange181(n_35_1) && invRecv181(n_35_1) == n_35_1
            );
            assume (forall o_4: Ref ::
              { invRecv181(o_4) }
              (arg_g_1[invRecv181(o_4)] && invRecv181(o_4) != x0) && (NoPerm < 1 / 2 && qpRange181(o_4)) ==> invRecv181(o_4) == o_4
            );
          
          // -- assume permission updates for field l
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              ((arg_g_1[invRecv181(o_4)] && invRecv181(o_4) != x0) && (NoPerm < 1 / 2 && qpRange181(o_4)) ==> invRecv181(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - 1 / 2) && (!((arg_g_1[invRecv181(o_4)] && invRecv181(o_4) != x0) && (NoPerm < 1 / 2 && qpRange181(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [87236]"}
              (forall n$0_13_2: Ref ::
              { Heap[n$0_13_2, r_6] } { QPMask[n$0_13_2, r_6] } { Heap[n$0_13_2, r_6] }
              (arg_g_1[n$0_13_2] && n$0_13_2 != x0) && dummyFunction(Heap[n$0_13_2, r_6]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@387.9--387.38) [87237]"}
              (forall n$0_13_2: Ref, n$0_13_3: Ref ::
              { neverTriggered182(n$0_13_2), neverTriggered182(n$0_13_3) }
              (((n$0_13_2 != n$0_13_3 && (arg_g_1[n$0_13_2] && n$0_13_2 != x0)) && (arg_g_1[n$0_13_3] && n$0_13_3 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_13_2 != n$0_13_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@387.9--387.38) [87238]"}
              (forall n$0_13_2: Ref ::
              { Heap[n$0_13_2, r_6] } { QPMask[n$0_13_2, r_6] } { Heap[n$0_13_2, r_6] }
              arg_g_1[n$0_13_2] && n$0_13_2 != x0 ==> Mask[n$0_13_2, r_6] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_13_2: Ref ::
              { Heap[n$0_13_2, r_6] } { QPMask[n$0_13_2, r_6] } { Heap[n$0_13_2, r_6] }
              (arg_g_1[n$0_13_2] && n$0_13_2 != x0) && NoPerm < 1 / 2 ==> qpRange182(n$0_13_2) && invRecv182(n$0_13_2) == n$0_13_2
            );
            assume (forall o_4: Ref ::
              { invRecv182(o_4) }
              (arg_g_1[invRecv182(o_4)] && invRecv182(o_4) != x0) && (NoPerm < 1 / 2 && qpRange182(o_4)) ==> invRecv182(o_4) == o_4
            );
          
          // -- assume permission updates for field r
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              ((arg_g_1[invRecv182(o_4)] && invRecv182(o_4) != x0) && (NoPerm < 1 / 2 && qpRange182(o_4)) ==> invRecv182(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - 1 / 2) && (!((arg_g_1[invRecv182(o_4)] && invRecv182(o_4) != x0) && (NoPerm < 1 / 2 && qpRange182(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g_1[n$1_8] && Heap[n$1_8, l_8] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [87239]"}
                arg_g_1[Heap[n$1_8, l_8]];
            }
            assume false;
          }
          assume (forall n$1_9_1_1: Ref ::
            { arg_g_1[Heap[n$1_9_1_1, l_8]] } { arg_g_1[n$1_9_1_1], Heap[n$1_9_1_1, l_8] }
            arg_g_1[n$1_9_1_1] && Heap[n$1_9_1_1, l_8] != null ==> arg_g_1[Heap[n$1_9_1_1, l_8]]
          );
          if (*) {
            if (arg_g_1[n$2_4_1] && Heap[n$2_4_1, r_6] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [87240]"}
                arg_g_1[Heap[n$2_4_1, r_6]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { arg_g_1[Heap[n$2_5_1_1, r_6]] } { arg_g_1[n$2_5_1_1], Heap[n$2_5_1_1, r_6] }
            arg_g_1[n$2_5_1_1] && Heap[n$2_5_1_1, r_6] != null ==> arg_g_1[Heap[n$2_5_1_1, r_6]]
          );
          assert {:msg "  The precondition of method link_right might not hold. Assertion x0.r == null might not hold. (create_edge1.vpr@387.9--387.38) [87241]"}
            Heap[x0, r_6] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g_1[null];
          assume arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [87242]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l_8:=Mask[x0, l_8] + perm];
          assume state(Heap, Mask);
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [87243]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_6:=Mask[x0, r_6] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@387.9--387.38) [87244]"}
            (forall n$3_3: Ref, n$3_3_1: Ref ::
            
            (((n$3_3 != n$3_3_1 && (arg_g_1[n$3_3] && n$3_3 != x0)) && (arg_g_1[n$3_3_1] && n$3_3_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_3 != n$3_3_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && NoPerm < 1 / 2 ==> qpRange183(n$3_3) && invRecv183(n$3_3) == n$3_3
            );
            assume (forall o_4: Ref ::
              { invRecv183(o_4) }
              ((arg_g_1[invRecv183(o_4)] && invRecv183(o_4) != x0) && NoPerm < 1 / 2) && qpRange183(o_4) ==> invRecv183(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [87245]"}
            (forall n$3_3: Ref ::
            { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
            arg_g_1[n$3_3] && n$3_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l_8] } { QPMask[n$3_3, l_8] } { Heap[n$3_3, l_8] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && 1 / 2 > NoPerm ==> n$3_3 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, l_8] }
              (((arg_g_1[invRecv183(o_4)] && invRecv183(o_4) != x0) && NoPerm < 1 / 2) && qpRange183(o_4) ==> (NoPerm < 1 / 2 ==> invRecv183(o_4) == o_4) && QPMask[o_4, l_8] == Mask[o_4, l_8] + 1 / 2) && (!(((arg_g_1[invRecv183(o_4)] && invRecv183(o_4) != x0) && NoPerm < 1 / 2) && qpRange183(o_4)) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@387.9--387.38) [87246]"}
            (forall n$4_3: Ref, n$4_3_2: Ref ::
            
            (((n$4_3 != n$4_3_2 && (arg_g_1[n$4_3] && n$4_3 != x0)) && (arg_g_1[n$4_3_2] && n$4_3_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_3 != n$4_3_2
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
              (arg_g_1[n$4_3] && n$4_3 != x0) && NoPerm < 1 / 2 ==> qpRange184(n$4_3) && invRecv184(n$4_3) == n$4_3
            );
            assume (forall o_4: Ref ::
              { invRecv184(o_4) }
              ((arg_g_1[invRecv184(o_4)] && invRecv184(o_4) != x0) && NoPerm < 1 / 2) && qpRange184(o_4) ==> invRecv184(o_4) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [87247]"}
            (forall n$4_3: Ref ::
            { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
            arg_g_1[n$4_3] && n$4_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3: Ref ::
              { Heap[n$4_3, r_6] } { QPMask[n$4_3, r_6] } { Heap[n$4_3, r_6] }
              (arg_g_1[n$4_3] && n$4_3 != x0) && 1 / 2 > NoPerm ==> n$4_3 != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, r_6] }
              (((arg_g_1[invRecv184(o_4)] && invRecv184(o_4) != x0) && NoPerm < 1 / 2) && qpRange184(o_4) ==> (NoPerm < 1 / 2 ==> invRecv184(o_4) == o_4) && QPMask[o_4, r_6] == Mask[o_4, r_6] + 1 / 2) && (!(((arg_g_1[invRecv184(o_4)] && invRecv184(o_4) != x0) && NoPerm < 1 / 2) && qpRange184(o_4)) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_3_2: Ref ::
            { arg_g_1[Heap[n$5_3_2, l_8]] } { arg_g_1[n$5_3_2], Heap[n$5_3_2, l_8] }
            arg_g_1[n$5_3_2] && Heap[n$5_3_2, l_8] != null ==> arg_g_1[Heap[n$5_3_2, l_8]]
          );
          assume (forall n$6_3_2: Ref ::
            { arg_g_1[Heap[n$6_3_2, r_6]] } { arg_g_1[n$6_3_2], Heap[n$6_3_2, r_6] }
            arg_g_1[n$6_3_2] && Heap[n$6_3_2, r_6] != null ==> arg_g_1[Heap[n$6_3_2, r_6]]
          );
          assume Heap[x0, r_6] == x1_2;
          if (x1_2 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g_1), $$(PreCallHeap, arg_g_1));
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_2_1: Ref, v2_2_1: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g_1)), FrameFragment($$#condqp2(PreCallHeap, arg_g_1))), arg_g_1), v1_2_1, v2_2_1): bool) }
              (edge($$(Heap, arg_g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, arg_g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == x0 && v2_2_1 == x1_2))
            );
          }
          if (x1_2 != null) {
            assume state(Heap, Mask);
            assume (forall v1_3: Ref, v2_3: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g_1)), FrameFragment($$#condqp2(Heap, arg_g_1))), arg_g_1), v1_3, v2_3): bool) }
              v1_3 != v2_3 ==> (exists_path($$(Heap, arg_g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, arg_g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, arg_g_1), v1_3, x0): bool) && (exists_path($$(PreCallHeap, arg_g_1), x1_2, v2_3): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@365.13--365.31) [87248]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$9 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@365.13--365.31) [87249]"}
        (forall n$9_2: Ref, n$9_2_1: Ref ::
        { neverTriggered159(n$9_2), neverTriggered159(n$9_2_1) }
        (((n$9_2 != n$9_2_1 && Set#Union(g0, g1)[n$9_2]) && Set#Union(g0, g1)[n$9_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_2 != n$9_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of connect_DAGs might not hold. There might be insufficient permission to access n$9.l (create_edge1.vpr@365.13--365.31) [87250]"}
        (forall n$9_2: Ref ::
        { Heap[n$9_2, l_8] } { QPMask[n$9_2, l_8] } { Heap[n$9_2, l_8] }
        Set#Union(g0, g1)[n$9_2] ==> Mask[n$9_2, l_8] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$9
      assume (forall n$9_2: Ref ::
        { Heap[n$9_2, l_8] } { QPMask[n$9_2, l_8] } { Heap[n$9_2, l_8] }
        Set#Union(g0, g1)[n$9_2] && NoPerm < FullPerm ==> qpRange159(n$9_2) && invRecv159(n$9_2) == n$9_2
      );
      assume (forall o_4: Ref ::
        { invRecv159(o_4) }
        Set#Union(g0, g1)[invRecv159(o_4)] && (NoPerm < FullPerm && qpRange159(o_4)) ==> invRecv159(o_4) == o_4
      );
    
    // -- assume permission updates for field l
      assume (forall o_4: Ref ::
        { QPMask[o_4, l_8] }
        (Set#Union(g0, g1)[invRecv159(o_4)] && (NoPerm < FullPerm && qpRange159(o_4)) ==> invRecv159(o_4) == o_4 && QPMask[o_4, l_8] == Mask[o_4, l_8] - FullPerm) && (!(Set#Union(g0, g1)[invRecv159(o_4)] && (NoPerm < FullPerm && qpRange159(o_4))) ==> QPMask[o_4, l_8] == Mask[o_4, l_8])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != l_8 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$10 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@365.13--365.31) [87251]"}
        (forall n$10_2: Ref, n$10_2_1: Ref ::
        { neverTriggered160(n$10_2), neverTriggered160(n$10_2_1) }
        (((n$10_2 != n$10_2_1 && Set#Union(g0, g1)[n$10_2]) && Set#Union(g0, g1)[n$10_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_2 != n$10_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of connect_DAGs might not hold. There might be insufficient permission to access n$10.r (create_edge1.vpr@365.13--365.31) [87252]"}
        (forall n$10_2: Ref ::
        { Heap[n$10_2, r_6] } { QPMask[n$10_2, r_6] } { Heap[n$10_2, r_6] }
        Set#Union(g0, g1)[n$10_2] ==> Mask[n$10_2, r_6] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$10
      assume (forall n$10_2: Ref ::
        { Heap[n$10_2, r_6] } { QPMask[n$10_2, r_6] } { Heap[n$10_2, r_6] }
        Set#Union(g0, g1)[n$10_2] && NoPerm < FullPerm ==> qpRange160(n$10_2) && invRecv160(n$10_2) == n$10_2
      );
      assume (forall o_4: Ref ::
        { invRecv160(o_4) }
        Set#Union(g0, g1)[invRecv160(o_4)] && (NoPerm < FullPerm && qpRange160(o_4)) ==> invRecv160(o_4) == o_4
      );
    
    // -- assume permission updates for field r
      assume (forall o_4: Ref ::
        { QPMask[o_4, r_6] }
        (Set#Union(g0, g1)[invRecv160(o_4)] && (NoPerm < FullPerm && qpRange160(o_4)) ==> invRecv160(o_4) == o_4 && QPMask[o_4, r_6] == Mask[o_4, r_6] - FullPerm) && (!(Set#Union(g0, g1)[invRecv160(o_4)] && (NoPerm < FullPerm && qpRange160(o_4))) ==> QPMask[o_4, r_6] == Mask[o_4, r_6])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != r_6 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$11_2] && Heap[n$11_2, l_8] != null) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion (n$11.l in (g0 union g1)) might not hold. (create_edge1.vpr@365.13--365.31) [87253]"}
          Set#Union(g0, g1)[Heap[n$11_2, l_8]];
      }
      assume false;
    }
    assume (forall n$11_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$11_3_1, l_8]] } { Set#Union(g0, g1)[n$11_3_1], Heap[n$11_3_1, l_8] }
      Set#Union(g0, g1)[n$11_3_1] && Heap[n$11_3_1, l_8] != null ==> Set#Union(g0, g1)[Heap[n$11_3_1, l_8]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n$12_2] && Heap[n$12_2, r_6] != null) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion (n$12.r in (g0 union g1)) might not hold. (create_edge1.vpr@365.13--365.31) [87254]"}
          Set#Union(g0, g1)[Heap[n$12_2, r_6]];
      }
      assume false;
    }
    assume (forall n$12_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$12_3_1, r_6]] } { Set#Union(g0, g1)[n$12_3_1], Heap[n$12_3_1, r_6] }
      Set#Union(g0, g1)[n$12_3_1] && Heap[n$12_3_1, r_6] != null ==> Set#Union(g0, g1)[Heap[n$12_3_1, r_6]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n_16]) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion exists_path($$((g0 union g1)), x, n) might not hold. (create_edge1.vpr@366.13--366.121) [87255]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), x, n_16): bool);
      }
      assume false;
    }
    assume (forall n_17_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_17_1_1): bool) }
      Set#Union(g0, g1)[n_17_1_1] ==> (exists_path($$(Heap, Set#Union(g0, g1)), x, n_17_1_1): bool)
    );
    assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion acyclic_graph($$((g0 union g1))) might not hold. (create_edge1.vpr@368.13--368.43) [87256]"}
      (acyclic_graph($$(Heap, Set#Union(g0, g1))): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}