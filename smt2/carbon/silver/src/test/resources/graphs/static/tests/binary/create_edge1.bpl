// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:23
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
axiom (forall o_32: Ref, f_44: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_32, f_44] }
  Heap[o_32, $allocated] ==> Heap[Heap[o_32, f_44], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_33: Ref, f_45: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_33, f_45] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_33, f_45) ==> Heap[o_33, f_45] == ExhaleHeap[o_33, f_45]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15), ExhaleHeap[null, PredicateMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> Heap[null, PredicateMaskField(pm_f_15)] == ExhaleHeap[null, PredicateMaskField(pm_f_15)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, PredicateMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15), ExhaleHeap[null, WandMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> Heap[null, WandMaskField(pm_f_15)] == ExhaleHeap[null, WandMaskField(pm_f_15)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, WandMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_33: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_33, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_33, $allocated] ==> ExhaleHeap[o_33, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_32: Ref, f_46: (Field A B), v: B ::
  { Heap[o_32, f_46:=v] }
  succHeap(Heap, Heap[o_32, f_46:=v])
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
function  neverTriggered4(n_11_2: Ref): bool;
function  neverTriggered5(n_13_2: Ref): bool;
function  neverTriggered6(n_15: Ref): bool;
function  neverTriggered7(n_16_1: Ref): bool;
function  neverTriggered8(n_17: Ref): bool;
function  neverTriggered9(n_18: Ref): bool;
function  neverTriggered10(n_19: Ref): bool;
function  neverTriggered11(n_20: Ref): bool;
function  neverTriggered12(n_21: Ref): bool;
function  neverTriggered13(n_22: Ref): bool;
function  neverTriggered14(n_23: Ref): bool;
function  neverTriggered15(n_24: Ref): bool;
function  neverTriggered16(n_25: Ref): bool;
function  neverTriggered17(n_26: Ref): bool;
function  neverTriggered18(n_27: Ref): bool;
function  neverTriggered19(n_28: Ref): bool;
function  neverTriggered20(n_29: Ref): bool;
function  neverTriggered21(n_30: Ref): bool;
function  neverTriggered22(n_31: Ref): bool;
function  neverTriggered23(n_1: Ref): bool;
function  neverTriggered24(n$0_1: Ref): bool;
function  neverTriggered25(n$3_1: Ref): bool;
function  neverTriggered26(n$4_1: Ref): bool;
function  neverTriggered27(n_2: Ref): bool;
function  neverTriggered28(n_3: Ref): bool;
function  neverTriggered29(n_4: Ref): bool;
function  neverTriggered30(n_5: Ref): bool;
function  neverTriggered31(n_6: Ref): bool;
function  neverTriggered32(n_7: Ref): bool;
function  neverTriggered33(n_8: Ref): bool;
function  neverTriggered34(n_9: Ref): bool;
function  neverTriggered35(n_10_1: Ref): bool;
function  neverTriggered36(n_11_2: Ref): bool;
function  neverTriggered37(n_12: Ref): bool;
function  neverTriggered38(n_13_2: Ref): bool;
function  neverTriggered39(n_14_1: Ref): bool;
function  neverTriggered40(n_15: Ref): bool;
function  neverTriggered41(n_16_1: Ref): bool;
function  neverTriggered42(n_17: Ref): bool;
function  neverTriggered43(n$3_2: Ref): bool;
function  neverTriggered44(n$4_2: Ref): bool;
function  neverTriggered45(n_1: Ref): bool;
function  neverTriggered46(n$0_1: Ref): bool;
function  neverTriggered47(n$3_1: Ref): bool;
function  neverTriggered48(n$4_1: Ref): bool;
function  neverTriggered49(n_2: Ref): bool;
function  neverTriggered50(n_3: Ref): bool;
function  neverTriggered51(n_4: Ref): bool;
function  neverTriggered52(n_5: Ref): bool;
function  neverTriggered53(n_6: Ref): bool;
function  neverTriggered54(n_7: Ref): bool;
function  neverTriggered55(n_8: Ref): bool;
function  neverTriggered56(n_9: Ref): bool;
function  neverTriggered57(n_10_1: Ref): bool;
function  neverTriggered58(n_11_2: Ref): bool;
function  neverTriggered59(n_12: Ref): bool;
function  neverTriggered60(n_13_2: Ref): bool;
function  neverTriggered61(n_14_1: Ref): bool;
function  neverTriggered62(n_15: Ref): bool;
function  neverTriggered63(n_16_1: Ref): bool;
function  neverTriggered64(n_17: Ref): bool;
function  neverTriggered65(n$3_2: Ref): bool;
function  neverTriggered66(n$4_2: Ref): bool;
function  neverTriggered67(n_1: Ref): bool;
function  neverTriggered68(n$0_1: Ref): bool;
function  neverTriggered69(n$3_1: Ref): bool;
function  neverTriggered70(n$4_1: Ref): bool;
function  neverTriggered71(n_2: Ref): bool;
function  neverTriggered72(n_3: Ref): bool;
function  neverTriggered73(n_4: Ref): bool;
function  neverTriggered74(n_5: Ref): bool;
function  neverTriggered75(n_6: Ref): bool;
function  neverTriggered76(n_7: Ref): bool;
function  neverTriggered77(n_8: Ref): bool;
function  neverTriggered78(n_9: Ref): bool;
function  neverTriggered79(n_10_1: Ref): bool;
function  neverTriggered80(n_11_2: Ref): bool;
function  neverTriggered81(n_12: Ref): bool;
function  neverTriggered82(n_13_2: Ref): bool;
function  neverTriggered83(n_14_1: Ref): bool;
function  neverTriggered84(n_15: Ref): bool;
function  neverTriggered85(n_16_1: Ref): bool;
function  neverTriggered86(n_17: Ref): bool;
function  neverTriggered87(n$3_2: Ref): bool;
function  neverTriggered88(n$4_2: Ref): bool;
function  neverTriggered89(n_1: Ref): bool;
function  neverTriggered90(n$0_1: Ref): bool;
function  neverTriggered91(n$3_1: Ref): bool;
function  neverTriggered92(n$4_1: Ref): bool;
function  neverTriggered93(n_2: Ref): bool;
function  neverTriggered94(n_3: Ref): bool;
function  neverTriggered95(n_4: Ref): bool;
function  neverTriggered96(n_5: Ref): bool;
function  neverTriggered97(n_6: Ref): bool;
function  neverTriggered98(n_7: Ref): bool;
function  neverTriggered99(n_8: Ref): bool;
function  neverTriggered100(n_9: Ref): bool;
function  neverTriggered101(n_10_1: Ref): bool;
function  neverTriggered102(n_11_2: Ref): bool;
function  neverTriggered103(n_12: Ref): bool;
function  neverTriggered104(n_13_2: Ref): bool;
function  neverTriggered105(n_14_1: Ref): bool;
function  neverTriggered106(n_15: Ref): bool;
function  neverTriggered107(n_16_1: Ref): bool;
function  neverTriggered108(n_17: Ref): bool;
function  neverTriggered109(n$3_2: Ref): bool;
function  neverTriggered110(n$4_2: Ref): bool;
function  neverTriggered111(n_1: Ref): bool;
function  neverTriggered112(n$0_1: Ref): bool;
function  neverTriggered113(n$3_1: Ref): bool;
function  neverTriggered114(n$4_1: Ref): bool;
function  neverTriggered115(n$0_2: Ref): bool;
function  neverTriggered116(n$0_3: Ref): bool;
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
function  neverTriggered127(n_12: Ref): bool;
function  neverTriggered128(n_13_2: Ref): bool;
function  neverTriggered129(n_14_1: Ref): bool;
function  neverTriggered130(n_15: Ref): bool;
function  neverTriggered131(n_16_1: Ref): bool;
function  neverTriggered132(n$0_10_1: Ref): bool;
function  neverTriggered133(n$3_2: Ref): bool;
function  neverTriggered134(n$4_2: Ref): bool;
function  neverTriggered135(n_17: Ref): bool;
function  neverTriggered136(n$0_11_2: Ref): bool;
function  neverTriggered137(n$3_3: Ref): bool;
function  neverTriggered138(n$4_3_2: Ref): bool;
function  neverTriggered139(n_1: Ref): bool;
function  neverTriggered140(n$0_1: Ref): bool;
function  neverTriggered141(n_2: Ref): bool;
function  neverTriggered142(n_3: Ref): bool;
function  neverTriggered143(n$3_1: Ref): bool;
function  neverTriggered144(n$4_1: Ref): bool;
function  neverTriggered145(n_4: Ref): bool;
function  neverTriggered146(n_5: Ref): bool;
function  neverTriggered147(n$0_2: Ref): bool;
function  neverTriggered148(n$0_3: Ref): bool;
function  neverTriggered149(n$0_4: Ref): bool;
function  neverTriggered150(n$0_5: Ref): bool;
function  neverTriggered151(n_10_1: Ref): bool;
function  neverTriggered152(n_11_2: Ref): bool;
function  neverTriggered153(n$9_1: Ref): bool;
function  neverTriggered154(n$10_1: Ref): bool;
function  neverTriggered155(n$0_6: Ref): bool;
function  neverTriggered156(n$0_7: Ref): bool;
function  neverTriggered157(n_14_1: Ref): bool;
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
function  neverTriggered168(n_25: Ref): bool;
function  neverTriggered169(n_26: Ref): bool;
function  neverTriggered170(n_27: Ref): bool;
function  neverTriggered171(n_28: Ref): bool;
function  neverTriggered172(n_29: Ref): bool;
function  neverTriggered173(n_30: Ref): bool;
function  neverTriggered174(n_31: Ref): bool;
function  neverTriggered175(n_32_2: Ref): bool;
function  neverTriggered176(n_33: Ref): bool;
function  neverTriggered177(n_34_2: Ref): bool;
function  neverTriggered178(n$0_12_1: Ref): bool;
function  neverTriggered179(n$3_2: Ref): bool;
function  neverTriggered180(n$4_2: Ref): bool;
function  neverTriggered181(n_35: Ref): bool;
function  neverTriggered182(n$0_13_1: Ref): bool;
function  neverTriggered183(n$3_3: Ref): bool;
function  neverTriggered184(n$4_3_2: Ref): bool;
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

const unique l: Field NormalField Ref;
axiom !IsPredicateField(l);
axiom !IsWandField(l);
const unique r_11: Field NormalField Ref;
axiom !IsPredicateField(r_11);
axiom !IsWandField(r_11);
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
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), l] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), l]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in refs) ==> acc(n.r, 1 / 2)) in function $$
// ==================================================

