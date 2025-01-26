// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/ring-insert.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/examples/ring-insert-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_47: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_47] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_47], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_35: Ref, f_48: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_35, f_48] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_35, f_48) ==> Heap[o_35, f_48] == ExhaleHeap[o_35, f_48]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_16, f_48] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_48] ==> Heap[o2_16, f_48] == ExhaleHeap[o2_16, f_48]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_48: (Field A B) ::
    { ExhaleHeap[o2_16, f_48] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_48] ==> Heap[o2_16, f_48] == ExhaleHeap[o2_16, f_48]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_35: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_35, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_35, $allocated] ==> ExhaleHeap[o_35, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_49: (Field A B), v: B ::
  { Heap[o_34, f_49:=v] }
  succHeap(Heap, Heap[o_34, f_49:=v])
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
function  neverTriggered12(n_16_1: Ref): bool;
function  neverTriggered13(n_1: Ref): bool;
function  neverTriggered14(n$1_1: Ref): bool;
function  neverTriggered15(n_2: Ref): bool;
function  neverTriggered16(n_3: Ref): bool;
function  neverTriggered17(n_4: Ref): bool;
function  neverTriggered18(n_5: Ref): bool;
function  neverTriggered19(n_6: Ref): bool;
function  neverTriggered20(n_7: Ref): bool;
function  neverTriggered21(n_8: Ref): bool;
function  neverTriggered22(n$1_2: Ref): bool;
function  neverTriggered23(n_1: Ref): bool;
function  neverTriggered24(n_2: Ref): bool;
function  neverTriggered25(n$1_1: Ref): bool;
function  neverTriggered26(n_3: Ref): bool;
function  neverTriggered27(n_4: Ref): bool;
function  neverTriggered28(n_5: Ref): bool;
function  neverTriggered29(n_6: Ref): bool;
function  neverTriggered30(n_7: Ref): bool;
function  neverTriggered31(n_8: Ref): bool;
function  neverTriggered32(n_9: Ref): bool;
function  neverTriggered33(n_10_1: Ref): bool;
function  neverTriggered34(n_11_2: Ref): bool;
function  neverTriggered35(n_12: Ref): bool;
function  neverTriggered36(n_13_2: Ref): bool;
function  neverTriggered37(n_14_1: Ref): bool;
function  neverTriggered38(n_15: Ref): bool;
function  neverTriggered39(n_16_1: Ref): bool;
function  neverTriggered40(n_17: Ref): bool;
function  neverTriggered41(n_18: Ref): bool;
function  neverTriggered42(n_19: Ref): bool;
function  neverTriggered43(n_20: Ref): bool;
function  neverTriggered44(n$0_2: Ref): bool;
function  neverTriggered45(n$0_3: Ref): bool;
function  neverTriggered46(n$0_4: Ref): bool;
function  neverTriggered47(n$0_5: Ref): bool;
function  neverTriggered48(n$0_6: Ref): bool;
function  neverTriggered49(n$1_2: Ref): bool;
function  neverTriggered50(n_1: Ref): bool;
function  neverTriggered51(n$0_2: Ref): bool;
function  neverTriggered52(n$0_3: Ref): bool;
function  neverTriggered53(n_5: Ref): bool;
function  neverTriggered54(n$1_1: Ref): bool;
function  neverTriggered55(n_11_2: Ref): bool;
function  neverTriggered56(n$0_4: Ref): bool;
function  neverTriggered57(n$0_5: Ref): bool;
function  neverTriggered58(n$1_2: Ref): bool;
function  neverTriggered59(n_18: Ref): bool;
function  neverTriggered60(n$3_4: Ref): bool;
function  neverTriggered61(n_27: Ref): bool;
function  neverTriggered62(n$3_2: Ref): bool;
function  neverTriggered63(n$0_6: Ref): bool;
function  neverTriggered64(n$0_7: Ref): bool;
function  neverTriggered65(n_35: Ref): bool;
function  neverTriggered66(n$3_3: Ref): bool;
function  neverTriggered67(n_41: Ref): bool;
function  neverTriggered68(n$3_4_1: Ref): bool;
function  neverTriggered69(n_46: Ref): bool;
function  neverTriggered70(n$3_5_1: Ref): bool;
function  neverTriggered71(n_52_1: Ref): bool;
function  neverTriggered72(n_55_1: Ref): bool;
function  neverTriggered73(n_56_1: Ref): bool;
function  neverTriggered74(n_57_1: Ref): bool;
function  neverTriggered75(n$1_3: Ref): bool;
function  neverTriggered76(n_58_1: Ref): bool;
function  neverTriggered77(n$1_4: Ref): bool;
function  neverTriggered78(n_63_1: Ref): bool;
function  neverTriggered79(n$1_5: Ref): bool;
function  neverTriggered80(n_64_1: Ref): bool;
function  neverTriggered81(n$1_6: Ref): bool;
function  neverTriggered82(n$0_16_1: Ref): bool;
function  neverTriggered83(n$0_17_2: Ref): bool;
function  neverTriggered84(n_1: Ref): bool;
function  neverTriggered85(n$0_2: Ref): bool;
function  neverTriggered86(n$0_3: Ref): bool;
function  neverTriggered87(n$1_1: Ref): bool;
function  neverTriggered88(n$0_4: Ref): bool;
function  neverTriggered89(n$0_5: Ref): bool;
function  neverTriggered90(n$1_2: Ref): bool;
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
  (exists_path(EG_1, u_1, w_2): bool) && (exists_path(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_1, v_2): bool)
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
// Translation of domain ZeroOnePathGraphTCs
// ==================================================

// The type for domain ZeroOnePathGraphTCs
type ZeroOnePathGraphTCsDomainType;

// Translation of domain function DEP
function  DEP(EG: (Set EdgeDomainType), x_37: Ref, y_2: Ref, u_29: Ref, v_29: Ref): bool;

// Translation of domain function DEP_
function  DEP_(EG: (Set EdgeDomainType), x_37: Ref, y_2: Ref, u_29: Ref, v_29: Ref): bool;

// Translation of domain axiom ax_DEP_alias
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, u_1: Ref, v_2: Ref ::
  { (DEP(EG_1, x, y, u_1, v_2): bool) }
  (DEP(EG_1, x, y, u_1, v_2): bool) == (DEP_(EG_1, x, y, u_1, v_2): bool)
);

// Translation of domain axiom ax_DEP_0_2
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref ::
  { (DEP(EG_1, x, y, x, y): bool) } { (edge(EG_1, x, y): bool) }
  (edge(EG_1, x, y): bool) == (DEP_(EG_1, x, y, x, y): bool)
);

// Translation of domain axiom ax_HeadTriangleImposable
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, v_2: Ref ::
  { (DEP(EG_1, x, y, x, v_2): bool) } { (exists_path_(EG_1, x, y): bool), (exists_path(EG_1, v_2, y): bool) } { (edge(EG_1, x, v_2): bool), (exists_path_(EG_1, v_2, y): bool) }
  (exists_path_(EG_1, x, y): bool) && ((edge(EG_1, x, v_2): bool) && (exists_path_(EG_1, v_2, y): bool)) ==> (DEP_(EG_1, x, y, x, v_2): bool)
);

// Translation of domain axiom ax_TailTriangleImposable
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, u_1: Ref ::
  { (DEP(EG_1, x, y, u_1, y): bool) } { (exists_path_(EG_1, x, y): bool), (exists_path(EG_1, x, u_1): bool) } { (edge(EG_1, u_1, y): bool), (exists_path_(EG_1, x, u_1): bool) }
  (exists_path_(EG_1, x, y): bool) && ((exists_path_(EG_1, x, u_1): bool) && (edge(EG_1, u_1, y): bool)) ==> (DEP_(EG_1, x, y, u_1, y): bool)
);

// Translation of domain axiom ax_NoEdgeNoDEP
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, u_1: Ref, v_2: Ref ::
  { (DEP(EG_1, x, y, u_1, v_2): bool) }
  !(edge(EG_1, u_1, v_2): bool) ==> !(DEP_(EG_1, x, y, u_1, v_2): bool)
);

// Translation of domain axiom ax_DEP_trigger_magic
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, u_1: Ref, v_2: Ref ::
  { (DEP(EG_1, x, y, u_1, v_2): bool) }
  (DEP(EG_1, x, y, u_1, v_2): bool) ==> (exists_path(EG_1, x, y): bool) && (edge(EG_1, u_1, v_2): bool)
);

// Translation of domain axiom ax_DEP_6_head
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, n: Ref ::
  { (DEP(EG_1, y, n, x, y): bool) }
  n != y ==> !(DEP_(EG_1, y, n, x, y): bool)
);

// Translation of domain axiom ax_DEP_6_tail
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, y: Ref, n: Ref ::
  { (DEP(EG_1, n, x, x, y): bool) }
  n != x ==> !(DEP_(EG_1, n, x, x, y): bool)
);

// Translation of domain axiom ax_DEP_7
axiom (forall EG_1: (Set EdgeDomainType), nu: Ref, n: Ref, mu: Ref, sigma: Ref ::
  { (DEP(EG_1, nu, n, mu, sigma): bool) }
  nu != n && (n != sigma && (nu != mu && ((edge(EG_1, nu, sigma): bool) && (edge(EG_1, mu, sigma): bool)))) ==> !(DEP_(EG_1, nu, n, mu, sigma): bool)
);

// ==================================================
// Translation of domain TriggerWisdoms
// ==================================================

// The type for domain TriggerWisdoms
type TriggerWisdomsDomainType;

// Translation of domain function __learn_trigger__
function  __learn_trigger__(bla: bool): bool;