function  $$#condqp2(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), r_11] == Heap1Heap[sk_$$#condqp2($$#condqp2(Heap2Heap, refs), $$#condqp2(Heap1Heap, refs)), r_11]) ==> $$#condqp2(Heap2Heap, refs) == $$#condqp2(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_1: Ref, s_1: Ref ::
    { (create_edge(p_1, s_1): EdgeDomainType) }
    (refs[p_1] && (refs[s_1] && (Heap[p_1, l] == s_1 || Heap[p_1, r_11] == s_1))) == $$'(Heap, refs)[(create_edge(p_1, s_1): EdgeDomainType)]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(CombineFrames(FrameFragment($$#condqp1(Heap, refs)), FrameFragment($$#condqp2(Heap, refs))), refs)) ==> (forall p_1_1: Ref, s_1_1: Ref ::
    { refs[p_1_1], refs[s_1_1], (exists_path($$'(Heap, refs), p_1_1, s_1_1): bool) }
    refs[p_1_1] && (exists_path($$'(Heap, refs), p_1_1, s_1_1): bool) ==> refs[s_1_1]
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
  var p_7: Ref;
  var s_5: Ref;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@167.14--167.62) [11780]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && refs[n_5]) && refs[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, l] } { QPMask[n_5, l] } { Heap[n_5, l] }
        refs[n_5] && NoPerm < 1 / 2 ==> qpRange1(n_5) && invRecv1(n_5) == n_5
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        (refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@167.14--167.62) [11781]"}
      (forall n_5: Ref ::
      { Heap[n_5, l] } { QPMask[n_5, l] } { Heap[n_5, l] }
      refs[n_5] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, l] } { QPMask[n_5, l] } { Heap[n_5, l] }
        refs[n_5] && 1 / 2 > NoPerm ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9) ==> (NoPerm < 1 / 2 ==> invRecv1(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!((refs[invRecv1(o_9)] && NoPerm < 1 / 2) && qpRange1(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in refs) ==> acc(n.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@168.14--168.62) [11782]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && refs[n_7]) && refs[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
        refs[n_7] && NoPerm < 1 / 2 ==> qpRange2(n_7) && invRecv2(n_7) == n_7
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        (refs[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@168.14--168.62) [11783]"}
      (forall n_7: Ref ::
      { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
      refs[n_7] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
        refs[n_7] && 1 / 2 > NoPerm ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((refs[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9) ==> (NoPerm < 1 / 2 ==> invRecv2(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!((refs[invRecv2(o_9)] && NoPerm < 1 / 2) && qpRange2(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && (p.l == s || p.r == s))) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_7]) {
          if (refs[s_5]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.l (create_edge1.vpr@169.13--173.44) [11784]"}
              HasDirectPerm(Mask, p_7, l);
            if (!(Heap[p_7, l] == s_5)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.r (create_edge1.vpr@169.13--173.44) [11785]"}
                HasDirectPerm(Mask, p_7, r_11);
            }
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4: Ref ::
      { (create_edge(p_4_1, s_4): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4] && (Heap[p_4_1, l] == s_4 || Heap[p_4_1, r_11] == s_4))) == Result[(create_edge(p_4_1, s_4): EdgeDomainType)]
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
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp3(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), l] == Heap1Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), l]) ==> apply_TCFraming#condqp3(Heap2Heap, g0, g1) == apply_TCFraming#condqp3(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in g0) ==> acc(n.r, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp4(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp4(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), r_11] == Heap1Heap[sk_apply_TCFraming#condqp4(apply_TCFraming#condqp4(Heap2Heap, g0, g1), apply_TCFraming#condqp4(Heap1Heap, g0, g1)), r_11]) ==> apply_TCFraming#condqp4(Heap2Heap, g0, g1) == apply_TCFraming#condqp4(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.l } (n in g1) ==> acc(n.l, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp5(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp5(fnAppH1_2: int, fnAppH2_2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), l] == Heap1Heap[sk_apply_TCFraming#condqp5(apply_TCFraming#condqp5(Heap2Heap, g0, g1), apply_TCFraming#condqp5(Heap1Heap, g0, g1)), l]) ==> apply_TCFraming#condqp5(Heap2Heap, g0, g1) == apply_TCFraming#condqp5(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.r } (n in g1) ==> acc(n.r, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp6(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp6(fnAppH1_3: int, fnAppH2_3: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1)), r_11] == Heap1Heap[sk_apply_TCFraming#condqp6(apply_TCFraming#condqp6(Heap2Heap, g0, g1), apply_TCFraming#condqp6(Heap1Heap, g0, g1)), r_11]) ==> apply_TCFraming#condqp6(Heap2Heap, g0, g1) == apply_TCFraming#condqp6(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_14: Ref ::
    { g0[n$0_14], g1[n$0_14] }
    g0[n$0_14] ==> !g1[n$0_14]
  ) && (forall n$1: Ref ::
    { g0[n$1], g1[n$1] }
    g1[n$1] ==> !g0[n$1]
  ) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_14: Ref ::
    { g0[n$0_14], g1[n$0_14] }
    g0[n$0_14] ==> !g1[n$0_14]
  ) && (forall n$1: Ref ::
    { g0[n$1], g1[n$1] }
    g1[n$1] ==> !g0[n$1]
  ) ==> (forall u_1: Ref, v_2: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_1, v_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_1, v_2): bool) }
    g0[u_1] && (g0[v_2] && (exists_path($$(Heap, g0), u_1, v_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_1, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_14: Ref ::
    { g0[n$0_14], g1[n$0_14] }
    g0[n$0_14] ==> !g1[n$0_14]
  ) && (forall n$1: Ref ::
    { g0[n$1], g1[n$1] }
    g1[n$1] ==> !g0[n$1]
  ) ==> (forall u_1_1: Ref, v_1_1: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_1_1, v_1_1): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), FrameFragment($$#condqp2(Heap, Set#Union(g1, g0)))), Set#Union(g1, g0)), u_1_1, v_1_1): bool) }
    g1[u_1_1] && (g1[v_1_1] && (exists_path($$(Heap, g1), u_1_1, v_1_1): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_1_1, v_1_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_14: Ref ::
    { g0[n$0_14], g1[n$0_14] }
    g0[n$0_14] ==> !g1[n$0_14]
  ) && (forall n$1: Ref ::
    { g0[n$1], g1[n$1] }
    g1[n$1] ==> !g0[n$1]
  ) ==> (forall u_2_2: Ref, v_2_2: Ref ::
    { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_2_2, v_2_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_2_2, v_2_2): bool) }
    g0[u_2_2] && (g0[v_2_2] && !(exists_path($$(Heap, g0), u_2_2, v_2_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_2_2, v_2_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp4(Heap, g0, g1)), CombineFrames(FrameFragment(apply_TCFraming#condqp5(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp6(Heap, g0, g1))))), g0, g1)) ==> (forall n$0_14: Ref ::
    { g0[n$0_14], g1[n$0_14] }
    g0[n$0_14] ==> !g1[n$0_14]
  ) && (forall n$1: Ref ::
    { g0[n$1], g1[n$1] }
    g1[n$1] ==> !g0[n$1]
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
  var u_5: Ref;
  var v_5: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_6: Ref;
  var v_6: Ref;
  var u_26: Ref;
  var v_26: Ref;
  var u_27: Ref;
  var v_27: Ref;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@202.14--202.56) [11786]"}
      (forall n_9: Ref, n_9_1: Ref ::
      
      (((n_9 != n_9_1 && g0[n_9]) && g0[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
    );
    
    // -- Define Inverse Function
      assume (forall n_9: Ref ::
        { Heap[n_9, l] } { QPMask[n_9, l] } { Heap[n_9, l] }
        g0[n_9] && NoPerm < FullPerm ==> qpRange3(n_9) && invRecv3(n_9) == n_9
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (g0[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_9: Ref ::
        { Heap[n_9, l] } { QPMask[n_9, l] } { Heap[n_9, l] }
        g0[n_9] ==> n_9 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g0[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g0[invRecv3(o_9)] && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in g0) ==> acc(n.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@203.14--203.56) [11787]"}
      (forall n_11_2: Ref, n_11_3: Ref ::
      
      (((n_11_2 != n_11_3 && g0[n_11_2]) && g0[n_11_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_2 != n_11_3
    );
    
    // -- Define Inverse Function
      assume (forall n_11_2: Ref ::
        { Heap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { Heap[n_11_2, r_11] }
        g0[n_11_2] && NoPerm < FullPerm ==> qpRange4(n_11_2) && invRecv4(n_11_2) == n_11_2
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        (g0[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_11_2: Ref ::
        { Heap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { Heap[n_11_2, r_11] }
        g0[n_11_2] ==> n_11_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g0[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g0[invRecv4(o_9)] && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g1) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@204.14--204.56) [11788]"}
      (forall n_13_2: Ref, n_13_3: Ref ::
      
      (((n_13_2 != n_13_3 && g1[n_13_2]) && g1[n_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13_2 != n_13_3
    );
    
    // -- Define Inverse Function
      assume (forall n_13_2: Ref ::
        { Heap[n_13_2, l] } { QPMask[n_13_2, l] } { Heap[n_13_2, l] }
        g1[n_13_2] && NoPerm < FullPerm ==> qpRange5(n_13_2) && invRecv5(n_13_2) == n_13_2
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        (g1[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_13_2: Ref ::
        { Heap[n_13_2, l] } { QPMask[n_13_2, l] } { Heap[n_13_2, l] }
        g1[n_13_2] ==> n_13_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g1[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g1[invRecv5(o_9)] && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.r } (n in g1) ==> acc(n.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.r might not be injective. (create_edge1.vpr@205.14--205.56) [11789]"}
      (forall n_15: Ref, n_15_1: Ref ::
      
      (((n_15 != n_15_1 && g1[n_15]) && g1[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
    );
    
    // -- Define Inverse Function
      assume (forall n_15: Ref ::
        { Heap[n_15, r_11] } { QPMask[n_15, r_11] } { Heap[n_15, r_11] }
        g1[n_15] && NoPerm < FullPerm ==> qpRange6(n_15) && invRecv6(n_15) == n_15
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        (g1[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_15: Ref ::
        { Heap[n_15, r_11] } { QPMask[n_15, r_11] } { Heap[n_15, r_11] }
        g1[n_15] ==> n_15 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g1[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g1[invRecv6(o_9)] && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0 in g0), (n$0 in g1) } (n$0 in g0) ==> !((n$0 in g1)))
      if (*) {
        assume false;
      }
    assume (forall n$0_2: Ref ::
      { g0[n$0_2], g1[n$0_2] }
      g0[n$0_2] ==> !g1[n$0_2]
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
        if (g0[u_5]) {
          if (g0[v_5]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.134--214.140) [11790]"}
                  (forall n_16_1: Ref ::
                  { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
                  g0[n_16_1] && dummyFunction(Heap[n_16_1, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@214.134--214.140) [11791]"}
                  (forall n_16_1: Ref, n_16_2: Ref ::
                  { neverTriggered7(n_16_1), neverTriggered7(n_16_2) }
                  (((n_16_1 != n_16_2 && g0[n_16_1]) && g0[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@214.134--214.140) [11792]"}
                  (forall n_16_1: Ref ::
                  { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
                  g0[n_16_1] ==> 1 / 2 > NoPerm ==> Mask[n_16_1, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_16_1: Ref ::
                  { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
                  g0[n_16_1] && NoPerm < 1 / 2 ==> qpRange7(n_16_1) && invRecv7(n_16_1) == n_16_1
                );
                assume (forall o_9: Ref ::
                  { invRecv7(o_9) }
                  g0[invRecv7(o_9)] && (NoPerm < 1 / 2 && qpRange7(o_9)) ==> invRecv7(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.134--214.140) [11793]"}
                  (forall n_17: Ref ::
                  { Heap[n_17, r_11] } { QPMask[n_17, r_11] } { Heap[n_17, r_11] }
                  g0[n_17] && dummyFunction(Heap[n_17, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@214.134--214.140) [11794]"}
                  (forall n_17: Ref, n_17_1: Ref ::
                  { neverTriggered8(n_17), neverTriggered8(n_17_1) }
                  (((n_17 != n_17_1 && g0[n_17]) && g0[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@214.134--214.140) [11795]"}
                  (forall n_17: Ref ::
                  { Heap[n_17, r_11] } { QPMask[n_17, r_11] } { Heap[n_17, r_11] }
                  g0[n_17] ==> 1 / 2 > NoPerm ==> Mask[n_17, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_17: Ref ::
                  { Heap[n_17, r_11] } { QPMask[n_17, r_11] } { Heap[n_17, r_11] }
                  g0[n_17] && NoPerm < 1 / 2 ==> qpRange8(n_17) && invRecv8(n_17) == n_17
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
        if (g0[u_5] && (g0[v_5] && (exists_path($$(Heap, g0), u_5, v_5): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.162--214.177) [11796]"}
                (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] && dummyFunction(Heap[n_18, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@214.162--214.177) [11797]"}
                (forall n_18: Ref, n_18_1: Ref ::
                { neverTriggered9(n_18), neverTriggered9(n_18_1) }
                (((n_18 != n_18_1 && Set#Union(g0, g1)[n_18]) && Set#Union(g0, g1)[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@214.162--214.177) [11798]"}
                (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] ==> 1 / 2 > NoPerm ==> Mask[n_18, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] && NoPerm < 1 / 2 ==> qpRange9(n_18) && invRecv9(n_18) == n_18
              );
              assume (forall o_9: Ref ::
                { invRecv9(o_9) }
                Set#Union(g0, g1)[invRecv9(o_9)] && (NoPerm < 1 / 2 && qpRange9(o_9)) ==> invRecv9(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@214.162--214.177) [11799]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] && dummyFunction(Heap[n_19, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@214.162--214.177) [11800]"}
                (forall n_19: Ref, n_19_1: Ref ::
                { neverTriggered10(n_19), neverTriggered10(n_19_1) }
                (((n_19 != n_19_1 && Set#Union(g0, g1)[n_19]) && Set#Union(g0, g1)[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@214.162--214.177) [11801]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] ==> 1 / 2 > NoPerm ==> Mask[n_19, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] && NoPerm < 1 / 2 ==> qpRange10(n_19) && invRecv10(n_19) == n_19
              );
              assume (forall o_9: Ref ::
                { invRecv10(o_9) }
                Set#Union(g0, g1)[invRecv10(o_9)] && (NoPerm < 1 / 2 && qpRange10(o_9)) ==> invRecv10(o_9) == o_9
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
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_5_2, v_5_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_5_2, v_5_2): bool) }
      g0[u_5_2] && (g0[v_5_2] && (exists_path($$(Heap, g0), u_5_2, v_5_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_5_2, v_5_2): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_6]) {
          if (g1[v_6]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.134--215.140) [11802]"}
                  (forall n_20: Ref ::
                  { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                  g1[n_20] && dummyFunction(Heap[n_20, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@215.134--215.140) [11803]"}
                  (forall n_20: Ref, n_20_1: Ref ::
                  { neverTriggered11(n_20), neverTriggered11(n_20_1) }
                  (((n_20 != n_20_1 && g1[n_20]) && g1[n_20_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@215.134--215.140) [11804]"}
                  (forall n_20: Ref ::
                  { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                  g1[n_20] ==> 1 / 2 > NoPerm ==> Mask[n_20, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_20: Ref ::
                  { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                  g1[n_20] && NoPerm < 1 / 2 ==> qpRange11(n_20) && invRecv11(n_20) == n_20
                );
                assume (forall o_9: Ref ::
                  { invRecv11(o_9) }
                  g1[invRecv11(o_9)] && (NoPerm < 1 / 2 && qpRange11(o_9)) ==> invRecv11(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.134--215.140) [11805]"}
                  (forall n_21: Ref ::
                  { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                  g1[n_21] && dummyFunction(Heap[n_21, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@215.134--215.140) [11806]"}
                  (forall n_21: Ref, n_21_1: Ref ::
                  { neverTriggered12(n_21), neverTriggered12(n_21_1) }
                  (((n_21 != n_21_1 && g1[n_21]) && g1[n_21_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@215.134--215.140) [11807]"}
                  (forall n_21: Ref ::
                  { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                  g1[n_21] ==> 1 / 2 > NoPerm ==> Mask[n_21, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_21: Ref ::
                  { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                  g1[n_21] && NoPerm < 1 / 2 ==> qpRange12(n_21) && invRecv12(n_21) == n_21
                );
                assume (forall o_9: Ref ::
                  { invRecv12(o_9) }
                  g1[invRecv12(o_9)] && (NoPerm < 1 / 2 && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
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
        if (g1[u_6] && (g1[v_6] && (exists_path($$(Heap, g1), u_6, v_6): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.162--215.177) [11808]"}
                (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] && dummyFunction(Heap[n_22, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@215.162--215.177) [11809]"}
                (forall n_22: Ref, n_22_1: Ref ::
                { neverTriggered13(n_22), neverTriggered13(n_22_1) }
                (((n_22 != n_22_1 && Set#Union(g1, g0)[n_22]) && Set#Union(g1, g0)[n_22_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@215.162--215.177) [11810]"}
                (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] ==> 1 / 2 > NoPerm ==> Mask[n_22, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] && NoPerm < 1 / 2 ==> qpRange13(n_22) && invRecv13(n_22) == n_22
              );
              assume (forall o_9: Ref ::
                { invRecv13(o_9) }
                Set#Union(g1, g0)[invRecv13(o_9)] && (NoPerm < 1 / 2 && qpRange13(o_9)) ==> invRecv13(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@215.162--215.177) [11811]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] && dummyFunction(Heap[n_23, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@215.162--215.177) [11812]"}
                (forall n_23: Ref, n_23_1: Ref ::
                { neverTriggered14(n_23), neverTriggered14(n_23_1) }
                (((n_23 != n_23_1 && Set#Union(g1, g0)[n_23]) && Set#Union(g1, g0)[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@215.162--215.177) [11813]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] ==> 1 / 2 > NoPerm ==> Mask[n_23, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] && NoPerm < 1 / 2 ==> qpRange14(n_23) && invRecv14(n_23) == n_23
              );
              assume (forall o_9: Ref ::
                { invRecv14(o_9) }
                Set#Union(g1, g0)[invRecv14(o_9)] && (NoPerm < 1 / 2 && qpRange14(o_9)) ==> invRecv14(o_9) == o_9
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
        if (g0[u_26]) {
          if (g0[v_26]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.135--217.141) [11814]"}
                  (forall n_24: Ref ::
                  { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                  g0[n_24] && dummyFunction(Heap[n_24, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@217.135--217.141) [11815]"}
                  (forall n_24: Ref, n_24_1: Ref ::
                  { neverTriggered15(n_24), neverTriggered15(n_24_1) }
                  (((n_24 != n_24_1 && g0[n_24]) && g0[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@217.135--217.141) [11816]"}
                  (forall n_24: Ref ::
                  { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                  g0[n_24] ==> 1 / 2 > NoPerm ==> Mask[n_24, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_24: Ref ::
                  { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                  g0[n_24] && NoPerm < 1 / 2 ==> qpRange15(n_24) && invRecv15(n_24) == n_24
                );
                assume (forall o_9: Ref ::
                  { invRecv15(o_9) }
                  g0[invRecv15(o_9)] && (NoPerm < 1 / 2 && qpRange15(o_9)) ==> invRecv15(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.135--217.141) [11817]"}
                  (forall n_25: Ref ::
                  { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                  g0[n_25] && dummyFunction(Heap[n_25, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@217.135--217.141) [11818]"}
                  (forall n_25: Ref, n_25_1: Ref ::
                  { neverTriggered16(n_25), neverTriggered16(n_25_1) }
                  (((n_25 != n_25_1 && g0[n_25]) && g0[n_25_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_25 != n_25_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@217.135--217.141) [11819]"}
                  (forall n_25: Ref ::
                  { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                  g0[n_25] ==> 1 / 2 > NoPerm ==> Mask[n_25, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_25: Ref ::
                  { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                  g0[n_25] && NoPerm < 1 / 2 ==> qpRange16(n_25) && invRecv16(n_25) == n_25
                );
                assume (forall o_9: Ref ::
                  { invRecv16(o_9) }
                  g0[invRecv16(o_9)] && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
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
        if (g0[u_26] && (g0[v_26] && !(exists_path($$(Heap, g0), u_26, v_26): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.164--217.179) [11820]"}
                (forall n_26: Ref ::
                { Heap[n_26, l] } { QPMask[n_26, l] } { Heap[n_26, l] }
                Set#Union(g0, g1)[n_26] && dummyFunction(Heap[n_26, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@217.164--217.179) [11821]"}
                (forall n_26: Ref, n_26_1: Ref ::
                { neverTriggered17(n_26), neverTriggered17(n_26_1) }
                (((n_26 != n_26_1 && Set#Union(g0, g1)[n_26]) && Set#Union(g0, g1)[n_26_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_26 != n_26_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@217.164--217.179) [11822]"}
                (forall n_26: Ref ::
                { Heap[n_26, l] } { QPMask[n_26, l] } { Heap[n_26, l] }
                Set#Union(g0, g1)[n_26] ==> 1 / 2 > NoPerm ==> Mask[n_26, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_26: Ref ::
                { Heap[n_26, l] } { QPMask[n_26, l] } { Heap[n_26, l] }
                Set#Union(g0, g1)[n_26] && NoPerm < 1 / 2 ==> qpRange17(n_26) && invRecv17(n_26) == n_26
              );
              assume (forall o_9: Ref ::
                { invRecv17(o_9) }
                Set#Union(g0, g1)[invRecv17(o_9)] && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@217.164--217.179) [11823]"}
                (forall n_27: Ref ::
                { Heap[n_27, r_11] } { QPMask[n_27, r_11] } { Heap[n_27, r_11] }
                Set#Union(g0, g1)[n_27] && dummyFunction(Heap[n_27, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@217.164--217.179) [11824]"}
                (forall n_27: Ref, n_27_1: Ref ::
                { neverTriggered18(n_27), neverTriggered18(n_27_1) }
                (((n_27 != n_27_1 && Set#Union(g0, g1)[n_27]) && Set#Union(g0, g1)[n_27_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_27 != n_27_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@217.164--217.179) [11825]"}
                (forall n_27: Ref ::
                { Heap[n_27, r_11] } { QPMask[n_27, r_11] } { Heap[n_27, r_11] }
                Set#Union(g0, g1)[n_27] ==> 1 / 2 > NoPerm ==> Mask[n_27, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_27: Ref ::
                { Heap[n_27, r_11] } { QPMask[n_27, r_11] } { Heap[n_27, r_11] }
                Set#Union(g0, g1)[n_27] && NoPerm < 1 / 2 ==> qpRange18(n_27) && invRecv18(n_27) == n_27
              );
              assume (forall o_9: Ref ::
                { invRecv18(o_9) }
                Set#Union(g0, g1)[invRecv18(o_9)] && (NoPerm < 1 / 2 && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
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
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g0)), FrameFragment($$#condqp2(Heap, g0))), g0), u_9_2, v_9_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_9_2, v_9_2): bool) }
      g0[u_9_2] && (g0[v_9_2] && !(exists_path($$(Heap, g0), u_9_2, v_9_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_9_2, v_9_2): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_27]) {
          if (g1[v_27]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.135--218.141) [11826]"}
                  (forall n_28: Ref ::
                  { Heap[n_28, l] } { QPMask[n_28, l] } { Heap[n_28, l] }
                  g1[n_28] && dummyFunction(Heap[n_28, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@218.135--218.141) [11827]"}
                  (forall n_28: Ref, n_28_1: Ref ::
                  { neverTriggered19(n_28), neverTriggered19(n_28_1) }
                  (((n_28 != n_28_1 && g1[n_28]) && g1[n_28_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_28 != n_28_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@218.135--218.141) [11828]"}
                  (forall n_28: Ref ::
                  { Heap[n_28, l] } { QPMask[n_28, l] } { Heap[n_28, l] }
                  g1[n_28] ==> 1 / 2 > NoPerm ==> Mask[n_28, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_28: Ref ::
                  { Heap[n_28, l] } { QPMask[n_28, l] } { Heap[n_28, l] }
                  g1[n_28] && NoPerm < 1 / 2 ==> qpRange19(n_28) && invRecv19(n_28) == n_28
                );
                assume (forall o_9: Ref ::
                  { invRecv19(o_9) }
                  g1[invRecv19(o_9)] && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.135--218.141) [11829]"}
                  (forall n_29: Ref ::
                  { Heap[n_29, r_11] } { QPMask[n_29, r_11] } { Heap[n_29, r_11] }
                  g1[n_29] && dummyFunction(Heap[n_29, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@218.135--218.141) [11830]"}
                  (forall n_29: Ref, n_29_1: Ref ::
                  { neverTriggered20(n_29), neverTriggered20(n_29_1) }
                  (((n_29 != n_29_1 && g1[n_29]) && g1[n_29_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_29 != n_29_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@218.135--218.141) [11831]"}
                  (forall n_29: Ref ::
                  { Heap[n_29, r_11] } { QPMask[n_29, r_11] } { Heap[n_29, r_11] }
                  g1[n_29] ==> 1 / 2 > NoPerm ==> Mask[n_29, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_29: Ref ::
                  { Heap[n_29, r_11] } { QPMask[n_29, r_11] } { Heap[n_29, r_11] }
                  g1[n_29] && NoPerm < 1 / 2 ==> qpRange20(n_29) && invRecv20(n_29) == n_29
                );
                assume (forall o_9: Ref ::
                  { invRecv20(o_9) }
                  g1[invRecv20(o_9)] && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> invRecv20(o_9) == o_9
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
        if (g1[u_27] && (g1[v_27] && !(exists_path($$(Heap, g1), u_27, v_27): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.164--218.179) [11832]"}
                (forall n_30: Ref ::
                { Heap[n_30, l] } { QPMask[n_30, l] } { Heap[n_30, l] }
                Set#Union(g1, g0)[n_30] && dummyFunction(Heap[n_30, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@218.164--218.179) [11833]"}
                (forall n_30: Ref, n_30_1: Ref ::
                { neverTriggered21(n_30), neverTriggered21(n_30_1) }
                (((n_30 != n_30_1 && Set#Union(g1, g0)[n_30]) && Set#Union(g1, g0)[n_30_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_30 != n_30_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@218.164--218.179) [11834]"}
                (forall n_30: Ref ::
                { Heap[n_30, l] } { QPMask[n_30, l] } { Heap[n_30, l] }
                Set#Union(g1, g0)[n_30] ==> 1 / 2 > NoPerm ==> Mask[n_30, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_30: Ref ::
                { Heap[n_30, l] } { QPMask[n_30, l] } { Heap[n_30, l] }
                Set#Union(g1, g0)[n_30] && NoPerm < 1 / 2 ==> qpRange21(n_30) && invRecv21(n_30) == n_30
              );
              assume (forall o_9: Ref ::
                { invRecv21(o_9) }
                Set#Union(g1, g0)[invRecv21(o_9)] && (NoPerm < 1 / 2 && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@218.164--218.179) [11835]"}
                (forall n_31: Ref ::
                { Heap[n_31, r_11] } { QPMask[n_31, r_11] } { Heap[n_31, r_11] }
                Set#Union(g1, g0)[n_31] && dummyFunction(Heap[n_31, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@218.164--218.179) [11836]"}
                (forall n_31: Ref, n_31_1: Ref ::
                { neverTriggered22(n_31), neverTriggered22(n_31_1) }
                (((n_31 != n_31_1 && Set#Union(g1, g0)[n_31]) && Set#Union(g1, g0)[n_31_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_31 != n_31_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@218.164--218.179) [11837]"}
                (forall n_31: Ref ::
                { Heap[n_31, r_11] } { QPMask[n_31, r_11] } { Heap[n_31, r_11] }
                Set#Union(g1, g0)[n_31] ==> 1 / 2 > NoPerm ==> Mask[n_31, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_31: Ref ::
                { Heap[n_31, r_11] } { QPMask[n_31, r_11] } { Heap[n_31, r_11] }
                Set#Union(g1, g0)[n_31] && NoPerm < 1 / 2 ==> qpRange22(n_31) && invRecv22(n_31) == n_31
              );
              assume (forall o_9: Ref ::
                { invRecv22(o_9) }
                Set#Union(g1, g0)[invRecv22(o_9)] && (NoPerm < 1 / 2 && qpRange22(o_9)) ==> invRecv22(o_9) == o_9
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
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), u_11_2, v_11_2): bool) } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_11_2, v_11_2): bool) }
      g1[u_11_2] && (g1[v_11_2] && !(exists_path($$(Heap, g1), u_11_2, v_11_2): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_11_2, v_11_2): bool)
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
  var n$1_13: Ref;
  var n$2_24: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5: Ref;
  var n$6_5: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_11: Ref;
  var v2_11: Ref;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@244.14--244.45) [11838]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@244.14--244.45) [11839]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@244.14--244.45) [11840]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange23(n_1) && invRecv23(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@244.14--244.45) [11841]"}
      (forall n_1: Ref ::
      { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9) ==> (NoPerm < 1 / 2 ==> invRecv23(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((g_1[invRecv23(o_9)] && invRecv23(o_9) != x) && NoPerm < 1 / 2) && qpRange23(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@244.14--244.45) [11842]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange24(n$0_1) && invRecv24(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        ((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9) ==> invRecv24(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@244.14--244.45) [11843]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9) ==> (NoPerm < 1 / 2 ==> invRecv24(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv24(o_9)] && invRecv24(o_9) != x) && NoPerm < 1 / 2) && qpRange24(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@244.14--244.45) [11844]"}
            HasDirectPerm(Mask, n$1_13, l);
        }
        if (g_1[n$1_13] && Heap[n$1_13, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@244.14--244.45) [11845]"}
            HasDirectPerm(Mask, n$1_13, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l]] } { g_1[n$1_1], Heap[n$1_1, l] }
      g_1[n$1_1] && Heap[n$1_1, l] != null ==> g_1[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_24]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@244.14--244.45) [11846]"}
            HasDirectPerm(Mask, n$2_24, r_11);
        }
        if (g_1[n$2_24] && Heap[n$2_24, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@244.14--244.45) [11847]"}
            HasDirectPerm(Mask, n$2_24, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[Heap[n$2_1, r_11]] } { g_1[n$2_1], Heap[n$2_1, r_11] }
      g_1[n$2_1] && Heap[n$2_1, r_11] != null ==> g_1[Heap[n$2_1, r_11]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.l == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@245.14--245.25) [11848]"}
        HasDirectPerm(Mask, x, l);
    assume Heap[x, l] == null;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [11849]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l:=PostMask[x, l] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [11850]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_11:=PostMask[x, r_11] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@246.13--246.44) [11851]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && (g_1[n$3_1] && n$3_1 != x)) && (g_1[n$3_1_1] && n$3_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && NoPerm < 1 / 2 ==> qpRange25(n$3_1) && invRecv25(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((g_1[invRecv25(o_9)] && invRecv25(o_9) != x) && NoPerm < 1 / 2) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [11852]"}
      (forall n$3_1: Ref ::
      { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
      g_1[n$3_1] && n$3_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && 1 / 2 > NoPerm ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv25(o_9)] && invRecv25(o_9) != x) && NoPerm < 1 / 2) && qpRange25(o_9) ==> (NoPerm < 1 / 2 ==> invRecv25(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + 1 / 2) && (!(((g_1[invRecv25(o_9)] && invRecv25(o_9) != x) && NoPerm < 1 / 2) && qpRange25(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@246.13--246.44) [11853]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && (g_1[n$4_1] && n$4_1 != x)) && (g_1[n$4_1_1] && n$4_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && NoPerm < 1 / 2 ==> qpRange26(n$4_1) && invRecv26(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        ((g_1[invRecv26(o_9)] && invRecv26(o_9) != x) && NoPerm < 1 / 2) && qpRange26(o_9) ==> invRecv26(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [11854]"}
      (forall n$4_1: Ref ::
      { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
      g_1[n$4_1] && n$4_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && 1 / 2 > NoPerm ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv26(o_9)] && invRecv26(o_9) != x) && NoPerm < 1 / 2) && qpRange26(o_9) ==> (NoPerm < 1 / 2 ==> invRecv26(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv26(o_9)] && invRecv26(o_9) != x) && NoPerm < 1 / 2) && qpRange26(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@246.13--246.44) [11855]"}
            HasDirectPerm(PostMask, n$5, l);
        }
        if (g_1[n$5] && PostHeap[n$5, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@246.13--246.44) [11856]"}
            HasDirectPerm(PostMask, n$5, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l]] } { g_1[n$5_1], PostHeap[n$5_1, l] }
      g_1[n$5_1] && PostHeap[n$5_1, l] != null ==> g_1[PostHeap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@246.13--246.44) [11857]"}
            HasDirectPerm(PostMask, n$6_5, r_11);
        }
        if (g_1[n$6_5] && PostHeap[n$6_5, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@246.13--246.44) [11858]"}
            HasDirectPerm(PostMask, n$6_5, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_11]] } { g_1[n$6_1], PostHeap[n$6_1, r_11] }
      g_1[n$6_1] && PostHeap[n$6_1, r_11] != null ==> g_1[PostHeap[n$6_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.l == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@247.13--247.21) [11859]"}
        HasDirectPerm(PostMask, x, l);
    assume PostHeap[x, l] == y;
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.27--248.32) [11860]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@248.27--248.32) [11861]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered27(n_2), neverTriggered27(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@248.27--248.32) [11862]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange27(n_2) && invRecv27(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv27(o_9) }
              g_1[invRecv27(o_9)] && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.27--248.32) [11863]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@248.27--248.32) [11864]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered28(n_3), neverTriggered28(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@248.27--248.32) [11865]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange28(n_3) && invRecv28(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv28(o_9) }
              g_1[invRecv28(o_9)] && (NoPerm < 1 / 2 && qpRange28(o_9)) ==> invRecv28(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.40--248.45) [11866]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && dummyFunction(oldHeap[n_4, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@248.40--248.45) [11867]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered29(n_4), neverTriggered29(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@248.40--248.45) [11868]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> oldMask[n_4, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange29(n_4) && invRecv29(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv29(o_9) }
              g_1[invRecv29(o_9)] && (NoPerm < 1 / 2 && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@248.40--248.45) [11869]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@248.40--248.45) [11870]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered30(n_5), neverTriggered30(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@248.40--248.45) [11871]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange30(n_5) && invRecv30(n_5) == n_5
            );
            assume (forall o_9: Ref ::
              { invRecv30(o_9) }
              g_1[invRecv30(o_9)] && (NoPerm < 1 / 2 && qpRange30(o_9)) ==> invRecv30(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.18--251.23) [11872]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@251.18--251.23) [11873]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered31(n_6), neverTriggered31(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@251.18--251.23) [11874]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange31(n_6) && invRecv31(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv31(o_9) }
                g_1[invRecv31(o_9)] && (NoPerm < 1 / 2 && qpRange31(o_9)) ==> invRecv31(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.18--251.23) [11875]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@251.18--251.23) [11876]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered32(n_7), neverTriggered32(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@251.18--251.23) [11877]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange32(n_7) && invRecv32(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv32(o_9) }
                g_1[invRecv32(o_9)] && (NoPerm < 1 / 2 && qpRange32(o_9)) ==> invRecv32(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.45--251.50) [11878]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@251.45--251.50) [11879]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered33(n_8), neverTriggered33(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@251.45--251.50) [11880]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange33(n_8) && invRecv33(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv33(o_9) }
                g_1[invRecv33(o_9)] && (NoPerm < 1 / 2 && qpRange33(o_9)) ==> invRecv33(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@251.45--251.50) [11881]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@251.45--251.50) [11882]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered34(n_9), neverTriggered34(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@251.45--251.50) [11883]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange34(n_9) && invRecv34(n_9) == n_9
              );
              assume (forall o_9: Ref ::
                { invRecv34(o_9) }
                g_1[invRecv34(o_9)] && (NoPerm < 1 / 2 && qpRange34(o_9)) ==> invRecv34(o_9) == o_9
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
          if (v1_11 != v2_11) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.25--256.30) [11884]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.25--256.30) [11885]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered35(n_10_1), neverTriggered35(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.25--256.30) [11886]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange35(n_10_1) && invRecv35(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv35(o_9) }
                  g_1[invRecv35(o_9)] && (NoPerm < 1 / 2 && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.25--256.30) [11887]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && dummyFunction(PostHeap[n_11_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.25--256.30) [11888]"}
                  (forall n_11_2: Ref, n_11_3: Ref ::
                  { neverTriggered36(n_11_2), neverTriggered36(n_11_3) }
                  (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.25--256.30) [11889]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange36(n_11_2) && invRecv36(n_11_2) == n_11_2
                );
                assume (forall o_9: Ref ::
                  { invRecv36(o_9) }
                  g_1[invRecv36(o_9)] && (NoPerm < 1 / 2 && qpRange36(o_9)) ==> invRecv36(o_9) == o_9
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.59--256.64) [11890]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && dummyFunction(oldHeap[n_12, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.59--256.64) [11891]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered37(n_12), neverTriggered37(n_12_1) }
                  (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.59--256.64) [11892]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] ==> 1 / 2 > NoPerm ==> oldMask[n_12, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && NoPerm < 1 / 2 ==> qpRange37(n_12) && invRecv37(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv37(o_9) }
                  g_1[invRecv37(o_9)] && (NoPerm < 1 / 2 && qpRange37(o_9)) ==> invRecv37(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.59--256.64) [11893]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.59--256.64) [11894]"}
                  (forall n_13_2: Ref, n_13_3: Ref ::
                  { neverTriggered38(n_13_2), neverTriggered38(n_13_3) }
                  (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.59--256.64) [11895]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange38(n_13_2) && invRecv38(n_13_2) == n_13_2
                );
                assume (forall o_9: Ref ::
                  { invRecv38(o_9) }
                  g_1[invRecv38(o_9)] && (NoPerm < 1 / 2 && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_11, v2_11): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.93--256.98) [11896]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, l]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.93--256.98) [11897]"}
                    (forall n_14_1: Ref, n_14_2: Ref ::
                    { neverTriggered39(n_14_1), neverTriggered39(n_14_2) }
                    (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.93--256.98) [11898]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, l] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange39(n_14_1) && invRecv39(n_14_1) == n_14_1
                  );
                  assume (forall o_9: Ref ::
                    { invRecv39(o_9) }
                    g_1[invRecv39(o_9)] && (NoPerm < 1 / 2 && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.93--256.98) [11899]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_11]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.93--256.98) [11900]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered40(n_15), neverTriggered40(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.93--256.98) [11901]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_11] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange40(n_15) && invRecv40(n_15) == n_15
                  );
                  assume (forall o_9: Ref ::
                    { invRecv40(o_9) }
                    g_1[invRecv40(o_9)] && (NoPerm < 1 / 2 && qpRange40(o_9)) ==> invRecv40(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_11, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.125--256.130) [11902]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, l]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@256.125--256.130) [11903]"}
                      (forall n_16_1: Ref, n_16_2: Ref ::
                      { neverTriggered41(n_16_1), neverTriggered41(n_16_2) }
                      (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@256.125--256.130) [11904]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, l] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange41(n_16_1) && invRecv41(n_16_1) == n_16_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv41(o_9) }
                      g_1[invRecv41(o_9)] && (NoPerm < 1 / 2 && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@256.125--256.130) [11905]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_11]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@256.125--256.130) [11906]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered42(n_17), neverTriggered42(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@256.125--256.130) [11907]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_11] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange42(n_17) && invRecv42(n_17) == n_17
                    );
                    assume (forall o_9: Ref ::
                      { invRecv42(o_9) }
                      g_1[invRecv42(o_9)] && (NoPerm < 1 / 2 && qpRange42(o_9)) ==> invRecv42(o_9) == o_9
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
    assert {:msg "  Postcondition of link_left might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@246.13--246.44) [11908]"}
      !g_1[null];
    assert {:msg "  Postcondition of link_left might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@246.13--246.44) [11909]"}
      g_1[x];
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [11910]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@246.13--246.44) [11911]"}
        perm <= Mask[x, l];
    }
    Mask := Mask[x, l:=Mask[x, l] - perm];
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@246.13--246.44) [11912]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@246.13--246.44) [11913]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [11914]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@246.13--246.44) [11915]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered43(n$3_2), neverTriggered43(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@246.13--246.44) [11916]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange43(n$3_2) && invRecv43(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv43(o_9) }
        (g_1[invRecv43(o_9)] && invRecv43(o_9) != x) && (NoPerm < 1 / 2 && qpRange43(o_9)) ==> invRecv43(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g_1[invRecv43(o_9)] && invRecv43(o_9) != x) && (NoPerm < 1 / 2 && qpRange43(o_9)) ==> invRecv43(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((g_1[invRecv43(o_9)] && invRecv43(o_9) != x) && (NoPerm < 1 / 2 && qpRange43(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@246.13--246.44) [11917]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && dummyFunction(Heap[n$4_2, r_11]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@246.13--246.44) [11918]"}
        (forall n$4_2: Ref, n$4_2_1: Ref ::
        { neverTriggered44(n$4_2), neverTriggered44(n$4_2_1) }
        (((n$4_2 != n$4_2_1 && (g_1[n$4_2] && n$4_2 != x)) && (g_1[n$4_2_1] && n$4_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_left might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@246.13--246.44) [11919]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        g_1[n$4_2] && n$4_2 != x ==> Mask[n$4_2, r_11] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && NoPerm < 1 / 2 ==> qpRange44(n$4_2) && invRecv44(n$4_2) == n$4_2
      );
      assume (forall o_9: Ref ::
        { invRecv44(o_9) }
        (g_1[invRecv44(o_9)] && invRecv44(o_9) != x) && (NoPerm < 1 / 2 && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g_1[invRecv44(o_9)] && invRecv44(o_9) != x) && (NoPerm < 1 / 2 && qpRange44(o_9)) ==> invRecv44(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((g_1[invRecv44(o_9)] && invRecv44(o_9) != x) && (NoPerm < 1 / 2 && qpRange44(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l] != null) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@246.13--246.44) [11920]"}
          g_1[Heap[n$5_2, l]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l]] } { g_1[n$5_3_1], Heap[n$5_3_1, l] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l] != null ==> g_1[Heap[n$5_3_1, l]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_11] != null) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@246.13--246.44) [11921]"}
          g_1[Heap[n$6_2, r_11]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_11]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_11] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_11] != null ==> g_1[Heap[n$6_3_1, r_11]]
    );
    assert {:msg "  Postcondition of link_left might not hold. Assertion x.l == y might not hold. (create_edge1.vpr@247.13--247.21) [11922]"}
      Heap[x, l] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link_left might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@248.13--248.46) [11923]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link_left might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (create_edge1.vpr@249.13--251.78) [11924]"}
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
          assert {:msg "  Postcondition of link_left might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (create_edge1.vpr@252.13--257.10) [11925]"}
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
  var n$1_14: Ref;
  var n$2_25: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_3: Ref;
  var n$6_6: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_12: Ref;
  var v2_12: Ref;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@262.14--262.46) [11926]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@262.14--262.46) [11927]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@262.14--262.46) [11928]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange45(n_1) && invRecv45(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv45(o_9) }
        ((g_1[invRecv45(o_9)] && invRecv45(o_9) != x) && NoPerm < 1 / 2) && qpRange45(o_9) ==> invRecv45(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@262.14--262.46) [11929]"}
      (forall n_1: Ref ::
      { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv45(o_9)] && invRecv45(o_9) != x) && NoPerm < 1 / 2) && qpRange45(o_9) ==> (NoPerm < 1 / 2 ==> invRecv45(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((g_1[invRecv45(o_9)] && invRecv45(o_9) != x) && NoPerm < 1 / 2) && qpRange45(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@262.14--262.46) [11930]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange46(n$0_1) && invRecv46(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv46(o_9) }
        ((g_1[invRecv46(o_9)] && invRecv46(o_9) != x) && NoPerm < 1 / 2) && qpRange46(o_9) ==> invRecv46(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@262.14--262.46) [11931]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv46(o_9)] && invRecv46(o_9) != x) && NoPerm < 1 / 2) && qpRange46(o_9) ==> (NoPerm < 1 / 2 ==> invRecv46(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv46(o_9)] && invRecv46(o_9) != x) && NoPerm < 1 / 2) && qpRange46(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@262.14--262.46) [11932]"}
            HasDirectPerm(Mask, n$1_14, l);
        }
        if (g_1[n$1_14] && Heap[n$1_14, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@262.14--262.46) [11933]"}
            HasDirectPerm(Mask, n$1_14, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l]] } { g_1[n$1_1], Heap[n$1_1, l] }
      g_1[n$1_1] && Heap[n$1_1, l] != null ==> g_1[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_25]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@262.14--262.46) [11934]"}
            HasDirectPerm(Mask, n$2_25, r_11);
        }
        if (g_1[n$2_25] && Heap[n$2_25, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@262.14--262.46) [11935]"}
            HasDirectPerm(Mask, n$2_25, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[Heap[n$2_1, r_11]] } { g_1[n$2_1], Heap[n$2_1, r_11] }
      g_1[n$2_1] && Heap[n$2_1, r_11] != null ==> g_1[Heap[n$2_1, r_11]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@263.14--263.25) [11936]"}
        HasDirectPerm(Mask, x, r_11);
    assume Heap[x, r_11] == null;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [11937]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l:=PostMask[x, l] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [11938]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_11:=PostMask[x, r_11] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@264.13--264.45) [11939]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && (g_1[n$3_1] && n$3_1 != x)) && (g_1[n$3_1_1] && n$3_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && NoPerm < 1 / 2 ==> qpRange47(n$3_1) && invRecv47(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv47(o_9) }
        ((g_1[invRecv47(o_9)] && invRecv47(o_9) != x) && NoPerm < 1 / 2) && qpRange47(o_9) ==> invRecv47(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [11940]"}
      (forall n$3_1: Ref ::
      { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
      g_1[n$3_1] && n$3_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && 1 / 2 > NoPerm ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv47(o_9)] && invRecv47(o_9) != x) && NoPerm < 1 / 2) && qpRange47(o_9) ==> (NoPerm < 1 / 2 ==> invRecv47(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + 1 / 2) && (!(((g_1[invRecv47(o_9)] && invRecv47(o_9) != x) && NoPerm < 1 / 2) && qpRange47(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@264.13--264.45) [11941]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && (g_1[n$4_1] && n$4_1 != x)) && (g_1[n$4_1_1] && n$4_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && NoPerm < 1 / 2 ==> qpRange48(n$4_1) && invRecv48(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv48(o_9) }
        ((g_1[invRecv48(o_9)] && invRecv48(o_9) != x) && NoPerm < 1 / 2) && qpRange48(o_9) ==> invRecv48(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [11942]"}
      (forall n$4_1: Ref ::
      { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
      g_1[n$4_1] && n$4_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && 1 / 2 > NoPerm ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv48(o_9)] && invRecv48(o_9) != x) && NoPerm < 1 / 2) && qpRange48(o_9) ==> (NoPerm < 1 / 2 ==> invRecv48(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv48(o_9)] && invRecv48(o_9) != x) && NoPerm < 1 / 2) && qpRange48(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@264.13--264.45) [11943]"}
            HasDirectPerm(PostMask, n$5_3, l);
        }
        if (g_1[n$5_3] && PostHeap[n$5_3, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@264.13--264.45) [11944]"}
            HasDirectPerm(PostMask, n$5_3, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l]] } { g_1[n$5_1], PostHeap[n$5_1, l] }
      g_1[n$5_1] && PostHeap[n$5_1, l] != null ==> g_1[PostHeap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@264.13--264.45) [11945]"}
            HasDirectPerm(PostMask, n$6_6, r_11);
        }
        if (g_1[n$6_6] && PostHeap[n$6_6, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@264.13--264.45) [11946]"}
            HasDirectPerm(PostMask, n$6_6, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_11]] } { g_1[n$6_1], PostHeap[n$6_1, r_11] }
      g_1[n$6_1] && PostHeap[n$6_1, r_11] != null ==> g_1[PostHeap[n$6_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.r == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@265.13--265.21) [11947]"}
        HasDirectPerm(PostMask, x, r_11);
    assume PostHeap[x, r_11] == y;
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.27--266.32) [11948]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@266.27--266.32) [11949]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered49(n_2), neverTriggered49(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@266.27--266.32) [11950]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange49(n_2) && invRecv49(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv49(o_9) }
              g_1[invRecv49(o_9)] && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.27--266.32) [11951]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@266.27--266.32) [11952]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered50(n_3), neverTriggered50(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@266.27--266.32) [11953]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange50(n_3) && invRecv50(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv50(o_9) }
              g_1[invRecv50(o_9)] && (NoPerm < 1 / 2 && qpRange50(o_9)) ==> invRecv50(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.40--266.45) [11954]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && dummyFunction(oldHeap[n_4, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@266.40--266.45) [11955]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered51(n_4), neverTriggered51(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@266.40--266.45) [11956]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> oldMask[n_4, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange51(n_4) && invRecv51(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv51(o_9) }
              g_1[invRecv51(o_9)] && (NoPerm < 1 / 2 && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@266.40--266.45) [11957]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@266.40--266.45) [11958]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered52(n_5), neverTriggered52(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@266.40--266.45) [11959]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange52(n_5) && invRecv52(n_5) == n_5
            );
            assume (forall o_9: Ref ::
              { invRecv52(o_9) }
              g_1[invRecv52(o_9)] && (NoPerm < 1 / 2 && qpRange52(o_9)) ==> invRecv52(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.18--269.23) [11960]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@269.18--269.23) [11961]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered53(n_6), neverTriggered53(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@269.18--269.23) [11962]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange53(n_6) && invRecv53(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv53(o_9) }
                g_1[invRecv53(o_9)] && (NoPerm < 1 / 2 && qpRange53(o_9)) ==> invRecv53(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.18--269.23) [11963]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@269.18--269.23) [11964]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered54(n_7), neverTriggered54(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@269.18--269.23) [11965]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange54(n_7) && invRecv54(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv54(o_9) }
                g_1[invRecv54(o_9)] && (NoPerm < 1 / 2 && qpRange54(o_9)) ==> invRecv54(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.45--269.50) [11966]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@269.45--269.50) [11967]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered55(n_8), neverTriggered55(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@269.45--269.50) [11968]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange55(n_8) && invRecv55(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv55(o_9) }
                g_1[invRecv55(o_9)] && (NoPerm < 1 / 2 && qpRange55(o_9)) ==> invRecv55(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@269.45--269.50) [11969]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@269.45--269.50) [11970]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered56(n_9), neverTriggered56(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@269.45--269.50) [11971]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange56(n_9) && invRecv56(n_9) == n_9
              );
              assume (forall o_9: Ref ::
                { invRecv56(o_9) }
                g_1[invRecv56(o_9)] && (NoPerm < 1 / 2 && qpRange56(o_9)) ==> invRecv56(o_9) == o_9
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
          if (v1_12 != v2_12) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.25--274.30) [11972]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.25--274.30) [11973]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered57(n_10_1), neverTriggered57(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.25--274.30) [11974]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange57(n_10_1) && invRecv57(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv57(o_9) }
                  g_1[invRecv57(o_9)] && (NoPerm < 1 / 2 && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.25--274.30) [11975]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && dummyFunction(PostHeap[n_11_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.25--274.30) [11976]"}
                  (forall n_11_2: Ref, n_11_3: Ref ::
                  { neverTriggered58(n_11_2), neverTriggered58(n_11_3) }
                  (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.25--274.30) [11977]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange58(n_11_2) && invRecv58(n_11_2) == n_11_2
                );
                assume (forall o_9: Ref ::
                  { invRecv58(o_9) }
                  g_1[invRecv58(o_9)] && (NoPerm < 1 / 2 && qpRange58(o_9)) ==> invRecv58(o_9) == o_9
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.59--274.64) [11978]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && dummyFunction(oldHeap[n_12, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.59--274.64) [11979]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered59(n_12), neverTriggered59(n_12_1) }
                  (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.59--274.64) [11980]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] ==> 1 / 2 > NoPerm ==> oldMask[n_12, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && NoPerm < 1 / 2 ==> qpRange59(n_12) && invRecv59(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv59(o_9) }
                  g_1[invRecv59(o_9)] && (NoPerm < 1 / 2 && qpRange59(o_9)) ==> invRecv59(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.59--274.64) [11981]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.59--274.64) [11982]"}
                  (forall n_13_2: Ref, n_13_3: Ref ::
                  { neverTriggered60(n_13_2), neverTriggered60(n_13_3) }
                  (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.59--274.64) [11983]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange60(n_13_2) && invRecv60(n_13_2) == n_13_2
                );
                assume (forall o_9: Ref ::
                  { invRecv60(o_9) }
                  g_1[invRecv60(o_9)] && (NoPerm < 1 / 2 && qpRange60(o_9)) ==> invRecv60(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_12, v2_12): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.93--274.98) [11984]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, l]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.93--274.98) [11985]"}
                    (forall n_14_1: Ref, n_14_2: Ref ::
                    { neverTriggered61(n_14_1), neverTriggered61(n_14_2) }
                    (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.93--274.98) [11986]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, l] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange61(n_14_1) && invRecv61(n_14_1) == n_14_1
                  );
                  assume (forall o_9: Ref ::
                    { invRecv61(o_9) }
                    g_1[invRecv61(o_9)] && (NoPerm < 1 / 2 && qpRange61(o_9)) ==> invRecv61(o_9) == o_9
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.93--274.98) [11987]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_11]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.93--274.98) [11988]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered62(n_15), neverTriggered62(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.93--274.98) [11989]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_11] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange62(n_15) && invRecv62(n_15) == n_15
                  );
                  assume (forall o_9: Ref ::
                    { invRecv62(o_9) }
                    g_1[invRecv62(o_9)] && (NoPerm < 1 / 2 && qpRange62(o_9)) ==> invRecv62(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_12, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.125--274.130) [11990]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, l]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@274.125--274.130) [11991]"}
                      (forall n_16_1: Ref, n_16_2: Ref ::
                      { neverTriggered63(n_16_1), neverTriggered63(n_16_2) }
                      (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@274.125--274.130) [11992]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, l] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange63(n_16_1) && invRecv63(n_16_1) == n_16_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv63(o_9) }
                      g_1[invRecv63(o_9)] && (NoPerm < 1 / 2 && qpRange63(o_9)) ==> invRecv63(o_9) == o_9
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@274.125--274.130) [11993]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_11]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@274.125--274.130) [11994]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered64(n_17), neverTriggered64(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@274.125--274.130) [11995]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_11] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange64(n_17) && invRecv64(n_17) == n_17
                    );
                    assume (forall o_9: Ref ::
                      { invRecv64(o_9) }
                      g_1[invRecv64(o_9)] && (NoPerm < 1 / 2 && qpRange64(o_9)) ==> invRecv64(o_9) == o_9
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
    assert {:msg "  Postcondition of link_right might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@264.13--264.45) [11996]"}
      !g_1[null];
    assert {:msg "  Postcondition of link_right might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@264.13--264.45) [11997]"}
      g_1[x];
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [11998]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@264.13--264.45) [11999]"}
        perm <= Mask[x, l];
    }
    Mask := Mask[x, l:=Mask[x, l] - perm];
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@264.13--264.45) [12000]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@264.13--264.45) [12001]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [12002]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@264.13--264.45) [12003]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered65(n$3_2), neverTriggered65(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@264.13--264.45) [12004]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange65(n$3_2) && invRecv65(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv65(o_9) }
        (g_1[invRecv65(o_9)] && invRecv65(o_9) != x) && (NoPerm < 1 / 2 && qpRange65(o_9)) ==> invRecv65(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g_1[invRecv65(o_9)] && invRecv65(o_9) != x) && (NoPerm < 1 / 2 && qpRange65(o_9)) ==> invRecv65(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((g_1[invRecv65(o_9)] && invRecv65(o_9) != x) && (NoPerm < 1 / 2 && qpRange65(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@264.13--264.45) [12005]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && dummyFunction(Heap[n$4_2, r_11]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@264.13--264.45) [12006]"}
        (forall n$4_2: Ref, n$4_2_1: Ref ::
        { neverTriggered66(n$4_2), neverTriggered66(n$4_2_1) }
        (((n$4_2 != n$4_2_1 && (g_1[n$4_2] && n$4_2 != x)) && (g_1[n$4_2_1] && n$4_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_right might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@264.13--264.45) [12007]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        g_1[n$4_2] && n$4_2 != x ==> Mask[n$4_2, r_11] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && NoPerm < 1 / 2 ==> qpRange66(n$4_2) && invRecv66(n$4_2) == n$4_2
      );
      assume (forall o_9: Ref ::
        { invRecv66(o_9) }
        (g_1[invRecv66(o_9)] && invRecv66(o_9) != x) && (NoPerm < 1 / 2 && qpRange66(o_9)) ==> invRecv66(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g_1[invRecv66(o_9)] && invRecv66(o_9) != x) && (NoPerm < 1 / 2 && qpRange66(o_9)) ==> invRecv66(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((g_1[invRecv66(o_9)] && invRecv66(o_9) != x) && (NoPerm < 1 / 2 && qpRange66(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l] != null) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@264.13--264.45) [12008]"}
          g_1[Heap[n$5_2, l]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l]] } { g_1[n$5_3_1], Heap[n$5_3_1, l] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l] != null ==> g_1[Heap[n$5_3_1, l]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_11] != null) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@264.13--264.45) [12009]"}
          g_1[Heap[n$6_2, r_11]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_11]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_11] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_11] != null ==> g_1[Heap[n$6_3_1, r_11]]
    );
    assert {:msg "  Postcondition of link_right might not hold. Assertion x.r == y might not hold. (create_edge1.vpr@265.13--265.21) [12010]"}
      Heap[x, r_11] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link_right might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@266.13--266.46) [12011]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link_right might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (create_edge1.vpr@267.13--269.78) [12012]"}
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
          assert {:msg "  Postcondition of link_right might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (create_edge1.vpr@270.13--275.10) [12013]"}
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
  var n$1_15: Ref;
  var n$2_22: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_4: Ref;
  var n$6_7: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_13: Ref;
  var v2_13: Ref;
  var v1_10: Ref;
  var v2_10: Ref;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@279.14--279.45) [12014]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@279.14--279.45) [12015]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@279.14--279.45) [12016]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange67(n_1) && invRecv67(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv67(o_9) }
        ((g_1[invRecv67(o_9)] && invRecv67(o_9) != x) && NoPerm < 1 / 2) && qpRange67(o_9) ==> invRecv67(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@279.14--279.45) [12017]"}
      (forall n_1: Ref ::
      { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv67(o_9)] && invRecv67(o_9) != x) && NoPerm < 1 / 2) && qpRange67(o_9) ==> (NoPerm < 1 / 2 ==> invRecv67(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((g_1[invRecv67(o_9)] && invRecv67(o_9) != x) && NoPerm < 1 / 2) && qpRange67(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@279.14--279.45) [12018]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange68(n$0_1) && invRecv68(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv68(o_9) }
        ((g_1[invRecv68(o_9)] && invRecv68(o_9) != x) && NoPerm < 1 / 2) && qpRange68(o_9) ==> invRecv68(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@279.14--279.45) [12019]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv68(o_9)] && invRecv68(o_9) != x) && NoPerm < 1 / 2) && qpRange68(o_9) ==> (NoPerm < 1 / 2 ==> invRecv68(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv68(o_9)] && invRecv68(o_9) != x) && NoPerm < 1 / 2) && qpRange68(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_15]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@279.14--279.45) [12020]"}
            HasDirectPerm(Mask, n$1_15, l);
        }
        if (g_1[n$1_15] && Heap[n$1_15, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@279.14--279.45) [12021]"}
            HasDirectPerm(Mask, n$1_15, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l]] } { g_1[n$1_1], Heap[n$1_1, l] }
      g_1[n$1_1] && Heap[n$1_1, l] != null ==> g_1[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_22]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@279.14--279.45) [12022]"}
            HasDirectPerm(Mask, n$2_22, r_11);
        }
        if (g_1[n$2_22] && Heap[n$2_22, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@279.14--279.45) [12023]"}
            HasDirectPerm(Mask, n$2_22, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[Heap[n$2_1, r_11]] } { g_1[n$2_1], Heap[n$2_1, r_11] }
      g_1[n$2_1] && Heap[n$2_1, r_11] != null ==> g_1[Heap[n$2_1, r_11]]
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
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [12024]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l:=PostMask[x, l] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [12025]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_11:=PostMask[x, r_11] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@280.13--280.44) [12026]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && (g_1[n$3_1] && n$3_1 != x)) && (g_1[n$3_1_1] && n$3_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && NoPerm < 1 / 2 ==> qpRange69(n$3_1) && invRecv69(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv69(o_9) }
        ((g_1[invRecv69(o_9)] && invRecv69(o_9) != x) && NoPerm < 1 / 2) && qpRange69(o_9) ==> invRecv69(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [12027]"}
      (forall n$3_1: Ref ::
      { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
      g_1[n$3_1] && n$3_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && 1 / 2 > NoPerm ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv69(o_9)] && invRecv69(o_9) != x) && NoPerm < 1 / 2) && qpRange69(o_9) ==> (NoPerm < 1 / 2 ==> invRecv69(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + 1 / 2) && (!(((g_1[invRecv69(o_9)] && invRecv69(o_9) != x) && NoPerm < 1 / 2) && qpRange69(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@280.13--280.44) [12028]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && (g_1[n$4_1] && n$4_1 != x)) && (g_1[n$4_1_1] && n$4_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && NoPerm < 1 / 2 ==> qpRange70(n$4_1) && invRecv70(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv70(o_9) }
        ((g_1[invRecv70(o_9)] && invRecv70(o_9) != x) && NoPerm < 1 / 2) && qpRange70(o_9) ==> invRecv70(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [12029]"}
      (forall n$4_1: Ref ::
      { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
      g_1[n$4_1] && n$4_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && 1 / 2 > NoPerm ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv70(o_9)] && invRecv70(o_9) != x) && NoPerm < 1 / 2) && qpRange70(o_9) ==> (NoPerm < 1 / 2 ==> invRecv70(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv70(o_9)] && invRecv70(o_9) != x) && NoPerm < 1 / 2) && qpRange70(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@280.13--280.44) [12030]"}
            HasDirectPerm(PostMask, n$5_4, l);
        }
        if (g_1[n$5_4] && PostHeap[n$5_4, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@280.13--280.44) [12031]"}
            HasDirectPerm(PostMask, n$5_4, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l]] } { g_1[n$5_1], PostHeap[n$5_1, l] }
      g_1[n$5_1] && PostHeap[n$5_1, l] != null ==> g_1[PostHeap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_7]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@280.13--280.44) [12032]"}
            HasDirectPerm(PostMask, n$6_7, r_11);
        }
        if (g_1[n$6_7] && PostHeap[n$6_7, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@280.13--280.44) [12033]"}
            HasDirectPerm(PostMask, n$6_7, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_11]] } { g_1[n$6_1], PostHeap[n$6_1, r_11] }
      g_1[n$6_1] && PostHeap[n$6_1, r_11] != null ==> g_1[PostHeap[n$6_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.l == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@281.13--281.24) [12034]"}
        HasDirectPerm(PostMask, x, l);
    assume PostHeap[x, l] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@282.13--282.53) [12035]"}
        HasDirectPerm(oldMask, x, l);
    if (oldHeap[x, l] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.34--282.39) [12036]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@282.34--282.39) [12037]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered71(n_2), neverTriggered71(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@282.34--282.39) [12038]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange71(n_2) && invRecv71(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv71(o_9) }
              g_1[invRecv71(o_9)] && (NoPerm < 1 / 2 && qpRange71(o_9)) ==> invRecv71(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.34--282.39) [12039]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@282.34--282.39) [12040]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered72(n_3), neverTriggered72(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@282.34--282.39) [12041]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange72(n_3) && invRecv72(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv72(o_9) }
              g_1[invRecv72(o_9)] && (NoPerm < 1 / 2 && qpRange72(o_9)) ==> invRecv72(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.47--282.52) [12042]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && dummyFunction(oldHeap[n_4, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@282.47--282.52) [12043]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered73(n_4), neverTriggered73(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@282.47--282.52) [12044]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> oldMask[n_4, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange73(n_4) && invRecv73(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv73(o_9) }
              g_1[invRecv73(o_9)] && (NoPerm < 1 / 2 && qpRange73(o_9)) ==> invRecv73(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@282.47--282.52) [12045]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@282.47--282.52) [12046]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered74(n_5), neverTriggered74(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@282.47--282.52) [12047]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange74(n_5) && invRecv74(n_5) == n_5
            );
            assume (forall o_9: Ref ::
              { invRecv74(o_9) }
              g_1[invRecv74(o_9)] && (NoPerm < 1 / 2 && qpRange74(o_9)) ==> invRecv74(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@283.13--285.86) [12048]"}
        HasDirectPerm(oldMask, x, l);
    if (oldHeap[x, l] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.l))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.18--285.23) [12049]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@285.18--285.23) [12050]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered75(n_6), neverTriggered75(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@285.18--285.23) [12051]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange75(n_6) && invRecv75(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv75(o_9) }
                g_1[invRecv75(o_9)] && (NoPerm < 1 / 2 && qpRange75(o_9)) ==> invRecv75(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.18--285.23) [12052]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@285.18--285.23) [12053]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered76(n_7), neverTriggered76(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@285.18--285.23) [12054]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange76(n_7) && invRecv76(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv76(o_9) }
                g_1[invRecv76(o_9)] && (NoPerm < 1 / 2 && qpRange76(o_9)) ==> invRecv76(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.45--285.50) [12055]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@285.45--285.50) [12056]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered77(n_8), neverTriggered77(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@285.45--285.50) [12057]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange77(n_8) && invRecv77(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv77(o_9) }
                g_1[invRecv77(o_9)] && (NoPerm < 1 / 2 && qpRange77(o_9)) ==> invRecv77(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@285.45--285.50) [12058]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@285.45--285.50) [12059]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered78(n_9), neverTriggered78(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@285.45--285.50) [12060]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange78(n_9) && invRecv78(n_9) == n_9
              );
              assume (forall o_9: Ref ::
                { invRecv78(o_9) }
                g_1[invRecv78(o_9)] && (NoPerm < 1 / 2 && qpRange78(o_9)) ==> invRecv78(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_13, v2_13): bool)) {
            if (v1_13 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@283.13--285.86) [12061]"}
                HasDirectPerm(oldMask, x, l);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, l]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.l) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@286.13--291.10) [12062]"}
        HasDirectPerm(oldMask, x, l);
    if (oldHeap[x, l] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.l), v2))))
        if (*) {
          if (v1_10 != v2_10) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.25--290.30) [12063]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.25--290.30) [12064]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered79(n_10_1), neverTriggered79(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.25--290.30) [12065]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange79(n_10_1) && invRecv79(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv79(o_9) }
                  g_1[invRecv79(o_9)] && (NoPerm < 1 / 2 && qpRange79(o_9)) ==> invRecv79(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.25--290.30) [12066]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && dummyFunction(PostHeap[n_11_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.25--290.30) [12067]"}
                  (forall n_11_2: Ref, n_11_3: Ref ::
                  { neverTriggered80(n_11_2), neverTriggered80(n_11_3) }
                  (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.25--290.30) [12068]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange80(n_11_2) && invRecv80(n_11_2) == n_11_2
                );
                assume (forall o_9: Ref ::
                  { invRecv80(o_9) }
                  g_1[invRecv80(o_9)] && (NoPerm < 1 / 2 && qpRange80(o_9)) ==> invRecv80(o_9) == o_9
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.59--290.64) [12069]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && dummyFunction(oldHeap[n_12, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.59--290.64) [12070]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered81(n_12), neverTriggered81(n_12_1) }
                  (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.59--290.64) [12071]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] ==> 1 / 2 > NoPerm ==> oldMask[n_12, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && NoPerm < 1 / 2 ==> qpRange81(n_12) && invRecv81(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv81(o_9) }
                  g_1[invRecv81(o_9)] && (NoPerm < 1 / 2 && qpRange81(o_9)) ==> invRecv81(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.59--290.64) [12072]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.59--290.64) [12073]"}
                  (forall n_13_2: Ref, n_13_3: Ref ::
                  { neverTriggered82(n_13_2), neverTriggered82(n_13_3) }
                  (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.59--290.64) [12074]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange82(n_13_2) && invRecv82(n_13_2) == n_13_2
                );
                assume (forall o_9: Ref ::
                  { invRecv82(o_9) }
                  g_1[invRecv82(o_9)] && (NoPerm < 1 / 2 && qpRange82(o_9)) ==> invRecv82(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_10, v2_10): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.94--290.99) [12075]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, l]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.94--290.99) [12076]"}
                    (forall n_14_1: Ref, n_14_2: Ref ::
                    { neverTriggered83(n_14_1), neverTriggered83(n_14_2) }
                    (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.94--290.99) [12077]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, l] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange83(n_14_1) && invRecv83(n_14_1) == n_14_1
                  );
                  assume (forall o_9: Ref ::
                    { invRecv83(o_9) }
                    g_1[invRecv83(o_9)] && (NoPerm < 1 / 2 && qpRange83(o_9)) ==> invRecv83(o_9) == o_9
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.94--290.99) [12078]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_11]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.94--290.99) [12079]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered84(n_15), neverTriggered84(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.94--290.99) [12080]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_11] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange84(n_15) && invRecv84(n_15) == n_15
                  );
                  assume (forall o_9: Ref ::
                    { invRecv84(o_9) }
                    g_1[invRecv84(o_9)] && (NoPerm < 1 / 2 && qpRange84(o_9)) ==> invRecv84(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_10, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.126--290.131) [12081]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, l]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@290.126--290.131) [12082]"}
                      (forall n_16_1: Ref, n_16_2: Ref ::
                      { neverTriggered85(n_16_1), neverTriggered85(n_16_2) }
                      (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@290.126--290.131) [12083]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, l] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange85(n_16_1) && invRecv85(n_16_1) == n_16_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv85(o_9) }
                      g_1[invRecv85(o_9)] && (NoPerm < 1 / 2 && qpRange85(o_9)) ==> invRecv85(o_9) == o_9
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@290.126--290.131) [12084]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_11]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@290.126--290.131) [12085]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered86(n_17), neverTriggered86(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@290.126--290.131) [12086]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_11] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange86(n_17) && invRecv86(n_17) == n_17
                    );
                    assume (forall o_9: Ref ::
                      { invRecv86(o_9) }
                      g_1[invRecv86(o_9)] && (NoPerm < 1 / 2 && qpRange86(o_9)) ==> invRecv86(o_9) == o_9
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (create_edge1.vpr@286.13--291.10) [12087]"}
                  HasDirectPerm(oldMask, x, l);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l], v2_3): bool)))
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
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@280.13--280.44) [12088]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@280.13--280.44) [12089]"}
      g_1[x];
    perm := (if __left__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [12090]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@280.13--280.44) [12091]"}
        perm <= Mask[x, l];
    }
    Mask := Mask[x, l:=Mask[x, l] - perm];
    perm := (if __left__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@280.13--280.44) [12092]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@280.13--280.44) [12093]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [12094]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@280.13--280.44) [12095]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered87(n$3_2), neverTriggered87(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@280.13--280.44) [12096]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange87(n$3_2) && invRecv87(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv87(o_9) }
        (g_1[invRecv87(o_9)] && invRecv87(o_9) != x) && (NoPerm < 1 / 2 && qpRange87(o_9)) ==> invRecv87(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g_1[invRecv87(o_9)] && invRecv87(o_9) != x) && (NoPerm < 1 / 2 && qpRange87(o_9)) ==> invRecv87(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((g_1[invRecv87(o_9)] && invRecv87(o_9) != x) && (NoPerm < 1 / 2 && qpRange87(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@280.13--280.44) [12097]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && dummyFunction(Heap[n$4_2, r_11]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@280.13--280.44) [12098]"}
        (forall n$4_2: Ref, n$4_2_1: Ref ::
        { neverTriggered88(n$4_2), neverTriggered88(n$4_2_1) }
        (((n$4_2 != n$4_2_1 && (g_1[n$4_2] && n$4_2 != x)) && (g_1[n$4_2_1] && n$4_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_left might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@280.13--280.44) [12099]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        g_1[n$4_2] && n$4_2 != x ==> Mask[n$4_2, r_11] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && NoPerm < 1 / 2 ==> qpRange88(n$4_2) && invRecv88(n$4_2) == n$4_2
      );
      assume (forall o_9: Ref ::
        { invRecv88(o_9) }
        (g_1[invRecv88(o_9)] && invRecv88(o_9) != x) && (NoPerm < 1 / 2 && qpRange88(o_9)) ==> invRecv88(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g_1[invRecv88(o_9)] && invRecv88(o_9) != x) && (NoPerm < 1 / 2 && qpRange88(o_9)) ==> invRecv88(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((g_1[invRecv88(o_9)] && invRecv88(o_9) != x) && (NoPerm < 1 / 2 && qpRange88(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l] != null) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@280.13--280.44) [12100]"}
          g_1[Heap[n$5_2, l]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l]] } { g_1[n$5_3_1], Heap[n$5_3_1, l] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l] != null ==> g_1[Heap[n$5_3_1, l]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_11] != null) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@280.13--280.44) [12101]"}
          g_1[Heap[n$6_2, r_11]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_11]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_11] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_11] != null ==> g_1[Heap[n$6_3_1, r_11]]
    );
    assert {:msg "  Postcondition of unlink_left might not hold. Assertion x.l == null might not hold. (create_edge1.vpr@281.13--281.24) [12102]"}
      Heap[x, l] == null;
    if (oldHeap[x, l] == null) {
      assert {:msg "  Postcondition of unlink_left might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@282.13--282.53) [12103]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, l] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_left might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.l))) might not hold. (create_edge1.vpr@283.13--285.86) [12104]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, l]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, l]))
      );
    }
    if (oldHeap[x, l] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink_left might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.l), v2))) might not hold. (create_edge1.vpr@286.13--291.10) [12105]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, l], v2_7_1): bool)))
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
  var n$1_16: Ref;
  var n$2_26: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$5_5: Ref;
  var n$6_8: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_14: Ref;
  var v2_14: Ref;
  var v1_15: Ref;
  var v2_15: Ref;
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
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@295.14--295.46) [12106]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@295.14--295.46) [12107]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, r_11:=Mask[x, r_11] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g) && n != x ==> acc(n.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@295.14--295.46) [12108]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange89(n_1) && invRecv89(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv89(o_9) }
        ((g_1[invRecv89(o_9)] && invRecv89(o_9) != x) && NoPerm < 1 / 2) && qpRange89(o_9) ==> invRecv89(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@295.14--295.46) [12109]"}
      (forall n_1: Ref ::
      { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv89(o_9)] && invRecv89(o_9) != x) && NoPerm < 1 / 2) && qpRange89(o_9) ==> (NoPerm < 1 / 2 ==> invRecv89(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((g_1[invRecv89(o_9)] && invRecv89(o_9) != x) && NoPerm < 1 / 2) && qpRange89(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g) && n$0 != x ==> acc(n$0.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@295.14--295.46) [12110]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && (g_1[n$0_1] && n$0_1 != x)) && (g_1[n$0_1_1] && n$0_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && NoPerm < 1 / 2 ==> qpRange90(n$0_1) && invRecv90(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv90(o_9) }
        ((g_1[invRecv90(o_9)] && invRecv90(o_9) != x) && NoPerm < 1 / 2) && qpRange90(o_9) ==> invRecv90(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@295.14--295.46) [12111]"}
      (forall n$0_1: Ref ::
      { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
      g_1[n$0_1] && n$0_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        (g_1[n$0_1] && n$0_1 != x) && 1 / 2 > NoPerm ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv90(o_9)] && invRecv90(o_9) != x) && NoPerm < 1 / 2) && qpRange90(o_9) ==> (NoPerm < 1 / 2 ==> invRecv90(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv90(o_9)] && invRecv90(o_9) != x) && NoPerm < 1 / 2) && qpRange90(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g) } { (n$1 in g), n$1.l } (n$1 in g) && n$1.l != null ==> (n$1.l in g))
      if (*) {
        if (g_1[n$1_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@295.14--295.46) [12112]"}
            HasDirectPerm(Mask, n$1_16, l);
        }
        if (g_1[n$1_16] && Heap[n$1_16, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@295.14--295.46) [12113]"}
            HasDirectPerm(Mask, n$1_16, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g_1[Heap[n$1_1, l]] } { g_1[n$1_1], Heap[n$1_1, l] }
      g_1[n$1_1] && Heap[n$1_1, l] != null ==> g_1[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g) } { (n$2 in g), n$2.r } (n$2 in g) && n$2.r != null ==> (n$2.r in g))
      if (*) {
        if (g_1[n$2_26]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@295.14--295.46) [12114]"}
            HasDirectPerm(Mask, n$2_26, r_11);
        }
        if (g_1[n$2_26] && Heap[n$2_26, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@295.14--295.46) [12115]"}
            HasDirectPerm(Mask, n$2_26, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[Heap[n$2_1, r_11]] } { g_1[n$2_1], Heap[n$2_1, r_11] }
      g_1[n$2_1] && Heap[n$2_1, r_11] != null ==> g_1[Heap[n$2_1, r_11]]
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
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [12116]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, l:=PostMask[x, l] + perm];
    assume state(PostHeap, PostMask);
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Contract might not be well-formed. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [12117]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, r_11:=PostMask[x, r_11] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.l } (n$3 in g) && n$3 != x ==> acc(n$3.l, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@296.13--296.45) [12118]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && (g_1[n$3_1] && n$3_1 != x)) && (g_1[n$3_1_1] && n$3_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && NoPerm < 1 / 2 ==> qpRange91(n$3_1) && invRecv91(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv91(o_9) }
        ((g_1[invRecv91(o_9)] && invRecv91(o_9) != x) && NoPerm < 1 / 2) && qpRange91(o_9) ==> invRecv91(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [12119]"}
      (forall n$3_1: Ref ::
      { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
      g_1[n$3_1] && n$3_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { PostHeap[n$3_1, l] } { QPMask[n$3_1, l] } { PostHeap[n$3_1, l] }
        (g_1[n$3_1] && n$3_1 != x) && 1 / 2 > NoPerm ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (((g_1[invRecv91(o_9)] && invRecv91(o_9) != x) && NoPerm < 1 / 2) && qpRange91(o_9) ==> (NoPerm < 1 / 2 ==> invRecv91(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + 1 / 2) && (!(((g_1[invRecv91(o_9)] && invRecv91(o_9) != x) && NoPerm < 1 / 2) && qpRange91(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g) && n$4 != x ==> acc(n$4.r, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@296.13--296.45) [12120]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && (g_1[n$4_1] && n$4_1 != x)) && (g_1[n$4_1_1] && n$4_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && NoPerm < 1 / 2 ==> qpRange92(n$4_1) && invRecv92(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv92(o_9) }
        ((g_1[invRecv92(o_9)] && invRecv92(o_9) != x) && NoPerm < 1 / 2) && qpRange92(o_9) ==> invRecv92(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [12121]"}
      (forall n$4_1: Ref ::
      { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
      g_1[n$4_1] && n$4_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { PostHeap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { PostHeap[n$4_1, r_11] }
        (g_1[n$4_1] && n$4_1 != x) && 1 / 2 > NoPerm ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (((g_1[invRecv92(o_9)] && invRecv92(o_9) != x) && NoPerm < 1 / 2) && qpRange92(o_9) ==> (NoPerm < 1 / 2 ==> invRecv92(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + 1 / 2) && (!(((g_1[invRecv92(o_9)] && invRecv92(o_9) != x) && NoPerm < 1 / 2) && qpRange92(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g) } { (n$5 in g), n$5.l } (n$5 in g) && n$5.l != null ==> (n$5.l in g))
      if (*) {
        if (g_1[n$5_5]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@296.13--296.45) [12122]"}
            HasDirectPerm(PostMask, n$5_5, l);
        }
        if (g_1[n$5_5] && PostHeap[n$5_5, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@296.13--296.45) [12123]"}
            HasDirectPerm(PostMask, n$5_5, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g_1[PostHeap[n$5_1, l]] } { g_1[n$5_1], PostHeap[n$5_1, l] }
      g_1[n$5_1] && PostHeap[n$5_1, l] != null ==> g_1[PostHeap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g) } { (n$6 in g), n$6.r } (n$6 in g) && n$6.r != null ==> (n$6.r in g))
      if (*) {
        if (g_1[n$6_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@296.13--296.45) [12124]"}
            HasDirectPerm(PostMask, n$6_8, r_11);
        }
        if (g_1[n$6_8] && PostHeap[n$6_8, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@296.13--296.45) [12125]"}
            HasDirectPerm(PostMask, n$6_8, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g_1[PostHeap[n$6_1, r_11]] } { g_1[n$6_1], PostHeap[n$6_1, r_11] }
      g_1[n$6_1] && PostHeap[n$6_1, r_11] != null ==> g_1[PostHeap[n$6_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@297.13--297.24) [12126]"}
        HasDirectPerm(PostMask, x, r_11);
    assume PostHeap[x, r_11] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@298.13--298.53) [12127]"}
        HasDirectPerm(oldMask, x, r_11);
    if (oldHeap[x, r_11] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.34--298.39) [12128]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@298.34--298.39) [12129]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered93(n_2), neverTriggered93(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@298.34--298.39) [12130]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, l] } { QPMask[n_2, l] } { PostHeap[n_2, l] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange93(n_2) && invRecv93(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv93(o_9) }
              g_1[invRecv93(o_9)] && (NoPerm < 1 / 2 && qpRange93(o_9)) ==> invRecv93(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.34--298.39) [12131]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@298.34--298.39) [12132]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered94(n_3), neverTriggered94(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@298.34--298.39) [12133]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, r_11] } { QPMask[n_3, r_11] } { PostHeap[n_3, r_11] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange94(n_3) && invRecv94(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv94(o_9) }
              g_1[invRecv94(o_9)] && (NoPerm < 1 / 2 && qpRange94(o_9)) ==> invRecv94(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.47--298.52) [12134]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && dummyFunction(oldHeap[n_4, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@298.47--298.52) [12135]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered95(n_4), neverTriggered95(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@298.47--298.52) [12136]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> oldMask[n_4, l] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { oldHeap[n_4, l] } { QPMask[n_4, l] } { oldHeap[n_4, l] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange95(n_4) && invRecv95(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv95(o_9) }
              g_1[invRecv95(o_9)] && (NoPerm < 1 / 2 && qpRange95(o_9)) ==> invRecv95(o_9) == o_9
            );
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@298.47--298.52) [12137]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && dummyFunction(oldHeap[n_5, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@298.47--298.52) [12138]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered96(n_5), neverTriggered96(n_5_1) }
              (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@298.47--298.52) [12139]"}
              (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, r_11] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { oldHeap[n_5, r_11] } { QPMask[n_5, r_11] } { oldHeap[n_5, r_11] }
              g_1[n_5] && NoPerm < 1 / 2 ==> qpRange96(n_5) && invRecv96(n_5) == n_5
            );
            assume (forall o_9: Ref ::
              { invRecv96(o_9) }
              g_1[invRecv96(o_9)] && (NoPerm < 1 / 2 && qpRange96(o_9)) ==> invRecv96(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@299.13--301.86) [12140]"}
        HasDirectPerm(oldMask, x, r_11);
    if (oldHeap[x, r_11] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.r))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.18--301.23) [12141]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && dummyFunction(PostHeap[n_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@301.18--301.23) [12142]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered97(n_6), neverTriggered97(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@301.18--301.23) [12143]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, l] } { QPMask[n_6, l] } { PostHeap[n_6, l] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange97(n_6) && invRecv97(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv97(o_9) }
                g_1[invRecv97(o_9)] && (NoPerm < 1 / 2 && qpRange97(o_9)) ==> invRecv97(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.18--301.23) [12144]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && dummyFunction(PostHeap[n_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@301.18--301.23) [12145]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered98(n_7), neverTriggered98(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@301.18--301.23) [12146]"}
                (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> PostMask[n_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { PostHeap[n_7, r_11] } { QPMask[n_7, r_11] } { PostHeap[n_7, r_11] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange98(n_7) && invRecv98(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv98(o_9) }
                g_1[invRecv98(o_9)] && (NoPerm < 1 / 2 && qpRange98(o_9)) ==> invRecv98(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.45--301.50) [12147]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && dummyFunction(oldHeap[n_8, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@301.45--301.50) [12148]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered99(n_8), neverTriggered99(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@301.45--301.50) [12149]"}
                (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { oldHeap[n_8, l] } { QPMask[n_8, l] } { oldHeap[n_8, l] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange99(n_8) && invRecv99(n_8) == n_8
              );
              assume (forall o_9: Ref ::
                { invRecv99(o_9) }
                g_1[invRecv99(o_9)] && (NoPerm < 1 / 2 && qpRange99(o_9)) ==> invRecv99(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@301.45--301.50) [12150]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && dummyFunction(oldHeap[n_9, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@301.45--301.50) [12151]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered100(n_9), neverTriggered100(n_9_1) }
                (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@301.45--301.50) [12152]"}
                (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { oldHeap[n_9, r_11] } { QPMask[n_9, r_11] } { oldHeap[n_9, r_11] }
                g_1[n_9] && NoPerm < 1 / 2 ==> qpRange100(n_9) && invRecv100(n_9) == n_9
              );
              assume (forall o_9: Ref ::
                { invRecv100(o_9) }
                g_1[invRecv100(o_9)] && (NoPerm < 1 / 2 && qpRange100(o_9)) ==> invRecv100(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_14, v2_14): bool)) {
            if (v1_14 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@299.13--301.86) [12153]"}
                HasDirectPerm(oldMask, x, r_11);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, r_11]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.r) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@302.13--307.10) [12154]"}
        HasDirectPerm(oldMask, x, r_11);
    if (oldHeap[x, r_11] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.r), v2))))
        if (*) {
          if (v1_15 != v2_15) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.25--306.30) [12155]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && dummyFunction(PostHeap[n_10_1, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.25--306.30) [12156]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered101(n_10_1), neverTriggered101(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.25--306.30) [12157]"}
                  (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> PostMask[n_10_1, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { PostHeap[n_10_1, l] } { QPMask[n_10_1, l] } { PostHeap[n_10_1, l] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange101(n_10_1) && invRecv101(n_10_1) == n_10_1
                );
                assume (forall o_9: Ref ::
                  { invRecv101(o_9) }
                  g_1[invRecv101(o_9)] && (NoPerm < 1 / 2 && qpRange101(o_9)) ==> invRecv101(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.25--306.30) [12158]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && dummyFunction(PostHeap[n_11_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.25--306.30) [12159]"}
                  (forall n_11_2: Ref, n_11_3: Ref ::
                  { neverTriggered102(n_11_2), neverTriggered102(n_11_3) }
                  (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.25--306.30) [12160]"}
                  (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] ==> 1 / 2 > NoPerm ==> PostMask[n_11_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_2: Ref ::
                  { PostHeap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { PostHeap[n_11_2, r_11] }
                  g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange102(n_11_2) && invRecv102(n_11_2) == n_11_2
                );
                assume (forall o_9: Ref ::
                  { invRecv102(o_9) }
                  g_1[invRecv102(o_9)] && (NoPerm < 1 / 2 && qpRange102(o_9)) ==> invRecv102(o_9) == o_9
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.59--306.64) [12161]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && dummyFunction(oldHeap[n_12, l]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.59--306.64) [12162]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered103(n_12), neverTriggered103(n_12_1) }
                  (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.59--306.64) [12163]"}
                  (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] ==> 1 / 2 > NoPerm ==> oldMask[n_12, l] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12: Ref ::
                  { oldHeap[n_12, l] } { QPMask[n_12, l] } { oldHeap[n_12, l] }
                  g_1[n_12] && NoPerm < 1 / 2 ==> qpRange103(n_12) && invRecv103(n_12) == n_12
                );
                assume (forall o_9: Ref ::
                  { invRecv103(o_9) }
                  g_1[invRecv103(o_9)] && (NoPerm < 1 / 2 && qpRange103(o_9)) ==> invRecv103(o_9) == o_9
                );
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.59--306.64) [12164]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, r_11]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.59--306.64) [12165]"}
                  (forall n_13_2: Ref, n_13_3: Ref ::
                  { neverTriggered104(n_13_2), neverTriggered104(n_13_3) }
                  (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.59--306.64) [12166]"}
                  (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, r_11] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_13_2: Ref ::
                  { oldHeap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { oldHeap[n_13_2, r_11] }
                  g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange104(n_13_2) && invRecv104(n_13_2) == n_13_2
                );
                assume (forall o_9: Ref ::
                  { invRecv104(o_9) }
                  g_1[invRecv104(o_9)] && (NoPerm < 1 / 2 && qpRange104(o_9)) ==> invRecv104(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_15, v2_15): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.94--306.99) [12167]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, l]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.94--306.99) [12168]"}
                    (forall n_14_1: Ref, n_14_2: Ref ::
                    { neverTriggered105(n_14_1), neverTriggered105(n_14_2) }
                    (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.94--306.99) [12169]"}
                    (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, l] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_14_1: Ref ::
                    { oldHeap[n_14_1, l] } { QPMask[n_14_1, l] } { oldHeap[n_14_1, l] }
                    g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange105(n_14_1) && invRecv105(n_14_1) == n_14_1
                  );
                  assume (forall o_9: Ref ::
                    { invRecv105(o_9) }
                    g_1[invRecv105(o_9)] && (NoPerm < 1 / 2 && qpRange105(o_9)) ==> invRecv105(o_9) == o_9
                  );
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.94--306.99) [12170]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && dummyFunction(oldHeap[n_15, r_11]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.94--306.99) [12171]"}
                    (forall n_15: Ref, n_15_1: Ref ::
                    { neverTriggered106(n_15), neverTriggered106(n_15_1) }
                    (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.94--306.99) [12172]"}
                    (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, r_11] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_15: Ref ::
                    { oldHeap[n_15, r_11] } { QPMask[n_15, r_11] } { oldHeap[n_15, r_11] }
                    g_1[n_15] && NoPerm < 1 / 2 ==> qpRange106(n_15) && invRecv106(n_15) == n_15
                  );
                  assume (forall o_9: Ref ::
                    { invRecv106(o_9) }
                    g_1[invRecv106(o_9)] && (NoPerm < 1 / 2 && qpRange106(o_9)) ==> invRecv106(o_9) == o_9
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_15, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.126--306.131) [12173]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, l]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@306.126--306.131) [12174]"}
                      (forall n_16_1: Ref, n_16_2: Ref ::
                      { neverTriggered107(n_16_1), neverTriggered107(n_16_2) }
                      (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@306.126--306.131) [12175]"}
                      (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, l] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_16_1: Ref ::
                      { oldHeap[n_16_1, l] } { QPMask[n_16_1, l] } { oldHeap[n_16_1, l] }
                      g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange107(n_16_1) && invRecv107(n_16_1) == n_16_1
                    );
                    assume (forall o_9: Ref ::
                      { invRecv107(o_9) }
                      g_1[invRecv107(o_9)] && (NoPerm < 1 / 2 && qpRange107(o_9)) ==> invRecv107(o_9) == o_9
                    );
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@306.126--306.131) [12176]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && dummyFunction(oldHeap[n_17, r_11]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@306.126--306.131) [12177]"}
                      (forall n_17: Ref, n_17_1: Ref ::
                      { neverTriggered108(n_17), neverTriggered108(n_17_1) }
                      (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@306.126--306.131) [12178]"}
                      (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] ==> 1 / 2 > NoPerm ==> oldMask[n_17, r_11] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_17: Ref ::
                      { oldHeap[n_17, r_11] } { QPMask[n_17, r_11] } { oldHeap[n_17, r_11] }
                      g_1[n_17] && NoPerm < 1 / 2 ==> qpRange108(n_17) && invRecv108(n_17) == n_17
                    );
                    assume (forall o_9: Ref ::
                      { invRecv108(o_9) }
                      g_1[invRecv108(o_9)] && (NoPerm < 1 / 2 && qpRange108(o_9)) ==> invRecv108(o_9) == o_9
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (create_edge1.vpr@302.13--307.10) [12179]"}
                  HasDirectPerm(oldMask, x, r_11);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, g_1)), FrameFragment($$#condqp2(PostHeap, g_1))), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_11], v2_3): bool)))
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
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion !((null in g)) might not hold. (create_edge1.vpr@296.13--296.45) [12180]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion (x in g) might not hold. (create_edge1.vpr@296.13--296.45) [12181]"}
      g_1[x];
    perm := (if __right__ == __left__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [12182]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access x.l (create_edge1.vpr@296.13--296.45) [12183]"}
        perm <= Mask[x, l];
    }
    Mask := Mask[x, l:=Mask[x, l] - perm];
    perm := (if __right__ == __right__ then FullPerm else 1 / 2);
    assert {:msg "  Postcondition of unlink_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@296.13--296.45) [12184]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access x.r (create_edge1.vpr@296.13--296.45) [12185]"}
        perm <= Mask[x, r_11];
    }
    Mask := Mask[x, r_11:=Mask[x, r_11] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [12186]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && dummyFunction(Heap[n$3_2, l]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@296.13--296.45) [12187]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered109(n$3_2), neverTriggered109(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && (g_1[n$3_2] && n$3_2 != x)) && (g_1[n$3_2_1] && n$3_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access n$3.l (create_edge1.vpr@296.13--296.45) [12188]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        g_1[n$3_2] && n$3_2 != x ==> Mask[n$3_2, l] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
        (g_1[n$3_2] && n$3_2 != x) && NoPerm < 1 / 2 ==> qpRange109(n$3_2) && invRecv109(n$3_2) == n$3_2
      );
      assume (forall o_9: Ref ::
        { invRecv109(o_9) }
        (g_1[invRecv109(o_9)] && invRecv109(o_9) != x) && (NoPerm < 1 / 2 && qpRange109(o_9)) ==> invRecv109(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g_1[invRecv109(o_9)] && invRecv109(o_9) != x) && (NoPerm < 1 / 2 && qpRange109(o_9)) ==> invRecv109(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((g_1[invRecv109(o_9)] && invRecv109(o_9) != x) && (NoPerm < 1 / 2 && qpRange109(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@296.13--296.45) [12189]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && dummyFunction(Heap[n$4_2, r_11]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$4 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@296.13--296.45) [12190]"}
        (forall n$4_2: Ref, n$4_2_1: Ref ::
        { neverTriggered110(n$4_2), neverTriggered110(n$4_2_1) }
        (((n$4_2 != n$4_2_1 && (g_1[n$4_2] && n$4_2 != x)) && (g_1[n$4_2_1] && n$4_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_right might not hold. There might be insufficient permission to access n$4.r (create_edge1.vpr@296.13--296.45) [12191]"}
        (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        g_1[n$4_2] && n$4_2 != x ==> Mask[n$4_2, r_11] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$4
      assume (forall n$4_2: Ref ::
        { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
        (g_1[n$4_2] && n$4_2 != x) && NoPerm < 1 / 2 ==> qpRange110(n$4_2) && invRecv110(n$4_2) == n$4_2
      );
      assume (forall o_9: Ref ::
        { invRecv110(o_9) }
        (g_1[invRecv110(o_9)] && invRecv110(o_9) != x) && (NoPerm < 1 / 2 && qpRange110(o_9)) ==> invRecv110(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g_1[invRecv110(o_9)] && invRecv110(o_9) != x) && (NoPerm < 1 / 2 && qpRange110(o_9)) ==> invRecv110(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((g_1[invRecv110(o_9)] && invRecv110(o_9) != x) && (NoPerm < 1 / 2 && qpRange110(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$5_2] && Heap[n$5_2, l] != null) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion (n$5.l in g) might not hold. (create_edge1.vpr@296.13--296.45) [12192]"}
          g_1[Heap[n$5_2, l]];
      }
      assume false;
    }
    assume (forall n$5_3_1: Ref ::
      { g_1[Heap[n$5_3_1, l]] } { g_1[n$5_3_1], Heap[n$5_3_1, l] }
      g_1[n$5_3_1] && Heap[n$5_3_1, l] != null ==> g_1[Heap[n$5_3_1, l]]
    );
    if (*) {
      if (g_1[n$6_2] && Heap[n$6_2, r_11] != null) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion (n$6.r in g) might not hold. (create_edge1.vpr@296.13--296.45) [12193]"}
          g_1[Heap[n$6_2, r_11]];
      }
      assume false;
    }
    assume (forall n$6_3_1: Ref ::
      { g_1[Heap[n$6_3_1, r_11]] } { g_1[n$6_3_1], Heap[n$6_3_1, r_11] }
      g_1[n$6_3_1] && Heap[n$6_3_1, r_11] != null ==> g_1[Heap[n$6_3_1, r_11]]
    );
    assert {:msg "  Postcondition of unlink_right might not hold. Assertion x.r == null might not hold. (create_edge1.vpr@297.13--297.24) [12194]"}
      Heap[x, r_11] == null;
    if (oldHeap[x, r_11] == null) {
      assert {:msg "  Postcondition of unlink_right might not hold. Assertion $$(g) == old($$(g)) might not hold. (create_edge1.vpr@298.13--298.53) [12195]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, r_11] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_right might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.r))) might not hold. (create_edge1.vpr@299.13--301.86) [12196]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, r_11]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, r_11]))
      );
    }
    if (oldHeap[x, r_11] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink_right might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.r), v2))) might not hold. (create_edge1.vpr@302.13--307.10) [12197]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_11], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g_1)), FrameFragment($$#condqp2(Heap, g_1))), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, r_11], v2_7_1): bool)))
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

procedure join(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_17: Ref;
  var n$2_27: Ref;
  var n$5_6: Ref;
  var n$6_9: Ref;
  var n_59: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n_60: Ref;
  var m_6: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$11: Ref;
  var n$12: Ref;
  var n_61: Ref;
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
    assume Heap[x1, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@311.14--311.23) [12198]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange111(n_1) && invRecv111(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv111(o_9) }
        (g0[invRecv111(o_9)] && NoPerm < FullPerm) && qpRange111(o_9) ==> invRecv111(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g0[invRecv111(o_9)] && NoPerm < FullPerm) && qpRange111(o_9) ==> (NoPerm < FullPerm ==> invRecv111(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g0[invRecv111(o_9)] && NoPerm < FullPerm) && qpRange111(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g0) ==> acc(n$0.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@311.14--311.23) [12199]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && g0[n$0_1]) && g0[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        g0[n$0_1] && NoPerm < FullPerm ==> qpRange112(n$0_1) && invRecv112(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv112(o_9) }
        (g0[invRecv112(o_9)] && NoPerm < FullPerm) && qpRange112(o_9) ==> invRecv112(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        g0[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g0[invRecv112(o_9)] && NoPerm < FullPerm) && qpRange112(o_9) ==> (NoPerm < FullPerm ==> invRecv112(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g0[invRecv112(o_9)] && NoPerm < FullPerm) && qpRange112(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g0) } { (n$1 in g0), n$1.l } (n$1 in g0) && n$1.l != null ==> (n$1.l in g0))
      if (*) {
        if (g0[n$1_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@311.14--311.23) [12200]"}
            HasDirectPerm(Mask, n$1_17, l);
        }
        if (g0[n$1_17] && Heap[n$1_17, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@311.14--311.23) [12201]"}
            HasDirectPerm(Mask, n$1_17, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g0[Heap[n$1_1, l]] } { g0[n$1_1], Heap[n$1_1, l] }
      g0[n$1_1] && Heap[n$1_1, l] != null ==> g0[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g0) } { (n$2 in g0), n$2.r } (n$2 in g0) && n$2.r != null ==> (n$2.r in g0))
      if (*) {
        if (g0[n$2_27]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@311.14--311.23) [12202]"}
            HasDirectPerm(Mask, n$2_27, r_11);
        }
        if (g0[n$2_27] && Heap[n$2_27, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@311.14--311.23) [12203]"}
            HasDirectPerm(Mask, n$2_27, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g0[Heap[n$2_1, r_11]] } { g0[n$2_1], Heap[n$2_1, r_11] }
      g0[n$2_1] && Heap[n$2_1, r_11] != null ==> g0[Heap[n$2_1, r_11]]
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@315.14--315.23) [12204]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && g1[n$3_1]) && g1[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { Heap[n$3_1, l] } { QPMask[n$3_1, l] } { Heap[n$3_1, l] }
        g1[n$3_1] && NoPerm < FullPerm ==> qpRange113(n$3_1) && invRecv113(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv113(o_9) }
        (g1[invRecv113(o_9)] && NoPerm < FullPerm) && qpRange113(o_9) ==> invRecv113(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { Heap[n$3_1, l] } { QPMask[n$3_1, l] } { Heap[n$3_1, l] }
        g1[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g1[invRecv113(o_9)] && NoPerm < FullPerm) && qpRange113(o_9) ==> (NoPerm < FullPerm ==> invRecv113(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g1[invRecv113(o_9)] && NoPerm < FullPerm) && qpRange113(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g1) ==> acc(n$4.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@315.14--315.23) [12205]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && g1[n$4_1]) && g1[n$4_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { Heap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { Heap[n$4_1, r_11] }
        g1[n$4_1] && NoPerm < FullPerm ==> qpRange114(n$4_1) && invRecv114(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv114(o_9) }
        (g1[invRecv114(o_9)] && NoPerm < FullPerm) && qpRange114(o_9) ==> invRecv114(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { Heap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { Heap[n$4_1, r_11] }
        g1[n$4_1] ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g1[invRecv114(o_9)] && NoPerm < FullPerm) && qpRange114(o_9) ==> (NoPerm < FullPerm ==> invRecv114(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g1[invRecv114(o_9)] && NoPerm < FullPerm) && qpRange114(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g1) } { (n$5 in g1), n$5.l } (n$5 in g1) && n$5.l != null ==> (n$5.l in g1))
      if (*) {
        if (g1[n$5_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@315.14--315.23) [12206]"}
            HasDirectPerm(Mask, n$5_6, l);
        }
        if (g1[n$5_6] && Heap[n$5_6, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@315.14--315.23) [12207]"}
            HasDirectPerm(Mask, n$5_6, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g1[Heap[n$5_1, l]] } { g1[n$5_1], Heap[n$5_1, l] }
      g1[n$5_1] && Heap[n$5_1, l] != null ==> g1[Heap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g1) } { (n$6 in g1), n$6.r } (n$6 in g1) && n$6.r != null ==> (n$6.r in g1))
      if (*) {
        if (g1[n$6_9]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@315.14--315.23) [12208]"}
            HasDirectPerm(Mask, n$6_9, r_11);
        }
        if (g1[n$6_9] && Heap[n$6_9, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@315.14--315.23) [12209]"}
            HasDirectPerm(Mask, n$6_9, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[Heap[n$6_1, r_11]] } { g1[n$6_1], Heap[n$6_1, r_11] }
      g1[n$6_1] && Heap[n$6_1, r_11] != null ==> g1[Heap[n$6_1, r_11]]
    );
    assume state(Heap, Mask);
    assume g1[x1];
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
        if (g0[n_59]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@319.66--319.72) [12210]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] && dummyFunction(Heap[n$0_2, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@319.66--319.72) [12211]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered115(n$0_2), neverTriggered115(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g0[n$0_2]) && g0[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@319.66--319.72) [12212]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] && NoPerm < 1 / 2 ==> qpRange115(n$0_2) && invRecv115(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv115(o_9) }
                g0[invRecv115(o_9)] && (NoPerm < 1 / 2 && qpRange115(o_9)) ==> invRecv115(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@319.66--319.72) [12213]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] && dummyFunction(Heap[n$0_3, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@319.66--319.72) [12214]"}
                (forall n$0_3: Ref, n$0_3_1: Ref ::
                { neverTriggered116(n$0_3), neverTriggered116(n$0_3_1) }
                (((n$0_3 != n$0_3_1 && g0[n$0_3]) && g0[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@319.66--319.72) [12215]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] && NoPerm < 1 / 2 ==> qpRange116(n$0_3) && invRecv116(n$0_3) == n$0_3
              );
              assume (forall o_9: Ref ::
                { invRecv116(o_9) }
                g0[invRecv116(o_9)] && (NoPerm < 1 / 2 && qpRange116(o_9)) ==> invRecv116(o_9) == o_9
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
        if (g0[n_60]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@320.83--320.89) [12216]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] && dummyFunction(Heap[n$0_4, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@320.83--320.89) [12217]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered117(n$0_4), neverTriggered117(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g0[n$0_4]) && g0[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@320.83--320.89) [12218]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] ==> 1 / 2 > NoPerm ==> Mask[n$0_4, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] && NoPerm < 1 / 2 ==> qpRange117(n$0_4) && invRecv117(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv117(o_9) }
                g0[invRecv117(o_9)] && (NoPerm < 1 / 2 && qpRange117(o_9)) ==> invRecv117(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@320.83--320.89) [12219]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] && dummyFunction(Heap[n$0_5, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@320.83--320.89) [12220]"}
                (forall n$0_5: Ref, n$0_5_1: Ref ::
                { neverTriggered118(n$0_5), neverTriggered118(n$0_5_1) }
                (((n$0_5 != n$0_5_1 && g0[n$0_5]) && g0[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@320.83--320.89) [12221]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] ==> 1 / 2 > NoPerm ==> Mask[n$0_5, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] && NoPerm < 1 / 2 ==> qpRange118(n$0_5) && invRecv118(n$0_5) == n$0_5
              );
              assume (forall o_9: Ref ::
                { invRecv118(o_9) }
                g0[invRecv118(o_9)] && (NoPerm < 1 / 2 && qpRange118(o_9)) ==> invRecv118(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@321.94--321.100) [12222]"}
                (forall n_6: Ref ::
                { Heap[n_6, l] } { QPMask[n_6, l] } { Heap[n_6, l] }
                g1[n_6] && dummyFunction(Heap[n_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@321.94--321.100) [12223]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered119(n_6), neverTriggered119(n_6_1) }
                (((n_6 != n_6_1 && g1[n_6]) && g1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@321.94--321.100) [12224]"}
                (forall n_6: Ref ::
                { Heap[n_6, l] } { QPMask[n_6, l] } { Heap[n_6, l] }
                g1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { Heap[n_6, l] } { QPMask[n_6, l] } { Heap[n_6, l] }
                g1[n_6] && NoPerm < 1 / 2 ==> qpRange119(n_6) && invRecv119(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv119(o_9) }
                g1[invRecv119(o_9)] && (NoPerm < 1 / 2 && qpRange119(o_9)) ==> invRecv119(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@321.94--321.100) [12225]"}
                (forall n_7: Ref ::
                { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
                g1[n_7] && dummyFunction(Heap[n_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@321.94--321.100) [12226]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered120(n_7), neverTriggered120(n_7_1) }
                (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@321.94--321.100) [12227]"}
                (forall n_7: Ref ::
                { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
                g1[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, r_11] } { QPMask[n_7, r_11] } { Heap[n_7, r_11] }
                g1[n_7] && NoPerm < 1 / 2 ==> qpRange120(n_7) && invRecv120(n_7) == n_7
              );
              assume (forall o_9: Ref ::
                { invRecv120(o_9) }
                g1[invRecv120(o_9)] && (NoPerm < 1 / 2 && qpRange120(o_9)) ==> invRecv120(o_9) == o_9
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
    assume (forall m_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), x1, m_1): bool) } { g1[m_1] }
      g1[m_1] ==> (exists_path($$(Heap, g1), x1, m_1): bool)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.l == null || x0.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.l (create_edge1.vpr@323.14--323.42) [12228]"}
        HasDirectPerm(Mask, x0, l);
      if (!(Heap[x0, l] == null)) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.r (create_edge1.vpr@323.14--323.42) [12229]"}
          HasDirectPerm(Mask, x0, r_11);
      }
    assume Heap[x0, l] == null || Heap[x0, r_11] == null;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@325.13--325.31) [12230]"}
      (forall n$9_1: Ref, n$9_1_1: Ref ::
      
      (((n$9_1 != n$9_1_1 && Set#Union(g0, g1)[n$9_1]) && Set#Union(g0, g1)[n$9_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_1 != n$9_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l] } { QPMask[n$9_1, l] } { PostHeap[n$9_1, l] }
        Set#Union(g0, g1)[n$9_1] && NoPerm < FullPerm ==> qpRange121(n$9_1) && invRecv121(n$9_1) == n$9_1
      );
      assume (forall o_9: Ref ::
        { invRecv121(o_9) }
        (Set#Union(g0, g1)[invRecv121(o_9)] && NoPerm < FullPerm) && qpRange121(o_9) ==> invRecv121(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l] } { QPMask[n$9_1, l] } { PostHeap[n$9_1, l] }
        Set#Union(g0, g1)[n$9_1] ==> n$9_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((Set#Union(g0, g1)[invRecv121(o_9)] && NoPerm < FullPerm) && qpRange121(o_9) ==> (NoPerm < FullPerm ==> invRecv121(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + FullPerm) && (!((Set#Union(g0, g1)[invRecv121(o_9)] && NoPerm < FullPerm) && qpRange121(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$10: Ref :: { n$10.r } (n$10 in (g0 union g1)) ==> acc(n$10.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@325.13--325.31) [12231]"}
      (forall n$10_1: Ref, n$10_1_1: Ref ::
      
      (((n$10_1 != n$10_1_1 && Set#Union(g0, g1)[n$10_1]) && Set#Union(g0, g1)[n$10_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_1 != n$10_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_11] } { QPMask[n$10_1, r_11] } { PostHeap[n$10_1, r_11] }
        Set#Union(g0, g1)[n$10_1] && NoPerm < FullPerm ==> qpRange122(n$10_1) && invRecv122(n$10_1) == n$10_1
      );
      assume (forall o_9: Ref ::
        { invRecv122(o_9) }
        (Set#Union(g0, g1)[invRecv122(o_9)] && NoPerm < FullPerm) && qpRange122(o_9) ==> invRecv122(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_11] } { QPMask[n$10_1, r_11] } { PostHeap[n$10_1, r_11] }
        Set#Union(g0, g1)[n$10_1] ==> n$10_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((Set#Union(g0, g1)[invRecv122(o_9)] && NoPerm < FullPerm) && qpRange122(o_9) ==> (NoPerm < FullPerm ==> invRecv122(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + FullPerm) && (!((Set#Union(g0, g1)[invRecv122(o_9)] && NoPerm < FullPerm) && qpRange122(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$11: Ref :: { (n$11.l in (g0 union g1)) } { (n$11 in (g0 union g1)), n$11.l } (n$11 in (g0 union g1)) && n$11.l != null ==> (n$11.l in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$11]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@325.13--325.31) [12232]"}
            HasDirectPerm(PostMask, n$11, l);
        }
        if (Set#Union(g0, g1)[n$11] && PostHeap[n$11, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@325.13--325.31) [12233]"}
            HasDirectPerm(PostMask, n$11, l);
        }
        assume false;
      }
    assume (forall n$11_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$11_1, l]] } { Set#Union(g0, g1)[n$11_1], PostHeap[n$11_1, l] }
      Set#Union(g0, g1)[n$11_1] && PostHeap[n$11_1, l] != null ==> Set#Union(g0, g1)[PostHeap[n$11_1, l]]
    );
    
    // -- Check definedness of (forall n$12: Ref :: { (n$12.r in (g0 union g1)) } { (n$12 in (g0 union g1)), n$12.r } (n$12 in (g0 union g1)) && n$12.r != null ==> (n$12.r in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$12]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@325.13--325.31) [12234]"}
            HasDirectPerm(PostMask, n$12, r_11);
        }
        if (Set#Union(g0, g1)[n$12] && PostHeap[n$12, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@325.13--325.31) [12235]"}
            HasDirectPerm(PostMask, n$12, r_11);
        }
        assume false;
      }
    assume (forall n$12_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$12_1, r_11]] } { Set#Union(g0, g1)[n$12_1], PostHeap[n$12_1, r_11] }
      Set#Union(g0, g1)[n$12_1] && PostHeap[n$12_1, r_11] != null ==> Set#Union(g0, g1)[PostHeap[n$12_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { (n in (g0 union g1)) } { exists_path($$((g0 union g1)), x, n) } (n in (g0 union g1)) ==> exists_path($$((g0 union g1)), x, n))
      if (*) {
        if (Set#Union(g0, g1)[n_61]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@326.64--326.79) [12236]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] && dummyFunction(PostHeap[n$0_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@326.64--326.79) [12237]"}
                (forall n$0_6: Ref, n$0_6_1: Ref ::
                { neverTriggered123(n$0_6), neverTriggered123(n$0_6_1) }
                (((n$0_6 != n$0_6_1 && Set#Union(g0, g1)[n$0_6]) && Set#Union(g0, g1)[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@326.64--326.79) [12238]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] ==> 1 / 2 > NoPerm ==> PostMask[n$0_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] && NoPerm < 1 / 2 ==> qpRange123(n$0_6) && invRecv123(n$0_6) == n$0_6
              );
              assume (forall o_9: Ref ::
                { invRecv123(o_9) }
                Set#Union(g0, g1)[invRecv123(o_9)] && (NoPerm < 1 / 2 && qpRange123(o_9)) ==> invRecv123(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@326.64--326.79) [12239]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] && dummyFunction(PostHeap[n$0_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@326.64--326.79) [12240]"}
                (forall n$0_7: Ref, n$0_7_1: Ref ::
                { neverTriggered124(n$0_7), neverTriggered124(n$0_7_1) }
                (((n$0_7 != n$0_7_1 && Set#Union(g0, g1)[n$0_7]) && Set#Union(g0, g1)[n$0_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@326.64--326.79) [12241]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] ==> 1 / 2 > NoPerm ==> PostMask[n$0_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] && NoPerm < 1 / 2 ==> qpRange124(n$0_7) && invRecv124(n$0_7) == n$0_7
              );
              assume (forall o_9: Ref ::
                { invRecv124(o_9) }
                Set#Union(g0, g1)[invRecv124(o_9)] && (NoPerm < 1 / 2 && qpRange124(o_9)) ==> invRecv124(o_9) == o_9
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
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@328.12--328.34) [12242]"}
            (forall n_12: Ref, n_12_1: Ref ::
            { neverTriggered127(n_12), neverTriggered127(n_12_1) }
            (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12 != n_12_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@328.12--328.34) [12243]"}
            (forall n_12: Ref ::
            { Heap[n_12, l] } { QPMask[n_12, l] } { Heap[n_12, l] }
            g0[n_12] ==> FullPerm > NoPerm ==> Mask[n_12, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_12: Ref ::
            { Heap[n_12, l] } { QPMask[n_12, l] } { Heap[n_12, l] }
            g0[n_12] && NoPerm < FullPerm ==> qpRange127(n_12) && invRecv127(n_12) == n_12
          );
          assume (forall o_9: Ref ::
            { invRecv127(o_9) }
            g0[invRecv127(o_9)] && (NoPerm < FullPerm && qpRange127(o_9)) ==> invRecv127(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@328.12--328.34) [12244]"}
            (forall n_13_2: Ref, n_13_3: Ref ::
            { neverTriggered128(n_13_2), neverTriggered128(n_13_3) }
            (((n_13_2 != n_13_3 && g0[n_13_2]) && g0[n_13_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13_2 != n_13_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@328.12--328.34) [12245]"}
            (forall n_13_2: Ref ::
            { Heap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { Heap[n_13_2, r_11] }
            g0[n_13_2] ==> FullPerm > NoPerm ==> Mask[n_13_2, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_13_2: Ref ::
            { Heap[n_13_2, r_11] } { QPMask[n_13_2, r_11] } { Heap[n_13_2, r_11] }
            g0[n_13_2] && NoPerm < FullPerm ==> qpRange128(n_13_2) && invRecv128(n_13_2) == n_13_2
          );
          assume (forall o_9: Ref ::
            { invRecv128(o_9) }
            g0[invRecv128(o_9)] && (NoPerm < FullPerm && qpRange128(o_9)) ==> invRecv128(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@328.12--328.34) [12246]"}
            (forall n_14_1: Ref, n_14_2: Ref ::
            { neverTriggered129(n_14_1), neverTriggered129(n_14_2) }
            (((n_14_1 != n_14_2 && g1[n_14_1]) && g1[n_14_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14_1 != n_14_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@328.12--328.34) [12247]"}
            (forall n_14_1: Ref ::
            { Heap[n_14_1, l] } { QPMask[n_14_1, l] } { Heap[n_14_1, l] }
            g1[n_14_1] ==> FullPerm > NoPerm ==> Mask[n_14_1, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_14_1: Ref ::
            { Heap[n_14_1, l] } { QPMask[n_14_1, l] } { Heap[n_14_1, l] }
            g1[n_14_1] && NoPerm < FullPerm ==> qpRange129(n_14_1) && invRecv129(n_14_1) == n_14_1
          );
          assume (forall o_9: Ref ::
            { invRecv129(o_9) }
            g1[invRecv129(o_9)] && (NoPerm < FullPerm && qpRange129(o_9)) ==> invRecv129(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@328.12--328.34) [12248]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered130(n_15), neverTriggered130(n_15_1) }
            (((n_15 != n_15_1 && g1[n_15]) && g1[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@328.12--328.34) [12249]"}
            (forall n_15: Ref ::
            { Heap[n_15, r_11] } { QPMask[n_15, r_11] } { Heap[n_15, r_11] }
            g1[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { Heap[n_15, r_11] } { QPMask[n_15, r_11] } { Heap[n_15, r_11] }
            g1[n_15] && NoPerm < FullPerm ==> qpRange130(n_15) && invRecv130(n_15) == n_15
          );
          assume (forall o_9: Ref ::
            { invRecv130(o_9) }
            g1[invRecv130(o_9)] && (NoPerm < FullPerm && qpRange130(o_9)) ==> invRecv130(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_8]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g1)) might not hold. (create_edge1.vpr@328.12--328.34) [12250]"}
              !g1[n$0_8];
          }
          assume false;
        }
        assume (forall n$0_9_1_1: Ref ::
          { g0[n$0_9_1_1], g1[n$0_9_1_1] }
          g0[n$0_9_1_1] ==> !g1[n$0_9_1_1]
        );
        if (*) {
          if (g1[n$1_2]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g0)) might not hold. (create_edge1.vpr@328.12--328.34) [12251]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x0.l (create_edge1.vpr@330.10--330.22) [12252]"}
        HasDirectPerm(Mask, x0, l);
    if (Heap[x0, l] == null) {
      
      // -- Translating statement: link_left((g0 union g1), x0, x1) -- create_edge1.vpr@331.9--331.37
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [12253]"}
            arg_g[x0];
          if (x1 != null) {
            assert {:msg "  The precondition of method link_left might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [12254]"}
              arg_g[x1];
          }
          assert {:msg "  The precondition of method link_left might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@331.9--331.37) [12255]"}
            !arg_g[null];
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [12256]"}
            arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [12257]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@331.9--331.37) [12258]"}
              perm <= Mask[x0, l];
          }
          Mask := Mask[x0, l:=Mask[x0, l] - perm];
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [12259]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@331.9--331.37) [12260]"}
              perm <= Mask[x0, r_11];
          }
          Mask := Mask[x0, r_11:=Mask[x0, r_11] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [12261]"}
              (forall n_16_1: Ref ::
              { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
              (arg_g[n_16_1] && n_16_1 != x0) && dummyFunction(Heap[n_16_1, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@331.9--331.37) [12262]"}
              (forall n_16_1: Ref, n_16_2: Ref ::
              { neverTriggered131(n_16_1), neverTriggered131(n_16_2) }
              (((n_16_1 != n_16_2 && (arg_g[n_16_1] && n_16_1 != x0)) && (arg_g[n_16_2] && n_16_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@331.9--331.37) [12263]"}
              (forall n_16_1: Ref ::
              { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
              arg_g[n_16_1] && n_16_1 != x0 ==> Mask[n_16_1, l] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_16_1: Ref ::
              { Heap[n_16_1, l] } { QPMask[n_16_1, l] } { Heap[n_16_1, l] }
              (arg_g[n_16_1] && n_16_1 != x0) && NoPerm < 1 / 2 ==> qpRange131(n_16_1) && invRecv131(n_16_1) == n_16_1
            );
            assume (forall o_9: Ref ::
              { invRecv131(o_9) }
              (arg_g[invRecv131(o_9)] && invRecv131(o_9) != x0) && (NoPerm < 1 / 2 && qpRange131(o_9)) ==> invRecv131(o_9) == o_9
            );
          
          // -- assume permission updates for field l
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              ((arg_g[invRecv131(o_9)] && invRecv131(o_9) != x0) && (NoPerm < 1 / 2 && qpRange131(o_9)) ==> invRecv131(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((arg_g[invRecv131(o_9)] && invRecv131(o_9) != x0) && (NoPerm < 1 / 2 && qpRange131(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [12264]"}
              (forall n$0_10_1: Ref ::
              { Heap[n$0_10_1, r_11] } { QPMask[n$0_10_1, r_11] } { Heap[n$0_10_1, r_11] }
              (arg_g[n$0_10_1] && n$0_10_1 != x0) && dummyFunction(Heap[n$0_10_1, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@331.9--331.37) [12265]"}
              (forall n$0_10_1: Ref, n$0_10_2: Ref ::
              { neverTriggered132(n$0_10_1), neverTriggered132(n$0_10_2) }
              (((n$0_10_1 != n$0_10_2 && (arg_g[n$0_10_1] && n$0_10_1 != x0)) && (arg_g[n$0_10_2] && n$0_10_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_10_1 != n$0_10_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@331.9--331.37) [12266]"}
              (forall n$0_10_1: Ref ::
              { Heap[n$0_10_1, r_11] } { QPMask[n$0_10_1, r_11] } { Heap[n$0_10_1, r_11] }
              arg_g[n$0_10_1] && n$0_10_1 != x0 ==> Mask[n$0_10_1, r_11] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_10_1: Ref ::
              { Heap[n$0_10_1, r_11] } { QPMask[n$0_10_1, r_11] } { Heap[n$0_10_1, r_11] }
              (arg_g[n$0_10_1] && n$0_10_1 != x0) && NoPerm < 1 / 2 ==> qpRange132(n$0_10_1) && invRecv132(n$0_10_1) == n$0_10_1
            );
            assume (forall o_9: Ref ::
              { invRecv132(o_9) }
              (arg_g[invRecv132(o_9)] && invRecv132(o_9) != x0) && (NoPerm < 1 / 2 && qpRange132(o_9)) ==> invRecv132(o_9) == o_9
            );
          
          // -- assume permission updates for field r
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              ((arg_g[invRecv132(o_9)] && invRecv132(o_9) != x0) && (NoPerm < 1 / 2 && qpRange132(o_9)) ==> invRecv132(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((arg_g[invRecv132(o_9)] && invRecv132(o_9) != x0) && (NoPerm < 1 / 2 && qpRange132(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g[n$1_4] && Heap[n$1_4, l] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [12267]"}
                arg_g[Heap[n$1_4, l]];
            }
            assume false;
          }
          assume (forall n$1_5_1_1: Ref ::
            { arg_g[Heap[n$1_5_1_1, l]] } { arg_g[n$1_5_1_1], Heap[n$1_5_1_1, l] }
            arg_g[n$1_5_1_1] && Heap[n$1_5_1_1, l] != null ==> arg_g[Heap[n$1_5_1_1, l]]
          );
          if (*) {
            if (arg_g[n$2_2] && Heap[n$2_2, r_11] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@331.9--331.37) [12268]"}
                arg_g[Heap[n$2_2, r_11]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { arg_g[Heap[n$2_3_1, r_11]] } { arg_g[n$2_3_1], Heap[n$2_3_1, r_11] }
            arg_g[n$2_3_1] && Heap[n$2_3_1, r_11] != null ==> arg_g[Heap[n$2_3_1, r_11]]
          );
          assert {:msg "  The precondition of method link_left might not hold. Assertion x0.l == null might not hold. (create_edge1.vpr@331.9--331.37) [12269]"}
            Heap[x0, l] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g[null];
          assume arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [12270]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l:=Mask[x0, l] + perm];
          assume state(Heap, Mask);
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@331.9--331.37) [12271]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_11:=Mask[x0, r_11] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@331.9--331.37) [12272]"}
            (forall n$3_2: Ref, n$3_2_1: Ref ::
            
            (((n$3_2 != n$3_2_1 && (arg_g[n$3_2] && n$3_2 != x0)) && (arg_g[n$3_2_1] && n$3_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
              (arg_g[n$3_2] && n$3_2 != x0) && NoPerm < 1 / 2 ==> qpRange133(n$3_2) && invRecv133(n$3_2) == n$3_2
            );
            assume (forall o_9: Ref ::
              { invRecv133(o_9) }
              ((arg_g[invRecv133(o_9)] && invRecv133(o_9) != x0) && NoPerm < 1 / 2) && qpRange133(o_9) ==> invRecv133(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [12273]"}
            (forall n$3_2: Ref ::
            { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
            arg_g[n$3_2] && n$3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
              (arg_g[n$3_2] && n$3_2 != x0) && 1 / 2 > NoPerm ==> n$3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              (((arg_g[invRecv133(o_9)] && invRecv133(o_9) != x0) && NoPerm < 1 / 2) && qpRange133(o_9) ==> (NoPerm < 1 / 2 ==> invRecv133(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((arg_g[invRecv133(o_9)] && invRecv133(o_9) != x0) && NoPerm < 1 / 2) && qpRange133(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@331.9--331.37) [12274]"}
            (forall n$4_2: Ref, n$4_2_1: Ref ::
            
            (((n$4_2 != n$4_2_1 && (arg_g[n$4_2] && n$4_2 != x0)) && (arg_g[n$4_2_1] && n$4_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$4_2: Ref ::
              { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
              (arg_g[n$4_2] && n$4_2 != x0) && NoPerm < 1 / 2 ==> qpRange134(n$4_2) && invRecv134(n$4_2) == n$4_2
            );
            assume (forall o_9: Ref ::
              { invRecv134(o_9) }
              ((arg_g[invRecv134(o_9)] && invRecv134(o_9) != x0) && NoPerm < 1 / 2) && qpRange134(o_9) ==> invRecv134(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@331.9--331.37) [12275]"}
            (forall n$4_2: Ref ::
            { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
            arg_g[n$4_2] && n$4_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_2: Ref ::
              { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
              (arg_g[n$4_2] && n$4_2 != x0) && 1 / 2 > NoPerm ==> n$4_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              (((arg_g[invRecv134(o_9)] && invRecv134(o_9) != x0) && NoPerm < 1 / 2) && qpRange134(o_9) ==> (NoPerm < 1 / 2 ==> invRecv134(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((arg_g[invRecv134(o_9)] && invRecv134(o_9) != x0) && NoPerm < 1 / 2) && qpRange134(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_2: Ref ::
            { arg_g[Heap[n$5_2, l]] } { arg_g[n$5_2], Heap[n$5_2, l] }
            arg_g[n$5_2] && Heap[n$5_2, l] != null ==> arg_g[Heap[n$5_2, l]]
          );
          assume (forall n$6_2: Ref ::
            { arg_g[Heap[n$6_2, r_11]] } { arg_g[n$6_2], Heap[n$6_2, r_11] }
            arg_g[n$6_2] && Heap[n$6_2, r_11] != null ==> arg_g[Heap[n$6_2, r_11]]
          );
          assume Heap[x0, l] == x1;
          if (x1 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1: Ref, v2: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g)), FrameFragment($$#condqp2(PreCallHeap, arg_g))), arg_g), v1, v2): bool) }
              (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) || (v1 == x0 && v2 == x1))
            );
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_1: Ref, v2_1: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g)), FrameFragment($$#condqp2(Heap, arg_g))), arg_g), v1_1, v2_1): bool) }
              v1_1 != v2_1 ==> (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, arg_g), v1_1, v2_1): bool) || ((exists_path($$(PreCallHeap, arg_g), v1_1, x0): bool) && (exists_path($$(PreCallHeap, arg_g), x1, v2_1): bool)))
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
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [12276]"}
            arg_g_1[x0];
          if (x1 != null) {
            assert {:msg "  The precondition of method link_right might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [12277]"}
              arg_g_1[x1];
          }
          assert {:msg "  The precondition of method link_right might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@333.9--333.38) [12278]"}
            !arg_g_1[null];
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [12279]"}
            arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [12280]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@333.9--333.38) [12281]"}
              perm <= Mask[x0, l];
          }
          Mask := Mask[x0, l:=Mask[x0, l] - perm];
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [12282]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@333.9--333.38) [12283]"}
              perm <= Mask[x0, r_11];
          }
          Mask := Mask[x0, r_11:=Mask[x0, r_11] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [12284]"}
              (forall n_17: Ref ::
              { Heap[n_17, l] } { QPMask[n_17, l] } { Heap[n_17, l] }
              (arg_g_1[n_17] && n_17 != x0) && dummyFunction(Heap[n_17, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@333.9--333.38) [12285]"}
              (forall n_17: Ref, n_17_1: Ref ::
              { neverTriggered135(n_17), neverTriggered135(n_17_1) }
              (((n_17 != n_17_1 && (arg_g_1[n_17] && n_17 != x0)) && (arg_g_1[n_17_1] && n_17_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@333.9--333.38) [12286]"}
              (forall n_17: Ref ::
              { Heap[n_17, l] } { QPMask[n_17, l] } { Heap[n_17, l] }
              arg_g_1[n_17] && n_17 != x0 ==> Mask[n_17, l] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_17: Ref ::
              { Heap[n_17, l] } { QPMask[n_17, l] } { Heap[n_17, l] }
              (arg_g_1[n_17] && n_17 != x0) && NoPerm < 1 / 2 ==> qpRange135(n_17) && invRecv135(n_17) == n_17
            );
            assume (forall o_9: Ref ::
              { invRecv135(o_9) }
              (arg_g_1[invRecv135(o_9)] && invRecv135(o_9) != x0) && (NoPerm < 1 / 2 && qpRange135(o_9)) ==> invRecv135(o_9) == o_9
            );
          
          // -- assume permission updates for field l
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              ((arg_g_1[invRecv135(o_9)] && invRecv135(o_9) != x0) && (NoPerm < 1 / 2 && qpRange135(o_9)) ==> invRecv135(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((arg_g_1[invRecv135(o_9)] && invRecv135(o_9) != x0) && (NoPerm < 1 / 2 && qpRange135(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [12287]"}
              (forall n$0_11_2: Ref ::
              { Heap[n$0_11_2, r_11] } { QPMask[n$0_11_2, r_11] } { Heap[n$0_11_2, r_11] }
              (arg_g_1[n$0_11_2] && n$0_11_2 != x0) && dummyFunction(Heap[n$0_11_2, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@333.9--333.38) [12288]"}
              (forall n$0_11_2: Ref, n$0_11_3: Ref ::
              { neverTriggered136(n$0_11_2), neverTriggered136(n$0_11_3) }
              (((n$0_11_2 != n$0_11_3 && (arg_g_1[n$0_11_2] && n$0_11_2 != x0)) && (arg_g_1[n$0_11_3] && n$0_11_3 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_11_2 != n$0_11_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@333.9--333.38) [12289]"}
              (forall n$0_11_2: Ref ::
              { Heap[n$0_11_2, r_11] } { QPMask[n$0_11_2, r_11] } { Heap[n$0_11_2, r_11] }
              arg_g_1[n$0_11_2] && n$0_11_2 != x0 ==> Mask[n$0_11_2, r_11] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_11_2: Ref ::
              { Heap[n$0_11_2, r_11] } { QPMask[n$0_11_2, r_11] } { Heap[n$0_11_2, r_11] }
              (arg_g_1[n$0_11_2] && n$0_11_2 != x0) && NoPerm < 1 / 2 ==> qpRange136(n$0_11_2) && invRecv136(n$0_11_2) == n$0_11_2
            );
            assume (forall o_9: Ref ::
              { invRecv136(o_9) }
              (arg_g_1[invRecv136(o_9)] && invRecv136(o_9) != x0) && (NoPerm < 1 / 2 && qpRange136(o_9)) ==> invRecv136(o_9) == o_9
            );
          
          // -- assume permission updates for field r
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              ((arg_g_1[invRecv136(o_9)] && invRecv136(o_9) != x0) && (NoPerm < 1 / 2 && qpRange136(o_9)) ==> invRecv136(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((arg_g_1[invRecv136(o_9)] && invRecv136(o_9) != x0) && (NoPerm < 1 / 2 && qpRange136(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g_1[n$1_6] && Heap[n$1_6, l] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [12290]"}
                arg_g_1[Heap[n$1_6, l]];
            }
            assume false;
          }
          assume (forall n$1_7_1: Ref ::
            { arg_g_1[Heap[n$1_7_1, l]] } { arg_g_1[n$1_7_1], Heap[n$1_7_1, l] }
            arg_g_1[n$1_7_1] && Heap[n$1_7_1, l] != null ==> arg_g_1[Heap[n$1_7_1, l]]
          );
          if (*) {
            if (arg_g_1[n$2_4_1] && Heap[n$2_4_1, r_11] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@333.9--333.38) [12291]"}
                arg_g_1[Heap[n$2_4_1, r_11]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { arg_g_1[Heap[n$2_5_1_1, r_11]] } { arg_g_1[n$2_5_1_1], Heap[n$2_5_1_1, r_11] }
            arg_g_1[n$2_5_1_1] && Heap[n$2_5_1_1, r_11] != null ==> arg_g_1[Heap[n$2_5_1_1, r_11]]
          );
          assert {:msg "  The precondition of method link_right might not hold. Assertion x0.r == null might not hold. (create_edge1.vpr@333.9--333.38) [12292]"}
            Heap[x0, r_11] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g_1[null];
          assume arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [12293]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l:=Mask[x0, l] + perm];
          assume state(Heap, Mask);
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@333.9--333.38) [12294]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_11:=Mask[x0, r_11] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@333.9--333.38) [12295]"}
            (forall n$3_3: Ref, n$3_3_1: Ref ::
            
            (((n$3_3 != n$3_3_1 && (arg_g_1[n$3_3] && n$3_3 != x0)) && (arg_g_1[n$3_3_1] && n$3_3_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_3 != n$3_3_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && NoPerm < 1 / 2 ==> qpRange137(n$3_3) && invRecv137(n$3_3) == n$3_3
            );
            assume (forall o_9: Ref ::
              { invRecv137(o_9) }
              ((arg_g_1[invRecv137(o_9)] && invRecv137(o_9) != x0) && NoPerm < 1 / 2) && qpRange137(o_9) ==> invRecv137(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [12296]"}
            (forall n$3_3: Ref ::
            { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
            arg_g_1[n$3_3] && n$3_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && 1 / 2 > NoPerm ==> n$3_3 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              (((arg_g_1[invRecv137(o_9)] && invRecv137(o_9) != x0) && NoPerm < 1 / 2) && qpRange137(o_9) ==> (NoPerm < 1 / 2 ==> invRecv137(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((arg_g_1[invRecv137(o_9)] && invRecv137(o_9) != x0) && NoPerm < 1 / 2) && qpRange137(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@333.9--333.38) [12297]"}
            (forall n$4_3_2: Ref, n$4_3_3: Ref ::
            
            (((n$4_3_2 != n$4_3_3 && (arg_g_1[n$4_3_2] && n$4_3_2 != x0)) && (arg_g_1[n$4_3_3] && n$4_3_3 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_3_2 != n$4_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
              (arg_g_1[n$4_3_2] && n$4_3_2 != x0) && NoPerm < 1 / 2 ==> qpRange138(n$4_3_2) && invRecv138(n$4_3_2) == n$4_3_2
            );
            assume (forall o_9: Ref ::
              { invRecv138(o_9) }
              ((arg_g_1[invRecv138(o_9)] && invRecv138(o_9) != x0) && NoPerm < 1 / 2) && qpRange138(o_9) ==> invRecv138(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@333.9--333.38) [12298]"}
            (forall n$4_3_2: Ref ::
            { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
            arg_g_1[n$4_3_2] && n$4_3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
              (arg_g_1[n$4_3_2] && n$4_3_2 != x0) && 1 / 2 > NoPerm ==> n$4_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              (((arg_g_1[invRecv138(o_9)] && invRecv138(o_9) != x0) && NoPerm < 1 / 2) && qpRange138(o_9) ==> (NoPerm < 1 / 2 ==> invRecv138(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((arg_g_1[invRecv138(o_9)] && invRecv138(o_9) != x0) && NoPerm < 1 / 2) && qpRange138(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_3_2: Ref ::
            { arg_g_1[Heap[n$5_3_2, l]] } { arg_g_1[n$5_3_2], Heap[n$5_3_2, l] }
            arg_g_1[n$5_3_2] && Heap[n$5_3_2, l] != null ==> arg_g_1[Heap[n$5_3_2, l]]
          );
          assume (forall n$6_3_2: Ref ::
            { arg_g_1[Heap[n$6_3_2, r_11]] } { arg_g_1[n$6_3_2], Heap[n$6_3_2, r_11] }
            arg_g_1[n$6_3_2] && Heap[n$6_3_2, r_11] != null ==> arg_g_1[Heap[n$6_3_2, r_11]]
          );
          assume Heap[x0, r_11] == x1;
          if (x1 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g_1), $$(PreCallHeap, arg_g_1));
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_2_1: Ref, v2_2_1: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g_1)), FrameFragment($$#condqp2(PreCallHeap, arg_g_1))), arg_g_1), v1_2_1, v2_2_1): bool) }
              (edge($$(Heap, arg_g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, arg_g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == x0 && v2_2_1 == x1))
            );
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_3: Ref, v2_3: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g_1)), FrameFragment($$#condqp2(Heap, arg_g_1))), arg_g_1), v1_3, v2_3): bool) }
              v1_3 != v2_3 ==> (exists_path($$(Heap, arg_g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, arg_g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, arg_g_1), v1_3, x0): bool) && (exists_path($$(PreCallHeap, arg_g_1), x1, v2_3): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of join might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@325.13--325.31) [12299]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$9 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@325.13--325.31) [12300]"}
        (forall n$9_2: Ref, n$9_2_1: Ref ::
        { neverTriggered125(n$9_2), neverTriggered125(n$9_2_1) }
        (((n$9_2 != n$9_2_1 && Set#Union(g0, g1)[n$9_2]) && Set#Union(g0, g1)[n$9_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_2 != n$9_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of join might not hold. There might be insufficient permission to access n$9.l (create_edge1.vpr@325.13--325.31) [12301]"}
        (forall n$9_2: Ref ::
        { Heap[n$9_2, l] } { QPMask[n$9_2, l] } { Heap[n$9_2, l] }
        Set#Union(g0, g1)[n$9_2] ==> Mask[n$9_2, l] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$9
      assume (forall n$9_2: Ref ::
        { Heap[n$9_2, l] } { QPMask[n$9_2, l] } { Heap[n$9_2, l] }
        Set#Union(g0, g1)[n$9_2] && NoPerm < FullPerm ==> qpRange125(n$9_2) && invRecv125(n$9_2) == n$9_2
      );
      assume (forall o_9: Ref ::
        { invRecv125(o_9) }
        Set#Union(g0, g1)[invRecv125(o_9)] && (NoPerm < FullPerm && qpRange125(o_9)) ==> invRecv125(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (Set#Union(g0, g1)[invRecv125(o_9)] && (NoPerm < FullPerm && qpRange125(o_9)) ==> invRecv125(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - FullPerm) && (!(Set#Union(g0, g1)[invRecv125(o_9)] && (NoPerm < FullPerm && qpRange125(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$10 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@325.13--325.31) [12302]"}
        (forall n$10_2: Ref, n$10_2_1: Ref ::
        { neverTriggered126(n$10_2), neverTriggered126(n$10_2_1) }
        (((n$10_2 != n$10_2_1 && Set#Union(g0, g1)[n$10_2]) && Set#Union(g0, g1)[n$10_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_2 != n$10_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of join might not hold. There might be insufficient permission to access n$10.r (create_edge1.vpr@325.13--325.31) [12303]"}
        (forall n$10_2: Ref ::
        { Heap[n$10_2, r_11] } { QPMask[n$10_2, r_11] } { Heap[n$10_2, r_11] }
        Set#Union(g0, g1)[n$10_2] ==> Mask[n$10_2, r_11] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$10
      assume (forall n$10_2: Ref ::
        { Heap[n$10_2, r_11] } { QPMask[n$10_2, r_11] } { Heap[n$10_2, r_11] }
        Set#Union(g0, g1)[n$10_2] && NoPerm < FullPerm ==> qpRange126(n$10_2) && invRecv126(n$10_2) == n$10_2
      );
      assume (forall o_9: Ref ::
        { invRecv126(o_9) }
        Set#Union(g0, g1)[invRecv126(o_9)] && (NoPerm < FullPerm && qpRange126(o_9)) ==> invRecv126(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (Set#Union(g0, g1)[invRecv126(o_9)] && (NoPerm < FullPerm && qpRange126(o_9)) ==> invRecv126(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - FullPerm) && (!(Set#Union(g0, g1)[invRecv126(o_9)] && (NoPerm < FullPerm && qpRange126(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$11_2] && Heap[n$11_2, l] != null) {
        assert {:msg "  Postcondition of join might not hold. Assertion (n$11.l in (g0 union g1)) might not hold. (create_edge1.vpr@325.13--325.31) [12304]"}
          Set#Union(g0, g1)[Heap[n$11_2, l]];
      }
      assume false;
    }
    assume (forall n$11_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$11_3_1, l]] } { Set#Union(g0, g1)[n$11_3_1], Heap[n$11_3_1, l] }
      Set#Union(g0, g1)[n$11_3_1] && Heap[n$11_3_1, l] != null ==> Set#Union(g0, g1)[Heap[n$11_3_1, l]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n$12_2] && Heap[n$12_2, r_11] != null) {
        assert {:msg "  Postcondition of join might not hold. Assertion (n$12.r in (g0 union g1)) might not hold. (create_edge1.vpr@325.13--325.31) [12305]"}
          Set#Union(g0, g1)[Heap[n$12_2, r_11]];
      }
      assume false;
    }
    assume (forall n$12_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$12_3_1, r_11]] } { Set#Union(g0, g1)[n$12_3_1], Heap[n$12_3_1, r_11] }
      Set#Union(g0, g1)[n$12_3_1] && Heap[n$12_3_1, r_11] != null ==> Set#Union(g0, g1)[Heap[n$12_3_1, r_11]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n_10_1]) {
        assert {:msg "  Postcondition of join might not hold. Assertion exists_path($$((g0 union g1)), x, n) might not hold. (create_edge1.vpr@326.13--326.84) [12306]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), x, n_10_1): bool);
      }
      assume false;
    }
    assume (forall n_11_1: Ref ::
      { Set#Union(g0, g1)[n_11_1] } { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_11_1): bool) }
      Set#Union(g0, g1)[n_11_1] ==> (exists_path($$(Heap, Set#Union(g0, g1)), x, n_11_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method connect_DAGs
// ==================================================

procedure connect_DAGs(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_18: Ref;
  var n$2_28: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$5_7: Ref;
  var n$6_10: Ref;
  var n_62: Ref;
  var n_63: Ref;
  var m_7: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$11_3: Ref;
  var n$12_3: Ref;
  var n_64: Ref;
  var u_28: Ref;
  var v_28: Ref;
  var u$0: Ref;
  var v$0: Ref;
  var u$1: Ref;
  var v$1: Ref;
  var u$2: Ref;
  var v$2: Ref;
  var n$0_8: Ref;
  var n$1_2: Ref;
  var n$0_10_1: Ref;
  var n$1_4: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_g: (Set Ref);
  var perm: Perm;
  var n$1_6: Ref;
  var n$2_2: Ref;
  var arg_g_1: (Set Ref);
  var n$1_8_1: Ref;
  var n$2_4_1: Ref;
  var n$11_2: Ref;
  var n$12_2: Ref;
  var n_16_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.l } (n in g0) ==> acc(n.l, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.l might not be injective. (create_edge1.vpr@348.14--348.23) [12307]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange139(n_1) && invRecv139(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv139(o_9) }
        (g0[invRecv139(o_9)] && NoPerm < FullPerm) && qpRange139(o_9) ==> invRecv139(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, l] } { QPMask[n_1, l] } { Heap[n_1, l] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g0[invRecv139(o_9)] && NoPerm < FullPerm) && qpRange139(o_9) ==> (NoPerm < FullPerm ==> invRecv139(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g0[invRecv139(o_9)] && NoPerm < FullPerm) && qpRange139(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.r } (n$0 in g0) ==> acc(n$0.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.r might not be injective. (create_edge1.vpr@348.14--348.23) [12308]"}
      (forall n$0_1: Ref, n$0_1_1: Ref ::
      
      (((n$0_1 != n$0_1_1 && g0[n$0_1]) && g0[n$0_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_1 != n$0_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        g0[n$0_1] && NoPerm < FullPerm ==> qpRange140(n$0_1) && invRecv140(n$0_1) == n$0_1
      );
      assume (forall o_9: Ref ::
        { invRecv140(o_9) }
        (g0[invRecv140(o_9)] && NoPerm < FullPerm) && qpRange140(o_9) ==> invRecv140(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_1: Ref ::
        { Heap[n$0_1, r_11] } { QPMask[n$0_1, r_11] } { Heap[n$0_1, r_11] }
        g0[n$0_1] ==> n$0_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g0[invRecv140(o_9)] && NoPerm < FullPerm) && qpRange140(o_9) ==> (NoPerm < FullPerm ==> invRecv140(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g0[invRecv140(o_9)] && NoPerm < FullPerm) && qpRange140(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.l in g0) } { (n$1 in g0), n$1.l } (n$1 in g0) && n$1.l != null ==> (n$1.l in g0))
      if (*) {
        if (g0[n$1_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@348.14--348.23) [12309]"}
            HasDirectPerm(Mask, n$1_18, l);
        }
        if (g0[n$1_18] && Heap[n$1_18, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.l (create_edge1.vpr@348.14--348.23) [12310]"}
            HasDirectPerm(Mask, n$1_18, l);
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { g0[Heap[n$1_1, l]] } { g0[n$1_1], Heap[n$1_1, l] }
      g0[n$1_1] && Heap[n$1_1, l] != null ==> g0[Heap[n$1_1, l]]
    );
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.r in g0) } { (n$2 in g0), n$2.r } (n$2 in g0) && n$2.r != null ==> (n$2.r in g0))
      if (*) {
        if (g0[n$2_28]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@348.14--348.23) [12311]"}
            HasDirectPerm(Mask, n$2_28, r_11);
        }
        if (g0[n$2_28] && Heap[n$2_28, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.r (create_edge1.vpr@348.14--348.23) [12312]"}
            HasDirectPerm(Mask, n$2_28, r_11);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g0[Heap[n$2_1, r_11]] } { g0[n$2_1], Heap[n$2_1, r_11] }
      g0[n$2_1] && Heap[n$2_1, r_11] != null ==> g0[Heap[n$2_1, r_11]]
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
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@349.28--349.34) [12313]"}
            (forall n_2: Ref ::
            { Heap[n_2, l] } { QPMask[n_2, l] } { Heap[n_2, l] }
            g0[n_2] && dummyFunction(Heap[n_2, l]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@349.28--349.34) [12314]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered141(n_2), neverTriggered141(n_2_1) }
            (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@349.28--349.34) [12315]"}
            (forall n_2: Ref ::
            { Heap[n_2, l] } { QPMask[n_2, l] } { Heap[n_2, l] }
            g0[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, l] } { QPMask[n_2, l] } { Heap[n_2, l] }
            g0[n_2] && NoPerm < 1 / 2 ==> qpRange141(n_2) && invRecv141(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv141(o_9) }
            g0[invRecv141(o_9)] && (NoPerm < 1 / 2 && qpRange141(o_9)) ==> invRecv141(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@349.28--349.34) [12316]"}
            (forall n_3: Ref ::
            { Heap[n_3, r_11] } { QPMask[n_3, r_11] } { Heap[n_3, r_11] }
            g0[n_3] && dummyFunction(Heap[n_3, r_11]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@349.28--349.34) [12317]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered142(n_3), neverTriggered142(n_3_1) }
            (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@349.28--349.34) [12318]"}
            (forall n_3: Ref ::
            { Heap[n_3, r_11] } { QPMask[n_3, r_11] } { Heap[n_3, r_11] }
            g0[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, r_11] } { QPMask[n_3, r_11] } { Heap[n_3, r_11] }
            g0[n_3] && NoPerm < 1 / 2 ==> qpRange142(n_3) && invRecv142(n_3) == n_3
          );
          assume (forall o_9: Ref ::
            { invRecv142(o_9) }
            g0[invRecv142(o_9)] && (NoPerm < 1 / 2 && qpRange142(o_9)) ==> invRecv142(o_9) == o_9
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.l might not be injective. (create_edge1.vpr@353.14--353.23) [12319]"}
      (forall n$3_1: Ref, n$3_1_1: Ref ::
      
      (((n$3_1 != n$3_1_1 && g1[n$3_1]) && g1[n$3_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1 != n$3_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1: Ref ::
        { Heap[n$3_1, l] } { QPMask[n$3_1, l] } { Heap[n$3_1, l] }
        g1[n$3_1] && NoPerm < FullPerm ==> qpRange143(n$3_1) && invRecv143(n$3_1) == n$3_1
      );
      assume (forall o_9: Ref ::
        { invRecv143(o_9) }
        (g1[invRecv143(o_9)] && NoPerm < FullPerm) && qpRange143(o_9) ==> invRecv143(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1: Ref ::
        { Heap[n$3_1, l] } { QPMask[n$3_1, l] } { Heap[n$3_1, l] }
        g1[n$3_1] ==> n$3_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((g1[invRecv143(o_9)] && NoPerm < FullPerm) && qpRange143(o_9) ==> (NoPerm < FullPerm ==> invRecv143(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + FullPerm) && (!((g1[invRecv143(o_9)] && NoPerm < FullPerm) && qpRange143(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$4: Ref :: { n$4.r } (n$4 in g1) ==> acc(n$4.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$4.r might not be injective. (create_edge1.vpr@353.14--353.23) [12320]"}
      (forall n$4_1: Ref, n$4_1_1: Ref ::
      
      (((n$4_1 != n$4_1_1 && g1[n$4_1]) && g1[n$4_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$4_1 != n$4_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$4_1: Ref ::
        { Heap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { Heap[n$4_1, r_11] }
        g1[n$4_1] && NoPerm < FullPerm ==> qpRange144(n$4_1) && invRecv144(n$4_1) == n$4_1
      );
      assume (forall o_9: Ref ::
        { invRecv144(o_9) }
        (g1[invRecv144(o_9)] && NoPerm < FullPerm) && qpRange144(o_9) ==> invRecv144(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$4_1: Ref ::
        { Heap[n$4_1, r_11] } { QPMask[n$4_1, r_11] } { Heap[n$4_1, r_11] }
        g1[n$4_1] ==> n$4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((g1[invRecv144(o_9)] && NoPerm < FullPerm) && qpRange144(o_9) ==> (NoPerm < FullPerm ==> invRecv144(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + FullPerm) && (!((g1[invRecv144(o_9)] && NoPerm < FullPerm) && qpRange144(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$5: Ref :: { (n$5.l in g1) } { (n$5 in g1), n$5.l } (n$5 in g1) && n$5.l != null ==> (n$5.l in g1))
      if (*) {
        if (g1[n$5_7]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@353.14--353.23) [12321]"}
            HasDirectPerm(Mask, n$5_7, l);
        }
        if (g1[n$5_7] && Heap[n$5_7, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$5.l (create_edge1.vpr@353.14--353.23) [12322]"}
            HasDirectPerm(Mask, n$5_7, l);
        }
        assume false;
      }
    assume (forall n$5_1: Ref ::
      { g1[Heap[n$5_1, l]] } { g1[n$5_1], Heap[n$5_1, l] }
      g1[n$5_1] && Heap[n$5_1, l] != null ==> g1[Heap[n$5_1, l]]
    );
    
    // -- Check definedness of (forall n$6: Ref :: { (n$6.r in g1) } { (n$6 in g1), n$6.r } (n$6 in g1) && n$6.r != null ==> (n$6.r in g1))
      if (*) {
        if (g1[n$6_10]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@353.14--353.23) [12323]"}
            HasDirectPerm(Mask, n$6_10, r_11);
        }
        if (g1[n$6_10] && Heap[n$6_10, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$6.r (create_edge1.vpr@353.14--353.23) [12324]"}
            HasDirectPerm(Mask, n$6_10, r_11);
        }
        assume false;
      }
    assume (forall n$6_1: Ref ::
      { g1[Heap[n$6_1, r_11]] } { g1[n$6_1], Heap[n$6_1, r_11] }
      g1[n$6_1] && Heap[n$6_1, r_11] != null ==> g1[Heap[n$6_1, r_11]]
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
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@354.28--354.34) [12325]"}
            (forall n_4: Ref ::
            { Heap[n_4, l] } { QPMask[n_4, l] } { Heap[n_4, l] }
            g1[n_4] && dummyFunction(Heap[n_4, l]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@354.28--354.34) [12326]"}
            (forall n_4: Ref, n_4_1: Ref ::
            { neverTriggered145(n_4), neverTriggered145(n_4_1) }
            (((n_4 != n_4_1 && g1[n_4]) && g1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@354.28--354.34) [12327]"}
            (forall n_4: Ref ::
            { Heap[n_4, l] } { QPMask[n_4, l] } { Heap[n_4, l] }
            g1[n_4] ==> 1 / 2 > NoPerm ==> Mask[n_4, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4: Ref ::
            { Heap[n_4, l] } { QPMask[n_4, l] } { Heap[n_4, l] }
            g1[n_4] && NoPerm < 1 / 2 ==> qpRange145(n_4) && invRecv145(n_4) == n_4
          );
          assume (forall o_9: Ref ::
            { invRecv145(o_9) }
            g1[invRecv145(o_9)] && (NoPerm < 1 / 2 && qpRange145(o_9)) ==> invRecv145(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@354.28--354.34) [12328]"}
            (forall n_5: Ref ::
            { Heap[n_5, r_11] } { QPMask[n_5, r_11] } { Heap[n_5, r_11] }
            g1[n_5] && dummyFunction(Heap[n_5, r_11]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@354.28--354.34) [12329]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered146(n_5), neverTriggered146(n_5_1) }
            (((n_5 != n_5_1 && g1[n_5]) && g1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@354.28--354.34) [12330]"}
            (forall n_5: Ref ::
            { Heap[n_5, r_11] } { QPMask[n_5, r_11] } { Heap[n_5, r_11] }
            g1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, r_11] } { QPMask[n_5, r_11] } { Heap[n_5, r_11] }
            g1[n_5] && NoPerm < 1 / 2 ==> qpRange146(n_5) && invRecv146(n_5) == n_5
          );
          assume (forall o_9: Ref ::
            { invRecv146(o_9) }
            g1[invRecv146(o_9)] && (NoPerm < 1 / 2 && qpRange146(o_9)) ==> invRecv146(o_9) == o_9
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
    assume g1[x1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g0), x, n) } (n in g0) ==> exists_path($$(g0), x, n))
      if (*) {
        if (g0[n_62]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@357.82--357.88) [12331]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] && dummyFunction(Heap[n$0_2, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@357.82--357.88) [12332]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered147(n$0_2), neverTriggered147(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g0[n$0_2]) && g0[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@357.82--357.88) [12333]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, l] } { QPMask[n$0_2, l] } { Heap[n$0_2, l] }
                g0[n$0_2] && NoPerm < 1 / 2 ==> qpRange147(n$0_2) && invRecv147(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv147(o_9) }
                g0[invRecv147(o_9)] && (NoPerm < 1 / 2 && qpRange147(o_9)) ==> invRecv147(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@357.82--357.88) [12334]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] && dummyFunction(Heap[n$0_3, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@357.82--357.88) [12335]"}
                (forall n$0_3: Ref, n$0_3_1: Ref ::
                { neverTriggered148(n$0_3), neverTriggered148(n$0_3_1) }
                (((n$0_3 != n$0_3_1 && g0[n$0_3]) && g0[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@357.82--357.88) [12336]"}
                (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3: Ref ::
                { Heap[n$0_3, r_11] } { QPMask[n$0_3, r_11] } { Heap[n$0_3, r_11] }
                g0[n$0_3] && NoPerm < 1 / 2 ==> qpRange148(n$0_3) && invRecv148(n$0_3) == n$0_3
              );
              assume (forall o_9: Ref ::
                { invRecv148(o_9) }
                g0[invRecv148(o_9)] && (NoPerm < 1 / 2 && qpRange148(o_9)) ==> invRecv148(o_9) == o_9
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
        if (g0[n_63]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@358.83--358.89) [12337]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] && dummyFunction(Heap[n$0_4, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@358.83--358.89) [12338]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered149(n$0_4), neverTriggered149(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g0[n$0_4]) && g0[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@358.83--358.89) [12339]"}
                (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] ==> 1 / 2 > NoPerm ==> Mask[n$0_4, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { Heap[n$0_4, l] } { QPMask[n$0_4, l] } { Heap[n$0_4, l] }
                g0[n$0_4] && NoPerm < 1 / 2 ==> qpRange149(n$0_4) && invRecv149(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv149(o_9) }
                g0[invRecv149(o_9)] && (NoPerm < 1 / 2 && qpRange149(o_9)) ==> invRecv149(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@358.83--358.89) [12340]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] && dummyFunction(Heap[n$0_5, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@358.83--358.89) [12341]"}
                (forall n$0_5: Ref, n$0_5_1: Ref ::
                { neverTriggered150(n$0_5), neverTriggered150(n$0_5_1) }
                (((n$0_5 != n$0_5_1 && g0[n$0_5]) && g0[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@358.83--358.89) [12342]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] ==> 1 / 2 > NoPerm ==> Mask[n$0_5, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, r_11] } { QPMask[n$0_5, r_11] } { Heap[n$0_5, r_11] }
                g0[n$0_5] && NoPerm < 1 / 2 ==> qpRange150(n$0_5) && invRecv150(n$0_5) == n$0_5
              );
              assume (forall o_9: Ref ::
                { invRecv150(o_9) }
                g0[invRecv150(o_9)] && (NoPerm < 1 / 2 && qpRange150(o_9)) ==> invRecv150(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@359.83--359.89) [12343]"}
                (forall n_10_1: Ref ::
                { Heap[n_10_1, l] } { QPMask[n_10_1, l] } { Heap[n_10_1, l] }
                g1[n_10_1] && dummyFunction(Heap[n_10_1, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@359.83--359.89) [12344]"}
                (forall n_10_1: Ref, n_10_2: Ref ::
                { neverTriggered151(n_10_1), neverTriggered151(n_10_2) }
                (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@359.83--359.89) [12345]"}
                (forall n_10_1: Ref ::
                { Heap[n_10_1, l] } { QPMask[n_10_1, l] } { Heap[n_10_1, l] }
                g1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_10_1: Ref ::
                { Heap[n_10_1, l] } { QPMask[n_10_1, l] } { Heap[n_10_1, l] }
                g1[n_10_1] && NoPerm < 1 / 2 ==> qpRange151(n_10_1) && invRecv151(n_10_1) == n_10_1
              );
              assume (forall o_9: Ref ::
                { invRecv151(o_9) }
                g1[invRecv151(o_9)] && (NoPerm < 1 / 2 && qpRange151(o_9)) ==> invRecv151(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@359.83--359.89) [12346]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { Heap[n_11_2, r_11] }
                g1[n_11_2] && dummyFunction(Heap[n_11_2, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@359.83--359.89) [12347]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered152(n_11_2), neverTriggered152(n_11_3) }
                (((n_11_2 != n_11_3 && g1[n_11_2]) && g1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@359.83--359.89) [12348]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { Heap[n_11_2, r_11] }
                g1[n_11_2] ==> 1 / 2 > NoPerm ==> Mask[n_11_2, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_2: Ref ::
                { Heap[n_11_2, r_11] } { QPMask[n_11_2, r_11] } { Heap[n_11_2, r_11] }
                g1[n_11_2] && NoPerm < 1 / 2 ==> qpRange152(n_11_2) && invRecv152(n_11_2) == n_11_2
              );
              assume (forall o_9: Ref ::
                { invRecv152(o_9) }
                g1[invRecv152(o_9)] && (NoPerm < 1 / 2 && qpRange152(o_9)) ==> invRecv152(o_9) == o_9
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
    assume (forall m_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, g1)), FrameFragment($$#condqp2(Heap, g1))), g1), x1, m_1): bool) }
      g1[m_1] ==> (exists_path($$(Heap, g1), x1, m_1): bool)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x0.l == null || x0.r == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.l (create_edge1.vpr@361.14--361.42) [12349]"}
        HasDirectPerm(Mask, x0, l);
      if (!(Heap[x0, l] == null)) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x0.r (create_edge1.vpr@361.14--361.42) [12350]"}
          HasDirectPerm(Mask, x0, r_11);
      }
    assume Heap[x0, l] == null || Heap[x0, r_11] == null;
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@365.13--365.31) [12351]"}
      (forall n$9_1: Ref, n$9_1_1: Ref ::
      
      (((n$9_1 != n$9_1_1 && Set#Union(g0, g1)[n$9_1]) && Set#Union(g0, g1)[n$9_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_1 != n$9_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l] } { QPMask[n$9_1, l] } { PostHeap[n$9_1, l] }
        Set#Union(g0, g1)[n$9_1] && NoPerm < FullPerm ==> qpRange153(n$9_1) && invRecv153(n$9_1) == n$9_1
      );
      assume (forall o_9: Ref ::
        { invRecv153(o_9) }
        (Set#Union(g0, g1)[invRecv153(o_9)] && NoPerm < FullPerm) && qpRange153(o_9) ==> invRecv153(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$9_1: Ref ::
        { PostHeap[n$9_1, l] } { QPMask[n$9_1, l] } { PostHeap[n$9_1, l] }
        Set#Union(g0, g1)[n$9_1] ==> n$9_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        ((Set#Union(g0, g1)[invRecv153(o_9)] && NoPerm < FullPerm) && qpRange153(o_9) ==> (NoPerm < FullPerm ==> invRecv153(o_9) == o_9) && QPMask[o_9, l] == PostMask[o_9, l] + FullPerm) && (!((Set#Union(g0, g1)[invRecv153(o_9)] && NoPerm < FullPerm) && qpRange153(o_9)) ==> QPMask[o_9, l] == PostMask[o_9, l])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != l ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$10: Ref :: { n$10.r } (n$10 in (g0 union g1)) ==> acc(n$10.r, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@365.13--365.31) [12352]"}
      (forall n$10_1: Ref, n$10_1_1: Ref ::
      
      (((n$10_1 != n$10_1_1 && Set#Union(g0, g1)[n$10_1]) && Set#Union(g0, g1)[n$10_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_1 != n$10_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_11] } { QPMask[n$10_1, r_11] } { PostHeap[n$10_1, r_11] }
        Set#Union(g0, g1)[n$10_1] && NoPerm < FullPerm ==> qpRange154(n$10_1) && invRecv154(n$10_1) == n$10_1
      );
      assume (forall o_9: Ref ::
        { invRecv154(o_9) }
        (Set#Union(g0, g1)[invRecv154(o_9)] && NoPerm < FullPerm) && qpRange154(o_9) ==> invRecv154(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$10_1: Ref ::
        { PostHeap[n$10_1, r_11] } { QPMask[n$10_1, r_11] } { PostHeap[n$10_1, r_11] }
        Set#Union(g0, g1)[n$10_1] ==> n$10_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        ((Set#Union(g0, g1)[invRecv154(o_9)] && NoPerm < FullPerm) && qpRange154(o_9) ==> (NoPerm < FullPerm ==> invRecv154(o_9) == o_9) && QPMask[o_9, r_11] == PostMask[o_9, r_11] + FullPerm) && (!((Set#Union(g0, g1)[invRecv154(o_9)] && NoPerm < FullPerm) && qpRange154(o_9)) ==> QPMask[o_9, r_11] == PostMask[o_9, r_11])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != r_11 ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$11: Ref :: { (n$11.l in (g0 union g1)) } { (n$11 in (g0 union g1)), n$11.l } (n$11 in (g0 union g1)) && n$11.l != null ==> (n$11.l in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$11_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@365.13--365.31) [12353]"}
            HasDirectPerm(PostMask, n$11_3, l);
        }
        if (Set#Union(g0, g1)[n$11_3] && PostHeap[n$11_3, l] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$11.l (create_edge1.vpr@365.13--365.31) [12354]"}
            HasDirectPerm(PostMask, n$11_3, l);
        }
        assume false;
      }
    assume (forall n$11_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$11_1, l]] } { Set#Union(g0, g1)[n$11_1], PostHeap[n$11_1, l] }
      Set#Union(g0, g1)[n$11_1] && PostHeap[n$11_1, l] != null ==> Set#Union(g0, g1)[PostHeap[n$11_1, l]]
    );
    
    // -- Check definedness of (forall n$12: Ref :: { (n$12.r in (g0 union g1)) } { (n$12 in (g0 union g1)), n$12.r } (n$12 in (g0 union g1)) && n$12.r != null ==> (n$12.r in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$12_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@365.13--365.31) [12355]"}
            HasDirectPerm(PostMask, n$12_3, r_11);
        }
        if (Set#Union(g0, g1)[n$12_3] && PostHeap[n$12_3, r_11] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$12.r (create_edge1.vpr@365.13--365.31) [12356]"}
            HasDirectPerm(PostMask, n$12_3, r_11);
        }
        assume false;
      }
    assume (forall n$12_1: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$12_1, r_11]] } { Set#Union(g0, g1)[n$12_1], PostHeap[n$12_1, r_11] }
      Set#Union(g0, g1)[n$12_1] && PostHeap[n$12_1, r_11] != null ==> Set#Union(g0, g1)[PostHeap[n$12_1, r_11]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$((g0 union g1)), x, n) } (n in (g0 union g1)) ==> exists_path($$((g0 union g1)), x, n))
      if (*) {
        if (Set#Union(g0, g1)[n_64]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@366.101--366.116) [12357]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] && dummyFunction(PostHeap[n$0_6, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.l might not be injective. (create_edge1.vpr@366.101--366.116) [12358]"}
                (forall n$0_6: Ref, n$0_6_1: Ref ::
                { neverTriggered155(n$0_6), neverTriggered155(n$0_6_1) }
                (((n$0_6 != n$0_6_1 && Set#Union(g0, g1)[n$0_6]) && Set#Union(g0, g1)[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.l (create_edge1.vpr@366.101--366.116) [12359]"}
                (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] ==> 1 / 2 > NoPerm ==> PostMask[n$0_6, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_6: Ref ::
                { PostHeap[n$0_6, l] } { QPMask[n$0_6, l] } { PostHeap[n$0_6, l] }
                Set#Union(g0, g1)[n$0_6] && NoPerm < 1 / 2 ==> qpRange155(n$0_6) && invRecv155(n$0_6) == n$0_6
              );
              assume (forall o_9: Ref ::
                { invRecv155(o_9) }
                Set#Union(g0, g1)[invRecv155(o_9)] && (NoPerm < 1 / 2 && qpRange155(o_9)) ==> invRecv155(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@366.101--366.116) [12360]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] && dummyFunction(PostHeap[n$0_7, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@366.101--366.116) [12361]"}
                (forall n$0_7: Ref, n$0_7_1: Ref ::
                { neverTriggered156(n$0_7), neverTriggered156(n$0_7_1) }
                (((n$0_7 != n$0_7_1 && Set#Union(g0, g1)[n$0_7]) && Set#Union(g0, g1)[n$0_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@366.101--366.116) [12362]"}
                (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] ==> 1 / 2 > NoPerm ==> PostMask[n$0_7, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_7: Ref ::
                { PostHeap[n$0_7, r_11] } { QPMask[n$0_7, r_11] } { PostHeap[n$0_7, r_11] }
                Set#Union(g0, g1)[n$0_7] && NoPerm < 1 / 2 ==> qpRange156(n$0_7) && invRecv156(n$0_7) == n$0_7
              );
              assume (forall o_9: Ref ::
                { invRecv156(o_9) }
                Set#Union(g0, g1)[invRecv156(o_9)] && (NoPerm < 1 / 2 && qpRange156(o_9)) ==> invRecv156(o_9) == o_9
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
    assume (forall n_13_2: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(PostHeap, Set#Union(g0, g1))), FrameFragment($$#condqp2(PostHeap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_13_2): bool) }
      Set#Union(g0, g1)[n_13_2] ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), x, n_13_2): bool)
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
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@368.27--368.42) [12363]"}
            (forall n_14_1: Ref ::
            { PostHeap[n_14_1, l] } { QPMask[n_14_1, l] } { PostHeap[n_14_1, l] }
            Set#Union(g0, g1)[n_14_1] && dummyFunction(PostHeap[n_14_1, l]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@368.27--368.42) [12364]"}
            (forall n_14_1: Ref, n_14_2: Ref ::
            { neverTriggered157(n_14_1), neverTriggered157(n_14_2) }
            (((n_14_1 != n_14_2 && Set#Union(g0, g1)[n_14_1]) && Set#Union(g0, g1)[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@368.27--368.42) [12365]"}
            (forall n_14_1: Ref ::
            { PostHeap[n_14_1, l] } { QPMask[n_14_1, l] } { PostHeap[n_14_1, l] }
            Set#Union(g0, g1)[n_14_1] ==> 1 / 2 > NoPerm ==> PostMask[n_14_1, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_14_1: Ref ::
            { PostHeap[n_14_1, l] } { QPMask[n_14_1, l] } { PostHeap[n_14_1, l] }
            Set#Union(g0, g1)[n_14_1] && NoPerm < 1 / 2 ==> qpRange157(n_14_1) && invRecv157(n_14_1) == n_14_1
          );
          assume (forall o_9: Ref ::
            { invRecv157(o_9) }
            Set#Union(g0, g1)[invRecv157(o_9)] && (NoPerm < 1 / 2 && qpRange157(o_9)) ==> invRecv157(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@368.27--368.42) [12366]"}
            (forall n_15: Ref ::
            { PostHeap[n_15, r_11] } { QPMask[n_15, r_11] } { PostHeap[n_15, r_11] }
            Set#Union(g0, g1)[n_15] && dummyFunction(PostHeap[n_15, r_11]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@368.27--368.42) [12367]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered158(n_15), neverTriggered158(n_15_1) }
            (((n_15 != n_15_1 && Set#Union(g0, g1)[n_15]) && Set#Union(g0, g1)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@368.27--368.42) [12368]"}
            (forall n_15: Ref ::
            { PostHeap[n_15, r_11] } { QPMask[n_15, r_11] } { PostHeap[n_15, r_11] }
            Set#Union(g0, g1)[n_15] ==> 1 / 2 > NoPerm ==> PostMask[n_15, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { PostHeap[n_15, r_11] } { QPMask[n_15, r_11] } { PostHeap[n_15, r_11] }
            Set#Union(g0, g1)[n_15] && NoPerm < 1 / 2 ==> qpRange158(n_15) && invRecv158(n_15) == n_15
          );
          assume (forall o_9: Ref ::
            { invRecv158(o_9) }
            Set#Union(g0, g1)[invRecv158(o_9)] && (NoPerm < 1 / 2 && qpRange158(o_9)) ==> invRecv158(o_9) == o_9
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
        if (g0[u_28] && !g0[v_28]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [12369]"}
                (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] && dummyFunction(Heap[n_18, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@342.123--342.138) [12370]"}
                (forall n_18: Ref, n_18_1: Ref ::
                { neverTriggered161(n_18), neverTriggered161(n_18_1) }
                (((n_18 != n_18_1 && Set#Union(g0, g1)[n_18]) && Set#Union(g0, g1)[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@342.123--342.138) [12371]"}
                (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] ==> 1 / 2 > NoPerm ==> Mask[n_18, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_18: Ref ::
                { Heap[n_18, l] } { QPMask[n_18, l] } { Heap[n_18, l] }
                Set#Union(g0, g1)[n_18] && NoPerm < 1 / 2 ==> qpRange161(n_18) && invRecv161(n_18) == n_18
              );
              assume (forall o_9: Ref ::
                { invRecv161(o_9) }
                Set#Union(g0, g1)[invRecv161(o_9)] && (NoPerm < 1 / 2 && qpRange161(o_9)) ==> invRecv161(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [12372]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] && dummyFunction(Heap[n_19, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@342.123--342.138) [12373]"}
                (forall n_19: Ref, n_19_1: Ref ::
                { neverTriggered162(n_19), neverTriggered162(n_19_1) }
                (((n_19 != n_19_1 && Set#Union(g0, g1)[n_19]) && Set#Union(g0, g1)[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@342.123--342.138) [12374]"}
                (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] ==> 1 / 2 > NoPerm ==> Mask[n_19, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_19: Ref ::
                { Heap[n_19, r_11] } { QPMask[n_19, r_11] } { Heap[n_19, r_11] }
                Set#Union(g0, g1)[n_19] && NoPerm < 1 / 2 ==> qpRange162(n_19) && invRecv162(n_19) == n_19
              );
              assume (forall o_9: Ref ::
                { invRecv162(o_9) }
                Set#Union(g0, g1)[invRecv162(o_9)] && (NoPerm < 1 / 2 && qpRange162(o_9)) ==> invRecv162(o_9) == o_9
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
    assume (forall u_1_1: Ref, v_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), u_1_1, v_1_1): bool), g0[u_1_1], g0[v_1_1] }
      g0[u_1_1] && !g0[v_1_1] ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_1_1, v_1_1): bool)
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [12375]"}
                (forall n_20: Ref ::
                { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                Set#Union(g0, g1)[n_20] && dummyFunction(Heap[n_20, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@344.123--344.138) [12376]"}
                (forall n_20: Ref, n_20_1: Ref ::
                { neverTriggered163(n_20), neverTriggered163(n_20_1) }
                (((n_20 != n_20_1 && Set#Union(g0, g1)[n_20]) && Set#Union(g0, g1)[n_20_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@344.123--344.138) [12377]"}
                (forall n_20: Ref ::
                { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                Set#Union(g0, g1)[n_20] ==> 1 / 2 > NoPerm ==> Mask[n_20, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_20: Ref ::
                { Heap[n_20, l] } { QPMask[n_20, l] } { Heap[n_20, l] }
                Set#Union(g0, g1)[n_20] && NoPerm < 1 / 2 ==> qpRange163(n_20) && invRecv163(n_20) == n_20
              );
              assume (forall o_9: Ref ::
                { invRecv163(o_9) }
                Set#Union(g0, g1)[invRecv163(o_9)] && (NoPerm < 1 / 2 && qpRange163(o_9)) ==> invRecv163(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [12378]"}
                (forall n_21: Ref ::
                { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                Set#Union(g0, g1)[n_21] && dummyFunction(Heap[n_21, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@344.123--344.138) [12379]"}
                (forall n_21: Ref, n_21_1: Ref ::
                { neverTriggered164(n_21), neverTriggered164(n_21_1) }
                (((n_21 != n_21_1 && Set#Union(g0, g1)[n_21]) && Set#Union(g0, g1)[n_21_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@344.123--344.138) [12380]"}
                (forall n_21: Ref ::
                { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                Set#Union(g0, g1)[n_21] ==> 1 / 2 > NoPerm ==> Mask[n_21, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_21: Ref ::
                { Heap[n_21, r_11] } { QPMask[n_21, r_11] } { Heap[n_21, r_11] }
                Set#Union(g0, g1)[n_21] && NoPerm < 1 / 2 ==> qpRange164(n_21) && invRecv164(n_21) == n_21
              );
              assume (forall o_9: Ref ::
                { invRecv164(o_9) }
                Set#Union(g0, g1)[invRecv164(o_9)] && (NoPerm < 1 / 2 && qpRange164(o_9)) ==> invRecv164(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [12381]"}
                (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] && dummyFunction(Heap[n_22, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@342.123--342.138) [12382]"}
                (forall n_22: Ref, n_22_1: Ref ::
                { neverTriggered165(n_22), neverTriggered165(n_22_1) }
                (((n_22 != n_22_1 && Set#Union(g1, g0)[n_22]) && Set#Union(g1, g0)[n_22_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@342.123--342.138) [12383]"}
                (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] ==> 1 / 2 > NoPerm ==> Mask[n_22, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_22: Ref ::
                { Heap[n_22, l] } { QPMask[n_22, l] } { Heap[n_22, l] }
                Set#Union(g1, g0)[n_22] && NoPerm < 1 / 2 ==> qpRange165(n_22) && invRecv165(n_22) == n_22
              );
              assume (forall o_9: Ref ::
                { invRecv165(o_9) }
                Set#Union(g1, g0)[invRecv165(o_9)] && (NoPerm < 1 / 2 && qpRange165(o_9)) ==> invRecv165(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@342.123--342.138) [12384]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] && dummyFunction(Heap[n_23, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@342.123--342.138) [12385]"}
                (forall n_23: Ref, n_23_1: Ref ::
                { neverTriggered166(n_23), neverTriggered166(n_23_1) }
                (((n_23 != n_23_1 && Set#Union(g1, g0)[n_23]) && Set#Union(g1, g0)[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@342.123--342.138) [12386]"}
                (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] ==> 1 / 2 > NoPerm ==> Mask[n_23, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_23: Ref ::
                { Heap[n_23, r_11] } { QPMask[n_23, r_11] } { Heap[n_23, r_11] }
                Set#Union(g1, g0)[n_23] && NoPerm < 1 / 2 ==> qpRange166(n_23) && invRecv166(n_23) == n_23
              );
              assume (forall o_9: Ref ::
                { invRecv166(o_9) }
                Set#Union(g1, g0)[invRecv166(o_9)] && (NoPerm < 1 / 2 && qpRange166(o_9)) ==> invRecv166(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [12387]"}
                (forall n_24: Ref ::
                { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                Set#Union(g1, g0)[n_24] && dummyFunction(Heap[n_24, l]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@344.123--344.138) [12388]"}
                (forall n_24: Ref, n_24_1: Ref ::
                { neverTriggered167(n_24), neverTriggered167(n_24_1) }
                (((n_24 != n_24_1 && Set#Union(g1, g0)[n_24]) && Set#Union(g1, g0)[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@344.123--344.138) [12389]"}
                (forall n_24: Ref ::
                { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                Set#Union(g1, g0)[n_24] ==> 1 / 2 > NoPerm ==> Mask[n_24, l] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_24: Ref ::
                { Heap[n_24, l] } { QPMask[n_24, l] } { Heap[n_24, l] }
                Set#Union(g1, g0)[n_24] && NoPerm < 1 / 2 ==> qpRange167(n_24) && invRecv167(n_24) == n_24
              );
              assume (forall o_9: Ref ::
                { invRecv167(o_9) }
                Set#Union(g1, g0)[invRecv167(o_9)] && (NoPerm < 1 / 2 && qpRange167(o_9)) ==> invRecv167(o_9) == o_9
              );
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@344.123--344.138) [12390]"}
                (forall n_25: Ref ::
                { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                Set#Union(g1, g0)[n_25] && dummyFunction(Heap[n_25, r_11]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@344.123--344.138) [12391]"}
                (forall n_25: Ref, n_25_1: Ref ::
                { neverTriggered168(n_25), neverTriggered168(n_25_1) }
                (((n_25 != n_25_1 && Set#Union(g1, g0)[n_25]) && Set#Union(g1, g0)[n_25_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_25 != n_25_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@344.123--344.138) [12392]"}
                (forall n_25: Ref ::
                { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                Set#Union(g1, g0)[n_25] ==> 1 / 2 > NoPerm ==> Mask[n_25, r_11] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_25: Ref ::
                { Heap[n_25, r_11] } { QPMask[n_25, r_11] } { Heap[n_25, r_11] }
                Set#Union(g1, g0)[n_25] && NoPerm < 1 / 2 ==> qpRange168(n_25) && invRecv168(n_25) == n_25
              );
              assume (forall o_9: Ref ::
                { invRecv168(o_9) }
                Set#Union(g1, g0)[invRecv168(o_9)] && (NoPerm < 1 / 2 && qpRange168(o_9)) ==> invRecv168(o_9) == o_9
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
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@380.12--380.34) [12393]"}
            (forall n_26: Ref, n_26_1: Ref ::
            { neverTriggered169(n_26), neverTriggered169(n_26_1) }
            (((n_26 != n_26_1 && g0[n_26]) && g0[n_26_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_26 != n_26_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@380.12--380.34) [12394]"}
            (forall n_26: Ref ::
            { Heap[n_26, l] } { QPMask[n_26, l] } { Heap[n_26, l] }
            g0[n_26] ==> FullPerm > NoPerm ==> Mask[n_26, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_26: Ref ::
            { Heap[n_26, l] } { QPMask[n_26, l] } { Heap[n_26, l] }
            g0[n_26] && NoPerm < FullPerm ==> qpRange169(n_26) && invRecv169(n_26) == n_26
          );
          assume (forall o_9: Ref ::
            { invRecv169(o_9) }
            g0[invRecv169(o_9)] && (NoPerm < FullPerm && qpRange169(o_9)) ==> invRecv169(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@380.12--380.34) [12395]"}
            (forall n_27: Ref, n_27_1: Ref ::
            { neverTriggered170(n_27), neverTriggered170(n_27_1) }
            (((n_27 != n_27_1 && g0[n_27]) && g0[n_27_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_27 != n_27_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@380.12--380.34) [12396]"}
            (forall n_27: Ref ::
            { Heap[n_27, r_11] } { QPMask[n_27, r_11] } { Heap[n_27, r_11] }
            g0[n_27] ==> FullPerm > NoPerm ==> Mask[n_27, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_27: Ref ::
            { Heap[n_27, r_11] } { QPMask[n_27, r_11] } { Heap[n_27, r_11] }
            g0[n_27] && NoPerm < FullPerm ==> qpRange170(n_27) && invRecv170(n_27) == n_27
          );
          assume (forall o_9: Ref ::
            { invRecv170(o_9) }
            g0[invRecv170(o_9)] && (NoPerm < FullPerm && qpRange170(o_9)) ==> invRecv170(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@380.12--380.34) [12397]"}
            (forall n_28: Ref, n_28_1: Ref ::
            { neverTriggered171(n_28), neverTriggered171(n_28_1) }
            (((n_28 != n_28_1 && g1[n_28]) && g1[n_28_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_28 != n_28_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@380.12--380.34) [12398]"}
            (forall n_28: Ref ::
            { Heap[n_28, l] } { QPMask[n_28, l] } { Heap[n_28, l] }
            g1[n_28] ==> FullPerm > NoPerm ==> Mask[n_28, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_28: Ref ::
            { Heap[n_28, l] } { QPMask[n_28, l] } { Heap[n_28, l] }
            g1[n_28] && NoPerm < FullPerm ==> qpRange171(n_28) && invRecv171(n_28) == n_28
          );
          assume (forall o_9: Ref ::
            { invRecv171(o_9) }
            g1[invRecv171(o_9)] && (NoPerm < FullPerm && qpRange171(o_9)) ==> invRecv171(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@380.12--380.34) [12399]"}
            (forall n_29: Ref, n_29_1: Ref ::
            { neverTriggered172(n_29), neverTriggered172(n_29_1) }
            (((n_29 != n_29_1 && g1[n_29]) && g1[n_29_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_29 != n_29_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@380.12--380.34) [12400]"}
            (forall n_29: Ref ::
            { Heap[n_29, r_11] } { QPMask[n_29, r_11] } { Heap[n_29, r_11] }
            g1[n_29] ==> FullPerm > NoPerm ==> Mask[n_29, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_29: Ref ::
            { Heap[n_29, r_11] } { QPMask[n_29, r_11] } { Heap[n_29, r_11] }
            g1[n_29] && NoPerm < FullPerm ==> qpRange172(n_29) && invRecv172(n_29) == n_29
          );
          assume (forall o_9: Ref ::
            { invRecv172(o_9) }
            g1[invRecv172(o_9)] && (NoPerm < FullPerm && qpRange172(o_9)) ==> invRecv172(o_9) == o_9
          );
        if (*) {
          if (g0[n$0_8]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g1)) might not hold. (create_edge1.vpr@380.12--380.34) [12401]"}
              !g1[n$0_8];
          }
          assume false;
        }
        assume (forall n$0_9_1_1: Ref ::
          { g0[n$0_9_1_1], g1[n$0_9_1_1] }
          g0[n$0_9_1_1] ==> !g1[n$0_9_1_1]
        );
        if (*) {
          if (g1[n$1_2]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g0)) might not hold. (create_edge1.vpr@380.12--380.34) [12402]"}
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
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@381.12--381.34) [12403]"}
            (forall n_30: Ref, n_30_1: Ref ::
            { neverTriggered173(n_30), neverTriggered173(n_30_1) }
            (((n_30 != n_30_1 && g1[n_30]) && g1[n_30_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_30 != n_30_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@381.12--381.34) [12404]"}
            (forall n_30: Ref ::
            { Heap[n_30, l] } { QPMask[n_30, l] } { Heap[n_30, l] }
            g1[n_30] ==> FullPerm > NoPerm ==> Mask[n_30, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_30: Ref ::
            { Heap[n_30, l] } { QPMask[n_30, l] } { Heap[n_30, l] }
            g1[n_30] && NoPerm < FullPerm ==> qpRange173(n_30) && invRecv173(n_30) == n_30
          );
          assume (forall o_9: Ref ::
            { invRecv173(o_9) }
            g1[invRecv173(o_9)] && (NoPerm < FullPerm && qpRange173(o_9)) ==> invRecv173(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@381.12--381.34) [12405]"}
            (forall n_31: Ref, n_31_1: Ref ::
            { neverTriggered174(n_31), neverTriggered174(n_31_1) }
            (((n_31 != n_31_1 && g1[n_31]) && g1[n_31_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_31 != n_31_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@381.12--381.34) [12406]"}
            (forall n_31: Ref ::
            { Heap[n_31, r_11] } { QPMask[n_31, r_11] } { Heap[n_31, r_11] }
            g1[n_31] ==> FullPerm > NoPerm ==> Mask[n_31, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_31: Ref ::
            { Heap[n_31, r_11] } { QPMask[n_31, r_11] } { Heap[n_31, r_11] }
            g1[n_31] && NoPerm < FullPerm ==> qpRange174(n_31) && invRecv174(n_31) == n_31
          );
          assume (forall o_9: Ref ::
            { invRecv174(o_9) }
            g1[invRecv174(o_9)] && (NoPerm < FullPerm && qpRange174(o_9)) ==> invRecv174(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@381.12--381.34) [12407]"}
            (forall n_32_2: Ref, n_32_3: Ref ::
            { neverTriggered175(n_32_2), neverTriggered175(n_32_3) }
            (((n_32_2 != n_32_3 && g0[n_32_2]) && g0[n_32_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_32_2 != n_32_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@381.12--381.34) [12408]"}
            (forall n_32_2: Ref ::
            { Heap[n_32_2, l] } { QPMask[n_32_2, l] } { Heap[n_32_2, l] }
            g0[n_32_2] ==> FullPerm > NoPerm ==> Mask[n_32_2, l] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_32_2: Ref ::
            { Heap[n_32_2, l] } { QPMask[n_32_2, l] } { Heap[n_32_2, l] }
            g0[n_32_2] && NoPerm < FullPerm ==> qpRange175(n_32_2) && invRecv175(n_32_2) == n_32_2
          );
          assume (forall o_9: Ref ::
            { invRecv175(o_9) }
            g0[invRecv175(o_9)] && (NoPerm < FullPerm && qpRange175(o_9)) ==> invRecv175(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.r might not be injective. (create_edge1.vpr@381.12--381.34) [12409]"}
            (forall n_33: Ref, n_33_1: Ref ::
            { neverTriggered176(n_33), neverTriggered176(n_33_1) }
            (((n_33 != n_33_1 && g0[n_33]) && g0[n_33_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_33 != n_33_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.r (create_edge1.vpr@381.12--381.34) [12410]"}
            (forall n_33: Ref ::
            { Heap[n_33, r_11] } { QPMask[n_33, r_11] } { Heap[n_33, r_11] }
            g0[n_33] ==> FullPerm > NoPerm ==> Mask[n_33, r_11] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_33: Ref ::
            { Heap[n_33, r_11] } { QPMask[n_33, r_11] } { Heap[n_33, r_11] }
            g0[n_33] && NoPerm < FullPerm ==> qpRange176(n_33) && invRecv176(n_33) == n_33
          );
          assume (forall o_9: Ref ::
            { invRecv176(o_9) }
            g0[invRecv176(o_9)] && (NoPerm < FullPerm && qpRange176(o_9)) ==> invRecv176(o_9) == o_9
          );
        if (*) {
          if (g1[n$0_10_1]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$0 in g0)) might not hold. (create_edge1.vpr@381.12--381.34) [12411]"}
              !g0[n$0_10_1];
          }
          assume false;
        }
        assume (forall n$0_11_1: Ref ::
          { g1[n$0_11_1], g0[n$0_11_1] }
          g1[n$0_11_1] ==> !g0[n$0_11_1]
        );
        if (*) {
          if (g0[n$1_4]) {
            assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion !((n$1 in g1)) might not hold. (create_edge1.vpr@381.12--381.34) [12412]"}
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x0.l (create_edge1.vpr@382.10--382.22) [12413]"}
        HasDirectPerm(Mask, x0, l);
    if (Heap[x0, l] == null) {
      
      // -- Translating statement: link_left((g0 union g1), x0, x1) -- create_edge1.vpr@384.9--384.37
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_g := Set#Union(g0, g1);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [12414]"}
            arg_g[x0];
          if (x1 != null) {
            assert {:msg "  The precondition of method link_left might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [12415]"}
              arg_g[x1];
          }
          assert {:msg "  The precondition of method link_left might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@384.9--384.37) [12416]"}
            !arg_g[null];
          assert {:msg "  The precondition of method link_left might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [12417]"}
            arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [12418]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@384.9--384.37) [12419]"}
              perm <= Mask[x0, l];
          }
          Mask := Mask[x0, l:=Mask[x0, l] - perm];
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_left might not hold. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [12420]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@384.9--384.37) [12421]"}
              perm <= Mask[x0, r_11];
          }
          Mask := Mask[x0, r_11:=Mask[x0, r_11] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [12422]"}
              (forall n_34_2: Ref ::
              { Heap[n_34_2, l] } { QPMask[n_34_2, l] } { Heap[n_34_2, l] }
              (arg_g[n_34_2] && n_34_2 != x0) && dummyFunction(Heap[n_34_2, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@384.9--384.37) [12423]"}
              (forall n_34_2: Ref, n_34_3: Ref ::
              { neverTriggered177(n_34_2), neverTriggered177(n_34_3) }
              (((n_34_2 != n_34_3 && (arg_g[n_34_2] && n_34_2 != x0)) && (arg_g[n_34_3] && n_34_3 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_34_2 != n_34_3
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@384.9--384.37) [12424]"}
              (forall n_34_2: Ref ::
              { Heap[n_34_2, l] } { QPMask[n_34_2, l] } { Heap[n_34_2, l] }
              arg_g[n_34_2] && n_34_2 != x0 ==> Mask[n_34_2, l] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_34_2: Ref ::
              { Heap[n_34_2, l] } { QPMask[n_34_2, l] } { Heap[n_34_2, l] }
              (arg_g[n_34_2] && n_34_2 != x0) && NoPerm < 1 / 2 ==> qpRange177(n_34_2) && invRecv177(n_34_2) == n_34_2
            );
            assume (forall o_9: Ref ::
              { invRecv177(o_9) }
              (arg_g[invRecv177(o_9)] && invRecv177(o_9) != x0) && (NoPerm < 1 / 2 && qpRange177(o_9)) ==> invRecv177(o_9) == o_9
            );
          
          // -- assume permission updates for field l
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              ((arg_g[invRecv177(o_9)] && invRecv177(o_9) != x0) && (NoPerm < 1 / 2 && qpRange177(o_9)) ==> invRecv177(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((arg_g[invRecv177(o_9)] && invRecv177(o_9) != x0) && (NoPerm < 1 / 2 && qpRange177(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_left might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [12425]"}
              (forall n$0_12_1: Ref ::
              { Heap[n$0_12_1, r_11] } { QPMask[n$0_12_1, r_11] } { Heap[n$0_12_1, r_11] }
              (arg_g[n$0_12_1] && n$0_12_1 != x0) && dummyFunction(Heap[n$0_12_1, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_left might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@384.9--384.37) [12426]"}
              (forall n$0_12_1: Ref, n$0_12_2: Ref ::
              { neverTriggered178(n$0_12_1), neverTriggered178(n$0_12_2) }
              (((n$0_12_1 != n$0_12_2 && (arg_g[n$0_12_1] && n$0_12_1 != x0)) && (arg_g[n$0_12_2] && n$0_12_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_12_1 != n$0_12_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_left might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@384.9--384.37) [12427]"}
              (forall n$0_12_1: Ref ::
              { Heap[n$0_12_1, r_11] } { QPMask[n$0_12_1, r_11] } { Heap[n$0_12_1, r_11] }
              arg_g[n$0_12_1] && n$0_12_1 != x0 ==> Mask[n$0_12_1, r_11] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_12_1: Ref ::
              { Heap[n$0_12_1, r_11] } { QPMask[n$0_12_1, r_11] } { Heap[n$0_12_1, r_11] }
              (arg_g[n$0_12_1] && n$0_12_1 != x0) && NoPerm < 1 / 2 ==> qpRange178(n$0_12_1) && invRecv178(n$0_12_1) == n$0_12_1
            );
            assume (forall o_9: Ref ::
              { invRecv178(o_9) }
              (arg_g[invRecv178(o_9)] && invRecv178(o_9) != x0) && (NoPerm < 1 / 2 && qpRange178(o_9)) ==> invRecv178(o_9) == o_9
            );
          
          // -- assume permission updates for field r
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              ((arg_g[invRecv178(o_9)] && invRecv178(o_9) != x0) && (NoPerm < 1 / 2 && qpRange178(o_9)) ==> invRecv178(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((arg_g[invRecv178(o_9)] && invRecv178(o_9) != x0) && (NoPerm < 1 / 2 && qpRange178(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g[n$1_6] && Heap[n$1_6, l] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [12428]"}
                arg_g[Heap[n$1_6, l]];
            }
            assume false;
          }
          assume (forall n$1_7_1: Ref ::
            { arg_g[Heap[n$1_7_1, l]] } { arg_g[n$1_7_1], Heap[n$1_7_1, l] }
            arg_g[n$1_7_1] && Heap[n$1_7_1, l] != null ==> arg_g[Heap[n$1_7_1, l]]
          );
          if (*) {
            if (arg_g[n$2_2] && Heap[n$2_2, r_11] != null) {
              assert {:msg "  The precondition of method link_left might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@384.9--384.37) [12429]"}
                arg_g[Heap[n$2_2, r_11]];
            }
            assume false;
          }
          assume (forall n$2_3_1: Ref ::
            { arg_g[Heap[n$2_3_1, r_11]] } { arg_g[n$2_3_1], Heap[n$2_3_1, r_11] }
            arg_g[n$2_3_1] && Heap[n$2_3_1, r_11] != null ==> arg_g[Heap[n$2_3_1, r_11]]
          );
          assert {:msg "  The precondition of method link_left might not hold. Assertion x0.l == null might not hold. (create_edge1.vpr@384.9--384.37) [12430]"}
            Heap[x0, l] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g[null];
          assume arg_g[x0];
          perm := (if __left__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [12431]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l:=Mask[x0, l] + perm];
          assume state(Heap, Mask);
          perm := (if __left__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__left__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@384.9--384.37) [12432]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_11:=Mask[x0, r_11] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@384.9--384.37) [12433]"}
            (forall n$3_2: Ref, n$3_2_1: Ref ::
            
            (((n$3_2 != n$3_2_1 && (arg_g[n$3_2] && n$3_2 != x0)) && (arg_g[n$3_2_1] && n$3_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_2 != n$3_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
              (arg_g[n$3_2] && n$3_2 != x0) && NoPerm < 1 / 2 ==> qpRange179(n$3_2) && invRecv179(n$3_2) == n$3_2
            );
            assume (forall o_9: Ref ::
              { invRecv179(o_9) }
              ((arg_g[invRecv179(o_9)] && invRecv179(o_9) != x0) && NoPerm < 1 / 2) && qpRange179(o_9) ==> invRecv179(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [12434]"}
            (forall n$3_2: Ref ::
            { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
            arg_g[n$3_2] && n$3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_2: Ref ::
              { Heap[n$3_2, l] } { QPMask[n$3_2, l] } { Heap[n$3_2, l] }
              (arg_g[n$3_2] && n$3_2 != x0) && 1 / 2 > NoPerm ==> n$3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              (((arg_g[invRecv179(o_9)] && invRecv179(o_9) != x0) && NoPerm < 1 / 2) && qpRange179(o_9) ==> (NoPerm < 1 / 2 ==> invRecv179(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((arg_g[invRecv179(o_9)] && invRecv179(o_9) != x0) && NoPerm < 1 / 2) && qpRange179(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@384.9--384.37) [12435]"}
            (forall n$4_2: Ref, n$4_2_1: Ref ::
            
            (((n$4_2 != n$4_2_1 && (arg_g[n$4_2] && n$4_2 != x0)) && (arg_g[n$4_2_1] && n$4_2_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_2 != n$4_2_1
          );
          
          // -- Define Inverse Function
            assume (forall n$4_2: Ref ::
              { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
              (arg_g[n$4_2] && n$4_2 != x0) && NoPerm < 1 / 2 ==> qpRange180(n$4_2) && invRecv180(n$4_2) == n$4_2
            );
            assume (forall o_9: Ref ::
              { invRecv180(o_9) }
              ((arg_g[invRecv180(o_9)] && invRecv180(o_9) != x0) && NoPerm < 1 / 2) && qpRange180(o_9) ==> invRecv180(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@384.9--384.37) [12436]"}
            (forall n$4_2: Ref ::
            { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
            arg_g[n$4_2] && n$4_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_2: Ref ::
              { Heap[n$4_2, r_11] } { QPMask[n$4_2, r_11] } { Heap[n$4_2, r_11] }
              (arg_g[n$4_2] && n$4_2 != x0) && 1 / 2 > NoPerm ==> n$4_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              (((arg_g[invRecv180(o_9)] && invRecv180(o_9) != x0) && NoPerm < 1 / 2) && qpRange180(o_9) ==> (NoPerm < 1 / 2 ==> invRecv180(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((arg_g[invRecv180(o_9)] && invRecv180(o_9) != x0) && NoPerm < 1 / 2) && qpRange180(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_2: Ref ::
            { arg_g[Heap[n$5_2, l]] } { arg_g[n$5_2], Heap[n$5_2, l] }
            arg_g[n$5_2] && Heap[n$5_2, l] != null ==> arg_g[Heap[n$5_2, l]]
          );
          assume (forall n$6_2: Ref ::
            { arg_g[Heap[n$6_2, r_11]] } { arg_g[n$6_2], Heap[n$6_2, r_11] }
            arg_g[n$6_2] && Heap[n$6_2, r_11] != null ==> arg_g[Heap[n$6_2, r_11]]
          );
          assume Heap[x0, l] == x1;
          if (x1 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g), $$(PreCallHeap, arg_g));
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1: Ref, v2: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g)), FrameFragment($$#condqp2(PreCallHeap, arg_g))), arg_g), v1, v2): bool) }
              (edge($$(Heap, arg_g), v1, v2): bool) == ((edge($$(PreCallHeap, arg_g), v1, v2): bool) || (v1 == x0 && v2 == x1))
            );
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_1: Ref, v2_1: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g)), FrameFragment($$#condqp2(Heap, arg_g))), arg_g), v1_1, v2_1): bool) }
              v1_1 != v2_1 ==> (exists_path($$(Heap, arg_g), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, arg_g), v1_1, v2_1): bool) || ((exists_path($$(PreCallHeap, arg_g), v1_1, x0): bool) && (exists_path($$(PreCallHeap, arg_g), x1, v2_1): bool)))
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
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [12437]"}
            arg_g_1[x0];
          if (x1 != null) {
            assert {:msg "  The precondition of method link_right might not hold. Assertion (x1 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [12438]"}
              arg_g_1[x1];
          }
          assert {:msg "  The precondition of method link_right might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@387.9--387.38) [12439]"}
            !arg_g_1[null];
          assert {:msg "  The precondition of method link_right might not hold. Assertion (x0 in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [12440]"}
            arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [12441]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.l (create_edge1.vpr@387.9--387.38) [12442]"}
              perm <= Mask[x0, l];
          }
          Mask := Mask[x0, l:=Mask[x0, l] - perm];
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  The precondition of method link_right might not hold. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [12443]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access x0.r (create_edge1.vpr@387.9--387.38) [12444]"}
              perm <= Mask[x0, r_11];
          }
          Mask := Mask[x0, r_11:=Mask[x0, r_11] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [12445]"}
              (forall n_35: Ref ::
              { Heap[n_35, l] } { QPMask[n_35, l] } { Heap[n_35, l] }
              (arg_g_1[n_35] && n_35 != x0) && dummyFunction(Heap[n_35, l]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n.l might not be injective. (create_edge1.vpr@387.9--387.38) [12446]"}
              (forall n_35: Ref, n_35_1: Ref ::
              { neverTriggered181(n_35), neverTriggered181(n_35_1) }
              (((n_35 != n_35_1 && (arg_g_1[n_35] && n_35 != x0)) && (arg_g_1[n_35_1] && n_35_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_35 != n_35_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n.l (create_edge1.vpr@387.9--387.38) [12447]"}
              (forall n_35: Ref ::
              { Heap[n_35, l] } { QPMask[n_35, l] } { Heap[n_35, l] }
              arg_g_1[n_35] && n_35 != x0 ==> Mask[n_35, l] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_35: Ref ::
              { Heap[n_35, l] } { QPMask[n_35, l] } { Heap[n_35, l] }
              (arg_g_1[n_35] && n_35 != x0) && NoPerm < 1 / 2 ==> qpRange181(n_35) && invRecv181(n_35) == n_35
            );
            assume (forall o_9: Ref ::
              { invRecv181(o_9) }
              (arg_g_1[invRecv181(o_9)] && invRecv181(o_9) != x0) && (NoPerm < 1 / 2 && qpRange181(o_9)) ==> invRecv181(o_9) == o_9
            );
          
          // -- assume permission updates for field l
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              ((arg_g_1[invRecv181(o_9)] && invRecv181(o_9) != x0) && (NoPerm < 1 / 2 && qpRange181(o_9)) ==> invRecv181(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - 1 / 2) && (!((arg_g_1[invRecv181(o_9)] && invRecv181(o_9) != x0) && (NoPerm < 1 / 2 && qpRange181(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method link_right might not hold. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [12448]"}
              (forall n$0_13_1: Ref ::
              { Heap[n$0_13_1, r_11] } { QPMask[n$0_13_1, r_11] } { Heap[n$0_13_1, r_11] }
              (arg_g_1[n$0_13_1] && n$0_13_1 != x0) && dummyFunction(Heap[n$0_13_1, r_11]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n$0 is injective
            assert {:msg "  The precondition of method link_right might not hold. Quantified resource n$0.r might not be injective. (create_edge1.vpr@387.9--387.38) [12449]"}
              (forall n$0_13_1: Ref, n$0_13_2: Ref ::
              { neverTriggered182(n$0_13_1), neverTriggered182(n$0_13_2) }
              (((n$0_13_1 != n$0_13_2 && (arg_g_1[n$0_13_1] && n$0_13_1 != x0)) && (arg_g_1[n$0_13_2] && n$0_13_2 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_13_1 != n$0_13_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method link_right might not hold. There might be insufficient permission to access n$0.r (create_edge1.vpr@387.9--387.38) [12450]"}
              (forall n$0_13_1: Ref ::
              { Heap[n$0_13_1, r_11] } { QPMask[n$0_13_1, r_11] } { Heap[n$0_13_1, r_11] }
              arg_g_1[n$0_13_1] && n$0_13_1 != x0 ==> Mask[n$0_13_1, r_11] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n$0
            assume (forall n$0_13_1: Ref ::
              { Heap[n$0_13_1, r_11] } { QPMask[n$0_13_1, r_11] } { Heap[n$0_13_1, r_11] }
              (arg_g_1[n$0_13_1] && n$0_13_1 != x0) && NoPerm < 1 / 2 ==> qpRange182(n$0_13_1) && invRecv182(n$0_13_1) == n$0_13_1
            );
            assume (forall o_9: Ref ::
              { invRecv182(o_9) }
              (arg_g_1[invRecv182(o_9)] && invRecv182(o_9) != x0) && (NoPerm < 1 / 2 && qpRange182(o_9)) ==> invRecv182(o_9) == o_9
            );
          
          // -- assume permission updates for field r
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              ((arg_g_1[invRecv182(o_9)] && invRecv182(o_9) != x0) && (NoPerm < 1 / 2 && qpRange182(o_9)) ==> invRecv182(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - 1 / 2) && (!((arg_g_1[invRecv182(o_9)] && invRecv182(o_9) != x0) && (NoPerm < 1 / 2 && qpRange182(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (arg_g_1[n$1_8_1] && Heap[n$1_8_1, l] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$1.l in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [12451]"}
                arg_g_1[Heap[n$1_8_1, l]];
            }
            assume false;
          }
          assume (forall n$1_9_1: Ref ::
            { arg_g_1[Heap[n$1_9_1, l]] } { arg_g_1[n$1_9_1], Heap[n$1_9_1, l] }
            arg_g_1[n$1_9_1] && Heap[n$1_9_1, l] != null ==> arg_g_1[Heap[n$1_9_1, l]]
          );
          if (*) {
            if (arg_g_1[n$2_4_1] && Heap[n$2_4_1, r_11] != null) {
              assert {:msg "  The precondition of method link_right might not hold. Assertion (n$2.r in (g0 union g1)) might not hold. (create_edge1.vpr@387.9--387.38) [12452]"}
                arg_g_1[Heap[n$2_4_1, r_11]];
            }
            assume false;
          }
          assume (forall n$2_5_1_1: Ref ::
            { arg_g_1[Heap[n$2_5_1_1, r_11]] } { arg_g_1[n$2_5_1_1], Heap[n$2_5_1_1, r_11] }
            arg_g_1[n$2_5_1_1] && Heap[n$2_5_1_1, r_11] != null ==> arg_g_1[Heap[n$2_5_1_1, r_11]]
          );
          assert {:msg "  The precondition of method link_right might not hold. Assertion x0.r == null might not hold. (create_edge1.vpr@387.9--387.38) [12453]"}
            Heap[x0, r_11] == null;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !arg_g_1[null];
          assume arg_g_1[x0];
          perm := (if __right__ == __left__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __left__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [12454]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, l:=Mask[x0, l] + perm];
          assume state(Heap, Mask);
          perm := (if __right__ == __right__ then FullPerm else 1 / 2);
          assert {:msg "  Method call might fail. Fraction (__right__() == __right__() ? write : 1 / 2) might be negative. (create_edge1.vpr@387.9--387.38) [12455]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x0 != null;
          Mask := Mask[x0, r_11:=Mask[x0, r_11] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$3.l might not be injective. (create_edge1.vpr@387.9--387.38) [12456]"}
            (forall n$3_3: Ref, n$3_3_1: Ref ::
            
            (((n$3_3 != n$3_3_1 && (arg_g_1[n$3_3] && n$3_3 != x0)) && (arg_g_1[n$3_3_1] && n$3_3_1 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$3_3 != n$3_3_1
          );
          
          // -- Define Inverse Function
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && NoPerm < 1 / 2 ==> qpRange183(n$3_3) && invRecv183(n$3_3) == n$3_3
            );
            assume (forall o_9: Ref ::
              { invRecv183(o_9) }
              ((arg_g_1[invRecv183(o_9)] && invRecv183(o_9) != x0) && NoPerm < 1 / 2) && qpRange183(o_9) ==> invRecv183(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [12457]"}
            (forall n$3_3: Ref ::
            { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
            arg_g_1[n$3_3] && n$3_3 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$3_3: Ref ::
              { Heap[n$3_3, l] } { QPMask[n$3_3, l] } { Heap[n$3_3, l] }
              (arg_g_1[n$3_3] && n$3_3 != x0) && 1 / 2 > NoPerm ==> n$3_3 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, l] }
              (((arg_g_1[invRecv183(o_9)] && invRecv183(o_9) != x0) && NoPerm < 1 / 2) && qpRange183(o_9) ==> (NoPerm < 1 / 2 ==> invRecv183(o_9) == o_9) && QPMask[o_9, l] == Mask[o_9, l] + 1 / 2) && (!(((arg_g_1[invRecv183(o_9)] && invRecv183(o_9) != x0) && NoPerm < 1 / 2) && qpRange183(o_9)) ==> QPMask[o_9, l] == Mask[o_9, l])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$4.r might not be injective. (create_edge1.vpr@387.9--387.38) [12458]"}
            (forall n$4_3_2: Ref, n$4_3_3: Ref ::
            
            (((n$4_3_2 != n$4_3_3 && (arg_g_1[n$4_3_2] && n$4_3_2 != x0)) && (arg_g_1[n$4_3_3] && n$4_3_3 != x0)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$4_3_2 != n$4_3_3
          );
          
          // -- Define Inverse Function
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
              (arg_g_1[n$4_3_2] && n$4_3_2 != x0) && NoPerm < 1 / 2 ==> qpRange184(n$4_3_2) && invRecv184(n$4_3_2) == n$4_3_2
            );
            assume (forall o_9: Ref ::
              { invRecv184(o_9) }
              ((arg_g_1[invRecv184(o_9)] && invRecv184(o_9) != x0) && NoPerm < 1 / 2) && qpRange184(o_9) ==> invRecv184(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (create_edge1.vpr@387.9--387.38) [12459]"}
            (forall n$4_3_2: Ref ::
            { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
            arg_g_1[n$4_3_2] && n$4_3_2 != x0 ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$4_3_2: Ref ::
              { Heap[n$4_3_2, r_11] } { QPMask[n$4_3_2, r_11] } { Heap[n$4_3_2, r_11] }
              (arg_g_1[n$4_3_2] && n$4_3_2 != x0) && 1 / 2 > NoPerm ==> n$4_3_2 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, r_11] }
              (((arg_g_1[invRecv184(o_9)] && invRecv184(o_9) != x0) && NoPerm < 1 / 2) && qpRange184(o_9) ==> (NoPerm < 1 / 2 ==> invRecv184(o_9) == o_9) && QPMask[o_9, r_11] == Mask[o_9, r_11] + 1 / 2) && (!(((arg_g_1[invRecv184(o_9)] && invRecv184(o_9) != x0) && NoPerm < 1 / 2) && qpRange184(o_9)) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$5_3_2: Ref ::
            { arg_g_1[Heap[n$5_3_2, l]] } { arg_g_1[n$5_3_2], Heap[n$5_3_2, l] }
            arg_g_1[n$5_3_2] && Heap[n$5_3_2, l] != null ==> arg_g_1[Heap[n$5_3_2, l]]
          );
          assume (forall n$6_3_2: Ref ::
            { arg_g_1[Heap[n$6_3_2, r_11]] } { arg_g_1[n$6_3_2], Heap[n$6_3_2, r_11] }
            arg_g_1[n$6_3_2] && Heap[n$6_3_2, r_11] != null ==> arg_g_1[Heap[n$6_3_2, r_11]]
          );
          assume Heap[x0, r_11] == x1;
          if (x1 == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, arg_g_1), $$(PreCallHeap, arg_g_1));
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_2_1: Ref, v2_2_1: Ref ::
              { (edge($$#frame(CombineFrames(FrameFragment($$#condqp1(PreCallHeap, arg_g_1)), FrameFragment($$#condqp2(PreCallHeap, arg_g_1))), arg_g_1), v1_2_1, v2_2_1): bool) }
              (edge($$(Heap, arg_g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, arg_g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == x0 && v2_2_1 == x1))
            );
          }
          if (x1 != null) {
            assume state(Heap, Mask);
            assume (forall v1_3: Ref, v2_3: Ref ::
              { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, arg_g_1)), FrameFragment($$#condqp2(Heap, arg_g_1))), arg_g_1), v1_3, v2_3): bool) }
              v1_3 != v2_3 ==> (exists_path($$(Heap, arg_g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, arg_g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, arg_g_1), v1_3, x0): bool) && (exists_path($$(PreCallHeap, arg_g_1), x1, v2_3): bool)))
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion !((null in (g0 union g1))) might not hold. (create_edge1.vpr@365.13--365.31) [12460]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$9 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$9.l might not be injective. (create_edge1.vpr@365.13--365.31) [12461]"}
        (forall n$9_2: Ref, n$9_2_1: Ref ::
        { neverTriggered159(n$9_2), neverTriggered159(n$9_2_1) }
        (((n$9_2 != n$9_2_1 && Set#Union(g0, g1)[n$9_2]) && Set#Union(g0, g1)[n$9_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$9_2 != n$9_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of connect_DAGs might not hold. There might be insufficient permission to access n$9.l (create_edge1.vpr@365.13--365.31) [12462]"}
        (forall n$9_2: Ref ::
        { Heap[n$9_2, l] } { QPMask[n$9_2, l] } { Heap[n$9_2, l] }
        Set#Union(g0, g1)[n$9_2] ==> Mask[n$9_2, l] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$9
      assume (forall n$9_2: Ref ::
        { Heap[n$9_2, l] } { QPMask[n$9_2, l] } { Heap[n$9_2, l] }
        Set#Union(g0, g1)[n$9_2] && NoPerm < FullPerm ==> qpRange159(n$9_2) && invRecv159(n$9_2) == n$9_2
      );
      assume (forall o_9: Ref ::
        { invRecv159(o_9) }
        Set#Union(g0, g1)[invRecv159(o_9)] && (NoPerm < FullPerm && qpRange159(o_9)) ==> invRecv159(o_9) == o_9
      );
    
    // -- assume permission updates for field l
      assume (forall o_9: Ref ::
        { QPMask[o_9, l] }
        (Set#Union(g0, g1)[invRecv159(o_9)] && (NoPerm < FullPerm && qpRange159(o_9)) ==> invRecv159(o_9) == o_9 && QPMask[o_9, l] == Mask[o_9, l] - FullPerm) && (!(Set#Union(g0, g1)[invRecv159(o_9)] && (NoPerm < FullPerm && qpRange159(o_9))) ==> QPMask[o_9, l] == Mask[o_9, l])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != l ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$10 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$10.r might not be injective. (create_edge1.vpr@365.13--365.31) [12463]"}
        (forall n$10_2: Ref, n$10_2_1: Ref ::
        { neverTriggered160(n$10_2), neverTriggered160(n$10_2_1) }
        (((n$10_2 != n$10_2_1 && Set#Union(g0, g1)[n$10_2]) && Set#Union(g0, g1)[n$10_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$10_2 != n$10_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of connect_DAGs might not hold. There might be insufficient permission to access n$10.r (create_edge1.vpr@365.13--365.31) [12464]"}
        (forall n$10_2: Ref ::
        { Heap[n$10_2, r_11] } { QPMask[n$10_2, r_11] } { Heap[n$10_2, r_11] }
        Set#Union(g0, g1)[n$10_2] ==> Mask[n$10_2, r_11] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$10
      assume (forall n$10_2: Ref ::
        { Heap[n$10_2, r_11] } { QPMask[n$10_2, r_11] } { Heap[n$10_2, r_11] }
        Set#Union(g0, g1)[n$10_2] && NoPerm < FullPerm ==> qpRange160(n$10_2) && invRecv160(n$10_2) == n$10_2
      );
      assume (forall o_9: Ref ::
        { invRecv160(o_9) }
        Set#Union(g0, g1)[invRecv160(o_9)] && (NoPerm < FullPerm && qpRange160(o_9)) ==> invRecv160(o_9) == o_9
      );
    
    // -- assume permission updates for field r
      assume (forall o_9: Ref ::
        { QPMask[o_9, r_11] }
        (Set#Union(g0, g1)[invRecv160(o_9)] && (NoPerm < FullPerm && qpRange160(o_9)) ==> invRecv160(o_9) == o_9 && QPMask[o_9, r_11] == Mask[o_9, r_11] - FullPerm) && (!(Set#Union(g0, g1)[invRecv160(o_9)] && (NoPerm < FullPerm && qpRange160(o_9))) ==> QPMask[o_9, r_11] == Mask[o_9, r_11])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != r_11 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$11_2] && Heap[n$11_2, l] != null) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion (n$11.l in (g0 union g1)) might not hold. (create_edge1.vpr@365.13--365.31) [12465]"}
          Set#Union(g0, g1)[Heap[n$11_2, l]];
      }
      assume false;
    }
    assume (forall n$11_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$11_3_1, l]] } { Set#Union(g0, g1)[n$11_3_1], Heap[n$11_3_1, l] }
      Set#Union(g0, g1)[n$11_3_1] && Heap[n$11_3_1, l] != null ==> Set#Union(g0, g1)[Heap[n$11_3_1, l]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n$12_2] && Heap[n$12_2, r_11] != null) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion (n$12.r in (g0 union g1)) might not hold. (create_edge1.vpr@365.13--365.31) [12466]"}
          Set#Union(g0, g1)[Heap[n$12_2, r_11]];
      }
      assume false;
    }
    assume (forall n$12_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$12_3_1, r_11]] } { Set#Union(g0, g1)[n$12_3_1], Heap[n$12_3_1, r_11] }
      Set#Union(g0, g1)[n$12_3_1] && Heap[n$12_3_1, r_11] != null ==> Set#Union(g0, g1)[Heap[n$12_3_1, r_11]]
    );
    if (*) {
      if (Set#Union(g0, g1)[n_16_1]) {
        assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion exists_path($$((g0 union g1)), x, n) might not hold. (create_edge1.vpr@366.13--366.121) [12467]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), x, n_16_1): bool);
      }
      assume false;
    }
    assume (forall n_17_1_1: Ref ::
      { (exists_path($$#frame(CombineFrames(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), FrameFragment($$#condqp2(Heap, Set#Union(g0, g1)))), Set#Union(g0, g1)), x, n_17_1_1): bool) }
      Set#Union(g0, g1)[n_17_1_1] ==> (exists_path($$(Heap, Set#Union(g0, g1)), x, n_17_1_1): bool)
    );
    assert {:msg "  Postcondition of connect_DAGs might not hold. Assertion acyclic_graph($$((g0 union g1))) might not hold. (create_edge1.vpr@368.13--368.43) [12468]"}
      (acyclic_graph($$(Heap, Set#Union(g0, g1))): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}