// Translation of domain function __trigger_ref__
function  __trigger_ref__(r_4: Ref): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

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
    (refs[p_1] && (refs[s_1] && (Heap[p_1, next] == s_1 && p_1 != s_1))) == $$'(Heap, refs)[(create_edge(p_1, s_1): EdgeDomainType)]
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@182.14--182.68) [15722]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@182.14--182.68) [15723]"}
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
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && (p.next == s && p != s))) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_4]) {
          if (refs[s_2]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (ring-insert.vpr@184.13--188.44) [15724]"}
              HasDirectPerm(Mask, p_4, next);
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4: Ref ::
      { (create_edge(p_4_1, s_4): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4] && (Heap[p_4_1, next] == s_4 && p_4_1 != s_4))) == Result[(create_edge(p_4_1, s_4): EdgeDomainType)]
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
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_4: Ref, v_4_1: Ref ::
    { (DEP($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_4, v_4_1, u_4, Heap[u_4, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_4, Heap[v_4_1, next], v_4_1, Heap[v_4_1, next]): bool) }
    g0[u_4] && g0[v_4_1] ==> (__learn_trigger__((exists_path($$(Heap, Set#Union(g0, g1)), u_4, v_4_1): bool)): bool)
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
  var u_30: Ref;
  var v_30: Ref;
  
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@523.14--523.67) [15725]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@523.14--523.67) [15726]"}
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@524.14--524.67) [15727]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@524.14--524.67) [15728]"}
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@532.134--532.140) [15729]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@532.134--532.140) [15730]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered4(n_8), neverTriggered4(n_8_1) }
                  (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@532.134--532.140) [15731]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@532.162--532.177) [15732]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@532.162--532.177) [15733]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered5(n_9), neverTriggered5(n_9_1) }
                (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@532.162--532.177) [15734]"}
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
    assume (forall u_6_1: Ref, v_6_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_6_1, v_6_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_6_1, v_6_1): bool) }
      g0[u_6_1] && (g0[v_6_1] && (exists_path($$(Heap, g0), u_6_1, v_6_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_6_1, v_6_1): bool)
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@533.134--533.140) [15735]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@533.134--533.140) [15736]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered6(n_10_1), neverTriggered6(n_10_2) }
                  (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@533.134--533.140) [15737]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@533.162--533.177) [15738]"}
                (forall n_11_2: Ref ::
                { Heap[n_11_2, next] } { QPMask[n_11_2, next] } { Heap[n_11_2, next] }
                Set#Union(g1, g0)[n_11_2] && dummyFunction(Heap[n_11_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@533.162--533.177) [15739]"}
                (forall n_11_2: Ref, n_11_3: Ref ::
                { neverTriggered7(n_11_2), neverTriggered7(n_11_3) }
                (((n_11_2 != n_11_3 && Set#Union(g1, g0)[n_11_2]) && Set#Union(g1, g0)[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@533.162--533.177) [15740]"}
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
    assume (forall u_8_2: Ref, v_8_2: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_8_2, v_8_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_8_2, v_8_2): bool) }
      g1[u_8_2] && (g1[v_8_2] && (exists_path($$(Heap, g1), u_8_2, v_8_2): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_8_2, v_8_2): bool)
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@534.135--534.141) [15741]"}
                  (forall n_12: Ref ::
                  { Heap[n_12, next] } { QPMask[n_12, next] } { Heap[n_12, next] }
                  g0[n_12] && dummyFunction(Heap[n_12, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@534.135--534.141) [15742]"}
                  (forall n_12: Ref, n_12_1: Ref ::
                  { neverTriggered8(n_12), neverTriggered8(n_12_1) }
                  (((n_12 != n_12_1 && g0[n_12]) && g0[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@534.135--534.141) [15743]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@534.164--534.179) [15744]"}
                (forall n_13_2: Ref ::
                { Heap[n_13_2, next] } { QPMask[n_13_2, next] } { Heap[n_13_2, next] }
                Set#Union(g0, g1)[n_13_2] && dummyFunction(Heap[n_13_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@534.164--534.179) [15745]"}
                (forall n_13_2: Ref, n_13_3: Ref ::
                { neverTriggered9(n_13_2), neverTriggered9(n_13_3) }
                (((n_13_2 != n_13_3 && Set#Union(g0, g1)[n_13_2]) && Set#Union(g0, g1)[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@534.164--534.179) [15746]"}
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
    assume (forall u_10: Ref, v_10: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_10, v_10): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_10, v_10): bool) }
      g0[u_10] && (g0[v_10] && !(exists_path($$(Heap, g0), u_10, v_10): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_10, v_10): bool)
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
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@535.135--535.141) [15747]"}
                  (forall n_14_1: Ref ::
                  { Heap[n_14_1, next] } { QPMask[n_14_1, next] } { Heap[n_14_1, next] }
                  g1[n_14_1] && dummyFunction(Heap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@535.135--535.141) [15748]"}
                  (forall n_14_1: Ref, n_14_2: Ref ::
                  { neverTriggered10(n_14_1), neverTriggered10(n_14_2) }
                  (((n_14_1 != n_14_2 && g1[n_14_1]) && g1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@535.135--535.141) [15749]"}
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@535.164--535.179) [15750]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@535.164--535.179) [15751]"}
                (forall n_15: Ref, n_15_1: Ref ::
                { neverTriggered11(n_15), neverTriggered11(n_15_1) }
                (((n_15 != n_15_1 && Set#Union(g1, g0)[n_15]) && Set#Union(g1, g0)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@535.164--535.179) [15752]"}
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
    assume (forall u_12_1: Ref, v_12_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_12_1, v_12_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_12_1, v_12_1): bool) }
      g1[u_12_1] && (g1[v_12_1] && !(exists_path($$(Heap, g1), u_12_1, v_12_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_12_1, v_12_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { DEP($$((g0 union g1)), u, v, u, u.next) } { DEP($$((g0 union g1)), u, v.next, v, v.next) } (u in g0) && (v in g0) ==> __learn_trigger__(exists_path($$((g0 union g1)), u, v)))
      if (*) {
        if (g0[u_30] && g0[v_30]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@537.178--537.193) [15753]"}
                (forall n_16_1: Ref ::
                { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                Set#Union(g0, g1)[n_16_1] && dummyFunction(Heap[n_16_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@537.178--537.193) [15754]"}
                (forall n_16_1: Ref, n_16_2: Ref ::
                { neverTriggered12(n_16_1), neverTriggered12(n_16_2) }
                (((n_16_1 != n_16_2 && Set#Union(g0, g1)[n_16_1]) && Set#Union(g0, g1)[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@537.178--537.193) [15755]"}
                (forall n_16_1: Ref ::
                { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                Set#Union(g0, g1)[n_16_1] ==> 1 / 2 > NoPerm ==> Mask[n_16_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_16_1: Ref ::
                { Heap[n_16_1, next] } { QPMask[n_16_1, next] } { Heap[n_16_1, next] }
                Set#Union(g0, g1)[n_16_1] && NoPerm < 1 / 2 ==> qpRange12(n_16_1) && invRecv12(n_16_1) == n_16_1
              );
              assume (forall o_9: Ref ::
                { invRecv12(o_9) }
                Set#Union(g0, g1)[invRecv12(o_9)] && (NoPerm < 1 / 2 && qpRange12(o_9)) ==> invRecv12(o_9) == o_9
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
    assume (forall u_14_1: Ref, v_14_1: Ref ::
      { (DEP($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_14_1, v_14_1, u_14_1, Heap[u_14_1, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_14_1, Heap[v_14_1, next], v_14_1, Heap[v_14_1, next]): bool) }
      g0[u_14_1] && g0[v_14_1] ==> (__learn_trigger__((exists_path($$(Heap, Set#Union(g0, g1)), u_14_1, v_14_1): bool)): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unlink_01PG_next
// ==================================================

procedure unlink_01PG_next(g_1: (Set Ref), node: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_32: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_30: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_5: Ref;
  var v2_5: Ref;
  var x_21: Ref;
  var y_3: Ref;
  var u_31: Ref;
  var v_31: Ref;
  var n$2_2: Ref;
  var v1_2_1: Ref;
  var v2_2_1: Ref;
  var x_2_2: Ref;
  var y_2_1: Ref;
  var u_2_2: Ref;
  var v_2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[node, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[node];
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[node];
    perm := FullPerm;
    assume node != null;
    Mask := Mask[node, next:=Mask[node, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != node ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@410.14--410.37) [15756]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != node)) && (g_1[n_1_1] && n_1_1 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != node) && NoPerm < 1 / 2 ==> qpRange13(n_1) && invRecv13(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        ((g_1[invRecv13(o_9)] && invRecv13(o_9) != node) && NoPerm < 1 / 2) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@410.14--410.37) [15757]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != node ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != node) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv13(o_9)] && invRecv13(o_9) != node) && NoPerm < 1 / 2) && qpRange13(o_9) ==> (NoPerm < 1 / 2 ==> invRecv13(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv13(o_9)] && invRecv13(o_9) != node) && NoPerm < 1 / 2) && qpRange13(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_32]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@410.14--410.37) [15758]"}
            HasDirectPerm(Mask, n$0_32, next);
        }
        if (g_1[n$0_32] && Heap[n$0_32, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@410.14--410.37) [15759]"}
            HasDirectPerm(Mask, n$0_32, next);
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
    assume g_1[node];
    perm := FullPerm;
    assume node != null;
    PostMask := PostMask[node, next:=PostMask[node, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != node ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@411.13--411.36) [15760]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != node)) && (g_1[n$1_1_1] && n$1_1_1 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != node) && NoPerm < 1 / 2 ==> qpRange14(n$1_1) && invRecv14(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        ((g_1[invRecv14(o_9)] && invRecv14(o_9) != node) && NoPerm < 1 / 2) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@411.13--411.36) [15761]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != node ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != node) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv14(o_9)] && invRecv14(o_9) != node) && NoPerm < 1 / 2) && qpRange14(o_9) ==> (NoPerm < 1 / 2 ==> invRecv14(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + 1 / 2) && (!(((g_1[invRecv14(o_9)] && invRecv14(o_9) != node) && NoPerm < 1 / 2) && qpRange14(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_30]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@411.13--411.36) [15762]"}
            HasDirectPerm(PostMask, n$2_30, next);
        }
        if (g_1[n$2_30] && PostHeap[n$2_30, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@411.13--411.36) [15763]"}
            HasDirectPerm(PostMask, n$2_30, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of node.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@412.13--412.30) [15764]"}
        HasDirectPerm(PostMask, node, next);
    assume PostHeap[node, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(node.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@413.13--413.59) [15765]"}
        HasDirectPerm(oldMask, node, next);
    if (oldHeap[node, next] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@413.40--413.45) [15766]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@413.40--413.45) [15767]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered15(n_2), neverTriggered15(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@413.40--413.45) [15768]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange15(n_2) && invRecv15(n_2) == n_2
            );
            assume (forall o_9: Ref ::
              { invRecv15(o_9) }
              g_1[invRecv15(o_9)] && (NoPerm < 1 / 2 && qpRange15(o_9)) ==> invRecv15(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@413.53--413.58) [15769]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@413.53--413.58) [15770]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered16(n_3), neverTriggered16(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@413.53--413.58) [15771]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange16(n_3) && invRecv16(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv16(o_9) }
              g_1[invRecv16(o_9)] && (NoPerm < 1 / 2 && qpRange16(o_9)) ==> invRecv16(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(node.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@414.13--417.95) [15772]"}
        HasDirectPerm(oldMask, node, next);
    if (oldHeap[node, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } { exists_path($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == node && v2 == old(node.next))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@417.18--417.23) [15773]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && dummyFunction(PostHeap[n_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@417.18--417.23) [15774]"}
                (forall n_4: Ref, n_4_1: Ref ::
                { neverTriggered17(n_4), neverTriggered17(n_4_1) }
                (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@417.18--417.23) [15775]"}
                (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] ==> 1 / 2 > NoPerm ==> PostMask[n_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4: Ref ::
                { PostHeap[n_4, next] } { QPMask[n_4, next] } { PostHeap[n_4, next] }
                g_1[n_4] && NoPerm < 1 / 2 ==> qpRange17(n_4) && invRecv17(n_4) == n_4
              );
              assume (forall o_9: Ref ::
                { invRecv17(o_9) }
                g_1[invRecv17(o_9)] && (NoPerm < 1 / 2 && qpRange17(o_9)) ==> invRecv17(o_9) == o_9
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@417.45--417.50) [15776]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@417.45--417.50) [15777]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered18(n_5), neverTriggered18(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@417.45--417.50) [15778]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange18(n_5) && invRecv18(n_5) == n_5
              );
              assume (forall o_9: Ref ::
                { invRecv18(o_9) }
                g_1[invRecv18(o_9)] && (NoPerm < 1 / 2 && qpRange18(o_9)) ==> invRecv18(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_5, v2_5): bool)) {
            if (v1_5 == node) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@414.13--417.95) [15779]"}
                HasDirectPerm(oldMask, node, next);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == node && v2_1 == oldHeap[node, next]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(node.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@418.13--425.22) [15780]"}
        HasDirectPerm(oldMask, node, next);
    if (oldHeap[node, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall x: Ref, y: Ref, u: Ref, v: Ref :: { DEP($$(g), x, y, u, v) } { DEP(old($$(g)), x, y, u, v) } DEP(old($$(g)), x, y, u, v) && !DEP(old($$(g)), x, y, node, old(node.next)) ==> DEP($$(g), x, y, u, v))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := oldHeap;
            ExhaleWellDef0Mask := oldMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@424.33--424.38) [15781]"}
                (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] && dummyFunction(oldHeap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@424.33--424.38) [15782]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered19(n_6), neverTriggered19(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@424.33--424.38) [15783]"}
                (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> oldMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange19(n_6) && invRecv19(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv19(o_9) }
                g_1[invRecv19(o_9)] && (NoPerm < 1 / 2 && qpRange19(o_9)) ==> invRecv19(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((DEP($$(oldHeap, g_1), x_21, y_3, u_31, v_31): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@424.65--424.70) [15784]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@424.65--424.70) [15785]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered20(n_7), neverTriggered20(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@424.65--424.70) [15786]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange20(n_7) && invRecv20(n_7) == n_7
                );
                assume (forall o_9: Ref ::
                  { invRecv20(o_9) }
                  g_1[invRecv20(o_9)] && (NoPerm < 1 / 2 && qpRange20(o_9)) ==> invRecv20(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access node.next (ring-insert.vpr@418.13--425.22) [15787]"}
              HasDirectPerm(oldMask, node, next);
          }
          if ((DEP($$(oldHeap, g_1), x_21, y_3, u_31, v_31): bool) && !(DEP($$(oldHeap, g_1), x_21, y_3, node, oldHeap[node, next]): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@424.109--424.114) [15788]"}
                  (forall n_8: Ref ::
                  { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                  g_1[n_8] && dummyFunction(PostHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@424.109--424.114) [15789]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered21(n_8), neverTriggered21(n_8_1) }
                  (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@424.109--424.114) [15790]"}
                  (forall n_8: Ref ::
                  { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                  g_1[n_8] ==> 1 / 2 > NoPerm ==> PostMask[n_8, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_8: Ref ::
                  { PostHeap[n_8, next] } { QPMask[n_8, next] } { PostHeap[n_8, next] }
                  g_1[n_8] && NoPerm < 1 / 2 ==> qpRange21(n_8) && invRecv21(n_8) == n_8
                );
                assume (forall o_9: Ref ::
                  { invRecv21(o_9) }
                  g_1[invRecv21(o_9)] && (NoPerm < 1 / 2 && qpRange21(o_9)) ==> invRecv21(o_9) == o_9
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
      assume (forall x_1: Ref, y_1: Ref, u_1_1: Ref, v_1_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), x_1, y_1, u_1_1, v_1_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, y_1, u_1_1, v_1_1): bool) }
        (DEP($$(oldHeap, g_1), x_1, y_1, u_1_1, v_1_1): bool) && !(DEP($$(oldHeap, g_1), x_1, y_1, node, oldHeap[node, next]): bool) ==> (DEP($$(PostHeap, g_1), x_1, y_1, u_1_1, v_1_1): bool)
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
    assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion !((null in g)) might not hold. (ring-insert.vpr@411.13--411.36) [15791]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion (node in g) might not hold. (ring-insert.vpr@411.13--411.36) [15792]"}
      g_1[node];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink_01PG_next might not hold. There might be insufficient permission to access node.next (ring-insert.vpr@411.13--411.36) [15793]"}
        perm <= Mask[node, next];
    }
    Mask := Mask[node, next:=Mask[node, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@411.13--411.36) [15794]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != node) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@411.13--411.36) [15795]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered22(n$1_2), neverTriggered22(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != node)) && (g_1[n$1_2_1] && n$1_2_1 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink_01PG_next might not hold. There might be insufficient permission to access n$1.next (ring-insert.vpr@411.13--411.36) [15796]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != node ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != node) && NoPerm < 1 / 2 ==> qpRange22(n$1_2) && invRecv22(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (g_1[invRecv22(o_9)] && invRecv22(o_9) != node) && (NoPerm < 1 / 2 && qpRange22(o_9)) ==> invRecv22(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv22(o_9)] && invRecv22(o_9) != node) && (NoPerm < 1 / 2 && qpRange22(o_9)) ==> invRecv22(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv22(o_9)] && invRecv22(o_9) != node) && (NoPerm < 1 / 2 && qpRange22(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion (n$2.next in g) might not hold. (ring-insert.vpr@411.13--411.36) [15797]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion node.next == null might not hold. (ring-insert.vpr@412.13--412.30) [15798]"}
      Heap[node, next] == null;
    if (oldHeap[node, next] == null) {
      assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion $$(g) == old($$(g)) might not hold. (ring-insert.vpr@413.13--413.59) [15799]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[node, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == node && v2 == old(node.next))) might not hold. (ring-insert.vpr@414.13--417.95) [15800]"}
          (edge($$(Heap, g_1), v1_2_1, v2_2_1): bool) == ((edge($$(oldHeap, g_1), v1_2_1, v2_2_1): bool) && !(v1_2_1 == node && v2_2_1 == oldHeap[node, next]));
        assume false;
      }
      assume (forall v1_3_1: Ref, v2_3_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3_1, v2_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3_1, v2_3_1): bool) }
        (edge($$(Heap, g_1), v1_3_1, v2_3_1): bool) == ((edge($$(oldHeap, g_1), v1_3_1, v2_3_1): bool) && !(v1_3_1 == node && v2_3_1 == oldHeap[node, next]))
      );
    }
    if (oldHeap[node, next] != null) {
      if (*) {
        if ((DEP($$(oldHeap, g_1), x_2_2, y_2_1, u_2_2, v_2_2): bool) && !(DEP($$(oldHeap, g_1), x_2_2, y_2_1, node, oldHeap[node, next]): bool)) {
          assert {:msg "  Postcondition of unlink_01PG_next might not hold. Assertion DEP($$(g), x, y, u, v) might not hold. (ring-insert.vpr@418.13--425.22) [15801]"}
            (DEP($$(Heap, g_1), x_2_2, y_2_1, u_2_2, v_2_2): bool);
        }
        assume false;
      }
      assume (forall x_3_1_1: Ref, y_3_1: Ref, u_3_1_1: Ref, v_3_1_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x_3_1_1, y_3_1, u_3_1_1, v_3_1_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_3_1_1, y_3_1, u_3_1_1, v_3_1_1): bool) }
        (DEP($$(oldHeap, g_1), x_3_1_1, y_3_1, u_3_1_1, v_3_1_1): bool) && !(DEP($$(oldHeap, g_1), x_3_1_1, y_3_1, node, oldHeap[node, next]): bool) ==> (DEP($$(Heap, g_1), x_3_1_1, y_3_1, u_3_1_1, v_3_1_1): bool)
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method link_01PG_next
// ==================================================

procedure link_01PG_next(g_1: (Set Ref), from_1: Ref, to_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_33: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_31: Ref;
  var u_32: Ref;
  var v_32: Ref;
  var x_38: Ref;
  var y_4: Ref;
  var U_2: Ref;
  var V: Ref;
  var U_3: Ref;
  var V_2: Ref;
  var x_34: Ref;
  var y_5: Ref;
  var u_2: Ref;
  var v_3: Ref;
  var n_65: Ref;
  var n_66: Ref;
  var n_67: Ref;
  var n_68: Ref;
  var n$2_2: Ref;
  var v1_2_1: Ref;
  var v2_2_1: Ref;
  var u_4: Ref;
  var v_4_1: Ref;
  var x_4_2: Ref;
  var y_4_1: Ref;
  var x_6: Ref;
  var y_6: Ref;
  var u_6_1: Ref;
  var v_6_1: Ref;
  var n_29: Ref;
  var n_31: Ref;
  var n_33: Ref;
  var n_35: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[from_1, $allocated];
    assume Heap[to_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[from_1];
    assume state(Heap, Mask);
    assume to_1 != null;
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[from_1];
    perm := FullPerm;
    assume from_1 != null;
    Mask := Mask[from_1, next:=Mask[from_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != from ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@474.14--474.37) [15802]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != from_1)) && (g_1[n_1_1] && n_1_1 != from_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != from_1) && NoPerm < 1 / 2 ==> qpRange23(n_1) && invRecv23(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        ((g_1[invRecv23(o_9)] && invRecv23(o_9) != from_1) && NoPerm < 1 / 2) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@474.14--474.37) [15803]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != from_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != from_1) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv23(o_9)] && invRecv23(o_9) != from_1) && NoPerm < 1 / 2) && qpRange23(o_9) ==> (NoPerm < 1 / 2 ==> invRecv23(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((g_1[invRecv23(o_9)] && invRecv23(o_9) != from_1) && NoPerm < 1 / 2) && qpRange23(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_33]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@474.14--474.37) [15804]"}
            HasDirectPerm(Mask, n$0_33, next);
        }
        if (g_1[n$0_33] && Heap[n$0_33, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@474.14--474.37) [15805]"}
            HasDirectPerm(Mask, n$0_33, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of from.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access from.next (ring-insert.vpr@475.14--475.31) [15806]"}
        HasDirectPerm(Mask, from_1, next);
    assume Heap[from_1, next] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of !exists_path($$(g), from, to)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@476.27--476.32) [15807]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@476.27--476.32) [15808]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered24(n_2), neverTriggered24(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@476.27--476.32) [15809]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < 1 / 2 ==> qpRange24(n_2) && invRecv24(n_2) == n_2
          );
          assume (forall o_9: Ref ::
            { invRecv24(o_9) }
            g_1[invRecv24(o_9)] && (NoPerm < 1 / 2 && qpRange24(o_9)) ==> invRecv24(o_9) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume !(exists_path($$(Heap, g_1), from_1, to_1): bool);
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
    assume g_1[from_1];
    perm := FullPerm;
    assume from_1 != null;
    PostMask := PostMask[from_1, next:=PostMask[from_1, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != from ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@477.13--477.36) [15810]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != from_1)) && (g_1[n$1_1_1] && n$1_1_1 != from_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != from_1) && NoPerm < 1 / 2 ==> qpRange25(n$1_1) && invRecv25(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        ((g_1[invRecv25(o_9)] && invRecv25(o_9) != from_1) && NoPerm < 1 / 2) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (ring-insert.vpr@477.13--477.36) [15811]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != from_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != from_1) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (((g_1[invRecv25(o_9)] && invRecv25(o_9) != from_1) && NoPerm < 1 / 2) && qpRange25(o_9) ==> (NoPerm < 1 / 2 ==> invRecv25(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + 1 / 2) && (!(((g_1[invRecv25(o_9)] && invRecv25(o_9) != from_1) && NoPerm < 1 / 2) && qpRange25(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_31]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@477.13--477.36) [15812]"}
            HasDirectPerm(PostMask, n$2_31, next);
        }
        if (g_1[n$2_31] && PostHeap[n$2_31, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@477.13--477.36) [15813]"}
            HasDirectPerm(PostMask, n$2_31, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] && PostHeap[n$2_1, next] != null ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of from.next == to
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access from.next (ring-insert.vpr@478.13--478.28) [15814]"}
        HasDirectPerm(PostMask, from_1, next);
    assume PostHeap[from_1, next] == to_1;
    assume state(PostHeap, PostMask);
    if (to_1 == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@479.28--479.33) [15815]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
              g_1[n_3] && dummyFunction(PostHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@479.28--479.33) [15816]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered26(n_3), neverTriggered26(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@479.28--479.33) [15817]"}
              (forall n_3: Ref ::
              { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> PostMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange26(n_3) && invRecv26(n_3) == n_3
            );
            assume (forall o_9: Ref ::
              { invRecv26(o_9) }
              g_1[invRecv26(o_9)] && (NoPerm < 1 / 2 && qpRange26(o_9)) ==> invRecv26(o_9) == o_9
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
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@479.41--479.46) [15818]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, next] } { QPMask[n_4, next] } { oldHeap[n_4, next] }
              g_1[n_4] && dummyFunction(oldHeap[n_4, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@479.41--479.46) [15819]"}
              (forall n_4: Ref, n_4_1: Ref ::
              { neverTriggered27(n_4), neverTriggered27(n_4_1) }
              (((n_4 != n_4_1 && g_1[n_4]) && g_1[n_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4 != n_4_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@479.41--479.46) [15820]"}
              (forall n_4: Ref ::
              { oldHeap[n_4, next] } { QPMask[n_4, next] } { oldHeap[n_4, next] }
              g_1[n_4] ==> 1 / 2 > NoPerm ==> oldMask[n_4, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_4: Ref ::
              { oldHeap[n_4, next] } { QPMask[n_4, next] } { oldHeap[n_4, next] }
              g_1[n_4] && NoPerm < 1 / 2 ==> qpRange27(n_4) && invRecv27(n_4) == n_4
            );
            assume (forall o_9: Ref ::
              { invRecv27(o_9) }
              g_1[invRecv27(o_9)] && (NoPerm < 1 / 2 && qpRange27(o_9)) ==> invRecv27(o_9) == o_9
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    if (to_1 != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } { exists_path($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == from && v2 == to))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@483.18--483.23) [15821]"}
                (forall n_5: Ref ::
                { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                g_1[n_5] && dummyFunction(PostHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@483.18--483.23) [15822]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered28(n_5), neverTriggered28(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@483.18--483.23) [15823]"}
                (forall n_5: Ref ::
                { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> PostMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange28(n_5) && invRecv28(n_5) == n_5
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
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@483.45--483.50) [15824]"}
                (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] && dummyFunction(oldHeap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@483.45--483.50) [15825]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered29(n_6), neverTriggered29(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@483.45--483.50) [15826]"}
                (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> oldMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { oldHeap[n_6, next] } { QPMask[n_6, next] } { oldHeap[n_6, next] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange29(n_6) && invRecv29(n_6) == n_6
              );
              assume (forall o_9: Ref ::
                { invRecv29(o_9) }
                g_1[invRecv29(o_9)] && (NoPerm < 1 / 2 && qpRange29(o_9)) ==> invRecv29(o_9) == o_9
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == from_1 && v2_1 == to_1))
      );
    }
    assume state(PostHeap, PostMask);
    if (to_1 != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall x: Ref, y: Ref, u: Ref, v: Ref :: { DEP($$(g), x, y, u, v) } { DEP(old($$(g)), x, y, u, v) } from != to && (u != v && x != y) ==> DEP(old($$(g)), x, y, u, v) || (x == from && (u == from && (y == to && v == to)) || ((exists w: Ref, z: Ref :: { DEP(old($$(g)), to, y, w, z) } (forall u_: Ref, v_: Ref :: { DEP(old($$(g)), x, y, u_, v_) } !DEP(old($$(g)), x, y, u_, v_)) && ((DEP(old($$(g)), x, from, u, v) && x != from || x == u && (u == from && v == to)) && (DEP(old($$(g)), to, y, w, z) && to != y || from == w && (to == z && z == y)))) || ((exists U: Ref, V: Ref :: { DEP(old($$(g)), x, from, U, V) } (forall u_: Ref, v_: Ref :: { DEP(old($$(g)), x, y, u_, v_) } !DEP(old($$(g)), x, y, u_, v_)) && ((DEP(old($$(g)), x, from, U, V) && x != from || x == U && (U == from && V == to)) && (DEP(old($$(g)), to, y, u, v) && to != y || from == u && (to == v && v == y)))) || u == from && (v == to && (exists U: Ref, V: Ref, w: Ref, z: Ref :: { DEP(old($$(g)), x, from, U, V), DEP(old($$(g)), to, y, w, z) } (forall u_: Ref, v_: Ref :: { DEP(old($$(g)), x, y, u_, v_) } !DEP(old($$(g)), x, y, u_, v_)) && ((DEP(old($$(g)), x, from, U, V) && x != from || x == U && (U == from && V == to)) && (DEP(old($$(g)), to, y, w, z) && to != y || from == w && (to == z && z == y)))))))) ==> DEP($$(g), x, y, u, v))
        if (*) {
          if (from_1 != to_1 && (u_32 != v_32 && x_38 != y_4)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@489.33--489.38) [15827]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@489.33--489.38) [15828]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered30(n_7), neverTriggered30(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@489.33--489.38) [15829]"}
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
            if (!(DEP($$(oldHeap, g_1), x_38, y_4, u_32, v_32): bool)) {
              if (!(x_38 == from_1 && (u_32 == from_1 && (y_4 == to_1 && v_32 == to_1)))) {
                if (*) {
                  if (*) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := oldHeap;
                      ExhaleWellDef0Mask := oldMask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@491.65--491.70) [15830]"}
                          (forall n_8: Ref ::
                          { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                          g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@491.65--491.70) [15831]"}
                          (forall n_8: Ref, n_8_1: Ref ::
                          { neverTriggered31(n_8), neverTriggered31(n_8_1) }
                          (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@491.65--491.70) [15832]"}
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
                    assume false;
                  }
                  if ((forall u__1: Ref, v__1: Ref ::
                    { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__1, v__1): bool) }
                    !(DEP($$(oldHeap, g_1), x_38, y_4, u__1, v__1): bool)
                  )) {
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef0Heap := oldHeap;
                      ExhaleWellDef0Mask := oldMask;
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@491.65--491.70) [15833]"}
                          (forall n_9: Ref ::
                          { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                          g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@491.65--491.70) [15834]"}
                          (forall n_9: Ref, n_9_1: Ref ::
                          { neverTriggered32(n_9), neverTriggered32(n_9_1) }
                          (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@491.65--491.70) [15835]"}
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
                    if (((DEP($$(oldHeap, g_1), x_38, from_1, u_32, v_32): bool) && x_38 != from_1) || (x_38 == u_32 && (u_32 == from_1 && v_32 == to_1))) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@491.65--491.70) [15836]"}
                            (forall n_10_1: Ref ::
                            { oldHeap[n_10_1, next] } { QPMask[n_10_1, next] } { oldHeap[n_10_1, next] }
                            g_1[n_10_1] && dummyFunction(oldHeap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@491.65--491.70) [15837]"}
                            (forall n_10_1: Ref, n_10_2: Ref ::
                            { neverTriggered33(n_10_1), neverTriggered33(n_10_2) }
                            (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@491.65--491.70) [15838]"}
                            (forall n_10_1: Ref ::
                            { oldHeap[n_10_1, next] } { QPMask[n_10_1, next] } { oldHeap[n_10_1, next] }
                            g_1[n_10_1] ==> 1 / 2 > NoPerm ==> oldMask[n_10_1, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n
                          assume (forall n_10_1: Ref ::
                            { oldHeap[n_10_1, next] } { QPMask[n_10_1, next] } { oldHeap[n_10_1, next] }
                            g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange33(n_10_1) && invRecv33(n_10_1) == n_10_1
                          );
                          assume (forall o_9: Ref ::
                            { invRecv33(o_9) }
                            g_1[invRecv33(o_9)] && (NoPerm < 1 / 2 && qpRange33(o_9)) ==> invRecv33(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                    }
                  }
                  assume false;
                }
                if (!(exists w_1_1: Ref, z_1: Ref ::
                  { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_4, w_1_1, z_1): bool) }
                  (forall u__2: Ref, v__2: Ref ::
                    { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__2, v__2): bool) }
                    !(DEP($$(oldHeap, g_1), x_38, y_4, u__2, v__2): bool)
                  ) && ((((DEP($$(oldHeap, g_1), x_38, from_1, u_32, v_32): bool) && x_38 != from_1) || (x_38 == u_32 && (u_32 == from_1 && v_32 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4, w_1_1, z_1): bool) && to_1 != y_4) || (from_1 == w_1_1 && (to_1 == z_1 && z_1 == y_4))))
                )) {
                  if (*) {
                    if (*) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@492.65--492.70) [15839]"}
                            (forall n_11_2: Ref ::
                            { oldHeap[n_11_2, next] } { QPMask[n_11_2, next] } { oldHeap[n_11_2, next] }
                            g_1[n_11_2] && dummyFunction(oldHeap[n_11_2, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@492.65--492.70) [15840]"}
                            (forall n_11_2: Ref, n_11_3: Ref ::
                            { neverTriggered34(n_11_2), neverTriggered34(n_11_3) }
                            (((n_11_2 != n_11_3 && g_1[n_11_2]) && g_1[n_11_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_2 != n_11_3
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@492.65--492.70) [15841]"}
                            (forall n_11_2: Ref ::
                            { oldHeap[n_11_2, next] } { QPMask[n_11_2, next] } { oldHeap[n_11_2, next] }
                            g_1[n_11_2] ==> 1 / 2 > NoPerm ==> oldMask[n_11_2, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n
                          assume (forall n_11_2: Ref ::
                            { oldHeap[n_11_2, next] } { QPMask[n_11_2, next] } { oldHeap[n_11_2, next] }
                            g_1[n_11_2] && NoPerm < 1 / 2 ==> qpRange34(n_11_2) && invRecv34(n_11_2) == n_11_2
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
                    if ((forall u__4: Ref, v__4: Ref ::
                      { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__4, v__4): bool) }
                      !(DEP($$(oldHeap, g_1), x_38, y_4, u__4, v__4): bool)
                    )) {
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := oldHeap;
                        ExhaleWellDef0Mask := oldMask;
                        havoc QPMask;
                        
                        // -- check that the permission amount is positive
                          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@492.65--492.70) [15842]"}
                            (forall n_12: Ref ::
                            { oldHeap[n_12, next] } { QPMask[n_12, next] } { oldHeap[n_12, next] }
                            g_1[n_12] && dummyFunction(oldHeap[n_12, next]) ==> 1 / 2 >= NoPerm
                          );
                        
                        // -- check if receiver n is injective
                          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@492.65--492.70) [15843]"}
                            (forall n_12: Ref, n_12_1: Ref ::
                            { neverTriggered35(n_12), neverTriggered35(n_12_1) }
                            (((n_12 != n_12_1 && g_1[n_12]) && g_1[n_12_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12 != n_12_1
                          );
                        
                        // -- check if sufficient permission is held
                          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@492.65--492.70) [15844]"}
                            (forall n_12: Ref ::
                            { oldHeap[n_12, next] } { QPMask[n_12, next] } { oldHeap[n_12, next] }
                            g_1[n_12] ==> 1 / 2 > NoPerm ==> oldMask[n_12, next] > NoPerm
                          );
                        
                        // -- assumptions for inverse of receiver n
                          assume (forall n_12: Ref ::
                            { oldHeap[n_12, next] } { QPMask[n_12, next] } { oldHeap[n_12, next] }
                            g_1[n_12] && NoPerm < 1 / 2 ==> qpRange35(n_12) && invRecv35(n_12) == n_12
                          );
                          assume (forall o_9: Ref ::
                            { invRecv35(o_9) }
                            g_1[invRecv35(o_9)] && (NoPerm < 1 / 2 && qpRange35(o_9)) ==> invRecv35(o_9) == o_9
                          );
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      if (((DEP($$(oldHeap, g_1), x_38, from_1, U_2, V): bool) && x_38 != from_1) || (x_38 == U_2 && (U_2 == from_1 && V == to_1))) {
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := oldHeap;
                          ExhaleWellDef0Mask := oldMask;
                          havoc QPMask;
                          
                          // -- check that the permission amount is positive
                            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@492.65--492.70) [15845]"}
                              (forall n_13_2: Ref ::
                              { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                              g_1[n_13_2] && dummyFunction(oldHeap[n_13_2, next]) ==> 1 / 2 >= NoPerm
                            );
                          
                          // -- check if receiver n is injective
                            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@492.65--492.70) [15846]"}
                              (forall n_13_2: Ref, n_13_3: Ref ::
                              { neverTriggered36(n_13_2), neverTriggered36(n_13_3) }
                              (((n_13_2 != n_13_3 && g_1[n_13_2]) && g_1[n_13_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13_2 != n_13_3
                            );
                          
                          // -- check if sufficient permission is held
                            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@492.65--492.70) [15847]"}
                              (forall n_13_2: Ref ::
                              { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                              g_1[n_13_2] ==> 1 / 2 > NoPerm ==> oldMask[n_13_2, next] > NoPerm
                            );
                          
                          // -- assumptions for inverse of receiver n
                            assume (forall n_13_2: Ref ::
                              { oldHeap[n_13_2, next] } { QPMask[n_13_2, next] } { oldHeap[n_13_2, next] }
                              g_1[n_13_2] && NoPerm < 1 / 2 ==> qpRange36(n_13_2) && invRecv36(n_13_2) == n_13_2
                            );
                            assume (forall o_9: Ref ::
                              { invRecv36(o_9) }
                              g_1[invRecv36(o_9)] && (NoPerm < 1 / 2 && qpRange36(o_9)) ==> invRecv36(o_9) == o_9
                            );
                          // Finish exhale
                          // Stop execution
                          assume false;
                        }
                      }
                    }
                    assume false;
                  }
                  if (!(exists U_1_1: Ref, V_1: Ref ::
                    { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, from_1, U_1_1, V_1): bool) }
                    (forall u__5: Ref, v__5: Ref ::
                      { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__5, v__5): bool) }
                      !(DEP($$(oldHeap, g_1), x_38, y_4, u__5, v__5): bool)
                    ) && ((((DEP($$(oldHeap, g_1), x_38, from_1, U_1_1, V_1): bool) && x_38 != from_1) || (x_38 == U_1_1 && (U_1_1 == from_1 && V_1 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4, u_32, v_32): bool) && to_1 != y_4) || (from_1 == u_32 && (to_1 == v_32 && v_32 == y_4))))
                  )) {
                    if (u_32 == from_1) {
                      if (v_32 == to_1) {
                        if (*) {
                          if (*) {
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef0Heap := oldHeap;
                              ExhaleWellDef0Mask := oldMask;
                              havoc QPMask;
                              
                              // -- check that the permission amount is positive
                                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@493.99--493.104) [15848]"}
                                  (forall n_14_1: Ref ::
                                  { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                                  g_1[n_14_1] && dummyFunction(oldHeap[n_14_1, next]) ==> 1 / 2 >= NoPerm
                                );
                              
                              // -- check if receiver n is injective
                                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@493.99--493.104) [15849]"}
                                  (forall n_14_1: Ref, n_14_2: Ref ::
                                  { neverTriggered37(n_14_1), neverTriggered37(n_14_2) }
                                  (((n_14_1 != n_14_2 && g_1[n_14_1]) && g_1[n_14_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14_1 != n_14_2
                                );
                              
                              // -- check if sufficient permission is held
                                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@493.99--493.104) [15850]"}
                                  (forall n_14_1: Ref ::
                                  { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                                  g_1[n_14_1] ==> 1 / 2 > NoPerm ==> oldMask[n_14_1, next] > NoPerm
                                );
                              
                              // -- assumptions for inverse of receiver n
                                assume (forall n_14_1: Ref ::
                                  { oldHeap[n_14_1, next] } { QPMask[n_14_1, next] } { oldHeap[n_14_1, next] }
                                  g_1[n_14_1] && NoPerm < 1 / 2 ==> qpRange37(n_14_1) && invRecv37(n_14_1) == n_14_1
                                );
                                assume (forall o_9: Ref ::
                                  { invRecv37(o_9) }
                                  g_1[invRecv37(o_9)] && (NoPerm < 1 / 2 && qpRange37(o_9)) ==> invRecv37(o_9) == o_9
                                );
                              // Finish exhale
                              // Stop execution
                              assume false;
                            }
                            assume false;
                          }
                          if ((forall u__7: Ref, v__7: Ref ::
                            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__7, v__7): bool) }
                            !(DEP($$(oldHeap, g_1), x_38, y_4, u__7, v__7): bool)
                          )) {
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef0Heap := oldHeap;
                              ExhaleWellDef0Mask := oldMask;
                              havoc QPMask;
                              
                              // -- check that the permission amount is positive
                                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@493.99--493.104) [15851]"}
                                  (forall n_15: Ref ::
                                  { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                  g_1[n_15] && dummyFunction(oldHeap[n_15, next]) ==> 1 / 2 >= NoPerm
                                );
                              
                              // -- check if receiver n is injective
                                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@493.99--493.104) [15852]"}
                                  (forall n_15: Ref, n_15_1: Ref ::
                                  { neverTriggered38(n_15), neverTriggered38(n_15_1) }
                                  (((n_15 != n_15_1 && g_1[n_15]) && g_1[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                                );
                              
                              // -- check if sufficient permission is held
                                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@493.99--493.104) [15853]"}
                                  (forall n_15: Ref ::
                                  { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                  g_1[n_15] ==> 1 / 2 > NoPerm ==> oldMask[n_15, next] > NoPerm
                                );
                              
                              // -- assumptions for inverse of receiver n
                                assume (forall n_15: Ref ::
                                  { oldHeap[n_15, next] } { QPMask[n_15, next] } { oldHeap[n_15, next] }
                                  g_1[n_15] && NoPerm < 1 / 2 ==> qpRange38(n_15) && invRecv38(n_15) == n_15
                                );
                                assume (forall o_9: Ref ::
                                  { invRecv38(o_9) }
                                  g_1[invRecv38(o_9)] && (NoPerm < 1 / 2 && qpRange38(o_9)) ==> invRecv38(o_9) == o_9
                                );
                              // Finish exhale
                              // Stop execution
                              assume false;
                            }
                            if (((DEP($$(oldHeap, g_1), x_38, from_1, U_3, V_2): bool) && x_38 != from_1) || (x_38 == U_3 && (U_3 == from_1 && V_2 == to_1))) {
                              if (*) {
                                // Exhale precondition of function application
                                ExhaleWellDef0Heap := oldHeap;
                                ExhaleWellDef0Mask := oldMask;
                                havoc QPMask;
                                
                                // -- check that the permission amount is positive
                                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@493.99--493.104) [15854]"}
                                    (forall n_16_1: Ref ::
                                    { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                    g_1[n_16_1] && dummyFunction(oldHeap[n_16_1, next]) ==> 1 / 2 >= NoPerm
                                  );
                                
                                // -- check if receiver n is injective
                                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@493.99--493.104) [15855]"}
                                    (forall n_16_1: Ref, n_16_2: Ref ::
                                    { neverTriggered39(n_16_1), neverTriggered39(n_16_2) }
                                    (((n_16_1 != n_16_2 && g_1[n_16_1]) && g_1[n_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16_1 != n_16_2
                                  );
                                
                                // -- check if sufficient permission is held
                                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@493.99--493.104) [15856]"}
                                    (forall n_16_1: Ref ::
                                    { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                    g_1[n_16_1] ==> 1 / 2 > NoPerm ==> oldMask[n_16_1, next] > NoPerm
                                  );
                                
                                // -- assumptions for inverse of receiver n
                                  assume (forall n_16_1: Ref ::
                                    { oldHeap[n_16_1, next] } { QPMask[n_16_1, next] } { oldHeap[n_16_1, next] }
                                    g_1[n_16_1] && NoPerm < 1 / 2 ==> qpRange39(n_16_1) && invRecv39(n_16_1) == n_16_1
                                  );
                                  assume (forall o_9: Ref ::
                                    { invRecv39(o_9) }
                                    g_1[invRecv39(o_9)] && (NoPerm < 1 / 2 && qpRange39(o_9)) ==> invRecv39(o_9) == o_9
                                  );
                                // Finish exhale
                                // Stop execution
                                assume false;
                              }
                            }
                          }
                          assume false;
                        }
                      }
                    }
                  }
                }
              }
            }
            if ((DEP($$(oldHeap, g_1), x_38, y_4, u_32, v_32): bool) || ((x_38 == from_1 && (u_32 == from_1 && (y_4 == to_1 && v_32 == to_1))) || ((exists w_3_1: Ref, z_3: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_4, w_3_1, z_3): bool) }
              (forall u__8: Ref, v__8: Ref ::
                { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__8, v__8): bool) }
                !(DEP($$(oldHeap, g_1), x_38, y_4, u__8, v__8): bool)
              ) && ((((DEP($$(oldHeap, g_1), x_38, from_1, u_32, v_32): bool) && x_38 != from_1) || (x_38 == u_32 && (u_32 == from_1 && v_32 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4, w_3_1, z_3): bool) && to_1 != y_4) || (from_1 == w_3_1 && (to_1 == z_3 && z_3 == y_4))))
            ) || ((exists U_3_1: Ref, V_3: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, from_1, U_3_1, V_3): bool) }
              (forall u__9: Ref, v__9: Ref ::
                { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__9, v__9): bool) }
                !(DEP($$(oldHeap, g_1), x_38, y_4, u__9, v__9): bool)
              ) && ((((DEP($$(oldHeap, g_1), x_38, from_1, U_3_1, V_3): bool) && x_38 != from_1) || (x_38 == U_3_1 && (U_3_1 == from_1 && V_3 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4, u_32, v_32): bool) && to_1 != y_4) || (from_1 == u_32 && (to_1 == v_32 && v_32 == y_4))))
            ) || (u_32 == from_1 && (v_32 == to_1 && (exists U_4: Ref, V_4: Ref, w_4_1: Ref, z_4: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, from_1, U_4, V_4): bool), (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_4, w_4_1, z_4): bool) }
              (forall u__10: Ref, v__10: Ref ::
                { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_38, y_4, u__10, v__10): bool) }
                !(DEP($$(oldHeap, g_1), x_38, y_4, u__10, v__10): bool)
              ) && ((((DEP($$(oldHeap, g_1), x_38, from_1, U_4, V_4): bool) && x_38 != from_1) || (x_38 == U_4 && (U_4 == from_1 && V_4 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4, w_4_1, z_4): bool) && to_1 != y_4) || (from_1 == w_4_1 && (to_1 == z_4 && z_4 == y_4))))
            ))))))) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := PostHeap;
                ExhaleWellDef0Mask := PostMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@495.37--495.42) [15857]"}
                    (forall n_17: Ref ::
                    { PostHeap[n_17, next] } { QPMask[n_17, next] } { PostHeap[n_17, next] }
                    g_1[n_17] && dummyFunction(PostHeap[n_17, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@495.37--495.42) [15858]"}
                    (forall n_17: Ref, n_17_1: Ref ::
                    { neverTriggered40(n_17), neverTriggered40(n_17_1) }
                    (((n_17 != n_17_1 && g_1[n_17]) && g_1[n_17_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@495.37--495.42) [15859]"}
                    (forall n_17: Ref ::
                    { PostHeap[n_17, next] } { QPMask[n_17, next] } { PostHeap[n_17, next] }
                    g_1[n_17] ==> 1 / 2 > NoPerm ==> PostMask[n_17, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_17: Ref ::
                    { PostHeap[n_17, next] } { QPMask[n_17, next] } { PostHeap[n_17, next] }
                    g_1[n_17] && NoPerm < 1 / 2 ==> qpRange40(n_17) && invRecv40(n_17) == n_17
                  );
                  assume (forall o_9: Ref ::
                    { invRecv40(o_9) }
                    g_1[invRecv40(o_9)] && (NoPerm < 1 / 2 && qpRange40(o_9)) ==> invRecv40(o_9) == o_9
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
                PostHeap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
          }
          assume false;
        }
      assume (forall x_1: Ref, y_1: Ref, u_1_1: Ref, v_1_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), x_1, y_1, u_1_1, v_1_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, y_1, u_1_1, v_1_1): bool) }
        from_1 != to_1 && (u_1_1 != v_1_1 && x_1 != y_1) ==> (DEP($$(oldHeap, g_1), x_1, y_1, u_1_1, v_1_1): bool) || ((x_1 == from_1 && (u_1_1 == from_1 && (y_1 == to_1 && v_1_1 == to_1))) || ((exists w_5: Ref, z_5: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_1, w_5, z_5): bool) }
          (forall u__11: Ref, v__11: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, y_1, u__11, v__11): bool) }
            !(DEP($$(oldHeap, g_1), x_1, y_1, u__11, v__11): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_1, from_1, u_1_1, v_1_1): bool) && x_1 != from_1) || (x_1 == u_1_1 && (u_1_1 == from_1 && v_1_1 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_1, w_5, z_5): bool) && to_1 != y_1) || (from_1 == w_5 && (to_1 == z_5 && z_5 == y_1))))
        ) || ((exists U_5: Ref, V_5: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, from_1, U_5, V_5): bool) }
          (forall u__12: Ref, v__12: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, y_1, u__12, v__12): bool) }
            !(DEP($$(oldHeap, g_1), x_1, y_1, u__12, v__12): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_1, from_1, U_5, V_5): bool) && x_1 != from_1) || (x_1 == U_5 && (U_5 == from_1 && V_5 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_1, u_1_1, v_1_1): bool) && to_1 != y_1) || (from_1 == u_1_1 && (to_1 == v_1_1 && v_1_1 == y_1))))
        ) || (u_1_1 == from_1 && (v_1_1 == to_1 && (exists U_6: Ref, V_6: Ref, w_6: Ref, z_6: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, from_1, U_6, V_6): bool), (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_1, w_6, z_6): bool) }
          (forall u__13: Ref, v__13: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_1, y_1, u__13, v__13): bool) }
            !(DEP($$(oldHeap, g_1), x_1, y_1, u__13, v__13): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_1, from_1, U_6, V_6): bool) && x_1 != from_1) || (x_1 == U_6 && (U_6 == from_1 && V_6 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_1, w_6, z_6): bool) && to_1 != y_1) || (from_1 == w_6 && (to_1 == z_6 && z_6 == y_1))))
        )))))) ==> (DEP($$(PostHeap, g_1), x_1, y_1, u_1_1, v_1_1): bool)
      );
    }
    assume state(PostHeap, PostMask);
    if (to_1 != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall x: Ref, y: Ref, u: Ref, v: Ref :: { DEP($$(g), x, y, u, v) } { DEP(old($$(g)), x, y, u, v) } DEP($$(g), x, y, u, v) && !DEP($$(g), x, y, from, to) ==> DEP(old($$(g)), x, y, u, v))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@501.25--501.30) [15860]"}
                (forall n_18: Ref ::
                { PostHeap[n_18, next] } { QPMask[n_18, next] } { PostHeap[n_18, next] }
                g_1[n_18] && dummyFunction(PostHeap[n_18, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@501.25--501.30) [15861]"}
                (forall n_18: Ref, n_18_1: Ref ::
                { neverTriggered41(n_18), neverTriggered41(n_18_1) }
                (((n_18 != n_18_1 && g_1[n_18]) && g_1[n_18_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@501.25--501.30) [15862]"}
                (forall n_18: Ref ::
                { PostHeap[n_18, next] } { QPMask[n_18, next] } { PostHeap[n_18, next] }
                g_1[n_18] ==> 1 / 2 > NoPerm ==> PostMask[n_18, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_18: Ref ::
                { PostHeap[n_18, next] } { QPMask[n_18, next] } { PostHeap[n_18, next] }
                g_1[n_18] && NoPerm < 1 / 2 ==> qpRange41(n_18) && invRecv41(n_18) == n_18
              );
              assume (forall o_9: Ref ::
                { invRecv41(o_9) }
                g_1[invRecv41(o_9)] && (NoPerm < 1 / 2 && qpRange41(o_9)) ==> invRecv41(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((DEP($$(PostHeap, g_1), x_34, y_5, u_2, v_3): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@501.52--501.57) [15863]"}
                  (forall n_19: Ref ::
                  { PostHeap[n_19, next] } { QPMask[n_19, next] } { PostHeap[n_19, next] }
                  g_1[n_19] && dummyFunction(PostHeap[n_19, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@501.52--501.57) [15864]"}
                  (forall n_19: Ref, n_19_1: Ref ::
                  { neverTriggered42(n_19), neverTriggered42(n_19_1) }
                  (((n_19 != n_19_1 && g_1[n_19]) && g_1[n_19_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@501.52--501.57) [15865]"}
                  (forall n_19: Ref ::
                  { PostHeap[n_19, next] } { QPMask[n_19, next] } { PostHeap[n_19, next] }
                  g_1[n_19] ==> 1 / 2 > NoPerm ==> PostMask[n_19, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_19: Ref ::
                  { PostHeap[n_19, next] } { QPMask[n_19, next] } { PostHeap[n_19, next] }
                  g_1[n_19] && NoPerm < 1 / 2 ==> qpRange42(n_19) && invRecv42(n_19) == n_19
                );
                assume (forall o_9: Ref ::
                  { invRecv42(o_9) }
                  g_1[invRecv42(o_9)] && (NoPerm < 1 / 2 && qpRange42(o_9)) ==> invRecv42(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
          if ((DEP($$(PostHeap, g_1), x_34, y_5, u_2, v_3): bool) && !(DEP($$(PostHeap, g_1), x_34, y_5, from_1, to_1): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@501.87--501.92) [15866]"}
                  (forall n_20: Ref ::
                  { oldHeap[n_20, next] } { QPMask[n_20, next] } { oldHeap[n_20, next] }
                  g_1[n_20] && dummyFunction(oldHeap[n_20, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@501.87--501.92) [15867]"}
                  (forall n_20: Ref, n_20_1: Ref ::
                  { neverTriggered43(n_20), neverTriggered43(n_20_1) }
                  (((n_20 != n_20_1 && g_1[n_20]) && g_1[n_20_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@501.87--501.92) [15868]"}
                  (forall n_20: Ref ::
                  { oldHeap[n_20, next] } { QPMask[n_20, next] } { oldHeap[n_20, next] }
                  g_1[n_20] ==> 1 / 2 > NoPerm ==> oldMask[n_20, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_20: Ref ::
                  { oldHeap[n_20, next] } { QPMask[n_20, next] } { oldHeap[n_20, next] }
                  g_1[n_20] && NoPerm < 1 / 2 ==> qpRange43(n_20) && invRecv43(n_20) == n_20
                );
                assume (forall o_9: Ref ::
                  { invRecv43(o_9) }
                  g_1[invRecv43(o_9)] && (NoPerm < 1 / 2 && qpRange43(o_9)) ==> invRecv43(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
      assume (forall x_3: Ref, y_3_2: Ref, u_3_1: Ref, v_3_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), x_3, y_3_2, u_3_1, v_3_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_3, y_3_2, u_3_1, v_3_1): bool) }
        (DEP($$(PostHeap, g_1), x_3, y_3_2, u_3_1, v_3_1): bool) && !(DEP($$(PostHeap, g_1), x_3, y_3_2, from_1, to_1): bool) ==> (DEP($$(oldHeap, g_1), x_3, y_3_2, u_3_1, v_3_1): bool)
      );
    }
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g), to, n) } { exists_path($$(g), from, n) } (n in g) && n != from ==> __learn_trigger__(DEP($$(g), from, n, from, from.next)))
      if (*) {
        if (g_1[n_65] && n_65 != from_1) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@504.136--504.141) [15869]"}
                (forall n$0_2: Ref ::
                { PostHeap[n$0_2, next] } { QPMask[n$0_2, next] } { PostHeap[n$0_2, next] }
                g_1[n$0_2] && dummyFunction(PostHeap[n$0_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@504.136--504.141) [15870]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered44(n$0_2), neverTriggered44(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g_1[n$0_2]) && g_1[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@504.136--504.141) [15871]"}
                (forall n$0_2: Ref ::
                { PostHeap[n$0_2, next] } { QPMask[n$0_2, next] } { PostHeap[n$0_2, next] }
                g_1[n$0_2] ==> 1 / 2 > NoPerm ==> PostMask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { PostHeap[n$0_2, next] } { QPMask[n$0_2, next] } { PostHeap[n$0_2, next] }
                g_1[n$0_2] && NoPerm < 1 / 2 ==> qpRange44(n$0_2) && invRecv44(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv44(o_9) }
                g_1[invRecv44(o_9)] && (NoPerm < 1 / 2 && qpRange44(o_9)) ==> invRecv44(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access from.next (ring-insert.vpr@504.13--504.169) [15872]"}
            HasDirectPerm(PostMask, from_1, next);
        }
        assume false;
      }
    assume (forall n_22: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), to_1, n_22): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), from_1, n_22): bool) }
      g_1[n_22] && n_22 != from_1 ==> (__learn_trigger__((DEP($$(PostHeap, g_1), from_1, n_22, from_1, PostHeap[from_1, next]): bool)): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g), to, n) } { exists_path($$(g), from, n) } (n in g) && n != to ==> __learn_trigger__(DEP($$(g), to, n, to, to.next)))
      if (*) {
        if (g_1[n_66] && n_66 != to_1) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@505.136--505.141) [15873]"}
                (forall n$0_3: Ref ::
                { PostHeap[n$0_3, next] } { QPMask[n$0_3, next] } { PostHeap[n$0_3, next] }
                g_1[n$0_3] && dummyFunction(PostHeap[n$0_3, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@505.136--505.141) [15874]"}
                (forall n$0_3: Ref, n$0_3_1: Ref ::
                { neverTriggered45(n$0_3), neverTriggered45(n$0_3_1) }
                (((n$0_3 != n$0_3_1 && g_1[n$0_3]) && g_1[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@505.136--505.141) [15875]"}
                (forall n$0_3: Ref ::
                { PostHeap[n$0_3, next] } { QPMask[n$0_3, next] } { PostHeap[n$0_3, next] }
                g_1[n$0_3] ==> 1 / 2 > NoPerm ==> PostMask[n$0_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_3: Ref ::
                { PostHeap[n$0_3, next] } { QPMask[n$0_3, next] } { PostHeap[n$0_3, next] }
                g_1[n$0_3] && NoPerm < 1 / 2 ==> qpRange45(n$0_3) && invRecv45(n$0_3) == n$0_3
              );
              assume (forall o_9: Ref ::
                { invRecv45(o_9) }
                g_1[invRecv45(o_9)] && (NoPerm < 1 / 2 && qpRange45(o_9)) ==> invRecv45(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access to.next (ring-insert.vpr@505.13--505.169) [15876]"}
            HasDirectPerm(PostMask, to_1, next);
        }
        assume false;
      }
    assume (forall n_24: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), to_1, n_24): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), from_1, n_24): bool) }
      g_1[n_24] && n_24 != to_1 ==> (__learn_trigger__((DEP($$(PostHeap, g_1), to_1, n_24, to_1, PostHeap[to_1, next]): bool)): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g), n, to) } { exists_path($$(g), n, from) } (n in g) && n != from ==> __learn_trigger__(DEP($$(g), n, from, n, n.next)))
      if (*) {
        if (g_1[n_67] && n_67 != from_1) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@506.136--506.141) [15877]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] && dummyFunction(PostHeap[n$0_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@506.136--506.141) [15878]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered46(n$0_4), neverTriggered46(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@506.136--506.141) [15879]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] ==> 1 / 2 > NoPerm ==> PostMask[n$0_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] && NoPerm < 1 / 2 ==> qpRange46(n$0_4) && invRecv46(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv46(o_9) }
                g_1[invRecv46(o_9)] && (NoPerm < 1 / 2 && qpRange46(o_9)) ==> invRecv46(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@506.13--506.163) [15880]"}
            HasDirectPerm(PostMask, n_67, next);
        }
        assume false;
      }
    assume (forall n_26: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), n_26, to_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), n_26, from_1): bool) }
      g_1[n_26] && n_26 != from_1 ==> (__learn_trigger__((DEP($$(PostHeap, g_1), n_26, from_1, n_26, PostHeap[n_26, next]): bool)): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { DEP($$(g), to, n, to, to.next) } { DEP($$(g), from, n, from, from.next) } (n in g) ==> __learn_trigger__(exists_path($$(g), to, n)) && __learn_trigger__(exists_path(old($$(g)), to, n)))
      if (*) {
        if (g_1[n_68]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@510.145--510.150) [15881]"}
                (forall n$0_5: Ref ::
                { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                g_1[n$0_5] && dummyFunction(PostHeap[n$0_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@510.145--510.150) [15882]"}
                (forall n$0_5: Ref, n$0_5_1: Ref ::
                { neverTriggered47(n$0_5), neverTriggered47(n$0_5_1) }
                (((n$0_5 != n$0_5_1 && g_1[n$0_5]) && g_1[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@510.145--510.150) [15883]"}
                (forall n$0_5: Ref ::
                { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                g_1[n$0_5] ==> 1 / 2 > NoPerm ==> PostMask[n$0_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                g_1[n$0_5] && NoPerm < 1 / 2 ==> qpRange47(n$0_5) && invRecv47(n$0_5) == n$0_5
              );
              assume (forall o_9: Ref ::
                { invRecv47(o_9) }
                g_1[invRecv47(o_9)] && (NoPerm < 1 / 2 && qpRange47(o_9)) ==> invRecv47(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((__learn_trigger__((exists_path($$(PostHeap, g_1), to_1, n_68): bool)): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := oldHeap;
              ExhaleWellDef0Mask := oldMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@510.199--510.204) [15884]"}
                  (forall n$0_6: Ref ::
                  { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                  g_1[n$0_6] && dummyFunction(oldHeap[n$0_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@510.199--510.204) [15885]"}
                  (forall n$0_6: Ref, n$0_6_1: Ref ::
                  { neverTriggered48(n$0_6), neverTriggered48(n$0_6_1) }
                  (((n$0_6 != n$0_6_1 && g_1[n$0_6]) && g_1[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@510.199--510.204) [15886]"}
                  (forall n$0_6: Ref ::
                  { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                  g_1[n$0_6] ==> 1 / 2 > NoPerm ==> oldMask[n$0_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_6: Ref ::
                  { oldHeap[n$0_6, next] } { QPMask[n$0_6, next] } { oldHeap[n$0_6, next] }
                  g_1[n$0_6] && NoPerm < 1 / 2 ==> qpRange48(n$0_6) && invRecv48(n$0_6) == n$0_6
                );
                assume (forall o_9: Ref ::
                  { invRecv48(o_9) }
                  g_1[invRecv48(o_9)] && (NoPerm < 1 / 2 && qpRange48(o_9)) ==> invRecv48(o_9) == o_9
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall n_28: Ref ::
      { (DEP($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), to_1, n_28, to_1, PostHeap[to_1, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), from_1, n_28, from_1, PostHeap[from_1, next]): bool) }
      g_1[n_28] ==> (__learn_trigger__((exists_path($$(PostHeap, g_1), to_1, n_28): bool)): bool) && (__learn_trigger__((exists_path($$(oldHeap, g_1), to_1, n_28): bool)): bool)
    );
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
    assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion !((null in g)) might not hold. (ring-insert.vpr@477.13--477.36) [15887]"}
      !g_1[null];
    assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion (from in g) might not hold. (ring-insert.vpr@477.13--477.36) [15888]"}
      g_1[from_1];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link_01PG_next might not hold. There might be insufficient permission to access from.next (ring-insert.vpr@477.13--477.36) [15889]"}
        perm <= Mask[from_1, next];
    }
    Mask := Mask[from_1, next:=Mask[from_1, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@477.13--477.36) [15890]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != from_1) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@477.13--477.36) [15891]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered49(n$1_2), neverTriggered49(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != from_1)) && (g_1[n$1_2_1] && n$1_2_1 != from_1)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link_01PG_next might not hold. There might be insufficient permission to access n$1.next (ring-insert.vpr@477.13--477.36) [15892]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != from_1 ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != from_1) && NoPerm < 1 / 2 ==> qpRange49(n$1_2) && invRecv49(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv49(o_9) }
        (g_1[invRecv49(o_9)] && invRecv49(o_9) != from_1) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv49(o_9)] && invRecv49(o_9) != from_1) && (NoPerm < 1 / 2 && qpRange49(o_9)) ==> invRecv49(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((g_1[invRecv49(o_9)] && invRecv49(o_9) != from_1) && (NoPerm < 1 / 2 && qpRange49(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion (n$2.next in g) might not hold. (ring-insert.vpr@477.13--477.36) [15893]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion from.next == to might not hold. (ring-insert.vpr@478.13--478.28) [15894]"}
      Heap[from_1, next] == to_1;
    if (to_1 == null) {
      assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion $$(g) == old($$(g)) might not hold. (ring-insert.vpr@479.13--479.47) [15895]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (to_1 != null) {
      if (*) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == from && v2 == to) might not hold. (ring-insert.vpr@480.13--483.82) [15896]"}
          (edge($$(Heap, g_1), v1_2_1, v2_2_1): bool) == ((edge($$(oldHeap, g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == from_1 && v2_2_1 == to_1));
        assume false;
      }
      assume (forall v1_3_1: Ref, v2_3_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3_1, v2_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3_1, v2_3_1): bool) }
        (edge($$(Heap, g_1), v1_3_1, v2_3_1): bool) == ((edge($$(oldHeap, g_1), v1_3_1, v2_3_1): bool) || (v1_3_1 == from_1 && v2_3_1 == to_1))
      );
    }
    if (to_1 != null) {
      if (*) {
        if (from_1 != to_1 && (u_4 != v_4_1 && x_4_2 != y_4_1)) {
          if ((DEP($$(oldHeap, g_1), x_4_2, y_4_1, u_4, v_4_1): bool) || ((x_4_2 == from_1 && (u_4 == from_1 && (y_4_1 == to_1 && v_4_1 == to_1))) || ((exists w_7: Ref, z_7: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_4_1, w_7, z_7): bool) }
            (forall u__14: Ref, v__14: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_4_2, y_4_1, u__14, v__14): bool) }
              !(DEP($$(oldHeap, g_1), x_4_2, y_4_1, u__14, v__14): bool)
            ) && ((((DEP($$(oldHeap, g_1), x_4_2, from_1, u_4, v_4_1): bool) && x_4_2 != from_1) || (x_4_2 == u_4 && (u_4 == from_1 && v_4_1 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4_1, w_7, z_7): bool) && to_1 != y_4_1) || (from_1 == w_7 && (to_1 == z_7 && z_7 == y_4_1))))
          ) || ((exists U_7: Ref, V_7: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_4_2, from_1, U_7, V_7): bool) }
            (forall u__15: Ref, v__15: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_4_2, y_4_1, u__15, v__15): bool) }
              !(DEP($$(oldHeap, g_1), x_4_2, y_4_1, u__15, v__15): bool)
            ) && ((((DEP($$(oldHeap, g_1), x_4_2, from_1, U_7, V_7): bool) && x_4_2 != from_1) || (x_4_2 == U_7 && (U_7 == from_1 && V_7 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4_1, u_4, v_4_1): bool) && to_1 != y_4_1) || (from_1 == u_4 && (to_1 == v_4_1 && v_4_1 == y_4_1))))
          ) || (u_4 == from_1 && (v_4_1 == to_1 && (exists U_8: Ref, V_8: Ref, w_8: Ref, z_8: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_4_2, from_1, U_8, V_8): bool), (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_4_1, w_8, z_8): bool) }
            (forall u__16: Ref, v__16: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_4_2, y_4_1, u__16, v__16): bool) }
              !(DEP($$(oldHeap, g_1), x_4_2, y_4_1, u__16, v__16): bool)
            ) && ((((DEP($$(oldHeap, g_1), x_4_2, from_1, U_8, V_8): bool) && x_4_2 != from_1) || (x_4_2 == U_8 && (U_8 == from_1 && V_8 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_4_1, w_8, z_8): bool) && to_1 != y_4_1) || (from_1 == w_8 && (to_1 == z_8 && z_8 == y_4_1))))
          ))))))) {
            assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion DEP($$(g), x, y, u, v) might not hold. (ring-insert.vpr@484.13--495.57) [15897]"}
              (DEP($$(Heap, g_1), x_4_2, y_4_1, u_4, v_4_1): bool);
          }
        }
        assume false;
      }
      assume (forall x_5_1_1: Ref, y_5_1: Ref, u_5_1: Ref, v_5_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x_5_1_1, y_5_1, u_5_1, v_5_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, y_5_1, u_5_1, v_5_1): bool) }
        from_1 != to_1 && (u_5_1 != v_5_1 && x_5_1_1 != y_5_1) ==> (DEP($$(oldHeap, g_1), x_5_1_1, y_5_1, u_5_1, v_5_1): bool) || ((x_5_1_1 == from_1 && (u_5_1 == from_1 && (y_5_1 == to_1 && v_5_1 == to_1))) || ((exists w_9: Ref, z_9: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_5_1, w_9, z_9): bool) }
          (forall u__17: Ref, v__17: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, y_5_1, u__17, v__17): bool) }
            !(DEP($$(oldHeap, g_1), x_5_1_1, y_5_1, u__17, v__17): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_5_1_1, from_1, u_5_1, v_5_1): bool) && x_5_1_1 != from_1) || (x_5_1_1 == u_5_1 && (u_5_1 == from_1 && v_5_1 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_5_1, w_9, z_9): bool) && to_1 != y_5_1) || (from_1 == w_9 && (to_1 == z_9 && z_9 == y_5_1))))
        ) || ((exists U_9: Ref, V_9: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, from_1, U_9, V_9): bool) }
          (forall u__18: Ref, v__18: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, y_5_1, u__18, v__18): bool) }
            !(DEP($$(oldHeap, g_1), x_5_1_1, y_5_1, u__18, v__18): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_5_1_1, from_1, U_9, V_9): bool) && x_5_1_1 != from_1) || (x_5_1_1 == U_9 && (U_9 == from_1 && V_9 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_5_1, u_5_1, v_5_1): bool) && to_1 != y_5_1) || (from_1 == u_5_1 && (to_1 == v_5_1 && v_5_1 == y_5_1))))
        ) || (u_5_1 == from_1 && (v_5_1 == to_1 && (exists U_10: Ref, V_10: Ref, w_10: Ref, z_10: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, from_1, U_10, V_10): bool), (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), to_1, y_5_1, w_10, z_10): bool) }
          (forall u__19: Ref, v__19: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_5_1_1, y_5_1, u__19, v__19): bool) }
            !(DEP($$(oldHeap, g_1), x_5_1_1, y_5_1, u__19, v__19): bool)
          ) && ((((DEP($$(oldHeap, g_1), x_5_1_1, from_1, U_10, V_10): bool) && x_5_1_1 != from_1) || (x_5_1_1 == U_10 && (U_10 == from_1 && V_10 == to_1))) && (((DEP($$(oldHeap, g_1), to_1, y_5_1, w_10, z_10): bool) && to_1 != y_5_1) || (from_1 == w_10 && (to_1 == z_10 && z_10 == y_5_1))))
        )))))) ==> (DEP($$(Heap, g_1), x_5_1_1, y_5_1, u_5_1, v_5_1): bool)
      );
    }
    if (to_1 != null) {
      if (*) {
        if ((DEP($$(Heap, g_1), x_6, y_6, u_6_1, v_6_1): bool) && !(DEP($$(Heap, g_1), x_6, y_6, from_1, to_1): bool)) {
          assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion DEP(old($$(g)), x, y, u, v) might not hold. (ring-insert.vpr@496.13--501.106) [15898]"}
            (DEP($$(oldHeap, g_1), x_6, y_6, u_6_1, v_6_1): bool);
        }
        assume false;
      }
      assume (forall x_7_1_1: Ref, y_7_1: Ref, u_7_1: Ref, v_7_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x_7_1_1, y_7_1, u_7_1, v_7_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), x_7_1_1, y_7_1, u_7_1, v_7_1): bool) }
        (DEP($$(Heap, g_1), x_7_1_1, y_7_1, u_7_1, v_7_1): bool) && !(DEP($$(Heap, g_1), x_7_1_1, y_7_1, from_1, to_1): bool) ==> (DEP($$(oldHeap, g_1), x_7_1_1, y_7_1, u_7_1, v_7_1): bool)
      );
    }
    if (*) {
      if (g_1[n_29] && n_29 != from_1) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion __learn_trigger__(DEP($$(g), from, n, from, from.next)) might not hold. (ring-insert.vpr@504.13--504.169) [15899]"}
          (__learn_trigger__((DEP($$(Heap, g_1), from_1, n_29, from_1, Heap[from_1, next]): bool)): bool);
      }
      assume false;
    }
    assume (forall n_30_1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), to_1, n_30_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), from_1, n_30_1_1): bool) }
      g_1[n_30_1_1] && n_30_1_1 != from_1 ==> (__learn_trigger__((DEP($$(Heap, g_1), from_1, n_30_1_1, from_1, Heap[from_1, next]): bool)): bool)
    );
    if (*) {
      if (g_1[n_31] && n_31 != to_1) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion __learn_trigger__(DEP($$(g), to, n, to, to.next)) might not hold. (ring-insert.vpr@505.13--505.169) [15900]"}
          (__learn_trigger__((DEP($$(Heap, g_1), to_1, n_31, to_1, Heap[to_1, next]): bool)): bool);
      }
      assume false;
    }
    assume (forall n_32_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), to_1, n_32_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), from_1, n_32_1): bool) }
      g_1[n_32_1] && n_32_1 != to_1 ==> (__learn_trigger__((DEP($$(Heap, g_1), to_1, n_32_1, to_1, Heap[to_1, next]): bool)): bool)
    );
    if (*) {
      if (g_1[n_33] && n_33 != from_1) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion __learn_trigger__(DEP($$(g), n, from, n, n.next)) might not hold. (ring-insert.vpr@506.13--506.163) [15901]"}
          (__learn_trigger__((DEP($$(Heap, g_1), n_33, from_1, n_33, Heap[n_33, next]): bool)): bool);
      }
      assume false;
    }
    assume (forall n_34_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_34_1, to_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_34_1, from_1): bool) }
      g_1[n_34_1] && n_34_1 != from_1 ==> (__learn_trigger__((DEP($$(Heap, g_1), n_34_1, from_1, n_34_1, Heap[n_34_1, next]): bool)): bool)
    );
    if (*) {
      if (g_1[n_35]) {
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion __learn_trigger__(exists_path($$(g), to, n)) might not hold. (ring-insert.vpr@510.13--510.214) [15902]"}
          (__learn_trigger__((exists_path($$(Heap, g_1), to_1, n_35): bool)): bool);
        assert {:msg "  Postcondition of link_01PG_next might not hold. Assertion __learn_trigger__(exists_path(old($$(g)), to, n)) might not hold. (ring-insert.vpr@510.13--510.214) [15903]"}
          (__learn_trigger__((exists_path($$(oldHeap, g_1), to_1, n_35): bool)): bool);
      }
      assume false;
    }
    assume (forall n_36_1: Ref ::
      { (DEP($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), to_1, n_36_1, to_1, Heap[to_1, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), from_1, n_36_1, from_1, Heap[from_1, next]): bool) }
      g_1[n_36_1] ==> (__learn_trigger__((exists_path($$(Heap, g_1), to_1, n_36_1): bool)): bool) && (__learn_trigger__((exists_path($$(oldHeap, g_1), to_1, n_36_1): bool)): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method create_node
// ==================================================

procedure create_node(graph: (Set Ref), init_val: int) returns (new_graph: (Set Ref), new_node: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume !graph[new_node];
    assume state(PostHeap, PostMask);
    assume Set#Equal(new_graph, Set#Union(graph, Set#Singleton(new_node)));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume new_node != null;
    PostMask := PostMask[new_node, next:=PostMask[new_node, next] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume new_node != null;
    PostMask := PostMask[new_node, val:=PostMask[new_node, val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of new_node.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access new_node.next (ring-insert.vpr@557.13--557.34) [15904]"}
        HasDirectPerm(PostMask, new_node, next);
    assume PostHeap[new_node, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of new_node.val == init_val
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access new_node.val (ring-insert.vpr@558.13--558.37) [15905]"}
        HasDirectPerm(PostMask, new_node, val);
    assume PostHeap[new_node, val] == init_val;
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
    assert {:msg "  Postcondition of create_node might not hold. Assertion !((new_node in graph)) might not hold. (ring-insert.vpr@554.13--554.35) [15906]"}
      !graph[new_node];
    assert {:msg "  Postcondition of create_node might not hold. Assertion new_graph == (graph union Set(new_node)) might not hold. (ring-insert.vpr@555.13--555.51) [15907]"}
      Set#Equal(new_graph, Set#Union(graph, Set#Singleton(new_node)));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of create_node might not hold. There might be insufficient permission to access new_node.next (ring-insert.vpr@556.13--556.52) [15908]"}
        perm <= Mask[new_node, next];
    }
    Mask := Mask[new_node, next:=Mask[new_node, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of create_node might not hold. There might be insufficient permission to access new_node.val (ring-insert.vpr@556.13--556.52) [15909]"}
        perm <= Mask[new_node, val];
    }
    Mask := Mask[new_node, val:=Mask[new_node, val] - perm];
    assert {:msg "  Postcondition of create_node might not hold. Assertion new_node.next == null might not hold. (ring-insert.vpr@557.13--557.34) [15910]"}
      Heap[new_node, next] == null;
    assert {:msg "  Postcondition of create_node might not hold. Assertion new_node.val == init_val might not hold. (ring-insert.vpr@558.13--558.37) [15911]"}
      Heap[new_node, val] == init_val;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method ringInsert
// ==================================================

procedure ringInsert(g_1: (Set Ref), start_1: Ref, x: int) returns (new_g: (Set Ref), new_node: Ref, new_start: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_34: Ref;
  var v1_20: Ref;
  var v2_20: Ref;
  var v_33: Ref;
  var v$0_2: Ref;
  var n_69: Ref;
  var m_8: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n_70: Ref;
  var n_55: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_17: Ref;
  var v1$0: Ref;
  var v2$0: Ref;
  var v$1_2: Ref;
  var v$2_2: Ref;
  var n_71: Ref;
  var n_72: Ref;
  var n_73: Ref;
  var m_9: Ref;
  var node: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var n$4_10: Ref;
  var v1$1: Ref;
  var v2$1: Ref;
  var v$3: Ref;
  var v$4: Ref;
  var n_25: Ref;
  var m_6_1: Ref;
  var n_28: Ref;
  var n_30: Ref;
  var n$4_12: Ref;
  var v1$1_1: Ref;
  var v2$1_1: Ref;
  var v$3_1: Ref;
  var v$4_1: Ref;
  var n_74: Ref;
  var m_10: Ref;
  var n_75: Ref;
  var n_76: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var n$4_5_1: Ref;
  var v1$1_5: Ref;
  var v2$1_5: Ref;
  var v$3_5: Ref;
  var v$4_5: Ref;
  var n_44: Ref;
  var m_11: Ref;
  var n_47: Ref;
  var n_49_1: Ref;
  var n$0_8: Ref;
  var arg_to: Ref;
  var n$0_10_1: Ref;
  var n$0_12_1: Ref;
  var n$0_14_1: Ref;
  var n_77: Ref;
  var m_12: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var n_70_1: Ref;
  var m_15: Ref;
  var n$2_2: Ref;
  var v1$0_2: Ref;
  var v2$0_2: Ref;
  var v$1_2_1: Ref;
  var v$2_2_1: Ref;
  var n_19: Ref;
  var n_21: Ref;
  var n_23: Ref;
  var m_4_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[start_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@570.14--570.21) [15912]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange50(n_1) && invRecv50(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv50(o_9) }
        (g_1[invRecv50(o_9)] && NoPerm < FullPerm) && qpRange50(o_9) ==> invRecv50(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv50(o_9)] && NoPerm < FullPerm) && qpRange50(o_9) ==> (NoPerm < FullPerm ==> invRecv50(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv50(o_9)] && NoPerm < FullPerm) && qpRange50(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_34]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@570.14--570.21) [15913]"}
            HasDirectPerm(Mask, n$0_34, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v1: Ref, v2: Ref, v: Ref :: { (v in g), v1.next, v2.next } (v1 in g) && ((v2 in g) && (v in g)) ==> v1.next == v && v2.next == v ==> v1 == v2)
      if (*) {
        if (g_1[v1_20] && (g_1[v2_20] && g_1[v_33])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v1.next (ring-insert.vpr@571.14--571.35) [15914]"}
            HasDirectPerm(Mask, v1_20, next);
          if (Heap[v1_20, next] == v_33) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v2.next (ring-insert.vpr@571.14--571.35) [15915]"}
              HasDirectPerm(Mask, v2_20, next);
          }
        }
        assume false;
      }
    assume (forall v1_1: Ref, v2_1: Ref, v_1_1: Ref ::
      { g_1[v_1_1], Heap[v1_1, next], Heap[v2_1, next] }
      g_1[v1_1] && (g_1[v2_1] && g_1[v_1_1]) ==> Heap[v1_1, next] == v_1_1 && Heap[v2_1, next] == v_1_1 ==> v1_1 == v2_1
    );
    
    // -- Check definedness of (forall v$0: Ref :: { v$0.next } (v$0 in g) ==> (v$0 == v$0.next) == (g == Set(v$0)))
      if (*) {
        if (g_1[v$0_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v$0.next (ring-insert.vpr@571.14--571.35) [15916]"}
            HasDirectPerm(Mask, v$0_2, next);
        }
        assume false;
      }
    assume (forall v$0_1: Ref ::
      { Heap[v$0_1, next] }
      g_1[v$0_1] ==> (v$0_1 == Heap[v$0_1, next]) == Set#Equal(g_1, Set#Singleton(v$0_1))
    );
    assume state(Heap, Mask);
    assume g_1[start_1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n))
      if (*) {
        if (g_1[n_69] && g_1[m_8]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@575.46--575.51) [15917]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] && dummyFunction(Heap[n$0_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@575.46--575.51) [15918]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered51(n$0_2), neverTriggered51(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g_1[n$0_2]) && g_1[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@575.46--575.51) [15919]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] && NoPerm < 1 / 2 ==> qpRange51(n$0_2) && invRecv51(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv51(o_9) }
                g_1[invRecv51(o_9)] && (NoPerm < 1 / 2 && qpRange51(o_9)) ==> invRecv51(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, g_1), n_69, m_8): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@575.72--575.77) [15920]"}
                  (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] && dummyFunction(Heap[n$0_3, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@575.72--575.77) [15921]"}
                  (forall n$0_3: Ref, n$0_3_1: Ref ::
                  { neverTriggered52(n$0_3), neverTriggered52(n$0_3_1) }
                  (((n$0_3 != n$0_3_1 && g_1[n$0_3]) && g_1[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@575.72--575.77) [15922]"}
                  (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] && NoPerm < 1 / 2 ==> qpRange52(n$0_3) && invRecv52(n$0_3) == n$0_3
                );
                assume (forall o_9: Ref ::
                  { invRecv52(o_9) }
                  g_1[invRecv52(o_9)] && (NoPerm < 1 / 2 && qpRange52(o_9)) ==> invRecv52(o_9) == o_9
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
    assume (forall n_3: Ref, m_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_3, m_1): bool) }
      g_1[n_3] && g_1[m_1] ==> (exists_path($$(Heap, g_1), n_3, m_1): bool) && (exists_path($$(Heap, g_1), m_1, n_3): bool)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.val might not be injective. (ring-insert.vpr@576.14--576.61) [15923]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, val] } { QPMask[n_5, val] } { Heap[n_5, val] }
        g_1[n_5] && NoPerm < FullPerm ==> qpRange53(n_5) && invRecv53(n_5) == n_5
      );
      assume (forall o_9: Ref ::
        { invRecv53(o_9) }
        (g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9) ==> invRecv53(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, val] } { QPMask[n_5, val] } { Heap[n_5, val] }
        g_1[n_5] ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9) ==> (NoPerm < FullPerm ==> invRecv53(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((g_1[invRecv53(o_9)] && NoPerm < FullPerm) && qpRange53(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next.val } (n in g) && n.next != start ==> n.val <= n.next.val)
      if (*) {
        if (g_1[n_70]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@577.14--577.94) [15924]"}
            HasDirectPerm(Mask, n_70, next);
        }
        if (g_1[n_70] && Heap[n_70, next] != start_1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@577.14--577.94) [15925]"}
            HasDirectPerm(Mask, n_70, val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@577.14--577.94) [15926]"}
            HasDirectPerm(Mask, n_70, next);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@577.14--577.94) [15927]"}
            HasDirectPerm(Mask, Heap[n_70, next], val);
        }
        assume false;
      }
    assume (forall n_7: Ref ::
      { Heap[Heap[n_7, next], val] }
      g_1[n_7] && Heap[n_7, next] != start_1 ==> Heap[n_7, val] <= Heap[Heap[n_7, next], val]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next.val } (n in g) && n.next == start ==> n.next.val <= n.val)
      if (*) {
        if (g_1[n_55]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@578.14--578.94) [15928]"}
            HasDirectPerm(Mask, n_55, next);
        }
        if (g_1[n_55] && Heap[n_55, next] == start_1) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@578.14--578.94) [15929]"}
            HasDirectPerm(Mask, n_55, next);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@578.14--578.94) [15930]"}
            HasDirectPerm(Mask, Heap[n_55, next], val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@578.14--578.94) [15931]"}
            HasDirectPerm(Mask, n_55, val);
        }
        assume false;
      }
    assume (forall n_9: Ref ::
      { Heap[Heap[n_9, next], val] }
      g_1[n_9] && Heap[n_9, next] == start_1 ==> Heap[Heap[n_9, next], val] <= Heap[n_9, val]
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
    assume !new_g[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in new_g) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@580.13--580.24) [15932]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && new_g[n$1_1]) && new_g[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        new_g[n$1_1] && NoPerm < FullPerm ==> qpRange54(n$1_1) && invRecv54(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv54(o_9) }
        (new_g[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9) ==> invRecv54(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        new_g[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((new_g[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9) ==> (NoPerm < FullPerm ==> invRecv54(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((new_g[invRecv54(o_9)] && NoPerm < FullPerm) && qpRange54(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in new_g) } { (n$2 in new_g), n$2.next } (n$2 in new_g) ==> (n$2.next in new_g))
      if (*) {
        if (new_g[n$2_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@580.13--580.24) [15933]"}
            HasDirectPerm(PostMask, n$2_17, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { new_g[PostHeap[n$2_1, next]] } { new_g[n$2_1], PostHeap[n$2_1, next] }
      new_g[n$2_1] ==> new_g[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall v1$0: Ref, v2$0: Ref, v$1: Ref :: { (v$1 in new_g), v1$0.next, v2$0.next } (v1$0 in new_g) && ((v2$0 in new_g) && (v$1 in new_g)) ==> v1$0.next == v$1 && v2$0.next == v$1 ==> v1$0 == v2$0)
      if (*) {
        if (new_g[v1$0] && (new_g[v2$0] && new_g[v$1_2])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v1$0.next (ring-insert.vpr@581.13--581.38) [15934]"}
            HasDirectPerm(PostMask, v1$0, next);
          if (PostHeap[v1$0, next] == v$1_2) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v2$0.next (ring-insert.vpr@581.13--581.38) [15935]"}
              HasDirectPerm(PostMask, v2$0, next);
          }
        }
        assume false;
      }
    assume (forall v1$0_1: Ref, v2$0_1: Ref, v$1_1: Ref ::
      { new_g[v$1_1], PostHeap[v1$0_1, next], PostHeap[v2$0_1, next] }
      new_g[v1$0_1] && (new_g[v2$0_1] && new_g[v$1_1]) ==> PostHeap[v1$0_1, next] == v$1_1 && PostHeap[v2$0_1, next] == v$1_1 ==> v1$0_1 == v2$0_1
    );
    
    // -- Check definedness of (forall v$2: Ref :: { v$2.next } (v$2 in new_g) ==> (v$2 == v$2.next) == (new_g == Set(v$2)))
      if (*) {
        if (new_g[v$2_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v$2.next (ring-insert.vpr@581.13--581.38) [15936]"}
            HasDirectPerm(PostMask, v$2_2, next);
        }
        assume false;
      }
    assume (forall v$2_1: Ref ::
      { PostHeap[v$2_1, next] }
      new_g[v$2_1] ==> (v$2_1 == PostHeap[v$2_1, next]) == Set#Equal(new_g, Set#Singleton(v$2_1))
    );
    assume state(PostHeap, PostMask);
    assume new_g[new_start];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { n.val } (n in new_g) ==> acc(n.val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.val might not be injective. (ring-insert.vpr@583.13--583.64) [15937]"}
      (forall n_11_2: Ref, n_11_3: Ref ::
      
      (((n_11_2 != n_11_3 && new_g[n_11_2]) && new_g[n_11_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_2 != n_11_3
    );
    
    // -- Define Inverse Function
      assume (forall n_11_2: Ref ::
        { PostHeap[n_11_2, val] } { QPMask[n_11_2, val] } { PostHeap[n_11_2, val] }
        new_g[n_11_2] && NoPerm < FullPerm ==> qpRange55(n_11_2) && invRecv55(n_11_2) == n_11_2
      );
      assume (forall o_9: Ref ::
        { invRecv55(o_9) }
        (new_g[invRecv55(o_9)] && NoPerm < FullPerm) && qpRange55(o_9) ==> invRecv55(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_11_2: Ref ::
        { PostHeap[n_11_2, val] } { QPMask[n_11_2, val] } { PostHeap[n_11_2, val] }
        new_g[n_11_2] ==> n_11_2 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((new_g[invRecv55(o_9)] && NoPerm < FullPerm) && qpRange55(o_9) ==> (NoPerm < FullPerm ==> invRecv55(o_9) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!((new_g[invRecv55(o_9)] && NoPerm < FullPerm) && qpRange55(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume !g_1[new_node];
    assume new_g[new_node];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of new_node.val == x
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access new_node.val (ring-insert.vpr@585.13--585.30) [15938]"}
        HasDirectPerm(PostMask, new_node, val);
    assume PostHeap[new_node, val] == x;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { n.next.val } (n in new_g) && n.next != new_start ==> n.val <= n.next.val)
      if (*) {
        if (new_g[n_71]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@586.13--586.101) [15939]"}
            HasDirectPerm(PostMask, n_71, next);
        }
        if (new_g[n_71] && PostHeap[n_71, next] != new_start) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@586.13--586.101) [15940]"}
            HasDirectPerm(PostMask, n_71, val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@586.13--586.101) [15941]"}
            HasDirectPerm(PostMask, n_71, next);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@586.13--586.101) [15942]"}
            HasDirectPerm(PostMask, PostHeap[n_71, next], val);
        }
        assume false;
      }
    assume (forall n_13_2: Ref ::
      { PostHeap[PostHeap[n_13_2, next], val] }
      new_g[n_13_2] && PostHeap[n_13_2, next] != new_start ==> PostHeap[n_13_2, val] <= PostHeap[PostHeap[n_13_2, next], val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref :: { n.next.val } (n in new_g) && n.next == new_start ==> n.next.val <= n.val)
      if (*) {
        if (new_g[n_72]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@587.13--587.101) [15943]"}
            HasDirectPerm(PostMask, n_72, next);
        }
        if (new_g[n_72] && PostHeap[n_72, next] == new_start) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@587.13--587.101) [15944]"}
            HasDirectPerm(PostMask, n_72, next);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@587.13--587.101) [15945]"}
            HasDirectPerm(PostMask, PostHeap[n_72, next], val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@587.13--587.101) [15946]"}
            HasDirectPerm(PostMask, n_72, val);
        }
        assume false;
      }
    assume (forall n_15: Ref ::
      { PostHeap[PostHeap[n_15, next], val] }
      new_g[n_15] && PostHeap[n_15, next] == new_start ==> PostHeap[PostHeap[n_15, next], val] <= PostHeap[n_15, val]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(new_g), n, m) } (n in new_g) && (m in new_g) ==> exists_path($$(new_g), n, m) && exists_path($$(new_g), m, n))
      if (*) {
        if (new_g[n_73] && new_g[m_9]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@591.33--591.42) [15947]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                new_g[n$0_4] && dummyFunction(PostHeap[n$0_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@591.33--591.42) [15948]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered56(n$0_4), neverTriggered56(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && new_g[n$0_4]) && new_g[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@591.33--591.42) [15949]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                new_g[n$0_4] ==> 1 / 2 > NoPerm ==> PostMask[n$0_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                new_g[n$0_4] && NoPerm < 1 / 2 ==> qpRange56(n$0_4) && invRecv56(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv56(o_9) }
                new_g[invRecv56(o_9)] && (NoPerm < 1 / 2 && qpRange56(o_9)) ==> invRecv56(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(PostHeap, new_g), n_73, m_9): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@591.63--591.72) [15950]"}
                  (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  new_g[n$0_5] && dummyFunction(PostHeap[n$0_5, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@591.63--591.72) [15951]"}
                  (forall n$0_5: Ref, n$0_5_1: Ref ::
                  { neverTriggered57(n$0_5), neverTriggered57(n$0_5_1) }
                  (((n$0_5 != n$0_5_1 && new_g[n$0_5]) && new_g[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@591.63--591.72) [15952]"}
                  (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  new_g[n$0_5] ==> 1 / 2 > NoPerm ==> PostMask[n$0_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  new_g[n$0_5] && NoPerm < 1 / 2 ==> qpRange57(n$0_5) && invRecv57(n$0_5) == n$0_5
                );
                assume (forall o_9: Ref ::
                  { invRecv57(o_9) }
                  new_g[invRecv57(o_9)] && (NoPerm < 1 / 2 && qpRange57(o_9)) ==> invRecv57(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall n_17: Ref, m_3: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, new_g)), new_g), n_17, m_3): bool) }
      new_g[n_17] && new_g[m_3] ==> (exists_path($$(PostHeap, new_g), n_17, m_3): bool) && (exists_path($$(PostHeap, new_g), m_3, n_17): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[node, $allocated];
  
  // -- Translating statement: new_g, new_node := create_node(g, x) -- ring-insert.vpr@593.5--593.41
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc new_g, new_node;
    
    // -- Inhaling postcondition
      assume !g_1[new_node];
      assume Set#Equal(new_g, Set#Union(g_1, Set#Singleton(new_node)));
      perm := FullPerm;
      assume new_node != null;
      Mask := Mask[new_node, next:=Mask[new_node, next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume new_node != null;
      Mask := Mask[new_node, val:=Mask[new_node, val] + perm];
      assume state(Heap, Mask);
      assume Heap[new_node, next] == null;
      assume Heap[new_node, val] == x;
      assume state(Heap, Mask);
    assume Heap[new_node, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: node := start -- ring-insert.vpr@594.5--594.26
    node := start_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (!(node.val <= x && x < node.next.val || node.next == start && (node.val <= x || x < start.val))) -- ring-insert.vpr@595.5--608.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not hold on entry. Assertion !((null in g)) might not hold. (ring-insert.vpr@597.19--597.26) [15953]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$3 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not hold on entry. Quantified resource n$3.next might not be injective. (ring-insert.vpr@597.19--597.26) [15954]"}
            (forall n$3_4: Ref, n$3_6: Ref ::
            { neverTriggered60(n$3_4), neverTriggered60(n$3_6) }
            (((n$3_4 != n$3_6 && g_1[n$3_4]) && g_1[n$3_6]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_4 != n$3_6
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not hold on entry. There might be insufficient permission to access n$3.next (ring-insert.vpr@597.19--597.26) [15955]"}
            (forall n$3_4: Ref ::
            { Heap[n$3_4, next] } { QPMask[n$3_4, next] } { Heap[n$3_4, next] }
            g_1[n$3_4] ==> Mask[n$3_4, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$3
          assume (forall n$3_4: Ref ::
            { Heap[n$3_4, next] } { QPMask[n$3_4, next] } { Heap[n$3_4, next] }
            g_1[n$3_4] && NoPerm < FullPerm ==> qpRange60(n$3_4) && invRecv60(n$3_4) == n$3_4
          );
          assume (forall o_9: Ref ::
            { invRecv60(o_9) }
            g_1[invRecv60(o_9)] && (NoPerm < FullPerm && qpRange60(o_9)) ==> invRecv60(o_9) == o_9
          );
        
        // -- assume permission updates for field next
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            (g_1[invRecv60(o_9)] && (NoPerm < FullPerm && qpRange60(o_9)) ==> invRecv60(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv60(o_9)] && (NoPerm < FullPerm && qpRange60(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$4_10]) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not hold on entry. Assertion (n$4.next in g) might not hold. (ring-insert.vpr@597.19--597.26) [15956]"}
              g_1[Heap[n$4_10, next]];
          }
          assume false;
        }
        assume (forall n$4_1_1_1: Ref ::
          { g_1[Heap[n$4_1_1_1, next]] } { g_1[n$4_1_1_1], Heap[n$4_1_1_1, next] }
          g_1[n$4_1_1_1] ==> g_1[Heap[n$4_1_1_1, next]]
        );
        if (*) {
          if (g_1[v1$1] && (g_1[v2$1] && g_1[v$3])) {
            if (Heap[v1$1, next] == v$3 && Heap[v2$1, next] == v$3) {
              assert {:msg "  Loop invariant (forall v1$1: Ref, v2$1: Ref, v$3: Ref :: { (v$3 in g), v1$1.next, v2$1.next } (v1$1 in g) && ((v2$1 in g) && (v$3 in g)) ==> v1$1.next == v$3 && v2$1.next == v$3 ==> v1$1 == v2$1) && (forall v$4: Ref :: { v$4.next } (v$4 in g) ==> (v$4 == v$4.next) == (g == Set(v$4))) might not hold on entry. Assertion v1$1 == v2$1 might not hold. (ring-insert.vpr@598.19--598.40) [15957]"}
                v1$1 == v2$1;
            }
          }
          assume false;
        }
        assume (forall v1$1_1_1: Ref, v2$1_1_1: Ref, v$3_1_1: Ref ::
          { g_1[v$3_1_1], Heap[v1$1_1_1, next], Heap[v2$1_1_1, next] }
          g_1[v1$1_1_1] && (g_1[v2$1_1_1] && g_1[v$3_1_1]) ==> Heap[v1$1_1_1, next] == v$3_1_1 && Heap[v2$1_1_1, next] == v$3_1_1 ==> v1$1_1_1 == v2$1_1_1
        );
        if (*) {
          if (g_1[v$4]) {
            assert {:msg "  Loop invariant (forall v1$1: Ref, v2$1: Ref, v$3: Ref :: { (v$3 in g), v1$1.next, v2$1.next } (v1$1 in g) && ((v2$1 in g) && (v$3 in g)) ==> v1$1.next == v$3 && v2$1.next == v$3 ==> v1$1 == v2$1) && (forall v$4: Ref :: { v$4.next } (v$4 in g) ==> (v$4 == v$4.next) == (g == Set(v$4))) might not hold on entry. Assertion (v$4 == v$4.next) == (g == Set(v$4)) might not hold. (ring-insert.vpr@598.19--598.40) [15958]"}
              (v$4 == Heap[v$4, next]) == Set#Equal(g_1, Set#Singleton(v$4));
          }
          assume false;
        }
        assume (forall v$4_1_1: Ref ::
          { Heap[v$4_1_1, next] }
          g_1[v$4_1_1] ==> (v$4_1_1 == Heap[v$4_1_1, next]) == Set#Equal(g_1, Set#Singleton(v$4_1_1))
        );
        assert {:msg "  Loop invariant (node in g) might not hold on entry. Assertion (node in g) might not hold. (ring-insert.vpr@599.19--599.28) [15959]"}
          g_1[node];
        if (*) {
          if (g_1[n_25] && g_1[m_6_1]) {
            assert {:msg "  Loop invariant (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n)) might not hold on entry. Assertion exists_path($$(g), n, m) might not hold. (ring-insert.vpr@600.19--602.86) [15960]"}
              (exists_path($$(Heap, g_1), n_25, m_6_1): bool);
            assert {:msg "  Loop invariant (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n)) might not hold on entry. Assertion exists_path($$(g), m, n) might not hold. (ring-insert.vpr@600.19--602.86) [15961]"}
              (exists_path($$(Heap, g_1), m_6_1, n_25): bool);
          }
          assume false;
        }
        assume (forall n_26_1_1: Ref, m_7_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_26_1_1, m_7_1): bool) }
          g_1[n_26_1_1] && g_1[m_7_1] ==> (exists_path($$(Heap, g_1), n_26_1_1, m_7_1): bool) && (exists_path($$(Heap, g_1), m_7_1, n_26_1_1): bool)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Loop invariant (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write)) might not hold on entry. Quantified resource n.val might not be injective. (ring-insert.vpr@603.19--603.66) [15962]"}
            (forall n_27: Ref, n_27_1: Ref ::
            { neverTriggered61(n_27), neverTriggered61(n_27_1) }
            (((n_27 != n_27_1 && g_1[n_27]) && g_1[n_27_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_27 != n_27_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write)) might not hold on entry. There might be insufficient permission to access n.val (ring-insert.vpr@603.19--603.66) [15963]"}
            (forall n_27: Ref ::
            { Heap[n_27, val] } { QPMask[n_27, val] } { Heap[n_27, val] }
            g_1[n_27] ==> Mask[n_27, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_27: Ref ::
            { Heap[n_27, val] } { QPMask[n_27, val] } { Heap[n_27, val] }
            g_1[n_27] && NoPerm < FullPerm ==> qpRange61(n_27) && invRecv61(n_27) == n_27
          );
          assume (forall o_9: Ref ::
            { invRecv61(o_9) }
            g_1[invRecv61(o_9)] && (NoPerm < FullPerm && qpRange61(o_9)) ==> invRecv61(o_9) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (g_1[invRecv61(o_9)] && (NoPerm < FullPerm && qpRange61(o_9)) ==> invRecv61(o_9) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(g_1[invRecv61(o_9)] && (NoPerm < FullPerm && qpRange61(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n_28] && Heap[n_28, next] != start_1) {
            assert {:msg "  Loop invariant (forall n: Ref :: { n.next.val } (n in g) && n.next != start ==> n.val <= n.next.val) might not hold on entry. Assertion n.val <= n.next.val might not hold. (ring-insert.vpr@604.19--604.99) [15964]"}
              Heap[n_28, val] <= Heap[Heap[n_28, next], val];
          }
          assume false;
        }
        assume (forall n_29_1_1: Ref ::
          { Heap[Heap[n_29_1_1, next], val] }
          g_1[n_29_1_1] && Heap[n_29_1_1, next] != start_1 ==> Heap[n_29_1_1, val] <= Heap[Heap[n_29_1_1, next], val]
        );
        if (*) {
          if (g_1[n_30] && Heap[n_30, next] == start_1) {
            assert {:msg "  Loop invariant (forall n: Ref :: { n.next.val } (n in g) && n.next == start ==> n.next.val <= n.val) might not hold on entry. Assertion n.next.val <= n.val might not hold. (ring-insert.vpr@605.19--605.99) [15965]"}
              Heap[Heap[n_30, next], val] <= Heap[n_30, val];
          }
          assume false;
        }
        assume (forall n_31_1_1: Ref ::
          { Heap[Heap[n_31_1_1, next], val] }
          g_1[n_31_1_1] && Heap[n_31_1_1, next] == start_1 ==> Heap[Heap[n_31_1_1, next], val] <= Heap[n_31_1_1, val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc node;
      assume Heap[node, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume !g_1[null];
        
        // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (ring-insert.vpr@597.19--597.26) [15966]"}
          (forall n$3_2: Ref, n$3_2_1: Ref ::
          
          (((n$3_2 != n$3_2_1 && g_1[n$3_2]) && g_1[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$3_2: Ref ::
            { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
            g_1[n$3_2] && NoPerm < FullPerm ==> qpRange62(n$3_2) && invRecv62(n$3_2) == n$3_2
          );
          assume (forall o_9: Ref ::
            { invRecv62(o_9) }
            (g_1[invRecv62(o_9)] && NoPerm < FullPerm) && qpRange62(o_9) ==> invRecv62(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$3_2: Ref ::
            { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
            g_1[n$3_2] ==> n$3_2 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            ((g_1[invRecv62(o_9)] && NoPerm < FullPerm) && qpRange62(o_9) ==> (NoPerm < FullPerm ==> invRecv62(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv62(o_9)] && NoPerm < FullPerm) && qpRange62(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))
          if (*) {
            if (g_1[n$4_12]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (ring-insert.vpr@597.19--597.26) [15967]"}
                HasDirectPerm(Mask, n$4_12, next);
            }
            assume false;
          }
        assume (forall n$4_3_2: Ref ::
          { g_1[Heap[n$4_3_2, next]] } { g_1[n$4_3_2], Heap[n$4_3_2, next] }
          g_1[n$4_3_2] ==> g_1[Heap[n$4_3_2, next]]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall v1$1: Ref, v2$1: Ref, v$3: Ref :: { (v$3 in g), v1$1.next, v2$1.next } (v1$1 in g) && ((v2$1 in g) && (v$3 in g)) ==> v1$1.next == v$3 && v2$1.next == v$3 ==> v1$1 == v2$1)
          if (*) {
            if (g_1[v1$1_1] && (g_1[v2$1_1] && g_1[v$3_1])) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v1$1.next (ring-insert.vpr@598.19--598.40) [15968]"}
                HasDirectPerm(Mask, v1$1_1, next);
              if (Heap[v1$1_1, next] == v$3_1) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v2$1.next (ring-insert.vpr@598.19--598.40) [15969]"}
                  HasDirectPerm(Mask, v2$1_1, next);
              }
            }
            assume false;
          }
        assume (forall v1$1_3: Ref, v2$1_3: Ref, v$3_3: Ref ::
          { g_1[v$3_3], Heap[v1$1_3, next], Heap[v2$1_3, next] }
          g_1[v1$1_3] && (g_1[v2$1_3] && g_1[v$3_3]) ==> Heap[v1$1_3, next] == v$3_3 && Heap[v2$1_3, next] == v$3_3 ==> v1$1_3 == v2$1_3
        );
        
        // -- Check definedness of (forall v$4: Ref :: { v$4.next } (v$4 in g) ==> (v$4 == v$4.next) == (g == Set(v$4)))
          if (*) {
            if (g_1[v$4_1]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v$4.next (ring-insert.vpr@598.19--598.40) [15970]"}
                HasDirectPerm(Mask, v$4_1, next);
            }
            assume false;
          }
        assume (forall v$4_3: Ref ::
          { Heap[v$4_3, next] }
          g_1[v$4_3] ==> (v$4_3 == Heap[v$4_3, next]) == Set#Equal(g_1, Set#Singleton(v$4_3))
        );
        assume state(Heap, Mask);
        assume g_1[node];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n))
          if (*) {
            if (g_1[n_74] && g_1[m_10]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@602.50--602.55) [15971]"}
                    (forall n$0_6: Ref ::
                    { Heap[n$0_6, next] } { QPMask[n$0_6, next] } { Heap[n$0_6, next] }
                    g_1[n$0_6] && dummyFunction(Heap[n$0_6, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n$0 is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@602.50--602.55) [15972]"}
                    (forall n$0_6: Ref, n$0_6_1: Ref ::
                    { neverTriggered63(n$0_6), neverTriggered63(n$0_6_1) }
                    (((n$0_6 != n$0_6_1 && g_1[n$0_6]) && g_1[n$0_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_6 != n$0_6_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@602.50--602.55) [15973]"}
                    (forall n$0_6: Ref ::
                    { Heap[n$0_6, next] } { QPMask[n$0_6, next] } { Heap[n$0_6, next] }
                    g_1[n$0_6] ==> 1 / 2 > NoPerm ==> Mask[n$0_6, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n$0
                  assume (forall n$0_6: Ref ::
                    { Heap[n$0_6, next] } { QPMask[n$0_6, next] } { Heap[n$0_6, next] }
                    g_1[n$0_6] && NoPerm < 1 / 2 ==> qpRange63(n$0_6) && invRecv63(n$0_6) == n$0_6
                  );
                  assume (forall o_9: Ref ::
                    { invRecv63(o_9) }
                    g_1[invRecv63(o_9)] && (NoPerm < 1 / 2 && qpRange63(o_9)) ==> invRecv63(o_9) == o_9
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if ((exists_path($$(Heap, g_1), n_74, m_10): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@602.76--602.81) [15974]"}
                      (forall n$0_7: Ref ::
                      { Heap[n$0_7, next] } { QPMask[n$0_7, next] } { Heap[n$0_7, next] }
                      g_1[n$0_7] && dummyFunction(Heap[n$0_7, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n$0 is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@602.76--602.81) [15975]"}
                      (forall n$0_7: Ref, n$0_7_1: Ref ::
                      { neverTriggered64(n$0_7), neverTriggered64(n$0_7_1) }
                      (((n$0_7 != n$0_7_1 && g_1[n$0_7]) && g_1[n$0_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_7 != n$0_7_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@602.76--602.81) [15976]"}
                      (forall n$0_7: Ref ::
                      { Heap[n$0_7, next] } { QPMask[n$0_7, next] } { Heap[n$0_7, next] }
                      g_1[n$0_7] ==> 1 / 2 > NoPerm ==> Mask[n$0_7, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n$0
                    assume (forall n$0_7: Ref ::
                      { Heap[n$0_7, next] } { QPMask[n$0_7, next] } { Heap[n$0_7, next] }
                      g_1[n$0_7] && NoPerm < 1 / 2 ==> qpRange64(n$0_7) && invRecv64(n$0_7) == n$0_7
                    );
                    assume (forall o_9: Ref ::
                      { invRecv64(o_9) }
                      g_1[invRecv64(o_9)] && (NoPerm < 1 / 2 && qpRange64(o_9)) ==> invRecv64(o_9) == o_9
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
        assume (forall n_33: Ref, m_9_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_33, m_9_1): bool) }
          g_1[n_33] && g_1[m_9_1] ==> (exists_path($$(Heap, g_1), n_33, m_9_1): bool) && (exists_path($$(Heap, g_1), m_9_1, n_33): bool)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n.val might not be injective. (ring-insert.vpr@603.19--603.66) [15977]"}
          (forall n_35: Ref, n_35_1: Ref ::
          
          (((n_35 != n_35_1 && g_1[n_35]) && g_1[n_35_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_35 != n_35_1
        );
        
        // -- Define Inverse Function
          assume (forall n_35: Ref ::
            { Heap[n_35, val] } { QPMask[n_35, val] } { Heap[n_35, val] }
            g_1[n_35] && NoPerm < FullPerm ==> qpRange65(n_35) && invRecv65(n_35) == n_35
          );
          assume (forall o_9: Ref ::
            { invRecv65(o_9) }
            (g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9) ==> invRecv65(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n_35: Ref ::
            { Heap[n_35, val] } { QPMask[n_35, val] } { Heap[n_35, val] }
            g_1[n_35] ==> n_35 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9) ==> (NoPerm < FullPerm ==> invRecv65(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((g_1[invRecv65(o_9)] && NoPerm < FullPerm) && qpRange65(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref :: { n.next.val } (n in g) && n.next != start ==> n.val <= n.next.val)
          if (*) {
            if (g_1[n_75]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@604.19--604.99) [15978]"}
                HasDirectPerm(Mask, n_75, next);
            }
            if (g_1[n_75] && Heap[n_75, next] != start_1) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@604.19--604.99) [15979]"}
                HasDirectPerm(Mask, n_75, val);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@604.19--604.99) [15980]"}
                HasDirectPerm(Mask, n_75, next);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@604.19--604.99) [15981]"}
                HasDirectPerm(Mask, Heap[n_75, next], val);
            }
            assume false;
          }
        assume (forall n_37: Ref ::
          { Heap[Heap[n_37, next], val] }
          g_1[n_37] && Heap[n_37, next] != start_1 ==> Heap[n_37, val] <= Heap[Heap[n_37, next], val]
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n: Ref :: { n.next.val } (n in g) && n.next == start ==> n.next.val <= n.val)
          if (*) {
            if (g_1[n_76]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@605.19--605.99) [15982]"}
                HasDirectPerm(Mask, n_76, next);
            }
            if (g_1[n_76] && Heap[n_76, next] == start_1) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next (ring-insert.vpr@605.19--605.99) [15983]"}
                HasDirectPerm(Mask, n_76, next);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.next.val (ring-insert.vpr@605.19--605.99) [15984]"}
                HasDirectPerm(Mask, Heap[n_76, next], val);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.val (ring-insert.vpr@605.19--605.99) [15985]"}
                HasDirectPerm(Mask, n_76, val);
            }
            assume false;
          }
        assume (forall n_39: Ref ::
          { Heap[Heap[n_39, next], val] }
          g_1[n_39] && Heap[n_39, next] == start_1 ==> Heap[Heap[n_39, next], val] <= Heap[n_39, val]
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
        assume !g_1[null];
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n$3.next might not be injective. (ring-insert.vpr@597.19--597.26) [15986]"}
          (forall n$3_3: Ref, n$3_3_1: Ref ::
          
          (((n$3_3 != n$3_3_1 && g_1[n$3_3]) && g_1[n$3_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_3 != n$3_3_1
        );
        
        // -- Define Inverse Function
          assume (forall n$3_3: Ref ::
            { Heap[n$3_3, next] } { QPMask[n$3_3, next] } { Heap[n$3_3, next] }
            g_1[n$3_3] && NoPerm < FullPerm ==> qpRange66(n$3_3) && invRecv66(n$3_3) == n$3_3
          );
          assume (forall o_9: Ref ::
            { invRecv66(o_9) }
            (g_1[invRecv66(o_9)] && NoPerm < FullPerm) && qpRange66(o_9) ==> invRecv66(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$3_3: Ref ::
            { Heap[n$3_3, next] } { QPMask[n$3_3, next] } { Heap[n$3_3, next] }
            g_1[n$3_3] ==> n$3_3 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            ((g_1[invRecv66(o_9)] && NoPerm < FullPerm) && qpRange66(o_9) ==> (NoPerm < FullPerm ==> invRecv66(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv66(o_9)] && NoPerm < FullPerm) && qpRange66(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n$4_4_1: Ref ::
          { g_1[Heap[n$4_4_1, next]] } { g_1[n$4_4_1], Heap[n$4_4_1, next] }
          g_1[n$4_4_1] ==> g_1[Heap[n$4_4_1, next]]
        );
        assume (forall v1$1_4: Ref, v2$1_4: Ref, v$3_4: Ref ::
          { g_1[v$3_4], Heap[v1$1_4, next], Heap[v2$1_4, next] }
          g_1[v1$1_4] && (g_1[v2$1_4] && g_1[v$3_4]) ==> Heap[v1$1_4, next] == v$3_4 && Heap[v2$1_4, next] == v$3_4 ==> v1$1_4 == v2$1_4
        );
        assume (forall v$4_4: Ref ::
          { Heap[v$4_4, next] }
          g_1[v$4_4] ==> (v$4_4 == Heap[v$4_4, next]) == Set#Equal(g_1, Set#Singleton(v$4_4))
        );
        assume g_1[node];
        assume state(Heap, Mask);
        assume (forall n_40: Ref, m_10_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_40, m_10_1): bool) }
          g_1[n_40] && g_1[m_10_1] ==> (exists_path($$(Heap, g_1), n_40, m_10_1): bool) && (exists_path($$(Heap, g_1), m_10_1, n_40): bool)
        );
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n.val might not be injective. (ring-insert.vpr@603.19--603.66) [15987]"}
          (forall n_41: Ref, n_41_1: Ref ::
          
          (((n_41 != n_41_1 && g_1[n_41]) && g_1[n_41_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_41 != n_41_1
        );
        
        // -- Define Inverse Function
          assume (forall n_41: Ref ::
            { Heap[n_41, val] } { QPMask[n_41, val] } { Heap[n_41, val] }
            g_1[n_41] && NoPerm < FullPerm ==> qpRange67(n_41) && invRecv67(n_41) == n_41
          );
          assume (forall o_9: Ref ::
            { invRecv67(o_9) }
            (g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9) ==> invRecv67(o_9) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n_41: Ref ::
            { Heap[n_41, val] } { QPMask[n_41, val] } { Heap[n_41, val] }
            g_1[n_41] ==> n_41 != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9) ==> (NoPerm < FullPerm ==> invRecv67(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((g_1[invRecv67(o_9)] && NoPerm < FullPerm) && qpRange67(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n_42: Ref ::
          { Heap[Heap[n_42, next], val] }
          g_1[n_42] && Heap[n_42, next] != start_1 ==> Heap[n_42, val] <= Heap[Heap[n_42, next], val]
        );
        assume (forall n_43: Ref ::
          { Heap[Heap[n_43, next], val] }
          g_1[n_43] && Heap[n_43, next] == start_1 ==> Heap[Heap[n_43, next], val] <= Heap[n_43, val]
        );
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of !(node.val <= x && x < node.next.val || node.next == start && (node.val <= x || x < start.val))
          assert {:msg "  While statement might fail. There might be insufficient permission to access node.val (ring-insert.vpr@595.13--596.77) [15988]"}
            HasDirectPerm(Mask, node, val);
          if (Heap[node, val] <= x) {
            assert {:msg "  While statement might fail. There might be insufficient permission to access node.next (ring-insert.vpr@595.13--596.77) [15989]"}
              HasDirectPerm(Mask, node, next);
            assert {:msg "  While statement might fail. There might be insufficient permission to access node.next.val (ring-insert.vpr@595.13--596.77) [15990]"}
              HasDirectPerm(Mask, Heap[node, next], val);
          }
          if (!(Heap[node, val] <= x && x < Heap[Heap[node, next], val])) {
            assert {:msg "  While statement might fail. There might be insufficient permission to access node.next (ring-insert.vpr@595.13--596.77) [15991]"}
              HasDirectPerm(Mask, node, next);
            if (Heap[node, next] == start_1) {
              assert {:msg "  While statement might fail. There might be insufficient permission to access node.val (ring-insert.vpr@595.13--596.77) [15992]"}
                HasDirectPerm(Mask, node, val);
              if (!(Heap[node, val] <= x)) {
                assert {:msg "  While statement might fail. There might be insufficient permission to access start.val (ring-insert.vpr@595.13--596.77) [15993]"}
                  HasDirectPerm(Mask, start_1, val);
              }
            }
          }
        assume !((Heap[node, val] <= x && x < Heap[Heap[node, next], val]) || (Heap[node, next] == start_1 && (Heap[node, val] <= x || x < Heap[start_1, val])));
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: node := node.next -- ring-insert.vpr@607.9--607.26
            
            // -- Check definedness of node.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access node.next (ring-insert.vpr@607.9--607.26) [15994]"}
                HasDirectPerm(Mask, node, next);
            node := Heap[node, next];
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not be preserved. Assertion !((null in g)) might not hold. (ring-insert.vpr@597.19--597.26) [15995]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$3 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not be preserved. Quantified resource n$3.next might not be injective. (ring-insert.vpr@597.19--597.26) [15996]"}
            (forall n$3_4_1: Ref, n$3_4_2: Ref ::
            { neverTriggered68(n$3_4_1), neverTriggered68(n$3_4_2) }
            (((n$3_4_1 != n$3_4_2 && g_1[n$3_4_1]) && g_1[n$3_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_4_1 != n$3_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not be preserved. There might be insufficient permission to access n$3.next (ring-insert.vpr@597.19--597.26) [15997]"}
            (forall n$3_4_1: Ref ::
            { Heap[n$3_4_1, next] } { QPMask[n$3_4_1, next] } { Heap[n$3_4_1, next] }
            g_1[n$3_4_1] ==> Mask[n$3_4_1, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$3
          assume (forall n$3_4_1: Ref ::
            { Heap[n$3_4_1, next] } { QPMask[n$3_4_1, next] } { Heap[n$3_4_1, next] }
            g_1[n$3_4_1] && NoPerm < FullPerm ==> qpRange68(n$3_4_1) && invRecv68(n$3_4_1) == n$3_4_1
          );
          assume (forall o_9: Ref ::
            { invRecv68(o_9) }
            g_1[invRecv68(o_9)] && (NoPerm < FullPerm && qpRange68(o_9)) ==> invRecv68(o_9) == o_9
          );
        
        // -- assume permission updates for field next
          assume (forall o_9: Ref ::
            { QPMask[o_9, next] }
            (g_1[invRecv68(o_9)] && (NoPerm < FullPerm && qpRange68(o_9)) ==> invRecv68(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv68(o_9)] && (NoPerm < FullPerm && qpRange68(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$4_5_1]) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$3: Ref :: { n$3.next } (n$3 in g) ==> acc(n$3.next, write)) && (forall n$4: Ref :: { (n$4.next in g) } { (n$4 in g), n$4.next } (n$4 in g) ==> (n$4.next in g))) might not be preserved. Assertion (n$4.next in g) might not hold. (ring-insert.vpr@597.19--597.26) [15998]"}
              g_1[Heap[n$4_5_1, next]];
          }
          assume false;
        }
        assume (forall n$4_6_1: Ref ::
          { g_1[Heap[n$4_6_1, next]] } { g_1[n$4_6_1], Heap[n$4_6_1, next] }
          g_1[n$4_6_1] ==> g_1[Heap[n$4_6_1, next]]
        );
        if (*) {
          if (g_1[v1$1_5] && (g_1[v2$1_5] && g_1[v$3_5])) {
            if (Heap[v1$1_5, next] == v$3_5 && Heap[v2$1_5, next] == v$3_5) {
              assert {:msg "  Loop invariant (forall v1$1: Ref, v2$1: Ref, v$3: Ref :: { (v$3 in g), v1$1.next, v2$1.next } (v1$1 in g) && ((v2$1 in g) && (v$3 in g)) ==> v1$1.next == v$3 && v2$1.next == v$3 ==> v1$1 == v2$1) && (forall v$4: Ref :: { v$4.next } (v$4 in g) ==> (v$4 == v$4.next) == (g == Set(v$4))) might not be preserved. Assertion v1$1 == v2$1 might not hold. (ring-insert.vpr@598.19--598.40) [15999]"}
                v1$1_5 == v2$1_5;
            }
          }
          assume false;
        }
        assume (forall v1$1_6_1: Ref, v2$1_6_1: Ref, v$3_6_1: Ref ::
          { g_1[v$3_6_1], Heap[v1$1_6_1, next], Heap[v2$1_6_1, next] }
          g_1[v1$1_6_1] && (g_1[v2$1_6_1] && g_1[v$3_6_1]) ==> Heap[v1$1_6_1, next] == v$3_6_1 && Heap[v2$1_6_1, next] == v$3_6_1 ==> v1$1_6_1 == v2$1_6_1
        );
        if (*) {
          if (g_1[v$4_5]) {
            assert {:msg "  Loop invariant (forall v1$1: Ref, v2$1: Ref, v$3: Ref :: { (v$3 in g), v1$1.next, v2$1.next } (v1$1 in g) && ((v2$1 in g) && (v$3 in g)) ==> v1$1.next == v$3 && v2$1.next == v$3 ==> v1$1 == v2$1) && (forall v$4: Ref :: { v$4.next } (v$4 in g) ==> (v$4 == v$4.next) == (g == Set(v$4))) might not be preserved. Assertion (v$4 == v$4.next) == (g == Set(v$4)) might not hold. (ring-insert.vpr@598.19--598.40) [16000]"}
              (v$4_5 == Heap[v$4_5, next]) == Set#Equal(g_1, Set#Singleton(v$4_5));
          }
          assume false;
        }
        assume (forall v$4_6_1: Ref ::
          { Heap[v$4_6_1, next] }
          g_1[v$4_6_1] ==> (v$4_6_1 == Heap[v$4_6_1, next]) == Set#Equal(g_1, Set#Singleton(v$4_6_1))
        );
        assert {:msg "  Loop invariant (node in g) might not be preserved. Assertion (node in g) might not hold. (ring-insert.vpr@599.19--599.28) [16001]"}
          g_1[node];
        if (*) {
          if (g_1[n_44] && g_1[m_11]) {
            assert {:msg "  Loop invariant (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n)) might not be preserved. Assertion exists_path($$(g), n, m) might not hold. (ring-insert.vpr@600.19--602.86) [16002]"}
              (exists_path($$(Heap, g_1), n_44, m_11): bool);
            assert {:msg "  Loop invariant (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n)) might not be preserved. Assertion exists_path($$(g), m, n) might not hold. (ring-insert.vpr@600.19--602.86) [16003]"}
              (exists_path($$(Heap, g_1), m_11, n_44): bool);
          }
          assume false;
        }
        assume (forall n_45_1_1: Ref, m_12_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_45_1_1, m_12_1): bool) }
          g_1[n_45_1_1] && g_1[m_12_1] ==> (exists_path($$(Heap, g_1), n_45_1_1, m_12_1): bool) && (exists_path($$(Heap, g_1), m_12_1, n_45_1_1): bool)
        );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Loop invariant (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write)) might not be preserved. Quantified resource n.val might not be injective. (ring-insert.vpr@603.19--603.66) [16004]"}
            (forall n_46: Ref, n_46_1: Ref ::
            { neverTriggered69(n_46), neverTriggered69(n_46_1) }
            (((n_46 != n_46_1 && g_1[n_46]) && g_1[n_46_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_46 != n_46_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall n: Ref :: { n.val } (n in g) ==> acc(n.val, write)) might not be preserved. There might be insufficient permission to access n.val (ring-insert.vpr@603.19--603.66) [16005]"}
            (forall n_46: Ref ::
            { Heap[n_46, val] } { QPMask[n_46, val] } { Heap[n_46, val] }
            g_1[n_46] ==> Mask[n_46, val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_46: Ref ::
            { Heap[n_46, val] } { QPMask[n_46, val] } { Heap[n_46, val] }
            g_1[n_46] && NoPerm < FullPerm ==> qpRange69(n_46) && invRecv69(n_46) == n_46
          );
          assume (forall o_9: Ref ::
            { invRecv69(o_9) }
            g_1[invRecv69(o_9)] && (NoPerm < FullPerm && qpRange69(o_9)) ==> invRecv69(o_9) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (g_1[invRecv69(o_9)] && (NoPerm < FullPerm && qpRange69(o_9)) ==> invRecv69(o_9) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(g_1[invRecv69(o_9)] && (NoPerm < FullPerm && qpRange69(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n_47] && Heap[n_47, next] != start_1) {
            assert {:msg "  Loop invariant (forall n: Ref :: { n.next.val } (n in g) && n.next != start ==> n.val <= n.next.val) might not be preserved. Assertion n.val <= n.next.val might not hold. (ring-insert.vpr@604.19--604.99) [16006]"}
              Heap[n_47, val] <= Heap[Heap[n_47, next], val];
          }
          assume false;
        }
        assume (forall n_48_1: Ref ::
          { Heap[Heap[n_48_1, next], val] }
          g_1[n_48_1] && Heap[n_48_1, next] != start_1 ==> Heap[n_48_1, val] <= Heap[Heap[n_48_1, next], val]
        );
        if (*) {
          if (g_1[n_49_1] && Heap[n_49_1, next] == start_1) {
            assert {:msg "  Loop invariant (forall n: Ref :: { n.next.val } (n in g) && n.next == start ==> n.next.val <= n.val) might not be preserved. Assertion n.next.val <= n.val might not hold. (ring-insert.vpr@605.19--605.99) [16007]"}
              Heap[Heap[n_49_1, next], val] <= Heap[n_49_1, val];
          }
          assume false;
        }
        assume (forall n_50_1: Ref ::
          { Heap[Heap[n_50_1, next], val] }
          g_1[n_50_1] && Heap[n_50_1, next] == start_1 ==> Heap[Heap[n_50_1, next], val] <= Heap[n_50_1, val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume (Heap[node, val] <= x && x < Heap[Heap[node, next], val]) || (Heap[node, next] == start_1 && (Heap[node, val] <= x || x < Heap[start_1, val]));
      assume state(Heap, Mask);
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$3.next might not be injective. (ring-insert.vpr@597.19--597.26) [16008]"}
        (forall n$3_5_1: Ref, n$3_5_2: Ref ::
        
        (((n$3_5_1 != n$3_5_2 && g_1[n$3_5_1]) && g_1[n$3_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_5_1 != n$3_5_2
      );
      
      // -- Define Inverse Function
        assume (forall n$3_5_1: Ref ::
          { Heap[n$3_5_1, next] } { QPMask[n$3_5_1, next] } { Heap[n$3_5_1, next] }
          g_1[n$3_5_1] && NoPerm < FullPerm ==> qpRange70(n$3_5_1) && invRecv70(n$3_5_1) == n$3_5_1
        );
        assume (forall o_9: Ref ::
          { invRecv70(o_9) }
          (g_1[invRecv70(o_9)] && NoPerm < FullPerm) && qpRange70(o_9) ==> invRecv70(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$3_5_1: Ref ::
          { Heap[n$3_5_1, next] } { QPMask[n$3_5_1, next] } { Heap[n$3_5_1, next] }
          g_1[n$3_5_1] ==> n$3_5_1 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((g_1[invRecv70(o_9)] && NoPerm < FullPerm) && qpRange70(o_9) ==> (NoPerm < FullPerm ==> invRecv70(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv70(o_9)] && NoPerm < FullPerm) && qpRange70(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$4_7_1: Ref ::
        { g_1[Heap[n$4_7_1, next]] } { g_1[n$4_7_1], Heap[n$4_7_1, next] }
        g_1[n$4_7_1] ==> g_1[Heap[n$4_7_1, next]]
      );
      assume (forall v1$1_7: Ref, v2$1_7: Ref, v$3_7: Ref ::
        { g_1[v$3_7], Heap[v1$1_7, next], Heap[v2$1_7, next] }
        g_1[v1$1_7] && (g_1[v2$1_7] && g_1[v$3_7]) ==> Heap[v1$1_7, next] == v$3_7 && Heap[v2$1_7, next] == v$3_7 ==> v1$1_7 == v2$1_7
      );
      assume (forall v$4_7: Ref ::
        { Heap[v$4_7, next] }
        g_1[v$4_7] ==> (v$4_7 == Heap[v$4_7, next]) == Set#Equal(g_1, Set#Singleton(v$4_7))
      );
      assume g_1[node];
      assume state(Heap, Mask);
      assume (forall n_51_1: Ref, m_13: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_51_1, m_13): bool) }
        g_1[n_51_1] && g_1[m_13] ==> (exists_path($$(Heap, g_1), n_51_1, m_13): bool) && (exists_path($$(Heap, g_1), m_13, n_51_1): bool)
      );
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n.val might not be injective. (ring-insert.vpr@603.19--603.66) [16009]"}
        (forall n_52_1: Ref, n_52_2: Ref ::
        
        (((n_52_1 != n_52_2 && g_1[n_52_1]) && g_1[n_52_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_52_1 != n_52_2
      );
      
      // -- Define Inverse Function
        assume (forall n_52_1: Ref ::
          { Heap[n_52_1, val] } { QPMask[n_52_1, val] } { Heap[n_52_1, val] }
          g_1[n_52_1] && NoPerm < FullPerm ==> qpRange71(n_52_1) && invRecv71(n_52_1) == n_52_1
        );
        assume (forall o_9: Ref ::
          { invRecv71(o_9) }
          (g_1[invRecv71(o_9)] && NoPerm < FullPerm) && qpRange71(o_9) ==> invRecv71(o_9) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n_52_1: Ref ::
          { Heap[n_52_1, val] } { QPMask[n_52_1, val] } { Heap[n_52_1, val] }
          g_1[n_52_1] ==> n_52_1 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((g_1[invRecv71(o_9)] && NoPerm < FullPerm) && qpRange71(o_9) ==> (NoPerm < FullPerm ==> invRecv71(o_9) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((g_1[invRecv71(o_9)] && NoPerm < FullPerm) && qpRange71(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n_53_1: Ref ::
        { Heap[Heap[n_53_1, next], val] }
        g_1[n_53_1] && Heap[n_53_1, next] != start_1 ==> Heap[n_53_1, val] <= Heap[Heap[n_53_1, next], val]
      );
      assume (forall n_54_1: Ref ::
        { Heap[Heap[n_54_1, next], val] }
        g_1[n_54_1] && Heap[n_54_1, next] == start_1 ==> Heap[Heap[n_54_1, next], val] <= Heap[n_54_1, val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.next == start && x < start.val) -- ring-insert.vpr@610.5--614.6
    
    // -- Check definedness of node.next == start && x < start.val
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.next (ring-insert.vpr@610.10--610.45) [16010]"}
        HasDirectPerm(Mask, node, next);
      if (Heap[node, next] == start_1) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access start.val (ring-insert.vpr@610.10--610.45) [16011]"}
          HasDirectPerm(Mask, start_1, val);
      }
    if (Heap[node, next] == start_1 && x < Heap[start_1, val]) {
      
      // -- Translating statement: new_start := new_node -- ring-insert.vpr@611.9--611.30
        new_start := new_node;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: new_start := start -- ring-insert.vpr@613.9--613.27
        new_start := start_1;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g, Set(new_node)) -- ring-insert.vpr@617.12--617.44
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g, Set(new_node))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@617.12--617.44) [16012]"}
            (forall n_55_1: Ref ::
            { Heap[n_55_1, next] } { QPMask[n_55_1, next] } { Heap[n_55_1, next] }
            g_1[n_55_1] && dummyFunction(Heap[n_55_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@617.12--617.44) [16013]"}
            (forall n_55_1: Ref, n_55_2: Ref ::
            { neverTriggered72(n_55_1), neverTriggered72(n_55_2) }
            (((n_55_1 != n_55_2 && g_1[n_55_1]) && g_1[n_55_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_55_1 != n_55_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@617.12--617.44) [16014]"}
            (forall n_55_1: Ref ::
            { Heap[n_55_1, next] } { QPMask[n_55_1, next] } { Heap[n_55_1, next] }
            g_1[n_55_1] ==> 1 / 2 > NoPerm ==> Mask[n_55_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_55_1: Ref ::
            { Heap[n_55_1, next] } { QPMask[n_55_1, next] } { Heap[n_55_1, next] }
            g_1[n_55_1] && NoPerm < 1 / 2 ==> qpRange72(n_55_1) && invRecv72(n_55_1) == n_55_1
          );
          assume (forall o_9: Ref ::
            { invRecv72(o_9) }
            g_1[invRecv72(o_9)] && (NoPerm < 1 / 2 && qpRange72(o_9)) ==> invRecv72(o_9) == o_9
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@617.12--617.44) [16015]"}
            (forall n_56_1: Ref ::
            { Heap[n_56_1, next] } { QPMask[n_56_1, next] } { Heap[n_56_1, next] }
            Set#Singleton(new_node)[n_56_1] && dummyFunction(Heap[n_56_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@617.12--617.44) [16016]"}
            (forall n_56_1: Ref, n_56_2: Ref ::
            { neverTriggered73(n_56_1), neverTriggered73(n_56_2) }
            (((n_56_1 != n_56_2 && Set#Singleton(new_node)[n_56_1]) && Set#Singleton(new_node)[n_56_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_56_1 != n_56_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@617.12--617.44) [16017]"}
            (forall n_56_1: Ref ::
            { Heap[n_56_1, next] } { QPMask[n_56_1, next] } { Heap[n_56_1, next] }
            Set#Singleton(new_node)[n_56_1] ==> 1 / 2 > NoPerm ==> Mask[n_56_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_56_1: Ref ::
            { Heap[n_56_1, next] } { QPMask[n_56_1, next] } { Heap[n_56_1, next] }
            Set#Singleton(new_node)[n_56_1] && NoPerm < 1 / 2 ==> qpRange73(n_56_1) && invRecv73(n_56_1) == n_56_1
          );
          assume (forall o_9: Ref ::
            { invRecv73(o_9) }
            Set#Singleton(new_node)[invRecv73(o_9)] && (NoPerm < 1 / 2 && qpRange73(o_9)) ==> invRecv73(o_9) == o_9
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (Set(new_node) intersection g) == Set[Ref]() might not hold. (ring-insert.vpr@617.12--617.44) [16018]"}
          Set#Equal(Set#Intersection(Set#Singleton(new_node), g_1), (Set#Empty(): Set Ref));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume apply_TCFraming(Heap, g_1, Set#Singleton(new_node));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (new_node.next != null) -- ring-insert.vpr@620.5--622.6
    
    // -- Check definedness of new_node.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access new_node.next (ring-insert.vpr@620.10--620.31) [16019]"}
        HasDirectPerm(Mask, new_node, next);
    if (Heap[new_node, next] != null) {
      
      // -- Translating statement: unlink_01PG_next(new_g, new_node) -- ring-insert.vpr@621.9--621.42
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (new_node in new_g) might not hold. (ring-insert.vpr@621.9--621.42) [16020]"}
            new_g[new_node];
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion !((null in new_g)) might not hold. (ring-insert.vpr@621.9--621.42) [16021]"}
            !new_g[null];
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (new_node in new_g) might not hold. (ring-insert.vpr@621.9--621.42) [16022]"}
            new_g[new_node];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. There might be insufficient permission to access new_node.next (ring-insert.vpr@621.9--621.42) [16023]"}
              perm <= Mask[new_node, next];
          }
          Mask := Mask[new_node, next:=Mask[new_node, next] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@621.9--621.42) [16024]"}
              (forall n_57_1: Ref ::
              { Heap[n_57_1, next] } { QPMask[n_57_1, next] } { Heap[n_57_1, next] }
              (new_g[n_57_1] && n_57_1 != new_node) && dummyFunction(Heap[n_57_1, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@621.9--621.42) [16025]"}
              (forall n_57_1: Ref, n_57_2: Ref ::
              { neverTriggered74(n_57_1), neverTriggered74(n_57_2) }
              (((n_57_1 != n_57_2 && (new_g[n_57_1] && n_57_1 != new_node)) && (new_g[n_57_2] && n_57_2 != new_node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_57_1 != n_57_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@621.9--621.42) [16026]"}
              (forall n_57_1: Ref ::
              { Heap[n_57_1, next] } { QPMask[n_57_1, next] } { Heap[n_57_1, next] }
              new_g[n_57_1] && n_57_1 != new_node ==> Mask[n_57_1, next] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_57_1: Ref ::
              { Heap[n_57_1, next] } { QPMask[n_57_1, next] } { Heap[n_57_1, next] }
              (new_g[n_57_1] && n_57_1 != new_node) && NoPerm < 1 / 2 ==> qpRange74(n_57_1) && invRecv74(n_57_1) == n_57_1
            );
            assume (forall o_9: Ref ::
              { invRecv74(o_9) }
              (new_g[invRecv74(o_9)] && invRecv74(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange74(o_9)) ==> invRecv74(o_9) == o_9
            );
          
          // -- assume permission updates for field next
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              ((new_g[invRecv74(o_9)] && invRecv74(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange74(o_9)) ==> invRecv74(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((new_g[invRecv74(o_9)] && invRecv74(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange74(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (new_g[n$0_8] && Heap[n$0_8, next] != null) {
              assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (n$0.next in new_g) might not hold. (ring-insert.vpr@621.9--621.42) [16027]"}
                new_g[Heap[n$0_8, next]];
            }
            assume false;
          }
          assume (forall n$0_9_1_1: Ref ::
            { new_g[Heap[n$0_9_1_1, next]] } { new_g[n$0_9_1_1], Heap[n$0_9_1_1, next] }
            new_g[n$0_9_1_1] && Heap[n$0_9_1_1, next] != null ==> new_g[Heap[n$0_9_1_1, next]]
          );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !new_g[null];
          assume new_g[new_node];
          perm := FullPerm;
          assume new_node != null;
          Mask := Mask[new_node, next:=Mask[new_node, next] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (ring-insert.vpr@621.9--621.42) [16028]"}
            (forall n$1_3: Ref, n$1_3_1: Ref ::
            
            (((n$1_3 != n$1_3_1 && (new_g[n$1_3] && n$1_3 != new_node)) && (new_g[n$1_3_1] && n$1_3_1 != new_node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_3 != n$1_3_1
          );
          
          // -- Define Inverse Function
            assume (forall n$1_3: Ref ::
              { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
              (new_g[n$1_3] && n$1_3 != new_node) && NoPerm < 1 / 2 ==> qpRange75(n$1_3) && invRecv75(n$1_3) == n$1_3
            );
            assume (forall o_9: Ref ::
              { invRecv75(o_9) }
              ((new_g[invRecv75(o_9)] && invRecv75(o_9) != new_node) && NoPerm < 1 / 2) && qpRange75(o_9) ==> invRecv75(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (ring-insert.vpr@621.9--621.42) [16029]"}
            (forall n$1_3: Ref ::
            { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
            new_g[n$1_3] && n$1_3 != new_node ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$1_3: Ref ::
              { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
              (new_g[n$1_3] && n$1_3 != new_node) && 1 / 2 > NoPerm ==> n$1_3 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              (((new_g[invRecv75(o_9)] && invRecv75(o_9) != new_node) && NoPerm < 1 / 2) && qpRange75(o_9) ==> (NoPerm < 1 / 2 ==> invRecv75(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((new_g[invRecv75(o_9)] && invRecv75(o_9) != new_node) && NoPerm < 1 / 2) && qpRange75(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$2_4_1: Ref ::
            { new_g[Heap[n$2_4_1, next]] } { new_g[n$2_4_1], Heap[n$2_4_1, next] }
            new_g[n$2_4_1] && Heap[n$2_4_1, next] != null ==> new_g[Heap[n$2_4_1, next]]
          );
          assume Heap[new_node, next] == null;
          if (PreCallHeap[new_node, next] == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, new_g), $$(PreCallHeap, new_g));
          }
          if (PreCallHeap[new_node, next] != null) {
            assume state(Heap, Mask);
            assume (forall v1_2_1: Ref, v2_2_1: Ref ::
              { (edge($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_2_1, v2_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_2_1, v2_2_1): bool) }
              (edge($$(Heap, new_g), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, new_g), v1_2_1, v2_2_1): bool) && !(v1_2_1 == new_node && v2_2_1 == PreCallHeap[new_node, next]))
            );
          }
          if (PreCallHeap[new_node, next] != null) {
            assume state(Heap, Mask);
            assume (forall x$0: Ref, y: Ref, u_1: Ref, v_2_2: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0, y, u_1, v_2_2): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0, y, u_1, v_2_2): bool) }
              (DEP($$(PreCallHeap, new_g), x$0, y, u_1, v_2_2): bool) && !(DEP($$(PreCallHeap, new_g), x$0, y, new_node, PreCallHeap[new_node, next]): bool) ==> (DEP($$(Heap, new_g), x$0, y, u_1, v_2_2): bool)
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: link_01PG_next(new_g, new_node, node.next) -- ring-insert.vpr@623.5--623.47
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of node.next
      assert {:msg "  Method call might fail. There might be insufficient permission to access node.next (ring-insert.vpr@623.5--623.47) [16030]"}
        HasDirectPerm(Mask, node, next);
    arg_to := Heap[node, next];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (new_node in new_g) might not hold. (ring-insert.vpr@623.5--623.47) [16031]"}
        new_g[new_node];
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion node.next != null might not hold. (ring-insert.vpr@623.5--623.47) [16032]"}
        arg_to != null;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion !((null in new_g)) might not hold. (ring-insert.vpr@623.5--623.47) [16033]"}
        !new_g[null];
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (new_node in new_g) might not hold. (ring-insert.vpr@623.5--623.47) [16034]"}
        new_g[new_node];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method link_01PG_next might not hold. There might be insufficient permission to access new_node.next (ring-insert.vpr@623.5--623.47) [16035]"}
          perm <= Mask[new_node, next];
      }
      Mask := Mask[new_node, next:=Mask[new_node, next] - perm];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method link_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@623.5--623.47) [16036]"}
          (forall n_58_1: Ref ::
          { Heap[n_58_1, next] } { QPMask[n_58_1, next] } { Heap[n_58_1, next] }
          (new_g[n_58_1] && n_58_1 != new_node) && dummyFunction(Heap[n_58_1, next]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method link_01PG_next might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@623.5--623.47) [16037]"}
          (forall n_58_1: Ref, n_58_2: Ref ::
          { neverTriggered76(n_58_1), neverTriggered76(n_58_2) }
          (((n_58_1 != n_58_2 && (new_g[n_58_1] && n_58_1 != new_node)) && (new_g[n_58_2] && n_58_2 != new_node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_58_1 != n_58_2
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method link_01PG_next might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@623.5--623.47) [16038]"}
          (forall n_58_1: Ref ::
          { Heap[n_58_1, next] } { QPMask[n_58_1, next] } { Heap[n_58_1, next] }
          new_g[n_58_1] && n_58_1 != new_node ==> Mask[n_58_1, next] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_58_1: Ref ::
          { Heap[n_58_1, next] } { QPMask[n_58_1, next] } { Heap[n_58_1, next] }
          (new_g[n_58_1] && n_58_1 != new_node) && NoPerm < 1 / 2 ==> qpRange76(n_58_1) && invRecv76(n_58_1) == n_58_1
        );
        assume (forall o_9: Ref ::
          { invRecv76(o_9) }
          (new_g[invRecv76(o_9)] && invRecv76(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange76(o_9)) ==> invRecv76(o_9) == o_9
        );
      
      // -- assume permission updates for field next
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((new_g[invRecv76(o_9)] && invRecv76(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange76(o_9)) ==> invRecv76(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((new_g[invRecv76(o_9)] && invRecv76(o_9) != new_node) && (NoPerm < 1 / 2 && qpRange76(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (new_g[n$0_10_1] && Heap[n$0_10_1, next] != null) {
          assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (n$0.next in new_g) might not hold. (ring-insert.vpr@623.5--623.47) [16039]"}
            new_g[Heap[n$0_10_1, next]];
        }
        assume false;
      }
      assume (forall n$0_11_1: Ref ::
        { new_g[Heap[n$0_11_1, next]] } { new_g[n$0_11_1], Heap[n$0_11_1, next] }
        new_g[n$0_11_1] && Heap[n$0_11_1, next] != null ==> new_g[Heap[n$0_11_1, next]]
      );
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion new_node.next == null might not hold. (ring-insert.vpr@623.5--623.47) [16040]"}
        Heap[new_node, next] == null;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion !exists_path($$(new_g), new_node, node.next) might not hold. (ring-insert.vpr@623.5--623.47) [16041]"}
        !(exists_path($$(Heap, new_g), new_node, arg_to): bool);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume !new_g[null];
      assume new_g[new_node];
      perm := FullPerm;
      assume new_node != null;
      Mask := Mask[new_node, next:=Mask[new_node, next] + perm];
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (ring-insert.vpr@623.5--623.47) [16042]"}
        (forall n$1_4: Ref, n$1_4_1: Ref ::
        
        (((n$1_4 != n$1_4_1 && (new_g[n$1_4] && n$1_4 != new_node)) && (new_g[n$1_4_1] && n$1_4_1 != new_node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_4 != n$1_4_1
      );
      
      // -- Define Inverse Function
        assume (forall n$1_4: Ref ::
          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
          (new_g[n$1_4] && n$1_4 != new_node) && NoPerm < 1 / 2 ==> qpRange77(n$1_4) && invRecv77(n$1_4) == n$1_4
        );
        assume (forall o_9: Ref ::
          { invRecv77(o_9) }
          ((new_g[invRecv77(o_9)] && invRecv77(o_9) != new_node) && NoPerm < 1 / 2) && qpRange77(o_9) ==> invRecv77(o_9) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (ring-insert.vpr@623.5--623.47) [16043]"}
        (forall n$1_4: Ref ::
        { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
        new_g[n$1_4] && n$1_4 != new_node ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_4: Ref ::
          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
          (new_g[n$1_4] && n$1_4 != new_node) && 1 / 2 > NoPerm ==> n$1_4 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          (((new_g[invRecv77(o_9)] && invRecv77(o_9) != new_node) && NoPerm < 1 / 2) && qpRange77(o_9) ==> (NoPerm < 1 / 2 ==> invRecv77(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((new_g[invRecv77(o_9)] && invRecv77(o_9) != new_node) && NoPerm < 1 / 2) && qpRange77(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2_5_1: Ref ::
        { new_g[Heap[n$2_5_1, next]] } { new_g[n$2_5_1], Heap[n$2_5_1, next] }
        new_g[n$2_5_1] && Heap[n$2_5_1, next] != null ==> new_g[Heap[n$2_5_1, next]]
      );
      assume Heap[new_node, next] == arg_to;
      if (arg_to == null) {
        assume state(Heap, Mask);
        assume Set#Equal($$(Heap, new_g), $$(PreCallHeap, new_g));
      }
      if (arg_to != null) {
        assume state(Heap, Mask);
        assume (forall v1_3: Ref, v2_3: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_3, v2_3): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_3, v2_3): bool) }
          (edge($$(Heap, new_g), v1_3, v2_3): bool) == ((edge($$(PreCallHeap, new_g), v1_3, v2_3): bool) || (v1_3 == new_node && v2_3 == arg_to))
        );
      }
      if (arg_to != null) {
        assume state(Heap, Mask);
        assume (forall x$0_1: Ref, y_1: Ref, u_1_1: Ref, v_3_1: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0_1, y_1, u_1_1, v_3_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, y_1, u_1_1, v_3_1): bool) }
          new_node != arg_to && (u_1_1 != v_3_1 && x$0_1 != y_1) ==> (DEP($$(PreCallHeap, new_g), x$0_1, y_1, u_1_1, v_3_1): bool) || ((x$0_1 == new_node && (u_1_1 == new_node && (y_1 == arg_to && v_3_1 == arg_to))) || ((exists w_2: Ref, z: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), arg_to, y_1, w_2, z): bool) }
            (forall u_: Ref, v_: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, y_1, u_, v_): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_1, y_1, u_, v_): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_1, new_node, u_1_1, v_3_1): bool) && x$0_1 != new_node) || (x$0_1 == u_1_1 && (u_1_1 == new_node && v_3_1 == arg_to))) && (((DEP($$(PreCallHeap, new_g), arg_to, y_1, w_2, z): bool) && arg_to != y_1) || (new_node == w_2 && (arg_to == z && z == y_1))))
          ) || ((exists U_1: Ref, V_11: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, new_node, U_1, V_11): bool) }
            (forall u__1: Ref, v__1: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, y_1, u__1, v__1): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_1, y_1, u__1, v__1): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_1, new_node, U_1, V_11): bool) && x$0_1 != new_node) || (x$0_1 == U_1 && (U_1 == new_node && V_11 == arg_to))) && (((DEP($$(PreCallHeap, new_g), arg_to, y_1, u_1_1, v_3_1): bool) && arg_to != y_1) || (new_node == u_1_1 && (arg_to == v_3_1 && v_3_1 == y_1))))
          ) || (u_1_1 == new_node && (v_3_1 == arg_to && (exists U_1_1: Ref, V_1: Ref, w_1_1: Ref, z_1: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, new_node, U_1_1, V_1): bool), (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), arg_to, y_1, w_1_1, z_1): bool) }
            (forall u__2: Ref, v__2: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_1, y_1, u__2, v__2): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_1, y_1, u__2, v__2): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_1, new_node, U_1_1, V_1): bool) && x$0_1 != new_node) || (x$0_1 == U_1_1 && (U_1_1 == new_node && V_1 == arg_to))) && (((DEP($$(PreCallHeap, new_g), arg_to, y_1, w_1_1, z_1): bool) && arg_to != y_1) || (new_node == w_1_1 && (arg_to == z_1 && z_1 == y_1))))
          )))))) ==> (DEP($$(Heap, new_g), x$0_1, y_1, u_1_1, v_3_1): bool)
        );
      }
      if (arg_to != null) {
        assume state(Heap, Mask);
        assume (forall x$0_2: Ref, y_2_1: Ref, u_2_2: Ref, v_4_1: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0_2, y_2_1, u_2_2, v_4_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_2, y_2_1, u_2_2, v_4_1): bool) }
          (DEP($$(Heap, new_g), x$0_2, y_2_1, u_2_2, v_4_1): bool) && !(DEP($$(Heap, new_g), x$0_2, y_2_1, new_node, arg_to): bool) ==> (DEP($$(PreCallHeap, new_g), x$0_2, y_2_1, u_2_2, v_4_1): bool)
        );
      }
      assume state(Heap, Mask);
      assume (forall n_59_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), arg_to, n_59_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_59_1): bool) }
        new_g[n_59_1] && n_59_1 != new_node ==> (__learn_trigger__((DEP($$(Heap, new_g), new_node, n_59_1, new_node, Heap[new_node, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_60_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), arg_to, n_60_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_60_1): bool) }
        new_g[n_60_1] && n_60_1 != arg_to ==> (__learn_trigger__((DEP($$(Heap, new_g), arg_to, n_60_1, arg_to, Heap[arg_to, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_61_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_61_1, arg_to): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_61_1, new_node): bool) }
        new_g[n_61_1] && n_61_1 != new_node ==> (__learn_trigger__((DEP($$(Heap, new_g), n_61_1, new_node, n_61_1, Heap[n_61_1, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_62_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), arg_to, n_62_1, arg_to, Heap[arg_to, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_62_1, new_node, Heap[new_node, next]): bool) }
        new_g[n_62_1] ==> (__learn_trigger__((exists_path($$(Heap, new_g), arg_to, n_62_1): bool)): bool) && (__learn_trigger__((exists_path($$(PreCallHeap, new_g), arg_to, n_62_1): bool)): bool)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (node.next != null) -- ring-insert.vpr@626.5--628.6
    
    // -- Check definedness of node.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node.next (ring-insert.vpr@626.10--626.27) [16044]"}
        HasDirectPerm(Mask, node, next);
    if (Heap[node, next] != null) {
      
      // -- Translating statement: unlink_01PG_next(new_g, node) -- ring-insert.vpr@627.9--627.38
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (node in new_g) might not hold. (ring-insert.vpr@627.9--627.38) [16045]"}
            new_g[node];
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion !((null in new_g)) might not hold. (ring-insert.vpr@627.9--627.38) [16046]"}
            !new_g[null];
          assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (node in new_g) might not hold. (ring-insert.vpr@627.9--627.38) [16047]"}
            new_g[node];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. There might be insufficient permission to access node.next (ring-insert.vpr@627.9--627.38) [16048]"}
              perm <= Mask[node, next];
          }
          Mask := Mask[node, next:=Mask[node, next] - perm];
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@627.9--627.38) [16049]"}
              (forall n_63_1: Ref ::
              { Heap[n_63_1, next] } { QPMask[n_63_1, next] } { Heap[n_63_1, next] }
              (new_g[n_63_1] && n_63_1 != node) && dummyFunction(Heap[n_63_1, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@627.9--627.38) [16050]"}
              (forall n_63_1: Ref, n_63_2: Ref ::
              { neverTriggered78(n_63_1), neverTriggered78(n_63_2) }
              (((n_63_1 != n_63_2 && (new_g[n_63_1] && n_63_1 != node)) && (new_g[n_63_2] && n_63_2 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_63_1 != n_63_2
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method unlink_01PG_next might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@627.9--627.38) [16051]"}
              (forall n_63_1: Ref ::
              { Heap[n_63_1, next] } { QPMask[n_63_1, next] } { Heap[n_63_1, next] }
              new_g[n_63_1] && n_63_1 != node ==> Mask[n_63_1, next] >= 1 / 2
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_63_1: Ref ::
              { Heap[n_63_1, next] } { QPMask[n_63_1, next] } { Heap[n_63_1, next] }
              (new_g[n_63_1] && n_63_1 != node) && NoPerm < 1 / 2 ==> qpRange78(n_63_1) && invRecv78(n_63_1) == n_63_1
            );
            assume (forall o_9: Ref ::
              { invRecv78(o_9) }
              (new_g[invRecv78(o_9)] && invRecv78(o_9) != node) && (NoPerm < 1 / 2 && qpRange78(o_9)) ==> invRecv78(o_9) == o_9
            );
          
          // -- assume permission updates for field next
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              ((new_g[invRecv78(o_9)] && invRecv78(o_9) != node) && (NoPerm < 1 / 2 && qpRange78(o_9)) ==> invRecv78(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((new_g[invRecv78(o_9)] && invRecv78(o_9) != node) && (NoPerm < 1 / 2 && qpRange78(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          if (*) {
            if (new_g[n$0_12_1] && Heap[n$0_12_1, next] != null) {
              assert {:msg "  The precondition of method unlink_01PG_next might not hold. Assertion (n$0.next in new_g) might not hold. (ring-insert.vpr@627.9--627.38) [16052]"}
                new_g[Heap[n$0_12_1, next]];
            }
            assume false;
          }
          assume (forall n$0_13_1_1: Ref ::
            { new_g[Heap[n$0_13_1_1, next]] } { new_g[n$0_13_1_1], Heap[n$0_13_1_1, next] }
            new_g[n$0_13_1_1] && Heap[n$0_13_1_1, next] != null ==> new_g[Heap[n$0_13_1_1, next]]
          );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume !new_g[null];
          assume new_g[node];
          perm := FullPerm;
          assume node != null;
          Mask := Mask[node, next:=Mask[node, next] + perm];
          assume state(Heap, Mask);
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (ring-insert.vpr@627.9--627.38) [16053]"}
            (forall n$1_5: Ref, n$1_5_1: Ref ::
            
            (((n$1_5 != n$1_5_1 && (new_g[n$1_5] && n$1_5 != node)) && (new_g[n$1_5_1] && n$1_5_1 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_5 != n$1_5_1
          );
          
          // -- Define Inverse Function
            assume (forall n$1_5: Ref ::
              { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
              (new_g[n$1_5] && n$1_5 != node) && NoPerm < 1 / 2 ==> qpRange79(n$1_5) && invRecv79(n$1_5) == n$1_5
            );
            assume (forall o_9: Ref ::
              { invRecv79(o_9) }
              ((new_g[invRecv79(o_9)] && invRecv79(o_9) != node) && NoPerm < 1 / 2) && qpRange79(o_9) ==> invRecv79(o_9) == o_9
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (ring-insert.vpr@627.9--627.38) [16054]"}
            (forall n$1_5: Ref ::
            { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
            new_g[n$1_5] && n$1_5 != node ==> 1 / 2 >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall n$1_5: Ref ::
              { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
              (new_g[n$1_5] && n$1_5 != node) && 1 / 2 > NoPerm ==> n$1_5 != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, next] }
              (((new_g[invRecv79(o_9)] && invRecv79(o_9) != node) && NoPerm < 1 / 2) && qpRange79(o_9) ==> (NoPerm < 1 / 2 ==> invRecv79(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((new_g[invRecv79(o_9)] && invRecv79(o_9) != node) && NoPerm < 1 / 2) && qpRange79(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume (forall n$2_6_2: Ref ::
            { new_g[Heap[n$2_6_2, next]] } { new_g[n$2_6_2], Heap[n$2_6_2, next] }
            new_g[n$2_6_2] && Heap[n$2_6_2, next] != null ==> new_g[Heap[n$2_6_2, next]]
          );
          assume Heap[node, next] == null;
          if (PreCallHeap[node, next] == null) {
            assume state(Heap, Mask);
            assume Set#Equal($$(Heap, new_g), $$(PreCallHeap, new_g));
          }
          if (PreCallHeap[node, next] != null) {
            assume state(Heap, Mask);
            assume (forall v1_4: Ref, v2_4: Ref ::
              { (edge($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_4, v2_4): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_4, v2_4): bool) }
              (edge($$(Heap, new_g), v1_4, v2_4): bool) == ((edge($$(PreCallHeap, new_g), v1_4, v2_4): bool) && !(v1_4 == node && v2_4 == PreCallHeap[node, next]))
            );
          }
          if (PreCallHeap[node, next] != null) {
            assume state(Heap, Mask);
            assume (forall x$0_3: Ref, y_3_2: Ref, u_3_1: Ref, v_5_2: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0_3, y_3_2, u_3_1, v_5_2): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_3, y_3_2, u_3_1, v_5_2): bool) }
              (DEP($$(PreCallHeap, new_g), x$0_3, y_3_2, u_3_1, v_5_2): bool) && !(DEP($$(PreCallHeap, new_g), x$0_3, y_3_2, node, PreCallHeap[node, next]): bool) ==> (DEP($$(Heap, new_g), x$0_3, y_3_2, u_3_1, v_5_2): bool)
            );
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: link_01PG_next(new_g, node, new_node) -- ring-insert.vpr@629.5--629.42
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (node in new_g) might not hold. (ring-insert.vpr@629.5--629.42) [16055]"}
        new_g[node];
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion new_node != null might not hold. (ring-insert.vpr@629.5--629.42) [16056]"}
        new_node != null;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion !((null in new_g)) might not hold. (ring-insert.vpr@629.5--629.42) [16057]"}
        !new_g[null];
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (node in new_g) might not hold. (ring-insert.vpr@629.5--629.42) [16058]"}
        new_g[node];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method link_01PG_next might not hold. There might be insufficient permission to access node.next (ring-insert.vpr@629.5--629.42) [16059]"}
          perm <= Mask[node, next];
      }
      Mask := Mask[node, next:=Mask[node, next] - perm];
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method link_01PG_next might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@629.5--629.42) [16060]"}
          (forall n_64_1: Ref ::
          { Heap[n_64_1, next] } { QPMask[n_64_1, next] } { Heap[n_64_1, next] }
          (new_g[n_64_1] && n_64_1 != node) && dummyFunction(Heap[n_64_1, next]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver n is injective
        assert {:msg "  The precondition of method link_01PG_next might not hold. Quantified resource n.next might not be injective. (ring-insert.vpr@629.5--629.42) [16061]"}
          (forall n_64_1: Ref, n_64_2: Ref ::
          { neverTriggered80(n_64_1), neverTriggered80(n_64_2) }
          (((n_64_1 != n_64_2 && (new_g[n_64_1] && n_64_1 != node)) && (new_g[n_64_2] && n_64_2 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_64_1 != n_64_2
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method link_01PG_next might not hold. There might be insufficient permission to access n.next (ring-insert.vpr@629.5--629.42) [16062]"}
          (forall n_64_1: Ref ::
          { Heap[n_64_1, next] } { QPMask[n_64_1, next] } { Heap[n_64_1, next] }
          new_g[n_64_1] && n_64_1 != node ==> Mask[n_64_1, next] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver n
        assume (forall n_64_1: Ref ::
          { Heap[n_64_1, next] } { QPMask[n_64_1, next] } { Heap[n_64_1, next] }
          (new_g[n_64_1] && n_64_1 != node) && NoPerm < 1 / 2 ==> qpRange80(n_64_1) && invRecv80(n_64_1) == n_64_1
        );
        assume (forall o_9: Ref ::
          { invRecv80(o_9) }
          (new_g[invRecv80(o_9)] && invRecv80(o_9) != node) && (NoPerm < 1 / 2 && qpRange80(o_9)) ==> invRecv80(o_9) == o_9
        );
      
      // -- assume permission updates for field next
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          ((new_g[invRecv80(o_9)] && invRecv80(o_9) != node) && (NoPerm < 1 / 2 && qpRange80(o_9)) ==> invRecv80(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - 1 / 2) && (!((new_g[invRecv80(o_9)] && invRecv80(o_9) != node) && (NoPerm < 1 / 2 && qpRange80(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      if (*) {
        if (new_g[n$0_14_1] && Heap[n$0_14_1, next] != null) {
          assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion (n$0.next in new_g) might not hold. (ring-insert.vpr@629.5--629.42) [16063]"}
            new_g[Heap[n$0_14_1, next]];
        }
        assume false;
      }
      assume (forall n$0_15_1: Ref ::
        { new_g[Heap[n$0_15_1, next]] } { new_g[n$0_15_1], Heap[n$0_15_1, next] }
        new_g[n$0_15_1] && Heap[n$0_15_1, next] != null ==> new_g[Heap[n$0_15_1, next]]
      );
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion node.next == null might not hold. (ring-insert.vpr@629.5--629.42) [16064]"}
        Heap[node, next] == null;
      assert {:msg "  The precondition of method link_01PG_next might not hold. Assertion !exists_path($$(new_g), node, new_node) might not hold. (ring-insert.vpr@629.5--629.42) [16065]"}
        !(exists_path($$(Heap, new_g), node, new_node): bool);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume !new_g[null];
      assume new_g[node];
      perm := FullPerm;
      assume node != null;
      Mask := Mask[node, next:=Mask[node, next] + perm];
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (ring-insert.vpr@629.5--629.42) [16066]"}
        (forall n$1_6: Ref, n$1_6_1: Ref ::
        
        (((n$1_6 != n$1_6_1 && (new_g[n$1_6] && n$1_6 != node)) && (new_g[n$1_6_1] && n$1_6_1 != node)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_6 != n$1_6_1
      );
      
      // -- Define Inverse Function
        assume (forall n$1_6: Ref ::
          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
          (new_g[n$1_6] && n$1_6 != node) && NoPerm < 1 / 2 ==> qpRange81(n$1_6) && invRecv81(n$1_6) == n$1_6
        );
        assume (forall o_9: Ref ::
          { invRecv81(o_9) }
          ((new_g[invRecv81(o_9)] && invRecv81(o_9) != node) && NoPerm < 1 / 2) && qpRange81(o_9) ==> invRecv81(o_9) == o_9
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (ring-insert.vpr@629.5--629.42) [16067]"}
        (forall n$1_6: Ref ::
        { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
        new_g[n$1_6] && n$1_6 != node ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall n$1_6: Ref ::
          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
          (new_g[n$1_6] && n$1_6 != node) && 1 / 2 > NoPerm ==> n$1_6 != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, next] }
          (((new_g[invRecv81(o_9)] && invRecv81(o_9) != node) && NoPerm < 1 / 2) && qpRange81(o_9) ==> (NoPerm < 1 / 2 ==> invRecv81(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + 1 / 2) && (!(((new_g[invRecv81(o_9)] && invRecv81(o_9) != node) && NoPerm < 1 / 2) && qpRange81(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$2_7_1: Ref ::
        { new_g[Heap[n$2_7_1, next]] } { new_g[n$2_7_1], Heap[n$2_7_1, next] }
        new_g[n$2_7_1] && Heap[n$2_7_1, next] != null ==> new_g[Heap[n$2_7_1, next]]
      );
      assume Heap[node, next] == new_node;
      if (new_node == null) {
        assume state(Heap, Mask);
        assume Set#Equal($$(Heap, new_g), $$(PreCallHeap, new_g));
      }
      if (new_node != null) {
        assume state(Heap, Mask);
        assume (forall v1_5_2: Ref, v2_5_2: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_5_2, v2_5_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), v1_5_2, v2_5_2): bool) }
          (edge($$(Heap, new_g), v1_5_2, v2_5_2): bool) == ((edge($$(PreCallHeap, new_g), v1_5_2, v2_5_2): bool) || (v1_5_2 == node && v2_5_2 == new_node))
        );
      }
      if (new_node != null) {
        assume state(Heap, Mask);
        assume (forall x$0_4: Ref, y_4_1: Ref, u_4: Ref, v_6_1: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0_4, y_4_1, u_4, v_6_1): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, y_4_1, u_4, v_6_1): bool) }
          node != new_node && (u_4 != v_6_1 && x$0_4 != y_4_1) ==> (DEP($$(PreCallHeap, new_g), x$0_4, y_4_1, u_4, v_6_1): bool) || ((x$0_4 == node && (u_4 == node && (y_4_1 == new_node && v_6_1 == new_node))) || ((exists w_2_2: Ref, z_2: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), new_node, y_4_1, w_2_2, z_2): bool) }
            (forall u__3: Ref, v__3: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, y_4_1, u__3, v__3): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_4, y_4_1, u__3, v__3): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_4, node, u_4, v_6_1): bool) && x$0_4 != node) || (x$0_4 == u_4 && (u_4 == node && v_6_1 == new_node))) && (((DEP($$(PreCallHeap, new_g), new_node, y_4_1, w_2_2, z_2): bool) && new_node != y_4_1) || (node == w_2_2 && (new_node == z_2 && z_2 == y_4_1))))
          ) || ((exists U_2_1: Ref, V_2_1: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, node, U_2_1, V_2_1): bool) }
            (forall u__4: Ref, v__4: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, y_4_1, u__4, v__4): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_4, y_4_1, u__4, v__4): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_4, node, U_2_1, V_2_1): bool) && x$0_4 != node) || (x$0_4 == U_2_1 && (U_2_1 == node && V_2_1 == new_node))) && (((DEP($$(PreCallHeap, new_g), new_node, y_4_1, u_4, v_6_1): bool) && new_node != y_4_1) || (node == u_4 && (new_node == v_6_1 && v_6_1 == y_4_1))))
          ) || (u_4 == node && (v_6_1 == new_node && (exists U_3_1: Ref, V_3: Ref, w_3_1: Ref, z_3: Ref ::
            { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, node, U_3_1, V_3): bool), (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), new_node, y_4_1, w_3_1, z_3): bool) }
            (forall u__5: Ref, v__5: Ref ::
              { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_4, y_4_1, u__5, v__5): bool) }
              !(DEP($$(PreCallHeap, new_g), x$0_4, y_4_1, u__5, v__5): bool)
            ) && ((((DEP($$(PreCallHeap, new_g), x$0_4, node, U_3_1, V_3): bool) && x$0_4 != node) || (x$0_4 == U_3_1 && (U_3_1 == node && V_3 == new_node))) && (((DEP($$(PreCallHeap, new_g), new_node, y_4_1, w_3_1, z_3): bool) && new_node != y_4_1) || (node == w_3_1 && (new_node == z_3 && z_3 == y_4_1))))
          )))))) ==> (DEP($$(Heap, new_g), x$0_4, y_4_1, u_4, v_6_1): bool)
        );
      }
      if (new_node != null) {
        assume state(Heap, Mask);
        assume (forall x$0_5: Ref, y_5_2: Ref, u_5_2: Ref, v_7: Ref ::
          { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), x$0_5, y_5_2, u_5_2, v_7): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(PreCallHeap, new_g)), new_g), x$0_5, y_5_2, u_5_2, v_7): bool) }
          (DEP($$(Heap, new_g), x$0_5, y_5_2, u_5_2, v_7): bool) && !(DEP($$(Heap, new_g), x$0_5, y_5_2, node, new_node): bool) ==> (DEP($$(PreCallHeap, new_g), x$0_5, y_5_2, u_5_2, v_7): bool)
        );
      }
      assume state(Heap, Mask);
      assume (forall n_65_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_65_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), node, n_65_1): bool) }
        new_g[n_65_1] && n_65_1 != node ==> (__learn_trigger__((DEP($$(Heap, new_g), node, n_65_1, node, Heap[node, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_66_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_66_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), node, n_66_1): bool) }
        new_g[n_66_1] && n_66_1 != new_node ==> (__learn_trigger__((DEP($$(Heap, new_g), new_node, n_66_1, new_node, Heap[new_node, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_67_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_67_1, new_node): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_67_1, node): bool) }
        new_g[n_67_1] && n_67_1 != node ==> (__learn_trigger__((DEP($$(Heap, new_g), n_67_1, node, n_67_1, Heap[n_67_1, next]): bool)): bool)
      );
      assume state(Heap, Mask);
      assume (forall n_68_1: Ref ::
        { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), new_node, n_68_1, new_node, Heap[new_node, next]): bool) } { (DEP($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), node, n_68_1, node, Heap[node, next]): bool) }
        new_g[n_68_1] ==> (__learn_trigger__((exists_path($$(Heap, new_g), new_node, n_68_1): bool)): bool) && (__learn_trigger__((exists_path($$(PreCallHeap, new_g), new_node, n_68_1): bool)): bool)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref, m: Ref ::
  //     { exists_path($$(new_g), n, m) }
  //     (n in new_g) && (m in new_g) ==>
  //     exists_path($$(new_g), n, node) && exists_path($$(new_g), node, m)) -- ring-insert.vpr@637.5--640.83
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(new_g), n, m) } (n in new_g) && (m in new_g) ==> exists_path($$(new_g), n, node) && exists_path($$(new_g), node, m))
      if (*) {
        if (new_g[n_77] && new_g[m_12]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@640.29--640.38) [16068]"}
                (forall n$0_16_1: Ref ::
                { ExhaleWellDef0Heap[n$0_16_1, next] } { QPMask[n$0_16_1, next] } { ExhaleWellDef0Heap[n$0_16_1, next] }
                new_g[n$0_16_1] && dummyFunction(ExhaleWellDef0Heap[n$0_16_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@640.29--640.38) [16069]"}
                (forall n$0_16_1: Ref, n$0_16_2: Ref ::
                { neverTriggered82(n$0_16_1), neverTriggered82(n$0_16_2) }
                (((n$0_16_1 != n$0_16_2 && new_g[n$0_16_1]) && new_g[n$0_16_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_16_1 != n$0_16_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@640.29--640.38) [16070]"}
                (forall n$0_16_1: Ref ::
                { ExhaleWellDef0Heap[n$0_16_1, next] } { QPMask[n$0_16_1, next] } { ExhaleWellDef0Heap[n$0_16_1, next] }
                new_g[n$0_16_1] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n$0_16_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_16_1: Ref ::
                { ExhaleWellDef0Heap[n$0_16_1, next] } { QPMask[n$0_16_1, next] } { ExhaleWellDef0Heap[n$0_16_1, next] }
                new_g[n$0_16_1] && NoPerm < 1 / 2 ==> qpRange82(n$0_16_1) && invRecv82(n$0_16_1) == n$0_16_1
              );
              assume (forall o_9: Ref ::
                { invRecv82(o_9) }
                new_g[invRecv82(o_9)] && (NoPerm < 1 / 2 && qpRange82(o_9)) ==> invRecv82(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, new_g), n_77, node): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@640.64--640.73) [16071]"}
                  (forall n$0_17_2: Ref ::
                  { ExhaleWellDef0Heap[n$0_17_2, next] } { QPMask[n$0_17_2, next] } { ExhaleWellDef0Heap[n$0_17_2, next] }
                  new_g[n$0_17_2] && dummyFunction(ExhaleWellDef0Heap[n$0_17_2, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@640.64--640.73) [16072]"}
                  (forall n$0_17_2: Ref, n$0_17_3: Ref ::
                  { neverTriggered83(n$0_17_2), neverTriggered83(n$0_17_3) }
                  (((n$0_17_2 != n$0_17_3 && new_g[n$0_17_2]) && new_g[n$0_17_3]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_17_2 != n$0_17_3
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@640.64--640.73) [16073]"}
                  (forall n$0_17_2: Ref ::
                  { ExhaleWellDef0Heap[n$0_17_2, next] } { QPMask[n$0_17_2, next] } { ExhaleWellDef0Heap[n$0_17_2, next] }
                  new_g[n$0_17_2] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n$0_17_2, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_17_2: Ref ::
                  { ExhaleWellDef0Heap[n$0_17_2, next] } { QPMask[n$0_17_2, next] } { ExhaleWellDef0Heap[n$0_17_2, next] }
                  new_g[n$0_17_2] && NoPerm < 1 / 2 ==> qpRange83(n$0_17_2) && invRecv83(n$0_17_2) == n$0_17_2
                );
                assume (forall o_9: Ref ::
                  { invRecv83(o_9) }
                  new_g[invRecv83(o_9)] && (NoPerm < 1 / 2 && qpRange83(o_9)) ==> invRecv83(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    if (*) {
      if (new_g[n_70_1] && new_g[m_15]) {
        assert {:msg "  Assert might fail. Assertion exists_path($$(new_g), n, node) might not hold. (ring-insert.vpr@637.12--640.83) [16074]"}
          (exists_path($$(Heap, new_g), n_70_1, node): bool);
        assert {:msg "  Assert might fail. Assertion exists_path($$(new_g), node, m) might not hold. (ring-insert.vpr@637.12--640.83) [16075]"}
          (exists_path($$(Heap, new_g), node, m_15): bool);
      }
      assume false;
    }
    assume (forall n_71_1: Ref, m_16_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_71_1, m_16_1): bool) }
      new_g[n_71_1] && new_g[m_16_1] ==> (exists_path($$(Heap, new_g), n_71_1, node): bool) && (exists_path($$(Heap, new_g), node, m_16_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ringInsert might not hold. Assertion !((null in new_g)) might not hold. (ring-insert.vpr@580.13--580.24) [16076]"}
      !new_g[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@580.13--580.24) [16077]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered58(n$1_2), neverTriggered58(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && new_g[n$1_2]) && new_g[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of ringInsert might not hold. There might be insufficient permission to access n$1.next (ring-insert.vpr@580.13--580.24) [16078]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        new_g[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        new_g[n$1_2] && NoPerm < FullPerm ==> qpRange58(n$1_2) && invRecv58(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv58(o_9) }
        new_g[invRecv58(o_9)] && (NoPerm < FullPerm && qpRange58(o_9)) ==> invRecv58(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (new_g[invRecv58(o_9)] && (NoPerm < FullPerm && qpRange58(o_9)) ==> invRecv58(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(new_g[invRecv58(o_9)] && (NoPerm < FullPerm && qpRange58(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (new_g[n$2_2]) {
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion (n$2.next in new_g) might not hold. (ring-insert.vpr@580.13--580.24) [16079]"}
          new_g[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { new_g[Heap[n$2_3_1, next]] } { new_g[n$2_3_1], Heap[n$2_3_1, next] }
      new_g[n$2_3_1] ==> new_g[Heap[n$2_3_1, next]]
    );
    if (*) {
      if (new_g[v1$0_2] && (new_g[v2$0_2] && new_g[v$1_2_1])) {
        if (Heap[v1$0_2, next] == v$1_2_1 && Heap[v2$0_2, next] == v$1_2_1) {
          assert {:msg "  Postcondition of ringInsert might not hold. Assertion v1$0 == v2$0 might not hold. (ring-insert.vpr@581.13--581.38) [16080]"}
            v1$0_2 == v2$0_2;
        }
      }
      assume false;
    }
    assume (forall v1$0_3_1: Ref, v2$0_3_1: Ref, v$1_3_1: Ref ::
      { new_g[v$1_3_1], Heap[v1$0_3_1, next], Heap[v2$0_3_1, next] }
      new_g[v1$0_3_1] && (new_g[v2$0_3_1] && new_g[v$1_3_1]) ==> Heap[v1$0_3_1, next] == v$1_3_1 && Heap[v2$0_3_1, next] == v$1_3_1 ==> v1$0_3_1 == v2$0_3_1
    );
    if (*) {
      if (new_g[v$2_2_1]) {
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion (v$2 == v$2.next) == (new_g == Set(v$2)) might not hold. (ring-insert.vpr@581.13--581.38) [16081]"}
          (v$2_2_1 == Heap[v$2_2_1, next]) == Set#Equal(new_g, Set#Singleton(v$2_2_1));
      }
      assume false;
    }
    assume (forall v$2_3_1: Ref ::
      { Heap[v$2_3_1, next] }
      new_g[v$2_3_1] ==> (v$2_3_1 == Heap[v$2_3_1, next]) == Set#Equal(new_g, Set#Singleton(v$2_3_1))
    );
    assert {:msg "  Postcondition of ringInsert might not hold. Assertion (new_start in new_g) might not hold. (ring-insert.vpr@582.13--582.31) [16082]"}
      new_g[new_start];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n.val might not be injective. (ring-insert.vpr@583.13--583.64) [16083]"}
        (forall n_18: Ref, n_18_1: Ref ::
        { neverTriggered59(n_18), neverTriggered59(n_18_1) }
        (((n_18 != n_18_1 && new_g[n_18]) && new_g[n_18_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_18 != n_18_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of ringInsert might not hold. There might be insufficient permission to access n.val (ring-insert.vpr@583.13--583.64) [16084]"}
        (forall n_18: Ref ::
        { Heap[n_18, val] } { QPMask[n_18, val] } { Heap[n_18, val] }
        new_g[n_18] ==> Mask[n_18, val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n
      assume (forall n_18: Ref ::
        { Heap[n_18, val] } { QPMask[n_18, val] } { Heap[n_18, val] }
        new_g[n_18] && NoPerm < FullPerm ==> qpRange59(n_18) && invRecv59(n_18) == n_18
      );
      assume (forall o_9: Ref ::
        { invRecv59(o_9) }
        new_g[invRecv59(o_9)] && (NoPerm < FullPerm && qpRange59(o_9)) ==> invRecv59(o_9) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (new_g[invRecv59(o_9)] && (NoPerm < FullPerm && qpRange59(o_9)) ==> invRecv59(o_9) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(new_g[invRecv59(o_9)] && (NoPerm < FullPerm && qpRange59(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of ringInsert might not hold. Assertion !((new_node in g)) might not hold. (ring-insert.vpr@584.13--584.50) [16085]"}
      !g_1[new_node];
    assert {:msg "  Postcondition of ringInsert might not hold. Assertion (new_node in new_g) might not hold. (ring-insert.vpr@584.13--584.50) [16086]"}
      new_g[new_node];
    assert {:msg "  Postcondition of ringInsert might not hold. Assertion new_node.val == x might not hold. (ring-insert.vpr@585.13--585.30) [16087]"}
      Heap[new_node, val] == x;
    if (*) {
      if (new_g[n_19] && Heap[n_19, next] != new_start) {
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion n.val <= n.next.val might not hold. (ring-insert.vpr@586.13--586.101) [16088]"}
          Heap[n_19, val] <= Heap[Heap[n_19, next], val];
      }
      assume false;
    }
    assume (forall n_20_1_1: Ref ::
      { Heap[Heap[n_20_1_1, next], val] }
      new_g[n_20_1_1] && Heap[n_20_1_1, next] != new_start ==> Heap[n_20_1_1, val] <= Heap[Heap[n_20_1_1, next], val]
    );
    if (*) {
      if (new_g[n_21] && Heap[n_21, next] == new_start) {
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion n.next.val <= n.val might not hold. (ring-insert.vpr@587.13--587.101) [16089]"}
          Heap[Heap[n_21, next], val] <= Heap[n_21, val];
      }
      assume false;
    }
    assume (forall n_22_1_1: Ref ::
      { Heap[Heap[n_22_1_1, next], val] }
      new_g[n_22_1_1] && Heap[n_22_1_1, next] == new_start ==> Heap[Heap[n_22_1_1, next], val] <= Heap[n_22_1_1, val]
    );
    if (*) {
      if (new_g[n_23] && new_g[m_4_1]) {
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion exists_path($$(new_g), n, m) might not hold. (ring-insert.vpr@588.13--591.77) [16090]"}
          (exists_path($$(Heap, new_g), n_23, m_4_1): bool);
        assert {:msg "  Postcondition of ringInsert might not hold. Assertion exists_path($$(new_g), m, n) might not hold. (ring-insert.vpr@588.13--591.77) [16091]"}
          (exists_path($$(Heap, new_g), m_4_1, n_23): bool);
      }
      assume false;
    }
    assume (forall n_24_1_1: Ref, m_5_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, new_g)), new_g), n_24_1_1, m_5_1): bool) }
      new_g[n_24_1_1] && new_g[m_5_1] ==> (exists_path($$(Heap, new_g), n_24_1_1, m_5_1): bool) && (exists_path($$(Heap, new_g), m_5_1, n_24_1_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method ring_lemma
// ==================================================

procedure ring_lemma(g_1: (Set Ref), start_1: Ref, x: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_35: Ref;
  var v1_21: Ref;
  var v2_21: Ref;
  var v_34: Ref;
  var v$0_3: Ref;
  var n_78: Ref;
  var m_14: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_32: Ref;
  var v1$0_3: Ref;
  var v2$0_3: Ref;
  var v$1_3: Ref;
  var v$2_3: Ref;
  var n_79: Ref;
  var m_16: Ref;
  var n$2_2: Ref;
  var v1$0_2: Ref;
  var v2$0_2: Ref;
  var v$1_2_1: Ref;
  var v$2_2_1: Ref;
  var n_6: Ref;
  var m_4_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[start_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (ring-insert.vpr@645.14--645.21) [16092]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange84(n_1) && invRecv84(n_1) == n_1
      );
      assume (forall o_9: Ref ::
        { invRecv84(o_9) }
        (g_1[invRecv84(o_9)] && NoPerm < FullPerm) && qpRange84(o_9) ==> invRecv84(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv84(o_9)] && NoPerm < FullPerm) && qpRange84(o_9) ==> (NoPerm < FullPerm ==> invRecv84(o_9) == o_9) && QPMask[o_9, next] == Mask[o_9, next] + FullPerm) && (!((g_1[invRecv84(o_9)] && NoPerm < FullPerm) && qpRange84(o_9)) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_35]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (ring-insert.vpr@645.14--645.21) [16093]"}
            HasDirectPerm(Mask, n$0_35, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall v1: Ref, v2: Ref, v: Ref :: { (v in g), v1.next, v2.next } (v1 in g) && ((v2 in g) && (v in g)) ==> v1.next == v && v2.next == v ==> v1 == v2)
      if (*) {
        if (g_1[v1_21] && (g_1[v2_21] && g_1[v_34])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v1.next (ring-insert.vpr@646.14--646.35) [16094]"}
            HasDirectPerm(Mask, v1_21, next);
          if (Heap[v1_21, next] == v_34) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v2.next (ring-insert.vpr@646.14--646.35) [16095]"}
              HasDirectPerm(Mask, v2_21, next);
          }
        }
        assume false;
      }
    assume (forall v1_1: Ref, v2_1: Ref, v_1_1: Ref ::
      { g_1[v_1_1], Heap[v1_1, next], Heap[v2_1, next] }
      g_1[v1_1] && (g_1[v2_1] && g_1[v_1_1]) ==> Heap[v1_1, next] == v_1_1 && Heap[v2_1, next] == v_1_1 ==> v1_1 == v2_1
    );
    
    // -- Check definedness of (forall v$0: Ref :: { v$0.next } (v$0 in g) ==> (v$0 == v$0.next) == (g == Set(v$0)))
      if (*) {
        if (g_1[v$0_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v$0.next (ring-insert.vpr@646.14--646.35) [16096]"}
            HasDirectPerm(Mask, v$0_3, next);
        }
        assume false;
      }
    assume (forall v$0_1: Ref ::
      { Heap[v$0_1, next] }
      g_1[v$0_1] ==> (v$0_1 == Heap[v$0_1, next]) == Set#Equal(g_1, Set#Singleton(v$0_1))
    );
    assume state(Heap, Mask);
    assume g_1[start_1];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } (n in g) && (m in g) ==> exists_path($$(g), n, start) && exists_path($$(g), start, m))
      if (*) {
        if (g_1[n_78] && g_1[m_14]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@651.50--651.55) [16097]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] && dummyFunction(Heap[n$0_2, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@651.50--651.55) [16098]"}
                (forall n$0_2: Ref, n$0_2_1: Ref ::
                { neverTriggered85(n$0_2), neverTriggered85(n$0_2_1) }
                (((n$0_2 != n$0_2_1 && g_1[n$0_2]) && g_1[n$0_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_2 != n$0_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@651.50--651.55) [16099]"}
                (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] ==> 1 / 2 > NoPerm ==> Mask[n$0_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_2: Ref ::
                { Heap[n$0_2, next] } { QPMask[n$0_2, next] } { Heap[n$0_2, next] }
                g_1[n$0_2] && NoPerm < 1 / 2 ==> qpRange85(n$0_2) && invRecv85(n$0_2) == n$0_2
              );
              assume (forall o_9: Ref ::
                { invRecv85(o_9) }
                g_1[invRecv85(o_9)] && (NoPerm < 1 / 2 && qpRange85(o_9)) ==> invRecv85(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, g_1), n_78, start_1): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@651.80--651.85) [16100]"}
                  (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] && dummyFunction(Heap[n$0_3, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@651.80--651.85) [16101]"}
                  (forall n$0_3: Ref, n$0_3_1: Ref ::
                  { neverTriggered86(n$0_3), neverTriggered86(n$0_3_1) }
                  (((n$0_3 != n$0_3_1 && g_1[n$0_3]) && g_1[n$0_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_3 != n$0_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@651.80--651.85) [16102]"}
                  (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] ==> 1 / 2 > NoPerm ==> Mask[n$0_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_3: Ref ::
                  { Heap[n$0_3, next] } { QPMask[n$0_3, next] } { Heap[n$0_3, next] }
                  g_1[n$0_3] && NoPerm < 1 / 2 ==> qpRange86(n$0_3) && invRecv86(n$0_3) == n$0_3
                );
                assume (forall o_9: Ref ::
                  { invRecv86(o_9) }
                  g_1[invRecv86(o_9)] && (NoPerm < 1 / 2 && qpRange86(o_9)) ==> invRecv86(o_9) == o_9
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
    assume (forall n_3: Ref, m_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_3, m_1): bool) }
      g_1[n_3] && g_1[m_1] ==> (exists_path($$(Heap, g_1), n_3, start_1): bool) && (exists_path($$(Heap, g_1), start_1, m_1): bool)
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
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@653.13--653.20) [16103]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g_1[n$1_1]) && g_1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] && NoPerm < FullPerm ==> qpRange87(n$1_1) && invRecv87(n$1_1) == n$1_1
      );
      assume (forall o_9: Ref ::
        { invRecv87(o_9) }
        (g_1[invRecv87(o_9)] && NoPerm < FullPerm) && qpRange87(o_9) ==> invRecv87(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        g_1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        ((g_1[invRecv87(o_9)] && NoPerm < FullPerm) && qpRange87(o_9) ==> (NoPerm < FullPerm ==> invRecv87(o_9) == o_9) && QPMask[o_9, next] == PostMask[o_9, next] + FullPerm) && (!((g_1[invRecv87(o_9)] && NoPerm < FullPerm) && qpRange87(o_9)) ==> QPMask[o_9, next] == PostMask[o_9, next])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != next ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_32]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (ring-insert.vpr@653.13--653.20) [16104]"}
            HasDirectPerm(PostMask, n$2_32, next);
        }
        assume false;
      }
    assume (forall n$2_1: Ref ::
      { g_1[PostHeap[n$2_1, next]] } { g_1[n$2_1], PostHeap[n$2_1, next] }
      g_1[n$2_1] ==> g_1[PostHeap[n$2_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall v1$0: Ref, v2$0: Ref, v$1: Ref :: { (v$1 in g), v1$0.next, v2$0.next } (v1$0 in g) && ((v2$0 in g) && (v$1 in g)) ==> v1$0.next == v$1 && v2$0.next == v$1 ==> v1$0 == v2$0)
      if (*) {
        if (g_1[v1$0_3] && (g_1[v2$0_3] && g_1[v$1_3])) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v1$0.next (ring-insert.vpr@654.13--654.34) [16105]"}
            HasDirectPerm(PostMask, v1$0_3, next);
          if (PostHeap[v1$0_3, next] == v$1_3) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v2$0.next (ring-insert.vpr@654.13--654.34) [16106]"}
              HasDirectPerm(PostMask, v2$0_3, next);
          }
        }
        assume false;
      }
    assume (forall v1$0_1: Ref, v2$0_1: Ref, v$1_1: Ref ::
      { g_1[v$1_1], PostHeap[v1$0_1, next], PostHeap[v2$0_1, next] }
      g_1[v1$0_1] && (g_1[v2$0_1] && g_1[v$1_1]) ==> PostHeap[v1$0_1, next] == v$1_1 && PostHeap[v2$0_1, next] == v$1_1 ==> v1$0_1 == v2$0_1
    );
    
    // -- Check definedness of (forall v$2: Ref :: { v$2.next } (v$2 in g) ==> (v$2 == v$2.next) == (g == Set(v$2)))
      if (*) {
        if (g_1[v$2_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access v$2.next (ring-insert.vpr@654.13--654.34) [16107]"}
            HasDirectPerm(PostMask, v$2_3, next);
        }
        assume false;
      }
    assume (forall v$2_1: Ref ::
      { PostHeap[v$2_1, next] }
      g_1[v$2_1] ==> (v$2_1 == PostHeap[v$2_1, next]) == Set#Equal(g_1, Set#Singleton(v$2_1))
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n: Ref, m: Ref :: { exists_path($$(g), n, m) } { exists_path($$(g), m, n) } (n in g) && (m in g) ==> exists_path($$(g), n, m) && exists_path($$(g), m, n))
      if (*) {
        if (g_1[n_79] && g_1[m_16]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@657.50--657.55) [16108]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] && dummyFunction(PostHeap[n$0_4, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@657.50--657.55) [16109]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered88(n$0_4), neverTriggered88(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@657.50--657.55) [16110]"}
                (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] ==> 1 / 2 > NoPerm ==> PostMask[n$0_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { PostHeap[n$0_4, next] } { QPMask[n$0_4, next] } { PostHeap[n$0_4, next] }
                g_1[n$0_4] && NoPerm < 1 / 2 ==> qpRange88(n$0_4) && invRecv88(n$0_4) == n$0_4
              );
              assume (forall o_9: Ref ::
                { invRecv88(o_9) }
                g_1[invRecv88(o_9)] && (NoPerm < 1 / 2 && qpRange88(o_9)) ==> invRecv88(o_9) == o_9
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(PostHeap, g_1), n_79, m_16): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (ring-insert.vpr@657.76--657.81) [16111]"}
                  (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  g_1[n$0_5] && dummyFunction(PostHeap[n$0_5, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (ring-insert.vpr@657.76--657.81) [16112]"}
                  (forall n$0_5: Ref, n$0_5_1: Ref ::
                  { neverTriggered89(n$0_5), neverTriggered89(n$0_5_1) }
                  (((n$0_5 != n$0_5_1 && g_1[n$0_5]) && g_1[n$0_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$0_5 != n$0_5_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (ring-insert.vpr@657.76--657.81) [16113]"}
                  (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  g_1[n$0_5] ==> 1 / 2 > NoPerm ==> PostMask[n$0_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_5: Ref ::
                  { PostHeap[n$0_5, next] } { QPMask[n$0_5, next] } { PostHeap[n$0_5, next] }
                  g_1[n$0_5] && NoPerm < 1 / 2 ==> qpRange89(n$0_5) && invRecv89(n$0_5) == n$0_5
                );
                assume (forall o_9: Ref ::
                  { invRecv89(o_9) }
                  g_1[invRecv89(o_9)] && (NoPerm < 1 / 2 && qpRange89(o_9)) ==> invRecv89(o_9) == o_9
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
              PostHeap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        assume false;
      }
    assume (forall n_5: Ref, m_3: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), n_5, m_3): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), m_3, n_5): bool) }
      g_1[n_5] && g_1[m_3] ==> (exists_path($$(PostHeap, g_1), n_5, m_3): bool) && (exists_path($$(PostHeap, g_1), m_3, n_5): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ring_lemma might not hold. Assertion !((null in g)) might not hold. (ring-insert.vpr@653.13--653.20) [16114]"}
      !g_1[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (ring-insert.vpr@653.13--653.20) [16115]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered90(n$1_2), neverTriggered90(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && g_1[n$1_2]) && g_1[n$1_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of ring_lemma might not hold. There might be insufficient permission to access n$1.next (ring-insert.vpr@653.13--653.20) [16116]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] ==> Mask[n$1_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && NoPerm < FullPerm ==> qpRange90(n$1_2) && invRecv90(n$1_2) == n$1_2
      );
      assume (forall o_9: Ref ::
        { invRecv90(o_9) }
        g_1[invRecv90(o_9)] && (NoPerm < FullPerm && qpRange90(o_9)) ==> invRecv90(o_9) == o_9
      );
    
    // -- assume permission updates for field next
      assume (forall o_9: Ref ::
        { QPMask[o_9, next] }
        (g_1[invRecv90(o_9)] && (NoPerm < FullPerm && qpRange90(o_9)) ==> invRecv90(o_9) == o_9 && QPMask[o_9, next] == Mask[o_9, next] - FullPerm) && (!(g_1[invRecv90(o_9)] && (NoPerm < FullPerm && qpRange90(o_9))) ==> QPMask[o_9, next] == Mask[o_9, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != next ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2]) {
        assert {:msg "  Postcondition of ring_lemma might not hold. Assertion (n$2.next in g) might not hold. (ring-insert.vpr@653.13--653.20) [16117]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] ==> g_1[Heap[n$2_3_1, next]]
    );
    if (*) {
      if (g_1[v1$0_2] && (g_1[v2$0_2] && g_1[v$1_2_1])) {
        if (Heap[v1$0_2, next] == v$1_2_1 && Heap[v2$0_2, next] == v$1_2_1) {
          assert {:msg "  Postcondition of ring_lemma might not hold. Assertion v1$0 == v2$0 might not hold. (ring-insert.vpr@654.13--654.34) [16118]"}
            v1$0_2 == v2$0_2;
        }
      }
      assume false;
    }
    assume (forall v1$0_3_1: Ref, v2$0_3_1: Ref, v$1_3_1: Ref ::
      { g_1[v$1_3_1], Heap[v1$0_3_1, next], Heap[v2$0_3_1, next] }
      g_1[v1$0_3_1] && (g_1[v2$0_3_1] && g_1[v$1_3_1]) ==> Heap[v1$0_3_1, next] == v$1_3_1 && Heap[v2$0_3_1, next] == v$1_3_1 ==> v1$0_3_1 == v2$0_3_1
    );
    if (*) {
      if (g_1[v$2_2_1]) {
        assert {:msg "  Postcondition of ring_lemma might not hold. Assertion (v$2 == v$2.next) == (g == Set(v$2)) might not hold. (ring-insert.vpr@654.13--654.34) [16119]"}
          (v$2_2_1 == Heap[v$2_2_1, next]) == Set#Equal(g_1, Set#Singleton(v$2_2_1));
      }
      assume false;
    }
    assume (forall v$2_3_1: Ref ::
      { Heap[v$2_3_1, next] }
      g_1[v$2_3_1] ==> (v$2_3_1 == Heap[v$2_3_1, next]) == Set#Equal(g_1, Set#Singleton(v$2_3_1))
    );
    if (*) {
      if (g_1[n_6] && g_1[m_4_1]) {
        assert {:msg "  Postcondition of ring_lemma might not hold. Assertion exists_path($$(g), n, m) might not hold. (ring-insert.vpr@655.13--657.86) [16120]"}
          (exists_path($$(Heap, g_1), n_6, m_4_1): bool);
        assert {:msg "  Postcondition of ring_lemma might not hold. Assertion exists_path($$(g), m, n) might not hold. (ring-insert.vpr@655.13--657.86) [16121]"}
          (exists_path($$(Heap, g_1), m_4_1, n_6): bool);
      }
      assume false;
    }
    assume (forall n_7_1_1: Ref, m_5_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), n_7_1_1, m_5_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), m_5_1, n_7_1_1): bool) }
      g_1[n_7_1_1] && g_1[m_5_1] ==> (exists_path($$(Heap, g_1), n_7_1_1, m_5_1): bool) && (exists_path($$(Heap, g_1), m_5_1, n_7_1_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}