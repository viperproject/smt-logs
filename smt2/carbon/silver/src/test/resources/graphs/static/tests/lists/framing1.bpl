// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:36:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/framing1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/tests/lists/framing1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_64: Ref, f_66: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_64, f_66] }
  Heap[o_64, $allocated] ==> Heap[Heap[o_64, f_66], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_65: Ref, f_67: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_65, f_67] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_65, f_67) ==> Heap[o_65, f_67] == ExhaleHeap[o_65, f_67]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_35), ExhaleHeap[null, PredicateMaskField(pm_f_35)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsPredicateField(pm_f_35) ==> Heap[null, PredicateMaskField(pm_f_35)] == ExhaleHeap[null, PredicateMaskField(pm_f_35)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_35) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsPredicateField(pm_f_35) ==> (forall <A, B> o2_35: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_35, f_67] }
    Heap[null, PredicateMaskField(pm_f_35)][o2_35, f_67] ==> Heap[o2_35, f_67] == ExhaleHeap[o2_35, f_67]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_35), ExhaleHeap[null, WandMaskField(pm_f_35)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsWandField(pm_f_35) ==> Heap[null, WandMaskField(pm_f_35)] == ExhaleHeap[null, WandMaskField(pm_f_35)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_35) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsWandField(pm_f_35) ==> (forall <A, B> o2_35: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_35, f_67] }
    Heap[null, WandMaskField(pm_f_35)][o2_35, f_67] ==> Heap[o2_35, f_67] == ExhaleHeap[o2_35, f_67]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_65: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_65, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_65, $allocated] ==> ExhaleHeap[o_65, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_64: Ref, f_68: (Field A B), v: B ::
  { Heap[o_64, f_68:=v] }
  succHeap(Heap, Heap[o_64, f_68:=v])
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
function  neverTriggered3(n_8: Ref): bool;
function  neverTriggered4(n_9: Ref): bool;
function  neverTriggered5(n_10_1: Ref): bool;
function  neverTriggered6(n_11_1: Ref): bool;
function  neverTriggered7(n_12_1: Ref): bool;
function  neverTriggered8(n_13: Ref): bool;
function  neverTriggered9(n_14: Ref): bool;
function  neverTriggered10(n_15: Ref): bool;
function  neverTriggered11(n_3: Ref): bool;
function  neverTriggered12(n$0_4: Ref): bool;
function  neverTriggered13(n$0_5: Ref): bool;
function  neverTriggered14(n$0_4: Ref): bool;
function  neverTriggered15(n$0_5: Ref): bool;
function  neverTriggered16(n_4_1: Ref): bool;
function  neverTriggered17(n_5: Ref): bool;
function  neverTriggered18(n_6: Ref): bool;
function  neverTriggered19(n_7: Ref): bool;
function  neverTriggered20(n_1: Ref): bool;
function  neverTriggered21(n$1_1: Ref): bool;
function  neverTriggered22(n_2: Ref): bool;
function  neverTriggered23(n_3: Ref): bool;
function  neverTriggered24(n_4_1: Ref): bool;
function  neverTriggered25(n_5: Ref): bool;
function  neverTriggered26(n_6: Ref): bool;
function  neverTriggered27(n_7: Ref): bool;
function  neverTriggered28(n_1: Ref): bool;
function  neverTriggered29(n$1_1: Ref): bool;
function  neverTriggered30(n_1: Ref): bool;
function  neverTriggered31(n$1_1: Ref): bool;
function  neverTriggered32(n$3_1_2: Ref): bool;
function  neverTriggered33(n_2: Ref): bool;
function  neverTriggered34(n_3: Ref): bool;
function  neverTriggered35(n_4_1: Ref): bool;
function  neverTriggered36(n_5: Ref): bool;
function  neverTriggered37(n_6: Ref): bool;
function  neverTriggered38(n$3_2: Ref): bool;
function  neverTriggered39(n_7: Ref): bool;
function  neverTriggered40(n_8: Ref): bool;
function  neverTriggered41(n_9: Ref): bool;
function  neverTriggered42(n_1: Ref): bool;
function  neverTriggered43(n$1_1: Ref): bool;
function  neverTriggered44(n_2: Ref): bool;
function  neverTriggered45(n_3: Ref): bool;
function  neverTriggered46(n$3_1_2: Ref): bool;
function  neverTriggered47(n_4_1: Ref): bool;
function  neverTriggered48(n_5: Ref): bool;
function  neverTriggered49(n$3_2: Ref): bool;
function  neverTriggered50(n_6: Ref): bool;
function  neverTriggered51(n_7: Ref): bool;
function  neverTriggered52(n_1: Ref): bool;
function  neverTriggered53(n$1_1: Ref): bool;
function  neverTriggered54(n$0_2_1: Ref): bool;
function  neverTriggered55(n$0_3_2: Ref): bool;
function  neverTriggered56(n_2: Ref): bool;
function  neverTriggered57(n_3: Ref): bool;
function  neverTriggered58(n$3_1_2: Ref): bool;
function  neverTriggered59(n$0_8: Ref): bool;
function  neverTriggered60(n_4_1: Ref): bool;
function  neverTriggered61(n_5: Ref): bool;
function  neverTriggered62(n$3_2: Ref): bool;
function  neverTriggered63(n_6: Ref): bool;
function  neverTriggered64(n_7: Ref): bool;
function  neverTriggered65(n_1: Ref): bool;
function  neverTriggered66(n$1_1: Ref): bool;
function  neverTriggered67(n_2: Ref): bool;
function  neverTriggered68(n_3: Ref): bool;
function  neverTriggered69(n_1: Ref): bool;
function  neverTriggered70(n$1_1: Ref): bool;
function  neverTriggered71(n$0_2_1: Ref): bool;
function  neverTriggered72(n$0_3_2: Ref): bool;
function  neverTriggered73(n$0_4: Ref): bool;
function  neverTriggered74(n$0_5: Ref): bool;
function  neverTriggered75(n_5: Ref): bool;
function  neverTriggered76(n_6: Ref): bool;
function  neverTriggered77(n_7: Ref): bool;
function  neverTriggered78(n_8: Ref): bool;
function  neverTriggered79(n_9: Ref): bool;
function  neverTriggered80(n$0_6: Ref): bool;
function  neverTriggered81(n$0_7: Ref): bool;
function  neverTriggered82(n_13: Ref): bool;
function  neverTriggered83(n_14: Ref): bool;
function  neverTriggered84(n_15: Ref): bool;
function  neverTriggered85(n_16: Ref): bool;
function  neverTriggered86(n$0_8: Ref): bool;
function  neverTriggered87(n$0_9: Ref): bool;
function  neverTriggered88(n$0_10: Ref): bool;
function  neverTriggered89(n$0_11: Ref): bool;
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

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 4: $$
// - height 3: apply_TCFraming
// - height 2: is_global_root
// - height 1: is_global_sroot
// - height 0: acyclic_list_segment
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

// Translation of domain axiom ax_ExistsSetPath
axiom (forall EG_1: (Set EdgeDomainType), from: (Set Ref), to: Ref ::
  { (exists_spath(EG_1, from, to): bool) }
  (exists_spath(EG_1, from, to): bool) == (exists f_69: Ref ::
    { from[f_69] } { (exists_path(EG_1, f_69, to): bool) }
    from[f_69] && (exists_path(EG_1, f_69, to): bool)
  )
);

// ==================================================
// Translation of domain FramingWisdoms
// ==================================================

// The type for domain FramingWisdoms
type FramingWisdomsDomainType;

// Translation of domain axiom ax_SetIntersection
axiom (forall g0: (Set Ref), g1: (Set Ref) ::
  { Set#Intersection(g0, g1) }
  Set#Equal(Set#Intersection(g0, g1), (Set#Empty(): Set Ref)) ==> (forall r_1: Ref ::
    { g0[r_1], g1[r_1] }
    g0[r_1] && g1[r_1] ==> (Set#Empty(): Set Ref)[r_1]
  )
);

// Translation of domain axiom ax_EdgeReverse
axiom (forall g_1: (Set EdgeDomainType), e_1: EdgeDomainType ::
  { g_1[e_1] }
  g_1[e_1] ==> (create_edge((edge_pred(e_1): Ref), (edge_succ(e_1): Ref)): EdgeDomainType) == e_1
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

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
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp1(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp1(apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g0[sk_apply_TCFraming#condqp1(apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g0[sk_apply_TCFraming#condqp1(apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp1(apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp1(apply_TCFraming#condqp1(Heap2Heap, g0, g1), apply_TCFraming#condqp1(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp1(Heap2Heap, g0, g1) == apply_TCFraming#condqp1(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, write)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp2(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp2(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm <==> g1[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm) && (g1[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < FullPerm ==> Heap2Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp2(Heap2Heap, g0, g1) == apply_TCFraming#condqp2(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_3: Ref, v_2: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_3, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3, v_2): bool) }
    g0[u_3] && (g0[v_2] && (exists_path($$(Heap, g0), u_3, v_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_3, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1, v_1_1): bool) }
    g1[u_1] && (g1[v_1_1] && (exists_path($$(Heap, g1), u_1, v_1_1): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_1, v_1_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_2_1: Ref, v_2_1: Ref ::
    { g0[u_2_1], g0[v_2_1] } { g0[u_2_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1, v_2_1): bool) } { g0[u_2_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1, v_2_1): bool) } { g0[v_2_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1, v_2_1): bool) } { g0[v_2_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1, v_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1, v_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1, v_2_1): bool) }
    g0[u_2_1] && (g0[v_2_1] && !(exists_path($$(Heap, g0), u_2_1, v_2_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_2_1, v_2_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp1(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_3_1: Ref, v_3_1: Ref ::
    { g1[u_3_1], g1[v_3_1] } { g1[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_3_1, v_3_1): bool) } { g1[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_3_1, v_3_1): bool) } { g1[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_3_1, v_3_1): bool) } { g1[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_3_1, v_3_1): bool) }
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
  var u_12: Ref;
  var v_12: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_13: Ref;
  var v_13: Ref;
  var u_2: Ref;
  var v_14: Ref;
  var u_14: Ref;
  var v_3: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@287.14--287.62) [80969]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && NoPerm < FullPerm ==> qpRange1(n_5) && invRecv1(n_5) == n_5
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (g0[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv1(o_4)] && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@288.14--288.62) [80970]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && NoPerm < FullPerm ==> qpRange2(n_7) && invRecv2(n_7) == n_7
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (g1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv2(o_4)] && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
        if (g0[u_12]) {
          if (g0[v_12]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@295.134--295.140) [80971]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered3(n_8), neverTriggered3(n_8_1) }
                  (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@295.134--295.140) [80972]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] ==> FullPerm > NoPerm ==> Mask[n_8, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && NoPerm < FullPerm ==> qpRange3(n_8) && invRecv3(n_8) == n_8
                );
                assume (forall o_4: Ref ::
                  { invRecv3(o_4) }
                  g0[invRecv3(o_4)] && (NoPerm < FullPerm && qpRange3(o_4)) ==> invRecv3(o_4) == o_4
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
        if (g0[u_12] && (g0[v_12] && (exists_path($$(Heap, g0), u_12, v_12): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@295.162--295.177) [80973]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered4(n_9), neverTriggered4(n_9_1) }
                (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@295.162--295.177) [80974]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] ==> FullPerm > NoPerm ==> Mask[n_9, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && NoPerm < FullPerm ==> qpRange4(n_9) && invRecv4(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv4(o_4) }
                Set#Union(g0, g1)[invRecv4(o_4)] && (NoPerm < FullPerm && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
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
      { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_5, v_5_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5, v_5_1): bool) }
      g0[u_5] && (g0[v_5_1] && (exists_path($$(Heap, g0), u_5, v_5_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_5, v_5_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_13]) {
          if (g1[v_13]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@296.134--296.140) [80975]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered5(n_10_1), neverTriggered5(n_10_2) }
                  (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@296.134--296.140) [80976]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] ==> FullPerm > NoPerm ==> Mask[n_10_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && NoPerm < FullPerm ==> qpRange5(n_10_1) && invRecv5(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv5(o_4) }
                  g1[invRecv5(o_4)] && (NoPerm < FullPerm && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
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
        if (g1[u_13] && (g1[v_13] && (exists_path($$(Heap, g1), u_13, v_13): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@296.162--296.177) [80977]"}
                (forall n_11_1: Ref, n_11_2: Ref ::
                { neverTriggered6(n_11_1), neverTriggered6(n_11_2) }
                (((n_11_1 != n_11_2 && Set#Union(g1, g0)[n_11_1]) && Set#Union(g1, g0)[n_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_11_1 != n_11_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@296.162--296.177) [80978]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                Set#Union(g1, g0)[n_11_1] ==> FullPerm > NoPerm ==> Mask[n_11_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                Set#Union(g1, g0)[n_11_1] && NoPerm < FullPerm ==> qpRange6(n_11_1) && invRecv6(n_11_1) == n_11_1
              );
              assume (forall o_4: Ref ::
                { invRecv6(o_4) }
                Set#Union(g1, g0)[invRecv6(o_4)] && (NoPerm < FullPerm && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
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
      { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_7, v_7): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_7, v_7): bool) }
      g1[u_7] && (g1[v_7] && (exists_path($$(Heap, g1), u_7, v_7): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_7, v_7): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), exists_path($$(g0), u, v) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g0), exists_path($$(g0), u, v) } { (v in g0), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_2]) {
          if (g0[v_14]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@297.71--297.77) [80979]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered7(n_12_1), neverTriggered7(n_12_2) }
                  (((n_12_1 != n_12_2 && g0[n_12_1]) && g0[n_12_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@297.71--297.77) [80980]"}
                  (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g0[n_12_1] ==> FullPerm > NoPerm ==> Mask[n_12_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g0[n_12_1] && NoPerm < FullPerm ==> qpRange7(n_12_1) && invRecv7(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv7(o_4) }
                  g0[invRecv7(o_4)] && (NoPerm < FullPerm && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
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
        if (g0[u_2] && (g0[v_14] && !(exists_path($$(Heap, g0), u_2, v_14): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@297.100--297.115) [80981]"}
                (forall n_13: Ref, n_13_1: Ref ::
                { neverTriggered8(n_13), neverTriggered8(n_13_1) }
                (((n_13 != n_13_1 && Set#Union(g0, g1)[n_13]) && Set#Union(g0, g1)[n_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13 != n_13_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@297.100--297.115) [80982]"}
                (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                Set#Union(g0, g1)[n_13] ==> FullPerm > NoPerm ==> Mask[n_13, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                Set#Union(g0, g1)[n_13] && NoPerm < FullPerm ==> qpRange8(n_13) && invRecv8(n_13) == n_13
              );
              assume (forall o_4: Ref ::
                { invRecv8(o_4) }
                Set#Union(g0, g1)[invRecv8(o_4)] && (NoPerm < FullPerm && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
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
      { g0[u_9], g0[v_9] } { g0[u_9], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9, v_9): bool) } { g0[u_9], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9, v_9): bool) } { g0[v_9], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9, v_9): bool) } { g0[v_9], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9, v_9): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9, v_9): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9, v_9): bool) }
      g0[u_9] && (g0[v_9] && !(exists_path($$(Heap, g0), u_9, v_9): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_9, v_9): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g1), (v in g1) } { (u in g1), exists_path($$(g1), u, v) } { (u in g1), exists_path($$((g1 union g0)), u, v) } { (v in g1), exists_path($$(g1), u, v) } { (v in g1), exists_path($$((g1 union g0)), u, v) } { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_14]) {
          if (g1[v_3]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@298.71--298.77) [80983]"}
                  (forall n_14: Ref, n_14_1: Ref ::
                  { neverTriggered9(n_14), neverTriggered9(n_14_1) }
                  (((n_14 != n_14_1 && g1[n_14]) && g1[n_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14 != n_14_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@298.71--298.77) [80984]"}
                  (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g1[n_14] ==> FullPerm > NoPerm ==> Mask[n_14, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g1[n_14] && NoPerm < FullPerm ==> qpRange9(n_14) && invRecv9(n_14) == n_14
                );
                assume (forall o_4: Ref ::
                  { invRecv9(o_4) }
                  g1[invRecv9(o_4)] && (NoPerm < FullPerm && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
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
        if (g1[u_14] && (g1[v_3] && !(exists_path($$(Heap, g1), u_14, v_3): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@298.100--298.115) [80985]"}
                (forall n_15: Ref, n_15_1: Ref ::
                { neverTriggered10(n_15), neverTriggered10(n_15_1) }
                (((n_15 != n_15_1 && Set#Union(g1, g0)[n_15]) && Set#Union(g1, g0)[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@298.100--298.115) [80986]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && NoPerm < FullPerm ==> qpRange10(n_15) && invRecv10(n_15) == n_15
              );
              assume (forall o_4: Ref ::
                { invRecv10(o_4) }
                Set#Union(g1, g0)[invRecv10(o_4)] && (NoPerm < FullPerm && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
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
      { g1[u_11], g1[v_11] } { g1[u_11], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_11, v_11): bool) } { g1[u_11], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_11, v_11): bool) } { g1[v_11], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_11, v_11): bool) } { g1[v_11], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_11, v_11): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), u_11, v_11): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_11, v_11): bool) }
      g1[u_11] && (g1[v_11] && !(exists_path($$(Heap, g1), u_11, v_11): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_11, v_11): bool)
    );
    assume state(Heap, Mask);
}

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
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(FrameFragment($$#condqp3(Heap, refs)), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, write)) in function $$
// ==================================================

function  $$#condqp3(Heap: HeapType, refs: (Set Ref)): int;
function  sk_$$#condqp3(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp3($$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs))] && NoPerm < FullPerm <==> refs[sk_$$#condqp3($$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs))] && NoPerm < FullPerm) && (refs[sk_$$#condqp3($$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs))] && NoPerm < FullPerm ==> Heap2Heap[sk_$$#condqp3($$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs)), next] == Heap1Heap[sk_$$#condqp3($$#condqp3(Heap2Heap, refs), $$#condqp3(Heap1Heap, refs)), next]) ==> $$#condqp3(Heap2Heap, refs) == $$#condqp3(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || $$#trigger(FrameFragment($$#condqp3(Heap, refs)), refs)) ==> (forall p_1: Ref, s_2: Ref ::
    { (create_edge(p_1, s_2): EdgeDomainType) }
    (refs[p_1] && (refs[s_2] && Heap[p_1, next] == s_2)) == $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || $$#trigger(FrameFragment($$#condqp3(Heap, refs)), refs)) ==> (forall p_1_1: Ref, s_1: Ref ::
    { refs[p_1_1], refs[s_1], (exists_path($$'(Heap, refs), p_1_1, s_1): bool) }
    refs[p_1_1] && (exists_path($$'(Heap, refs), p_1_1, s_1): bool) ==> refs[s_1]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || $$#trigger(FrameFragment($$#condqp3(Heap, refs)), refs)) ==> (forall p_2_1: Ref, s_2_1: Ref ::
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
  var p_17: Ref;
  var s_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@303.14--303.64) [80987]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < FullPerm ==> qpRange11(n_3) && invRecv11(n_3) == n_3
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        (refs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> invRecv11(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((refs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4) ==> (NoPerm < FullPerm ==> invRecv11(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((refs[invRecv11(o_4)] && NoPerm < FullPerm) && qpRange11(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_17]) {
          if (refs[s_10]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (framing1.vpr@305.13--309.44) [80988]"}
              HasDirectPerm(Mask, p_17, next);
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4_1: Ref ::
      { (create_edge(p_4_1, s_4_1): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4_1] && Heap[p_4_1, next] == s_4_1)) == Result[(create_edge(p_4_1, s_4_1): EdgeDomainType)]
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
// Translation of function is_global_root
// ==================================================

// Uninterpreted function definitions
function  is_global_root(Heap: HeapType, g_1: (Set Ref), root: Ref): bool;
function  is_global_root'(Heap: HeapType, g_1: (Set Ref), root: Ref): bool;
axiom (forall Heap: HeapType, g_1: (Set Ref), root: Ref ::
  { is_global_root(Heap, g_1, root) }
  is_global_root(Heap, g_1, root) == is_global_root'(Heap, g_1, root) && dummyFunction(is_global_root#triggerStateless(g_1, root))
);
axiom (forall Heap: HeapType, g_1: (Set Ref), root: Ref ::
  { is_global_root'(Heap, g_1, root) }
  dummyFunction(is_global_root#triggerStateless(g_1, root))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), root: Ref ::
  { state(Heap, Mask), is_global_root(Heap, g_1, root) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (!g_1[null] && (forall n$1_12: Ref ::
    { g_1[Heap[n$1_12, next]] } { g_1[n$1_12], Heap[n$1_12, next] }
    g_1[n$1_12] && Heap[n$1_12, next] != null ==> g_1[Heap[n$1_12, next]]
  )) && g_1[root] ==> is_global_root(Heap, g_1, root) == (forall n: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), root, n): bool) }
    g_1[n] ==> (exists_path($$(Heap, g_1), root, n): bool)
  )
);

// Framing axioms
function  is_global_root#frame(frame: FrameType, g_1: (Set Ref), root: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), root: Ref ::
  { state(Heap, Mask), is_global_root'(Heap, g_1, root) }
  state(Heap, Mask) ==> is_global_root'(Heap, g_1, root) == is_global_root#frame(FrameFragment(is_global_root#condqp4(Heap, g_1, root)), g_1, root)
);
// ==================================================
// Function used for framing of quantified permission (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write)) in function is_global_root
// ==================================================

function  is_global_root#condqp4(Heap: HeapType, g_1_1: (Set Ref), root_1_1: Ref): int;
function  sk_is_global_root#condqp4(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref), root: Ref ::
  { is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_is_global_root#condqp4(is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root))] && NoPerm < FullPerm <==> g_1[sk_is_global_root#condqp4(is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root))] && NoPerm < FullPerm) && (g_1[sk_is_global_root#condqp4(is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root))] && NoPerm < FullPerm ==> Heap2Heap[sk_is_global_root#condqp4(is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root)), next] == Heap1Heap[sk_is_global_root#condqp4(is_global_root#condqp4(Heap2Heap, g_1, root), is_global_root#condqp4(Heap1Heap, g_1, root)), next]) ==> is_global_root#condqp4(Heap2Heap, g_1, root) == is_global_root#condqp4(Heap1Heap, g_1, root)
);

// Trigger function (controlling recursive postconditions)
function  is_global_root#trigger(frame: FrameType, g_1: (Set Ref), root: Ref): bool;

// State-independent trigger function
function  is_global_root#triggerStateless(g_1: (Set Ref), root: Ref): bool;

// Check contract well-formedness and postcondition
procedure is_global_root#definedness(g_1: (Set Ref), root: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_13: Ref;
  var n_25: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[root, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume !g_1[null];
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.next might not be injective. (framing1.vpr@332.14--332.22) [80989]"}
      (forall n$0_4: Ref, n$0_4_1: Ref ::
      
      (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] && NoPerm < FullPerm ==> qpRange12(n$0_4) && invRecv12(n$0_4) == n$0_4
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (g_1[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] ==> n$0_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> invRecv12(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.next in g) } { (n$1 in g), n$1.next } (n$1 in g) && n$1.next != null ==> (n$1.next in g))
      if (*) {
        if (g_1[n$1_13]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing1.vpr@332.14--332.22) [80990]"}
            HasDirectPerm(Mask, n$1_13, next);
        }
        if (g_1[n$1_13] && Heap[n$1_13, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing1.vpr@332.14--332.22) [80991]"}
            HasDirectPerm(Mask, n$1_13, next);
        }
        assume false;
      }
    assume (forall n$1_3: Ref ::
      { g_1[Heap[n$1_3, next]] } { g_1[n$1_3], Heap[n$1_3, next] }
      g_1[n$1_3] && Heap[n$1_3, next] != null ==> g_1[Heap[n$1_3, next]]
    );
    assume state(Heap, Mask);
    assume g_1[root];
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall n: Ref :: { exists_path($$(g), root, n) } (n in g) ==> exists_path($$(g), root, n))
      if (*) {
        if (g_1[n_25]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@335.74--335.79) [80992]"}
                (forall n$0_5: Ref, n$0_5_2: Ref ::
                { neverTriggered13(n$0_5), neverTriggered13(n$0_5_2) }
                (((n$0_5 != n$0_5_2 && g_1[n$0_5]) && g_1[n$0_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_5 != n$0_5_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@335.74--335.79) [80993]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] ==> FullPerm > NoPerm ==> Mask[n$0_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] && NoPerm < FullPerm ==> qpRange13(n$0_5) && invRecv13(n$0_5) == n$0_5
              );
              assume (forall o_4: Ref ::
                { invRecv13(o_4) }
                g_1[invRecv13(o_4)] && (NoPerm < FullPerm && qpRange13(o_4)) ==> invRecv13(o_4) == o_4
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
  
  // -- Translate function body
    Result := (forall n_2: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), root, n_2): bool) }
      g_1[n_2] ==> (exists_path($$(Heap, g_1), root, n_2): bool)
    );
}

// ==================================================
// Translation of function is_global_sroot
// ==================================================

// Uninterpreted function definitions
function  is_global_sroot(Heap: HeapType, g_1: (Set Ref), roots: (Set Ref)): bool;
function  is_global_sroot'(Heap: HeapType, g_1: (Set Ref), roots: (Set Ref)): bool;
axiom (forall Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot(Heap, g_1, roots) }
  is_global_sroot(Heap, g_1, roots) == is_global_sroot'(Heap, g_1, roots) && dummyFunction(is_global_sroot#triggerStateless(g_1, roots))
);
axiom (forall Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot'(Heap, g_1, roots) }
  dummyFunction(is_global_sroot#triggerStateless(g_1, roots))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), roots: (Set Ref) ::
  { state(Heap, Mask), is_global_sroot(Heap, g_1, roots) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (!g_1[null] && (forall n$1_12: Ref ::
    { g_1[Heap[n$1_12, next]] } { g_1[n$1_12], Heap[n$1_12, next] }
    g_1[n$1_12] && Heap[n$1_12, next] != null ==> g_1[Heap[n$1_12, next]]
  )) && Set#Subset(roots, g_1) ==> is_global_sroot(Heap, g_1, roots) == (forall n: Ref ::
    { (exists_spath($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), roots, n): bool) }
    g_1[n] ==> (exists_spath($$(Heap, g_1), roots, n): bool)
  )
);

// Framing axioms
function  is_global_sroot#frame(frame: FrameType, g_1: (Set Ref), roots: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref), roots: (Set Ref) ::
  { state(Heap, Mask), is_global_sroot'(Heap, g_1, roots) }
  state(Heap, Mask) ==> is_global_sroot'(Heap, g_1, roots) == is_global_sroot#frame(FrameFragment(is_global_sroot#condqp5(Heap, g_1, roots)), g_1, roots)
);
// ==================================================
// Function used for framing of quantified permission (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write)) in function is_global_sroot
// ==================================================

function  is_global_sroot#condqp5(Heap: HeapType, g_1_1: (Set Ref), roots_1_1: (Set Ref)): int;
function  sk_is_global_sroot#condqp5(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref), roots: (Set Ref) ::
  { is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_is_global_sroot#condqp5(is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots))] && NoPerm < FullPerm <==> g_1[sk_is_global_sroot#condqp5(is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots))] && NoPerm < FullPerm) && (g_1[sk_is_global_sroot#condqp5(is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots))] && NoPerm < FullPerm ==> Heap2Heap[sk_is_global_sroot#condqp5(is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots)), next] == Heap1Heap[sk_is_global_sroot#condqp5(is_global_sroot#condqp5(Heap2Heap, g_1, roots), is_global_sroot#condqp5(Heap1Heap, g_1, roots)), next]) ==> is_global_sroot#condqp5(Heap2Heap, g_1, roots) == is_global_sroot#condqp5(Heap1Heap, g_1, roots)
);

// Trigger function (controlling recursive postconditions)
function  is_global_sroot#trigger(frame: FrameType, g_1: (Set Ref), roots: (Set Ref)): bool;

// State-independent trigger function
function  is_global_sroot#triggerStateless(g_1: (Set Ref), roots: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure is_global_sroot#definedness(g_1: (Set Ref), roots: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$1_14: Ref;
  var n_26: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume !g_1[null];
    
    // -- Check definedness of (forall n$0: Ref :: { n$0.next } (n$0 in g) ==> acc(n$0.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$0.next might not be injective. (framing1.vpr@339.14--339.22) [80994]"}
      (forall n$0_4: Ref, n$0_4_1: Ref ::
      
      (((n$0_4 != n$0_4_1 && g_1[n$0_4]) && g_1[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
    );
    
    // -- Define Inverse Function
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] && NoPerm < FullPerm ==> qpRange14(n$0_4) && invRecv14(n$0_4) == n$0_4
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        (g_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4) ==> invRecv14(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$0_4: Ref ::
        { Heap[n$0_4, next] } { QPMask[n$0_4, next] } { Heap[n$0_4, next] }
        g_1[n$0_4] ==> n$0_4 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4) ==> (NoPerm < FullPerm ==> invRecv14(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv14(o_4)] && NoPerm < FullPerm) && qpRange14(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { (n$1.next in g) } { (n$1 in g), n$1.next } (n$1 in g) && n$1.next != null ==> (n$1.next in g))
      if (*) {
        if (g_1[n$1_14]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing1.vpr@339.14--339.22) [80995]"}
            HasDirectPerm(Mask, n$1_14, next);
        }
        if (g_1[n$1_14] && Heap[n$1_14, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$1.next (framing1.vpr@339.14--339.22) [80996]"}
            HasDirectPerm(Mask, n$1_14, next);
        }
        assume false;
      }
    assume (forall n$1_3: Ref ::
      { g_1[Heap[n$1_3, next]] } { g_1[n$1_3], Heap[n$1_3, next] }
      g_1[n$1_3] && Heap[n$1_3, next] != null ==> g_1[Heap[n$1_3, next]]
    );
    assume state(Heap, Mask);
    assume Set#Subset(roots, g_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall n: Ref :: { exists_spath($$(g), roots, n) } (n in g) ==> exists_spath($$(g), roots, n))
      if (*) {
        if (g_1[n_26]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@342.77--342.82) [80997]"}
                (forall n$0_5: Ref, n$0_5_2: Ref ::
                { neverTriggered15(n$0_5), neverTriggered15(n$0_5_2) }
                (((n$0_5 != n$0_5_2 && g_1[n$0_5]) && g_1[n$0_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_5 != n$0_5_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@342.77--342.82) [80998]"}
                (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] ==> FullPerm > NoPerm ==> Mask[n$0_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_5: Ref ::
                { Heap[n$0_5, next] } { QPMask[n$0_5, next] } { Heap[n$0_5, next] }
                g_1[n$0_5] && NoPerm < FullPerm ==> qpRange15(n$0_5) && invRecv15(n$0_5) == n$0_5
              );
              assume (forall o_4: Ref ::
                { invRecv15(o_4) }
                g_1[invRecv15(o_4)] && (NoPerm < FullPerm && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
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
  
  // -- Translate function body
    Result := (forall n_2: Ref ::
      { (exists_spath($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), roots, n_2): bool) }
      g_1[n_2] ==> (exists_spath($$(Heap, g_1), roots, n_2): bool)
    );
}

// ==================================================
// Translation of function acyclic_list_segment
// ==================================================

// Uninterpreted function definitions
function  acyclic_list_segment(Heap: HeapType, g_1: (Set Ref)): bool;
function  acyclic_list_segment'(Heap: HeapType, g_1: (Set Ref)): bool;
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment(Heap, g_1) }
  acyclic_list_segment(Heap, g_1) == acyclic_list_segment'(Heap, g_1) && dummyFunction(acyclic_list_segment#triggerStateless(g_1))
);
axiom (forall Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment'(Heap, g_1) }
  dummyFunction(acyclic_list_segment#triggerStateless(g_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref) ::
  { state(Heap, Mask), acyclic_list_segment(Heap, g_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> !g_1[null] && (forall n$0_13: Ref ::
    { g_1[Heap[n$0_13, next]] } { g_1[n$0_13], Heap[n$0_13, next] }
    g_1[n$0_13] && Heap[n$0_13, next] != null ==> g_1[Heap[n$0_13, next]]
  ) ==> acyclic_list_segment(Heap, g_1) == ((acyclic_graph($$(Heap, g_1)): bool) && ((func_graph($$(Heap, g_1)): bool) && (unshared_graph($$(Heap, g_1)): bool)))
);

// Framing axioms
function  acyclic_list_segment#frame(frame: FrameType, g_1: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g_1: (Set Ref) ::
  { state(Heap, Mask), acyclic_list_segment'(Heap, g_1) }
  state(Heap, Mask) ==> acyclic_list_segment'(Heap, g_1) == acyclic_list_segment#frame(FrameFragment(acyclic_list_segment#condqp6(Heap, g_1)), g_1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write)) in function acyclic_list_segment
// ==================================================

function  acyclic_list_segment#condqp6(Heap: HeapType, g_1_1: (Set Ref)): int;
function  sk_acyclic_list_segment#condqp6(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g_1: (Set Ref) ::
  { acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g_1[sk_acyclic_list_segment#condqp6(acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1))] && NoPerm < FullPerm <==> g_1[sk_acyclic_list_segment#condqp6(acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1))] && NoPerm < FullPerm) && (g_1[sk_acyclic_list_segment#condqp6(acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1))] && NoPerm < FullPerm ==> Heap2Heap[sk_acyclic_list_segment#condqp6(acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1)), next] == Heap1Heap[sk_acyclic_list_segment#condqp6(acyclic_list_segment#condqp6(Heap2Heap, g_1), acyclic_list_segment#condqp6(Heap1Heap, g_1)), next]) ==> acyclic_list_segment#condqp6(Heap2Heap, g_1) == acyclic_list_segment#condqp6(Heap1Heap, g_1)
);

// Trigger function (controlling recursive postconditions)
function  acyclic_list_segment#trigger(frame: FrameType, g_1: (Set Ref)): bool;

// State-independent trigger function
function  acyclic_list_segment#triggerStateless(g_1: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure acyclic_list_segment#definedness(g_1: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@346.14--346.22) [80999]"}
      (forall n_4_1: Ref, n_4_2: Ref ::
      
      (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
    );
    
    // -- Define Inverse Function
      assume (forall n_4_1: Ref ::
        { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
        g_1[n_4_1] && NoPerm < FullPerm ==> qpRange16(n_4_1) && invRecv16(n_4_1) == n_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> invRecv16(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_4_1: Ref ::
        { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
        g_1[n_4_1] ==> n_4_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4) ==> (NoPerm < FullPerm ==> invRecv16(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv16(o_4)] && NoPerm < FullPerm) && qpRange16(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@346.14--346.22) [81000]"}
            HasDirectPerm(Mask, n$0_2, next);
        }
        if (g_1[n$0_2] && Heap[n$0_2, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@346.14--346.22) [81001]"}
            HasDirectPerm(Mask, n$0_2, next);
        }
        assume false;
      }
    assume (forall n$0_3_2: Ref ::
      { g_1[Heap[n$0_3_2, next]] } { g_1[n$0_3_2], Heap[n$0_3_2, next] }
      g_1[n$0_3_2] && Heap[n$0_3_2, next] != null ==> g_1[Heap[n$0_3_2, next]]
    );
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@348.20--348.25) [81002]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered17(n_5), neverTriggered17(n_5_1) }
            (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@348.20--348.25) [81003]"}
            (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] ==> FullPerm > NoPerm ==> Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
            g_1[n_5] && NoPerm < FullPerm ==> qpRange17(n_5) && invRecv17(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv17(o_4) }
            g_1[invRecv17(o_4)] && (NoPerm < FullPerm && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if ((acyclic_graph($$(Heap, g_1)): bool)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@349.17--349.22) [81004]"}
              (forall n_6: Ref, n_6_1: Ref ::
              { neverTriggered18(n_6), neverTriggered18(n_6_1) }
              (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@349.17--349.22) [81005]"}
              (forall n_6: Ref ::
              { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
              g_1[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_6: Ref ::
              { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
              g_1[n_6] && NoPerm < FullPerm ==> qpRange18(n_6) && invRecv18(n_6) == n_6
            );
            assume (forall o_4: Ref ::
              { invRecv18(o_4) }
              g_1[invRecv18(o_4)] && (NoPerm < FullPerm && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if ((func_graph($$(Heap, g_1)): bool)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@350.21--350.26) [81006]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered19(n_7), neverTriggered19(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@350.21--350.26) [81007]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && NoPerm < FullPerm ==> qpRange19(n_7) && invRecv19(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv19(o_4) }
                g_1[invRecv19(o_4)] && (NoPerm < FullPerm && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
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
  
  // -- Translate function body
    Result := (acyclic_graph($$(Heap, g_1)): bool) && ((func_graph($$(Heap, g_1)): bool) && (unshared_graph($$(Heap, g_1)): bool));
}

// ==================================================
// Translation of method test_graph
// ==================================================

procedure test_graph(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_15: Ref;
  var n$2_16: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var e_2: EdgeDomainType;
  var e_1_1: EdgeDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@354.14--354.36) [81008]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange20(n_1) && invRecv20(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        (g0[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> invRecv20(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4) ==> (NoPerm < FullPerm ==> invRecv20(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv20(o_4)] && NoPerm < FullPerm) && qpRange20(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_15]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@354.14--354.36) [81009]"}
            HasDirectPerm(Mask, n$0_15, next);
        }
        if (g0[n$0_15] && Heap[n$0_15, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@354.14--354.36) [81010]"}
            HasDirectPerm(Mask, n$0_15, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@354.14--354.36) [81011]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange21(n$1_1) && invRecv21(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        (g1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> invRecv21(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> invRecv21(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv21(o_4)] && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_16]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@354.14--354.36) [81012]"}
            HasDirectPerm(Mask, n$2_16, next);
        }
        if (g1[n$2_16] && Heap[n$2_16, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@354.14--354.36) [81013]"}
            HasDirectPerm(Mask, n$2_16, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall e: Edge ::
  //     { (e in $$(g0)) }
  //     { (e in ($$(g0) union $$(g1))) }
  //     (e in $$(g0)) ==> (e in ($$(g0) union $$(g1)))) -- framing1.vpr@358.5--358.71
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall e: Edge :: { (e in $$(g0)) } { (e in ($$(g0) union $$(g1))) } (e in $$(g0)) ==> (e in ($$(g0) union $$(g1))))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@358.34--358.40) [81014]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered22(n_2), neverTriggered22(n_2_1) }
              (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@358.34--358.40) [81015]"}
              (forall n_2: Ref ::
              { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
              g0[n_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
              g0[n_2] && NoPerm < FullPerm ==> qpRange22(n_2) && invRecv22(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv22(o_4) }
              g0[invRecv22(o_4)] && (NoPerm < FullPerm && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if ($$(Heap, g0)[e_2]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@358.51--358.57) [81016]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered23(n_3), neverTriggered23(n_3_1) }
                (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@358.51--358.57) [81017]"}
                (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] && NoPerm < FullPerm ==> qpRange23(n_3) && invRecv23(n_3) == n_3
              );
              assume (forall o_4: Ref ::
                { invRecv23(o_4) }
                g0[invRecv23(o_4)] && (NoPerm < FullPerm && qpRange23(o_4)) ==> invRecv23(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@358.64--358.70) [81018]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered24(n_4_1), neverTriggered24(n_4_2) }
                (((n_4_1 != n_4_2 && g1[n_4_1]) && g1[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@358.64--358.70) [81019]"}
                (forall n_4_1: Ref ::
                { ExhaleWellDef0Heap[n_4_1, next] } { QPMask[n_4_1, next] } { ExhaleWellDef0Heap[n_4_1, next] }
                g1[n_4_1] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { ExhaleWellDef0Heap[n_4_1, next] } { QPMask[n_4_1, next] } { ExhaleWellDef0Heap[n_4_1, next] }
                g1[n_4_1] && NoPerm < FullPerm ==> qpRange24(n_4_1) && invRecv24(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv24(o_4) }
                g1[invRecv24(o_4)] && (NoPerm < FullPerm && qpRange24(o_4)) ==> invRecv24(o_4) == o_4
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
      if ($$(Heap, g0)[e_1_1]) {
        assert {:msg "  Assert might fail. Assertion (e in ($$(g0) union $$(g1))) might not hold. (framing1.vpr@358.12--358.71) [81020]"}
          Set#Union($$(Heap, g0), $$(Heap, g1))[e_1_1];
      }
      assume false;
    }
    assume (forall e_2_1: EdgeDomainType ::
      { $$#frame(FrameFragment($$#condqp3(Heap, g0)), g0)[e_2_1] } { Set#Union($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), $$#frame(FrameFragment($$#condqp3(Heap, g1)), g1))[e_2_1] }
      $$(Heap, g0)[e_2_1] ==> Set#Union($$(Heap, g0), $$(Heap, g1))[e_2_1]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert ($$(g0) union $$(g1)) == $$((g0 union g1)) -- framing1.vpr@359.5--359.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of ($$(g0) union $$(g1)) == $$((g0 union g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@359.12--359.18) [81021]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered25(n_5), neverTriggered25(n_5_1) }
            (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@359.12--359.18) [81022]"}
            (forall n_5: Ref ::
            { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
            g0[n_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
            g0[n_5] && NoPerm < FullPerm ==> qpRange25(n_5) && invRecv25(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv25(o_4) }
            g0[invRecv25(o_4)] && (NoPerm < FullPerm && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@359.25--359.31) [81023]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered26(n_6), neverTriggered26(n_6_1) }
            (((n_6 != n_6_1 && g1[n_6]) && g1[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@359.25--359.31) [81024]"}
            (forall n_6: Ref ::
            { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
            g1[n_6] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
            g1[n_6] && NoPerm < FullPerm ==> qpRange26(n_6) && invRecv26(n_6) == n_6
          );
          assume (forall o_4: Ref ::
            { invRecv26(o_4) }
            g1[invRecv26(o_4)] && (NoPerm < FullPerm && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@359.35--359.50) [81025]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered27(n_7), neverTriggered27(n_7_1) }
            (((n_7 != n_7_1 && Set#Union(g0, g1)[n_7]) && Set#Union(g0, g1)[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@359.35--359.50) [81026]"}
            (forall n_7: Ref ::
            { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && NoPerm < FullPerm ==> qpRange27(n_7) && invRecv27(n_7) == n_7
          );
          assume (forall o_4: Ref ::
            { invRecv27(o_4) }
            Set#Union(g0, g1)[invRecv27(o_4)] && (NoPerm < FullPerm && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion ($$(g0) union $$(g1)) == $$((g0 union g1)) might not hold. (framing1.vpr@359.12--359.50) [81027]"}
      Set#Equal(Set#Union($$(Heap, g0), $$(Heap, g1)), $$(Heap, Set#Union(g0, g1)));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_intersection
// ==================================================

procedure test_intersection(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_17: Ref;
  var n$2_17: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_1_1: Ref;
  var r$0_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@363.14--363.36) [81028]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange28(n_1) && invRecv28(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv28(o_4) }
        (g0[invRecv28(o_4)] && NoPerm < FullPerm) && qpRange28(o_4) ==> invRecv28(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv28(o_4)] && NoPerm < FullPerm) && qpRange28(o_4) ==> (NoPerm < FullPerm ==> invRecv28(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv28(o_4)] && NoPerm < FullPerm) && qpRange28(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@363.14--363.36) [81029]"}
            HasDirectPerm(Mask, n$0_17, next);
        }
        if (g0[n$0_17] && Heap[n$0_17, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@363.14--363.36) [81030]"}
            HasDirectPerm(Mask, n$0_17, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@363.14--363.36) [81031]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange29(n$1_1) && invRecv29(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv29(o_4) }
        (g1[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4) ==> invRecv29(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4) ==> (NoPerm < FullPerm ==> invRecv29(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv29(o_4)] && NoPerm < FullPerm) && qpRange29(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_17]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@363.14--363.36) [81032]"}
            HasDirectPerm(Mask, n$2_17, next);
        }
        if (g1[n$2_17] && Heap[n$2_17, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@363.14--363.36) [81033]"}
            HasDirectPerm(Mask, n$2_17, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g0, g1), (Set#Empty(): Set Ref));
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall r: Ref ::
  //     { (r in g0), (r in g1) }
  //     (r in g0) ==> !((r in g1))) &&
  //   (forall r$0: Ref ::
  //     { (r$0 in g0), (r$0 in g1) }
  //     (r$0 in g1) ==> !((r$0 in g0))) -- framing1.vpr@369.5--369.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall r: Ref :: { (r in g0), (r in g1) } (r in g0) ==> !((r in g1)))
      if (*) {
        assume false;
      }
    if (*) {
      if (g0[r_1_1]) {
        assert {:msg "  Assert might fail. Assertion !((r in g1)) might not hold. (framing1.vpr@369.12--369.32) [81034]"}
          !g1[r_1_1];
      }
      assume false;
    }
    assume (forall r_2_1_1: Ref ::
      { g0[r_2_1_1], g1[r_2_1_1] }
      g0[r_2_1_1] ==> !g1[r_2_1_1]
    );
    
    // -- Check definedness of (forall r$0: Ref :: { (r$0 in g0), (r$0 in g1) } (r$0 in g1) ==> !((r$0 in g0)))
      if (*) {
        assume false;
      }
    if (*) {
      if (g1[r$0_1]) {
        assert {:msg "  Assert might fail. Assertion !((r$0 in g0)) might not hold. (framing1.vpr@369.12--369.32) [81035]"}
          !g0[r$0_1];
      }
      assume false;
    }
    assume (forall r$0_2_1: Ref ::
      { g0[r$0_2_1], g1[r$0_2_1] }
      g1[r$0_2_1] ==> !g0[r$0_2_1]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_disjoint
// ==================================================

procedure test_disjoint(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_19: Ref;
  var n$2_18: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_2: Ref;
  var u_15: Ref;
  var v_15: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_16: Ref;
  var v_16: Ref;
  var u_17: Ref;
  var v_17: Ref;
  var n$4_2_1: Ref;
  var u_6_1: Ref;
  var v_6_1: Ref;
  var u_8_1: Ref;
  var v_8_1: Ref;
  var u_10_1: Ref;
  var v_10_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@375.14--375.36) [81036]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange30(n_1) && invRecv30(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv30(o_4) }
        (g0[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4) ==> invRecv30(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> invRecv30(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv30(o_4)] && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@375.14--375.36) [81037]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        if (g0[n$0_19] && Heap[n$0_19, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@375.14--375.36) [81038]"}
            HasDirectPerm(Mask, n$0_19, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@375.14--375.36) [81039]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange31(n$1_1) && invRecv31(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv31(o_4) }
        (g1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> invRecv31(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4) ==> (NoPerm < FullPerm ==> invRecv31(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv31(o_4)] && NoPerm < FullPerm) && qpRange31(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_18]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@375.14--375.36) [81040]"}
            HasDirectPerm(Mask, n$2_18, next);
        }
        if (g1[n$2_18] && Heap[n$2_18, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@375.14--375.36) [81041]"}
            HasDirectPerm(Mask, n$2_18, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    
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
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in (g0 union g1)) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@378.13--378.31) [81042]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && Set#Union(g0, g1)[n$3_1_2]) && Set#Union(g0, g1)[n$3_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g0, g1)[n$3_1_2] && NoPerm < FullPerm ==> qpRange32(n$3_1_2) && invRecv32(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv32(o_4) }
        (Set#Union(g0, g1)[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> invRecv32(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g0, g1)[n$3_1_2] ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((Set#Union(g0, g1)[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4) ==> (NoPerm < FullPerm ==> invRecv32(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv32(o_4)] && NoPerm < FullPerm) && qpRange32(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in (g0 union g1)) } { (n$4 in (g0 union g1)), n$4.next } (n$4 in (g0 union g1)) && n$4.next != null ==> (n$4.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$4_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@378.13--378.31) [81043]"}
            HasDirectPerm(PostMask, n$4_2, next);
        }
        if (Set#Union(g0, g1)[n$4_2] && PostHeap[n$4_2, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@378.13--378.31) [81044]"}
            HasDirectPerm(PostMask, n$4_2, next);
        }
        assume false;
      }
    assume (forall n$4_1_2: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$4_1_2, next]] } { Set#Union(g0, g1)[n$4_1_2], PostHeap[n$4_1_2, next] }
      Set#Union(g0, g1)[n$4_1_2] && PostHeap[n$4_1_2, next] != null ==> Set#Union(g0, g1)[PostHeap[n$4_1_2, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g1) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g1), exists_path($$((g0 union g1)), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && (v in g1) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_15] && g1[v_15]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@379.71--379.86) [81045]"}
                (forall n_2: Ref, n_2_1: Ref ::
                { neverTriggered33(n_2), neverTriggered33(n_2_1) }
                (((n_2 != n_2_1 && Set#Union(g0, g1)[n_2]) && Set#Union(g0, g1)[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@379.71--379.86) [81046]"}
                (forall n_2: Ref ::
                { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
                Set#Union(g0, g1)[n_2] ==> FullPerm > NoPerm ==> PostMask[n_2, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_2: Ref ::
                { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
                Set#Union(g0, g1)[n_2] && NoPerm < FullPerm ==> qpRange33(n_2) && invRecv33(n_2) == n_2
              );
              assume (forall o_4: Ref ::
                { invRecv33(o_4) }
                Set#Union(g0, g1)[invRecv33(o_4)] && (NoPerm < FullPerm && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
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
    assume (forall u_1: Ref, v_1_1: Ref ::
      { g0[u_1], g1[v_1_1] } { g0[u_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_1_1): bool) } { g1[v_1_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_1, v_1_1): bool) }
      g0[u_1] && g1[v_1_1] ==> !(exists_path($$(PostHeap, Set#Union(g0, g1)), u_1, v_1_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), exists_path($$(g0), u, v) } { (u in g0), exists_path($$((g0 union g1)), u, v) } { (v in g0), exists_path($$(g0), u, v) } { (v in g0), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_16]) {
          if (g0[v_16]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@380.69--380.75) [81047]"}
                  (forall n_3: Ref, n_3_1: Ref ::
                  { neverTriggered34(n_3), neverTriggered34(n_3_1) }
                  (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@380.69--380.75) [81048]"}
                  (forall n_3: Ref ::
                  { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
                  g0[n_3] ==> FullPerm > NoPerm ==> PostMask[n_3, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_3: Ref ::
                  { PostHeap[n_3, next] } { QPMask[n_3, next] } { PostHeap[n_3, next] }
                  g0[n_3] && NoPerm < FullPerm ==> qpRange34(n_3) && invRecv34(n_3) == n_3
                );
                assume (forall o_4: Ref ::
                  { invRecv34(o_4) }
                  g0[invRecv34(o_4)] && (NoPerm < FullPerm && qpRange34(o_4)) ==> invRecv34(o_4) == o_4
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
        if (g0[u_16] && (g0[v_16] && (exists_path($$(PostHeap, g0), u_16, v_16): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@380.97--380.112) [81049]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered35(n_4_1), neverTriggered35(n_4_2) }
                (((n_4_1 != n_4_2 && Set#Union(g0, g1)[n_4_1]) && Set#Union(g0, g1)[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@380.97--380.112) [81050]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                Set#Union(g0, g1)[n_4_1] ==> FullPerm > NoPerm ==> PostMask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                Set#Union(g0, g1)[n_4_1] && NoPerm < FullPerm ==> qpRange35(n_4_1) && invRecv35(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv35(o_4) }
                Set#Union(g0, g1)[invRecv35(o_4)] && (NoPerm < FullPerm && qpRange35(o_4)) ==> invRecv35(o_4) == o_4
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
    assume (forall u_3_1: Ref, v_3_1: Ref ::
      { g0[u_3_1], g0[v_3_1] } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { g0[u_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { g0[v_3_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
      g0[u_3_1] && (g0[v_3_1] && (exists_path($$(PostHeap, g0), u_3_1, v_3_1): bool)) ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), u_3_1, v_3_1): bool)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g1), (v in g1) } { (u in g1), exists_path($$(g0), u, v) } { (u in g1), exists_path($$((g0 union g1)), u, v) } { (v in g1), exists_path($$(g0), u, v) } { (v in g1), exists_path($$((g0 union g1)), u, v) } { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g1[u_17]) {
          if (g1[v_17]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@381.69--381.75) [81051]"}
                  (forall n_5: Ref, n_5_1: Ref ::
                  { neverTriggered36(n_5), neverTriggered36(n_5_1) }
                  (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@381.69--381.75) [81052]"}
                  (forall n_5: Ref ::
                  { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                  g0[n_5] ==> FullPerm > NoPerm ==> PostMask[n_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_5: Ref ::
                  { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
                  g0[n_5] && NoPerm < FullPerm ==> qpRange36(n_5) && invRecv36(n_5) == n_5
                );
                assume (forall o_4: Ref ::
                  { invRecv36(o_4) }
                  g0[invRecv36(o_4)] && (NoPerm < FullPerm && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
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
        if (g1[u_17] && (g1[v_17] && (exists_path($$(PostHeap, g0), u_17, v_17): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@381.97--381.112) [81053]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered37(n_6), neverTriggered37(n_6_1) }
                (((n_6 != n_6_1 && Set#Union(g0, g1)[n_6]) && Set#Union(g0, g1)[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@381.97--381.112) [81054]"}
                (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                Set#Union(g0, g1)[n_6] ==> FullPerm > NoPerm ==> PostMask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                Set#Union(g0, g1)[n_6] && NoPerm < FullPerm ==> qpRange37(n_6) && invRecv37(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv37(o_4) }
                Set#Union(g0, g1)[invRecv37(o_4)] && (NoPerm < FullPerm && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
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
    assume (forall u_5: Ref, v_5_1: Ref ::
      { g1[u_5], g1[v_5_1] } { g1[u_5], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_5, v_5_1): bool) } { g1[u_5], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5, v_5_1): bool) } { g1[v_5_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_5, v_5_1): bool) } { g1[v_5_1], (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5, v_5_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, g0)), g0), u_5, v_5_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(PostHeap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5, v_5_1): bool) }
      g1[u_5] && (g1[v_5_1] && (exists_path($$(PostHeap, g0), u_5, v_5_1): bool)) ==> (exists_path($$(PostHeap, Set#Union(g0, g1)), u_5, v_5_1): bool)
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_noExit($$((g0 union g1)), (g0 union g1), g0) -- framing1.vpr@386.12--386.58
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_noExit($$((g0 union g1)), (g0 union g1), g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@386.25--386.40) [81055]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered39(n_7), neverTriggered39(n_7_1) }
            (((n_7 != n_7_1 && Set#Union(g0, g1)[n_7]) && Set#Union(g0, g1)[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@386.25--386.40) [81056]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            Set#Union(g0, g1)[n_7] && NoPerm < FullPerm ==> qpRange39(n_7) && invRecv39(n_7) == n_7
          );
          assume (forall o_4: Ref ::
            { invRecv39(o_4) }
            Set#Union(g0, g1)[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4)) ==> invRecv39(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_noExit($$(Heap, Set#Union(g0, g1)), Set#Union(g0, g1), g0): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing1.vpr@389.12--389.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@389.12--389.34) [81057]"}
            (forall n_8: Ref, n_8_1: Ref ::
            { neverTriggered40(n_8), neverTriggered40(n_8_1) }
            (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@389.12--389.34) [81058]"}
            (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g0[n_8] ==> FullPerm > NoPerm ==> Mask[n_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_8: Ref ::
            { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
            g0[n_8] && NoPerm < FullPerm ==> qpRange40(n_8) && invRecv40(n_8) == n_8
          );
          assume (forall o_4: Ref ::
            { invRecv40(o_4) }
            g0[invRecv40(o_4)] && (NoPerm < FullPerm && qpRange40(o_4)) ==> invRecv40(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@389.12--389.34) [81059]"}
            (forall n_9: Ref, n_9_1: Ref ::
            { neverTriggered41(n_9), neverTriggered41(n_9_1) }
            (((n_9 != n_9_1 && g1[n_9]) && g1[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@389.12--389.34) [81060]"}
            (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            g1[n_9] ==> FullPerm > NoPerm ==> Mask[n_9, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_9: Ref ::
            { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
            g1[n_9] && NoPerm < FullPerm ==> qpRange41(n_9) && invRecv41(n_9) == n_9
          );
          assume (forall o_4: Ref ::
            { invRecv41(o_4) }
            g1[invRecv41(o_4)] && (NoPerm < FullPerm && qpRange41(o_4)) ==> invRecv41(o_4) == o_4
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing1.vpr@389.12--389.34) [81061]"}
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
    assert {:msg "  Postcondition of test_disjoint might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing1.vpr@378.13--378.31) [81062]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@378.13--378.31) [81063]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered38(n$3_2), neverTriggered38(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && Set#Union(g0, g1)[n$3_2]) && Set#Union(g0, g1)[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_disjoint might not hold. There might be insufficient permission to access n$3.next (framing1.vpr@378.13--378.31) [81064]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] && NoPerm < FullPerm ==> qpRange38(n$3_2) && invRecv38(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv38(o_4) }
        Set#Union(g0, g1)[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (Set#Union(g0, g1)[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4)) ==> invRecv38(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(Set#Union(g0, g1)[invRecv38(o_4)] && (NoPerm < FullPerm && qpRange38(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$4_2_1] && Heap[n$4_2_1, next] != null) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion (n$4.next in (g0 union g1)) might not hold. (framing1.vpr@378.13--378.31) [81065]"}
          Set#Union(g0, g1)[Heap[n$4_2_1, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$4_3_1, next]] } { Set#Union(g0, g1)[n$4_3_1], Heap[n$4_3_1, next] }
      Set#Union(g0, g1)[n$4_3_1] && Heap[n$4_3_1, next] != null ==> Set#Union(g0, g1)[Heap[n$4_3_1, next]]
    );
    if (*) {
      if (g0[u_6_1] && g1[v_6_1]) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion !exists_path($$((g0 union g1)), u, v) might not hold. (framing1.vpr@379.13--379.91) [81066]"}
          !(exists_path($$(Heap, Set#Union(g0, g1)), u_6_1, v_6_1): bool);
      }
      assume false;
    }
    assume (forall u_7_1: Ref, v_7_1: Ref ::
      { g0[u_7_1], g1[v_7_1] } { g0[u_7_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) } { g1[v_7_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_7_1, v_7_1): bool) }
      g0[u_7_1] && g1[v_7_1] ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_7_1, v_7_1): bool)
    );
    if (*) {
      if (g0[u_8_1] && (g0[v_8_1] && (exists_path($$(Heap, g0), u_8_1, v_8_1): bool))) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion exists_path($$((g0 union g1)), u, v) might not hold. (framing1.vpr@380.13--380.117) [81067]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), u_8_1, v_8_1): bool);
      }
      assume false;
    }
    assume (forall u_9_1: Ref, v_9_1: Ref ::
      { g0[u_9_1], g0[v_9_1] } { g0[u_9_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9_1, v_9_1): bool) } { g0[u_9_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) } { g0[v_9_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9_1, v_9_1): bool) } { g0[v_9_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_9_1, v_9_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9_1, v_9_1): bool) }
      g0[u_9_1] && (g0[v_9_1] && (exists_path($$(Heap, g0), u_9_1, v_9_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_9_1, v_9_1): bool)
    );
    if (*) {
      if (g1[u_10_1] && (g1[v_10_1] && (exists_path($$(Heap, g0), u_10_1, v_10_1): bool))) {
        assert {:msg "  Postcondition of test_disjoint might not hold. Assertion exists_path($$((g0 union g1)), u, v) might not hold. (framing1.vpr@381.13--381.117) [81068]"}
          (exists_path($$(Heap, Set#Union(g0, g1)), u_10_1, v_10_1): bool);
      }
      assume false;
    }
    assume (forall u_11_1: Ref, v_11_1: Ref ::
      { g1[u_11_1], g1[v_11_1] } { g1[u_11_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_11_1, v_11_1): bool) } { g1[u_11_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) } { g1[v_11_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_11_1, v_11_1): bool) } { g1[v_11_1], (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_11_1, v_11_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11_1, v_11_1): bool) }
      g1[u_11_1] && (g1[v_11_1] && (exists_path($$(Heap, g0), u_11_1, v_11_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_11_1, v_11_1): bool)
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_framing_sets
// ==================================================

procedure test_framing_sets(g0: (Set Ref), g1: (Set Ref), x0: Ref, y0: Ref, x1_2: Ref, y1: Ref) returns (x: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_21: Ref;
  var n$2_19: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_6: Ref;
  var n$4_2_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[y0, $allocated];
    assume Heap[x1_2, $allocated];
    assume Heap[y1, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@393.14--393.23) [81069]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange42(n_1) && invRecv42(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv42(o_4) }
        (g0[invRecv42(o_4)] && NoPerm < FullPerm) && qpRange42(o_4) ==> invRecv42(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv42(o_4)] && NoPerm < FullPerm) && qpRange42(o_4) ==> (NoPerm < FullPerm ==> invRecv42(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv42(o_4)] && NoPerm < FullPerm) && qpRange42(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_21]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@393.14--393.23) [81070]"}
            HasDirectPerm(Mask, n$0_21, next);
        }
        if (g0[n$0_21] && Heap[n$0_21, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@393.14--393.23) [81071]"}
            HasDirectPerm(Mask, n$0_21, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@394.14--394.23) [81072]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange43(n$1_1) && invRecv43(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv43(o_4) }
        (g1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> invRecv43(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4) ==> (NoPerm < FullPerm ==> invRecv43(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv43(o_4)] && NoPerm < FullPerm) && qpRange43(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_19]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@394.14--394.23) [81073]"}
            HasDirectPerm(Mask, n$2_19, next);
        }
        if (g1[n$2_19] && Heap[n$2_19, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@394.14--394.23) [81074]"}
            HasDirectPerm(Mask, n$2_19, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume g0[y0];
    assume state(Heap, Mask);
    assume g1[x1_2];
    assume g1[y1];
    assume state(Heap, Mask);
    
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
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g0), x0, y0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@398.26--398.32) [81075]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered44(n_2), neverTriggered44(n_2_1) }
            (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@398.26--398.32) [81076]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] ==> FullPerm > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] && NoPerm < FullPerm ==> qpRange44(n_2) && invRecv44(n_2) == n_2
          );
          assume (forall o_4: Ref ::
            { invRecv44(o_4) }
            g0[invRecv44(o_4)] && (NoPerm < FullPerm && qpRange44(o_4)) ==> invRecv44(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g0), x0, y0): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of exists_path($$(g1), x1, y1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@399.26--399.32) [81077]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered45(n_3), neverTriggered45(n_3_1) }
            (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@399.26--399.32) [81078]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] ==> FullPerm > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] && NoPerm < FullPerm ==> qpRange45(n_3) && invRecv45(n_3) == n_3
          );
          assume (forall o_4: Ref ::
            { invRecv45(o_4) }
            g1[invRecv45(o_4)] && (NoPerm < FullPerm && qpRange45(o_4)) ==> invRecv45(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(Heap, g1), x1_2, y1): bool);
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
    assume !Set#Union(g1, g0)[null];
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in (g1 union g0)) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@401.13--401.31) [81079]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && Set#Union(g1, g0)[n$3_1_2]) && Set#Union(g1, g0)[n$3_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g1, g0)[n$3_1_2] && NoPerm < FullPerm ==> qpRange46(n$3_1_2) && invRecv46(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv46(o_4) }
        (Set#Union(g1, g0)[invRecv46(o_4)] && NoPerm < FullPerm) && qpRange46(o_4) ==> invRecv46(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g1, g0)[n$3_1_2] ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((Set#Union(g1, g0)[invRecv46(o_4)] && NoPerm < FullPerm) && qpRange46(o_4) ==> (NoPerm < FullPerm ==> invRecv46(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((Set#Union(g1, g0)[invRecv46(o_4)] && NoPerm < FullPerm) && qpRange46(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in (g1 union g0)) } { (n$4 in (g1 union g0)), n$4.next } (n$4 in (g1 union g0)) && n$4.next != null ==> (n$4.next in (g1 union g0)))
      if (*) {
        if (Set#Union(g1, g0)[n$4_6]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@401.13--401.31) [81080]"}
            HasDirectPerm(PostMask, n$4_6, next);
        }
        if (Set#Union(g1, g0)[n$4_6] && PostHeap[n$4_6, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@401.13--401.31) [81081]"}
            HasDirectPerm(PostMask, n$4_6, next);
        }
        assume false;
      }
    assume (forall n$4_1_2: Ref ::
      { Set#Union(g1, g0)[PostHeap[n$4_1_2, next]] } { Set#Union(g1, g0)[n$4_1_2], PostHeap[n$4_1_2, next] }
      Set#Union(g1, g0)[n$4_1_2] && PostHeap[n$4_1_2, next] != null ==> Set#Union(g1, g0)[PostHeap[n$4_1_2, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$((g0 union g1)), x1, y1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@402.25--402.40) [81082]"}
            (forall n_4_1: Ref, n_4_2: Ref ::
            { neverTriggered47(n_4_1), neverTriggered47(n_4_2) }
            (((n_4_1 != n_4_2 && Set#Union(g0, g1)[n_4_1]) && Set#Union(g0, g1)[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@402.25--402.40) [81083]"}
            (forall n_4_1: Ref ::
            { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
            Set#Union(g0, g1)[n_4_1] ==> FullPerm > NoPerm ==> PostMask[n_4_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4_1: Ref ::
            { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
            Set#Union(g0, g1)[n_4_1] && NoPerm < FullPerm ==> qpRange47(n_4_1) && invRecv47(n_4_1) == n_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv47(o_4) }
            Set#Union(g0, g1)[invRecv47(o_4)] && (NoPerm < FullPerm && qpRange47(o_4)) ==> invRecv47(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, Set#Union(g0, g1)), x1_2, y1): bool);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of exists_path($$((g0 union g1)), x0, y0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@403.25--403.40) [81084]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered48(n_5), neverTriggered48(n_5_1) }
            (((n_5 != n_5_1 && Set#Union(g0, g1)[n_5]) && Set#Union(g0, g1)[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@403.25--403.40) [81085]"}
            (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] ==> FullPerm > NoPerm ==> PostMask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] && NoPerm < FullPerm ==> qpRange48(n_5) && invRecv48(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv48(o_4) }
            Set#Union(g0, g1)[invRecv48(o_4)] && (NoPerm < FullPerm && qpRange48(o_4)) ==> invRecv48(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (exists_path($$(PostHeap, Set#Union(g0, g1)), x0, y0): bool);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing1.vpr@405.12--405.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@405.12--405.34) [81086]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered50(n_6), neverTriggered50(n_6_1) }
            (((n_6 != n_6_1 && g0[n_6]) && g0[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@405.12--405.34) [81087]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] && NoPerm < FullPerm ==> qpRange50(n_6) && invRecv50(n_6) == n_6
          );
          assume (forall o_4: Ref ::
            { invRecv50(o_4) }
            g0[invRecv50(o_4)] && (NoPerm < FullPerm && qpRange50(o_4)) ==> invRecv50(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@405.12--405.34) [81088]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered51(n_7), neverTriggered51(n_7_1) }
            (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@405.12--405.34) [81089]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g1[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g1[n_7] && NoPerm < FullPerm ==> qpRange51(n_7) && invRecv51(n_7) == n_7
          );
          assume (forall o_4: Ref ::
            { invRecv51(o_4) }
            g1[invRecv51(o_4)] && (NoPerm < FullPerm && qpRange51(o_4)) ==> invRecv51(o_4) == o_4
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing1.vpr@405.12--405.34) [81090]"}
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
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion !((null in (g1 union g0))) might not hold. (framing1.vpr@401.13--401.31) [81091]"}
      !Set#Union(g1, g0)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@401.13--401.31) [81092]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered49(n$3_2), neverTriggered49(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && Set#Union(g1, g0)[n$3_2]) && Set#Union(g1, g0)[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_framing_sets might not hold. There might be insufficient permission to access n$3.next (framing1.vpr@401.13--401.31) [81093]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g1, g0)[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g1, g0)[n$3_2] && NoPerm < FullPerm ==> qpRange49(n$3_2) && invRecv49(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv49(o_4) }
        Set#Union(g1, g0)[invRecv49(o_4)] && (NoPerm < FullPerm && qpRange49(o_4)) ==> invRecv49(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (Set#Union(g1, g0)[invRecv49(o_4)] && (NoPerm < FullPerm && qpRange49(o_4)) ==> invRecv49(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(Set#Union(g1, g0)[invRecv49(o_4)] && (NoPerm < FullPerm && qpRange49(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g1, g0)[n$4_2_1] && Heap[n$4_2_1, next] != null) {
        assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion (n$4.next in (g1 union g0)) might not hold. (framing1.vpr@401.13--401.31) [81094]"}
          Set#Union(g1, g0)[Heap[n$4_2_1, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { Set#Union(g1, g0)[Heap[n$4_3_1, next]] } { Set#Union(g1, g0)[n$4_3_1], Heap[n$4_3_1, next] }
      Set#Union(g1, g0)[n$4_3_1] && Heap[n$4_3_1, next] != null ==> Set#Union(g1, g0)[Heap[n$4_3_1, next]]
    );
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion exists_path($$((g0 union g1)), x1, y1) might not hold. (framing1.vpr@402.13--402.47) [81095]"}
      (exists_path($$(Heap, Set#Union(g0, g1)), x1_2, y1): bool);
    assert {:msg "  Postcondition of test_framing_sets might not hold. Assertion exists_path($$((g0 union g1)), x0, y0) might not hold. (framing1.vpr@403.13--403.47) [81096]"}
      (exists_path($$(Heap, Set#Union(g0, g1)), x0, y0): bool);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_union
// ==================================================

procedure test_union(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1_2: Ref) returns (x: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_22: Ref;
  var n$2_20: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n$1_2: Ref;
  var ExhaleHeap: HeapType;
  var n$1_4: Ref;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$4_8: Ref;
  var n$1_6: Ref;
  var n$0_9: Ref;
  var n$4_2_1: Ref;
  var r$1_2: Ref;
  var r$2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@409.14--409.36) [81097]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange52(n_1) && invRecv52(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv52(o_4) }
        (g0[invRecv52(o_4)] && NoPerm < FullPerm) && qpRange52(o_4) ==> invRecv52(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv52(o_4)] && NoPerm < FullPerm) && qpRange52(o_4) ==> (NoPerm < FullPerm ==> invRecv52(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv52(o_4)] && NoPerm < FullPerm) && qpRange52(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_22]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@409.14--409.36) [81098]"}
            HasDirectPerm(Mask, n$0_22, next);
        }
        if (g0[n$0_22] && Heap[n$0_22, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@409.14--409.36) [81099]"}
            HasDirectPerm(Mask, n$0_22, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@409.14--409.36) [81100]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange53(n$1_1) && invRecv53(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv53(o_4) }
        (g1[invRecv53(o_4)] && NoPerm < FullPerm) && qpRange53(o_4) ==> invRecv53(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv53(o_4)] && NoPerm < FullPerm) && qpRange53(o_4) ==> (NoPerm < FullPerm ==> invRecv53(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv53(o_4)] && NoPerm < FullPerm) && qpRange53(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_20]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@409.14--409.36) [81101]"}
            HasDirectPerm(Mask, n$2_20, next);
        }
        if (g1[n$2_20] && Heap[n$2_20, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@409.14--409.36) [81102]"}
            HasDirectPerm(Mask, n$2_20, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume state(Heap, Mask);
    assume g1[x1_2];
    assume state(Heap, Mask);
    
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
    assume state(Heap, Mask);
    
    // -- Check definedness of is_global_root(g0, x0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion !((null in g0)) might not hold. (framing1.vpr@413.14--413.35) [81103]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_root might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@413.14--413.35) [81104]"}
            (forall n$0_2_1: Ref, n$0_2_2: Ref ::
            { neverTriggered54(n$0_2_1), neverTriggered54(n$0_2_2) }
            (((n$0_2_1 != n$0_2_2 && g0[n$0_2_1]) && g0[n$0_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2_1 != n$0_2_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_root might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@413.14--413.35) [81105]"}
            (forall n$0_2_1: Ref ::
            { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
            g0[n$0_2_1] ==> FullPerm > NoPerm ==> Mask[n$0_2_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_2_1: Ref ::
            { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
            g0[n$0_2_1] && NoPerm < FullPerm ==> qpRange54(n$0_2_1) && invRecv54(n$0_2_1) == n$0_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv54(o_4) }
            g0[invRecv54(o_4)] && (NoPerm < FullPerm && qpRange54(o_4)) ==> invRecv54(o_4) == o_4
          );
        if (*) {
          if (g0[n$1_2] && Heap[n$1_2, next] != null) {
            assert {:msg "  Precondition of function is_global_root might not hold. Assertion (n$1.next in g0) might not hold. (framing1.vpr@413.14--413.35) [81106]"}
              g0[Heap[n$1_2, next]];
          }
          assume false;
        }
        assume (forall n$1_3_1_1: Ref ::
          { g0[Heap[n$1_3_1_1, next]] } { g0[n$1_3_1_1], Heap[n$1_3_1_1, next] }
          g0[n$1_3_1_1] && Heap[n$1_3_1_1, next] != null ==> g0[Heap[n$1_3_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion (x0 in g0) might not hold. (framing1.vpr@413.14--413.35) [81107]"}
          g0[x0];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_root(Heap, g0, x0);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of is_global_root(g1, x1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion !((null in g1)) might not hold. (framing1.vpr@414.14--414.35) [81108]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_root might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@414.14--414.35) [81109]"}
            (forall n$0_3_2: Ref, n$0_3_3: Ref ::
            { neverTriggered55(n$0_3_2), neverTriggered55(n$0_3_3) }
            (((n$0_3_2 != n$0_3_3 && g1[n$0_3_2]) && g1[n$0_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3_2 != n$0_3_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_root might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@414.14--414.35) [81110]"}
            (forall n$0_3_2: Ref ::
            { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
            g1[n$0_3_2] ==> FullPerm > NoPerm ==> Mask[n$0_3_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_3_2: Ref ::
            { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
            g1[n$0_3_2] && NoPerm < FullPerm ==> qpRange55(n$0_3_2) && invRecv55(n$0_3_2) == n$0_3_2
          );
          assume (forall o_4: Ref ::
            { invRecv55(o_4) }
            g1[invRecv55(o_4)] && (NoPerm < FullPerm && qpRange55(o_4)) ==> invRecv55(o_4) == o_4
          );
        if (*) {
          if (g1[n$1_4] && Heap[n$1_4, next] != null) {
            assert {:msg "  Precondition of function is_global_root might not hold. Assertion (n$1.next in g1) might not hold. (framing1.vpr@414.14--414.35) [81111]"}
              g1[Heap[n$1_4, next]];
          }
          assume false;
        }
        assume (forall n$1_5_1_1: Ref ::
          { g1[Heap[n$1_5_1_1, next]] } { g1[n$1_5_1_1], Heap[n$1_5_1_1, next] }
          g1[n$1_5_1_1] && Heap[n$1_5_1_1, next] != null ==> g1[Heap[n$1_5_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion (x1 in g1) might not hold. (framing1.vpr@414.14--414.35) [81112]"}
          g1[x1_2];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_root(Heap, g1, x1_2);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_list_segment(g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in g0)) might not hold. (framing1.vpr@416.14--416.38) [81113]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing1.vpr@416.14--416.38) [81114]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered56(n_2), neverTriggered56(n_2_1) }
            (((n_2 != n_2_1 && g0[n_2]) && g0[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing1.vpr@416.14--416.38) [81115]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] ==> FullPerm > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g0[n_2] && NoPerm < FullPerm ==> qpRange56(n_2) && invRecv56(n_2) == n_2
          );
          assume (forall o_4: Ref ::
            { invRecv56(o_4) }
            g0[invRecv56(o_4)] && (NoPerm < FullPerm && qpRange56(o_4)) ==> invRecv56(o_4) == o_4
          );
        if (*) {
          if (g0[n$0_4] && Heap[n$0_4, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in g0) might not hold. (framing1.vpr@416.14--416.38) [81116]"}
              g0[Heap[n$0_4, next]];
          }
          assume false;
        }
        assume (forall n$0_5_1: Ref ::
          { g0[Heap[n$0_5_1, next]] } { g0[n$0_5_1], Heap[n$0_5_1, next] }
          g0[n$0_5_1] && Heap[n$0_5_1, next] != null ==> g0[Heap[n$0_5_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(Heap, g0);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_list_segment(g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in g1)) might not hold. (framing1.vpr@417.14--417.38) [81117]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing1.vpr@417.14--417.38) [81118]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered57(n_3), neverTriggered57(n_3_1) }
            (((n_3 != n_3_1 && g1[n_3]) && g1[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing1.vpr@417.14--417.38) [81119]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] ==> FullPerm > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g1[n_3] && NoPerm < FullPerm ==> qpRange57(n_3) && invRecv57(n_3) == n_3
          );
          assume (forall o_4: Ref ::
            { invRecv57(o_4) }
            g1[invRecv57(o_4)] && (NoPerm < FullPerm && qpRange57(o_4)) ==> invRecv57(o_4) == o_4
          );
        if (*) {
          if (g1[n$0_6] && Heap[n$0_6, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in g1) might not hold. (framing1.vpr@417.14--417.38) [81120]"}
              g1[Heap[n$0_6, next]];
          }
          assume false;
        }
        assume (forall n$0_7_1: Ref ::
          { g1[Heap[n$0_7_1, next]] } { g1[n$0_7_1], Heap[n$0_7_1, next] }
          g1[n$0_7_1] && Heap[n$0_7_1, next] != null ==> g1[Heap[n$0_7_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(Heap, g1);
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
    
    // -- Check definedness of (forall n$3: Ref :: { n$3.next } (n$3 in (g0 union g1)) ==> acc(n$3.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@419.13--419.31) [81121]"}
      (forall n$3_1_2: Ref, n$3_1_3: Ref ::
      
      (((n$3_1_2 != n$3_1_3 && Set#Union(g0, g1)[n$3_1_2]) && Set#Union(g0, g1)[n$3_1_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_1_2 != n$3_1_3
    );
    
    // -- Define Inverse Function
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g0, g1)[n$3_1_2] && NoPerm < FullPerm ==> qpRange58(n$3_1_2) && invRecv58(n$3_1_2) == n$3_1_2
      );
      assume (forall o_4: Ref ::
        { invRecv58(o_4) }
        (Set#Union(g0, g1)[invRecv58(o_4)] && NoPerm < FullPerm) && qpRange58(o_4) ==> invRecv58(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$3_1_2: Ref ::
        { PostHeap[n$3_1_2, next] } { QPMask[n$3_1_2, next] } { PostHeap[n$3_1_2, next] }
        Set#Union(g0, g1)[n$3_1_2] ==> n$3_1_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((Set#Union(g0, g1)[invRecv58(o_4)] && NoPerm < FullPerm) && qpRange58(o_4) ==> (NoPerm < FullPerm ==> invRecv58(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + FullPerm) && (!((Set#Union(g0, g1)[invRecv58(o_4)] && NoPerm < FullPerm) && qpRange58(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$4: Ref :: { (n$4.next in (g0 union g1)) } { (n$4 in (g0 union g1)), n$4.next } (n$4 in (g0 union g1)) && n$4.next != null ==> (n$4.next in (g0 union g1)))
      if (*) {
        if (Set#Union(g0, g1)[n$4_8]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@419.13--419.31) [81122]"}
            HasDirectPerm(PostMask, n$4_8, next);
        }
        if (Set#Union(g0, g1)[n$4_8] && PostHeap[n$4_8, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$4.next (framing1.vpr@419.13--419.31) [81123]"}
            HasDirectPerm(PostMask, n$4_8, next);
        }
        assume false;
      }
    assume (forall n$4_1_2: Ref ::
      { Set#Union(g0, g1)[PostHeap[n$4_1_2, next]] } { Set#Union(g0, g1)[n$4_1_2], PostHeap[n$4_1_2, next] }
      Set#Union(g0, g1)[n$4_1_2] && PostHeap[n$4_1_2, next] != null ==> Set#Union(g0, g1)[PostHeap[n$4_1_2, next]]
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of is_global_sroot((g0 union g1), Set(x0, x1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing1.vpr@420.13--420.52) [81124]"}
          !Set#Union(g0, g1)[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_sroot might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@420.13--420.52) [81125]"}
            (forall n$0_8: Ref, n$0_8_1: Ref ::
            { neverTriggered59(n$0_8), neverTriggered59(n$0_8_1) }
            (((n$0_8 != n$0_8_1 && Set#Union(g0, g1)[n$0_8]) && Set#Union(g0, g1)[n$0_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_8 != n$0_8_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_sroot might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@420.13--420.52) [81126]"}
            (forall n$0_8: Ref ::
            { PostHeap[n$0_8, next] } { QPMask[n$0_8, next] } { PostHeap[n$0_8, next] }
            Set#Union(g0, g1)[n$0_8] ==> FullPerm > NoPerm ==> PostMask[n$0_8, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_8: Ref ::
            { PostHeap[n$0_8, next] } { QPMask[n$0_8, next] } { PostHeap[n$0_8, next] }
            Set#Union(g0, g1)[n$0_8] && NoPerm < FullPerm ==> qpRange59(n$0_8) && invRecv59(n$0_8) == n$0_8
          );
          assume (forall o_4: Ref ::
            { invRecv59(o_4) }
            Set#Union(g0, g1)[invRecv59(o_4)] && (NoPerm < FullPerm && qpRange59(o_4)) ==> invRecv59(o_4) == o_4
          );
        if (*) {
          if (Set#Union(g0, g1)[n$1_6] && PostHeap[n$1_6, next] != null) {
            assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion (n$1.next in (g0 union g1)) might not hold. (framing1.vpr@420.13--420.52) [81127]"}
              Set#Union(g0, g1)[PostHeap[n$1_6, next]];
          }
          assume false;
        }
        assume (forall n$1_7_1_1: Ref ::
          { Set#Union(g0, g1)[PostHeap[n$1_7_1_1, next]] } { Set#Union(g0, g1)[n$1_7_1_1], PostHeap[n$1_7_1_1, next] }
          Set#Union(g0, g1)[n$1_7_1_1] && PostHeap[n$1_7_1_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$1_7_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_sroot might not hold. Assertion (Set(x0, x1) subset (g0 union g1)) might not hold. (framing1.vpr@420.13--420.52) [81128]"}
          Set#Subset(Set#UnionOne(Set#Singleton(x1_2), x0), Set#Union(g0, g1));
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_sroot(PostHeap, Set#Union(g0, g1), Set#UnionOne(Set#Singleton(x1_2), x0));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acyclic_list_segment((g0 union g1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing1.vpr@422.13--422.46) [81129]"}
          !Set#Union(g0, g1)[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. Quantified resource n.next might not be injective. (framing1.vpr@422.13--422.46) [81130]"}
            (forall n_4_1: Ref, n_4_2: Ref ::
            { neverTriggered60(n_4_1), neverTriggered60(n_4_2) }
            (((n_4_1 != n_4_2 && Set#Union(g0, g1)[n_4_1]) && Set#Union(g0, g1)[n_4_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_4_1 != n_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function acyclic_list_segment might not hold. There might be insufficient permission to access n.next (framing1.vpr@422.13--422.46) [81131]"}
            (forall n_4_1: Ref ::
            { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
            Set#Union(g0, g1)[n_4_1] ==> FullPerm > NoPerm ==> PostMask[n_4_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4_1: Ref ::
            { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
            Set#Union(g0, g1)[n_4_1] && NoPerm < FullPerm ==> qpRange60(n_4_1) && invRecv60(n_4_1) == n_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv60(o_4) }
            Set#Union(g0, g1)[invRecv60(o_4)] && (NoPerm < FullPerm && qpRange60(o_4)) ==> invRecv60(o_4) == o_4
          );
        if (*) {
          if (Set#Union(g0, g1)[n$0_9] && PostHeap[n$0_9, next] != null) {
            assert {:msg "  Precondition of function acyclic_list_segment might not hold. Assertion (n$0.next in (g0 union g1)) might not hold. (framing1.vpr@422.13--422.46) [81132]"}
              Set#Union(g0, g1)[PostHeap[n$0_9, next]];
          }
          assume false;
        }
        assume (forall n$0_10_1: Ref ::
          { Set#Union(g0, g1)[PostHeap[n$0_10_1, next]] } { Set#Union(g0, g1)[n$0_10_1], PostHeap[n$0_10_1, next] }
          Set#Union(g0, g1)[n$0_10_1] && PostHeap[n$0_10_1, next] != null ==> Set#Union(g0, g1)[PostHeap[n$0_10_1, next]]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume acyclic_list_segment(PostHeap, Set#Union(g0, g1));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of unshared_graph($$((g0 union g1)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@423.28--423.43) [81133]"}
            (forall n_5: Ref, n_5_1: Ref ::
            { neverTriggered61(n_5), neverTriggered61(n_5_1) }
            (((n_5 != n_5_1 && Set#Union(g0, g1)[n_5]) && Set#Union(g0, g1)[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@423.28--423.43) [81134]"}
            (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] ==> FullPerm > NoPerm ==> PostMask[n_5, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_5: Ref ::
            { PostHeap[n_5, next] } { QPMask[n_5, next] } { PostHeap[n_5, next] }
            Set#Union(g0, g1)[n_5] && NoPerm < FullPerm ==> qpRange61(n_5) && invRecv61(n_5) == n_5
          );
          assume (forall o_4: Ref ::
            { invRecv61(o_4) }
            Set#Union(g0, g1)[invRecv61(o_4)] && (NoPerm < FullPerm && qpRange61(o_4)) ==> invRecv61(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (unshared_graph($$(PostHeap, Set#Union(g0, g1))): bool);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall r$1: Ref :: { (r$1 in g0), (r$1 in g1) } (r$1 in g0) ==> !((r$1 in g1)))
      if (*) {
        assume false;
      }
    assume (forall r$1_1: Ref ::
      { g0[r$1_1], g1[r$1_1] }
      g0[r$1_1] ==> !g1[r$1_1]
    );
    
    // -- Check definedness of (forall r$2: Ref :: { (r$2 in g0), (r$2 in g1) } (r$2 in g1) ==> !((r$2 in g0)))
      if (*) {
        assume false;
      }
    assume (forall r$2_1: Ref ::
      { g0[r$2_1], g1[r$2_1] }
      g1[r$2_1] ==> !g0[r$2_1]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing1.vpr@427.12--427.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@427.12--427.34) [81135]"}
            (forall n_6: Ref, n_6_1: Ref ::
            { neverTriggered63(n_6), neverTriggered63(n_6_1) }
            (((n_6 != n_6_1 && g0[n_6]) && g0[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@427.12--427.34) [81136]"}
            (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] ==> FullPerm > NoPerm ==> Mask[n_6, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_6: Ref ::
            { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
            g0[n_6] && NoPerm < FullPerm ==> qpRange63(n_6) && invRecv63(n_6) == n_6
          );
          assume (forall o_4: Ref ::
            { invRecv63(o_4) }
            g0[invRecv63(o_4)] && (NoPerm < FullPerm && qpRange63(o_4)) ==> invRecv63(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@427.12--427.34) [81137]"}
            (forall n_7: Ref, n_7_1: Ref ::
            { neverTriggered64(n_7), neverTriggered64(n_7_1) }
            (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@427.12--427.34) [81138]"}
            (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g1[n_7] ==> FullPerm > NoPerm ==> Mask[n_7, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_7: Ref ::
            { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
            g1[n_7] && NoPerm < FullPerm ==> qpRange64(n_7) && invRecv64(n_7) == n_7
          );
          assume (forall o_4: Ref ::
            { invRecv64(o_4) }
            g1[invRecv64(o_4)] && (NoPerm < FullPerm && qpRange64(o_4)) ==> invRecv64(o_4) == o_4
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing1.vpr@427.12--427.34) [81139]"}
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
    assert {:msg "  Postcondition of test_union might not hold. Assertion !((null in (g0 union g1))) might not hold. (framing1.vpr@419.13--419.31) [81140]"}
      !Set#Union(g0, g1)[null];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver n$3 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$3.next might not be injective. (framing1.vpr@419.13--419.31) [81141]"}
        (forall n$3_2: Ref, n$3_2_1: Ref ::
        { neverTriggered62(n$3_2), neverTriggered62(n$3_2_1) }
        (((n$3_2 != n$3_2_1 && Set#Union(g0, g1)[n$3_2]) && Set#Union(g0, g1)[n$3_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$3_2 != n$3_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of test_union might not hold. There might be insufficient permission to access n$3.next (framing1.vpr@419.13--419.31) [81142]"}
        (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] ==> Mask[n$3_2, next] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver n$3
      assume (forall n$3_2: Ref ::
        { Heap[n$3_2, next] } { QPMask[n$3_2, next] } { Heap[n$3_2, next] }
        Set#Union(g0, g1)[n$3_2] && NoPerm < FullPerm ==> qpRange62(n$3_2) && invRecv62(n$3_2) == n$3_2
      );
      assume (forall o_4: Ref ::
        { invRecv62(o_4) }
        Set#Union(g0, g1)[invRecv62(o_4)] && (NoPerm < FullPerm && qpRange62(o_4)) ==> invRecv62(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (Set#Union(g0, g1)[invRecv62(o_4)] && (NoPerm < FullPerm && qpRange62(o_4)) ==> invRecv62(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(Set#Union(g0, g1)[invRecv62(o_4)] && (NoPerm < FullPerm && qpRange62(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (Set#Union(g0, g1)[n$4_2_1] && Heap[n$4_2_1, next] != null) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion (n$4.next in (g0 union g1)) might not hold. (framing1.vpr@419.13--419.31) [81143]"}
          Set#Union(g0, g1)[Heap[n$4_2_1, next]];
      }
      assume false;
    }
    assume (forall n$4_3_1: Ref ::
      { Set#Union(g0, g1)[Heap[n$4_3_1, next]] } { Set#Union(g0, g1)[n$4_3_1], Heap[n$4_3_1, next] }
      Set#Union(g0, g1)[n$4_3_1] && Heap[n$4_3_1, next] != null ==> Set#Union(g0, g1)[Heap[n$4_3_1, next]]
    );
    assert {:msg "  Postcondition of test_union might not hold. Assertion is_global_sroot((g0 union g1), Set(x0, x1)) might not hold. (framing1.vpr@420.13--420.52) [81144]"}
      is_global_sroot(Heap, Set#Union(g0, g1), Set#UnionOne(Set#Singleton(x1_2), x0));
    assert {:msg "  Postcondition of test_union might not hold. Assertion acyclic_list_segment((g0 union g1)) might not hold. (framing1.vpr@422.13--422.46) [81145]"}
      acyclic_list_segment(Heap, Set#Union(g0, g1));
    assert {:msg "  Postcondition of test_union might not hold. Assertion unshared_graph($$((g0 union g1))) might not hold. (framing1.vpr@423.13--423.44) [81146]"}
      (unshared_graph($$(Heap, Set#Union(g0, g1))): bool);
    if (*) {
      if (g0[r$1_2]) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion !((r$1 in g1)) might not hold. (framing1.vpr@425.13--425.33) [81147]"}
          !g1[r$1_2];
      }
      assume false;
    }
    assume (forall r$1_3_1: Ref ::
      { g0[r$1_3_1], g1[r$1_3_1] }
      g0[r$1_3_1] ==> !g1[r$1_3_1]
    );
    if (*) {
      if (g1[r$2_2]) {
        assert {:msg "  Postcondition of test_union might not hold. Assertion !((r$2 in g0)) might not hold. (framing1.vpr@425.13--425.33) [81148]"}
          !g0[r$2_2];
      }
      assume false;
    }
    assume (forall r$2_3_1: Ref ::
      { g0[r$2_3_1], g1[r$2_3_1] }
      g1[r$2_3_1] ==> !g0[r$2_3_1]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test_unframing
// ==================================================

procedure test_unframing(g0: (Set Ref), g1: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_23: Ref;
  var n$2_21: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var u_18: Ref;
  var v_18: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_1: Ref;
  var v_1_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@431.14--431.36) [81149]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange65(n_1) && invRecv65(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv65(o_4) }
        (g0[invRecv65(o_4)] && NoPerm < FullPerm) && qpRange65(o_4) ==> invRecv65(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv65(o_4)] && NoPerm < FullPerm) && qpRange65(o_4) ==> (NoPerm < FullPerm ==> invRecv65(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv65(o_4)] && NoPerm < FullPerm) && qpRange65(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_23]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@431.14--431.36) [81150]"}
            HasDirectPerm(Mask, n$0_23, next);
        }
        if (g0[n$0_23] && Heap[n$0_23, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@431.14--431.36) [81151]"}
            HasDirectPerm(Mask, n$0_23, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@431.14--431.36) [81152]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange66(n$1_1) && invRecv66(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv66(o_4) }
        (g1[invRecv66(o_4)] && NoPerm < FullPerm) && qpRange66(o_4) ==> invRecv66(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv66(o_4)] && NoPerm < FullPerm) && qpRange66(o_4) ==> (NoPerm < FullPerm ==> invRecv66(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv66(o_4)] && NoPerm < FullPerm) && qpRange66(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_21]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@431.14--431.36) [81153]"}
            HasDirectPerm(Mask, n$2_21, next);
        }
        if (g1[n$2_21] && Heap[n$2_21, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@431.14--431.36) [81154]"}
            HasDirectPerm(Mask, n$2_21, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { (u in g0), (v in g0) }
  //     { (u in g0), edge($$((g0 union g1)), u, v) }
  //     { (u in g0), edge($$(g0), u, v) }
  //     { (v in g0), edge($$((g0 union g1)), u, v) }
  //     { (v in g0), edge($$(g0), u, v) }
  //     { edge($$((g0 union g1)), u, v) }
  //     { edge($$(g0), u, v) }
  //     (u in g0) && ((v in g0) && edge($$((g0 union g1)), u, v)) ==>
  //     edge($$(g0), u, v)) -- framing1.vpr@435.5--435.103
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { (u in g0), (v in g0) } { (u in g0), edge($$((g0 union g1)), u, v) } { (u in g0), edge($$(g0), u, v) } { (v in g0), edge($$((g0 union g1)), u, v) } { (v in g0), edge($$(g0), u, v) } { edge($$((g0 union g1)), u, v) } { edge($$(g0), u, v) } (u in g0) && ((v in g0) && edge($$((g0 union g1)), u, v)) ==> edge($$(g0), u, v))
      if (*) {
        if (g0[u_18]) {
          if (g0[v_18]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@435.62--435.77) [81155]"}
                  (forall n_2: Ref, n_2_1: Ref ::
                  { neverTriggered67(n_2), neverTriggered67(n_2_1) }
                  (((n_2 != n_2_1 && Set#Union(g0, g1)[n_2]) && Set#Union(g0, g1)[n_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_2 != n_2_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@435.62--435.77) [81156]"}
                  (forall n_2: Ref ::
                  { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
                  Set#Union(g0, g1)[n_2] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_2, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_2: Ref ::
                  { ExhaleWellDef0Heap[n_2, next] } { QPMask[n_2, next] } { ExhaleWellDef0Heap[n_2, next] }
                  Set#Union(g0, g1)[n_2] && NoPerm < FullPerm ==> qpRange67(n_2) && invRecv67(n_2) == n_2
                );
                assume (forall o_4: Ref ::
                  { invRecv67(o_4) }
                  Set#Union(g0, g1)[invRecv67(o_4)] && (NoPerm < FullPerm && qpRange67(o_4)) ==> invRecv67(o_4) == o_4
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
        if (g0[u_18] && (g0[v_18] && (edge($$(Heap, Set#Union(g0, g1)), u_18, v_18): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@435.92--435.98) [81157]"}
                (forall n_3: Ref, n_3_1: Ref ::
                { neverTriggered68(n_3), neverTriggered68(n_3_1) }
                (((n_3 != n_3_1 && g0[n_3]) && g0[n_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_3 != n_3_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@435.92--435.98) [81158]"}
                (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_3, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_3: Ref ::
                { ExhaleWellDef0Heap[n_3, next] } { QPMask[n_3, next] } { ExhaleWellDef0Heap[n_3, next] }
                g0[n_3] && NoPerm < FullPerm ==> qpRange68(n_3) && invRecv68(n_3) == n_3
              );
              assume (forall o_4: Ref ::
                { invRecv68(o_4) }
                g0[invRecv68(o_4)] && (NoPerm < FullPerm && qpRange68(o_4)) ==> invRecv68(o_4) == o_4
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
      if (g0[u_1] && (g0[v_1_1] && (edge($$(Heap, Set#Union(g0, g1)), u_1, v_1_1): bool))) {
        assert {:msg "  Assert might fail. Assertion edge($$(g0), u, v) might not hold. (framing1.vpr@435.12--435.103) [81159]"}
          (edge($$(Heap, g0), u_1, v_1_1): bool);
      }
      assume false;
    }
    assume (forall u_2_1_1: Ref, v_2_1_1: Ref ::
      { g0[u_2_1_1], g0[v_2_1_1] } { g0[u_2_1_1], (edge($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1_1, v_2_1_1): bool) } { g0[u_2_1_1], (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1_1, v_2_1_1): bool) } { g0[v_2_1_1], (edge($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1_1, v_2_1_1): bool) } { g0[v_2_1_1], (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1_1, v_2_1_1): bool) } { (edge($$#frame(FrameFragment($$#condqp3(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1_1, v_2_1_1): bool) } { (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1_1, v_2_1_1): bool) }
      g0[u_2_1_1] && (g0[v_2_1_1] && (edge($$(Heap, Set#Union(g0, g1)), u_2_1_1, v_2_1_1): bool)) ==> (edge($$(Heap, g0), u_2_1_1, v_2_1_1): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_disjoint_advanced
// ==================================================

procedure test_disjoint_advanced(g0: (Set Ref), g1: (Set Ref), x0: Ref, x1_2: Ref) returns (x: Ref)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_24: Ref;
  var n$2_22: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n$1_2: Ref;
  var ExhaleHeap: HeapType;
  var n$1_4: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var g_1: (Set Ref);
  var n_27: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var n_3: Ref;
  var u_19: Ref;
  var v_19: Ref;
  var w_3: Ref;
  var u_1: Ref;
  var v_1_1: Ref;
  var w_1: Ref;
  var u_20: Ref;
  var v_20: Ref;
  var u_4_1: Ref;
  var v_4_1: Ref;
  var n_28: Ref;
  var n_11_1: Ref;
  var n_29: Ref;
  var n_18: Ref;
  var n_30: Ref;
  var n_21: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x0, $allocated];
    assume Heap[x1_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume !g0[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (framing1.vpr@439.14--439.36) [81160]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g0[n_1]) && g0[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] && NoPerm < FullPerm ==> qpRange69(n_1) && invRecv69(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv69(o_4) }
        (g0[invRecv69(o_4)] && NoPerm < FullPerm) && qpRange69(o_4) ==> invRecv69(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g0[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv69(o_4)] && NoPerm < FullPerm) && qpRange69(o_4) ==> (NoPerm < FullPerm ==> invRecv69(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g0[invRecv69(o_4)] && NoPerm < FullPerm) && qpRange69(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g0) } { (n$0 in g0), n$0.next } (n$0 in g0) && n$0.next != null ==> (n$0.next in g0))
      if (*) {
        if (g0[n$0_24]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@439.14--439.36) [81161]"}
            HasDirectPerm(Mask, n$0_24, next);
        }
        if (g0[n$0_24] && Heap[n$0_24, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (framing1.vpr@439.14--439.36) [81162]"}
            HasDirectPerm(Mask, n$0_24, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g0[Heap[n$0_1, next]] } { g0[n$0_1], Heap[n$0_1, next] }
      g0[n$0_1] && Heap[n$0_1, next] != null ==> g0[Heap[n$0_1, next]]
    );
    assume !g1[null];
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g1) ==> acc(n$1.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (framing1.vpr@439.14--439.36) [81163]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && g1[n$1_1]) && g1[n$1_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] && NoPerm < FullPerm ==> qpRange70(n$1_1) && invRecv70(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv70(o_4) }
        (g1[invRecv70(o_4)] && NoPerm < FullPerm) && qpRange70(o_4) ==> invRecv70(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { Heap[n$1_1, next] } { QPMask[n$1_1, next] } { Heap[n$1_1, next] }
        g1[n$1_1] ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv70(o_4)] && NoPerm < FullPerm) && qpRange70(o_4) ==> (NoPerm < FullPerm ==> invRecv70(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g1[invRecv70(o_4)] && NoPerm < FullPerm) && qpRange70(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g1) } { (n$2 in g1), n$2.next } (n$2 in g1) && n$2.next != null ==> (n$2.next in g1))
      if (*) {
        if (g1[n$2_22]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@439.14--439.36) [81164]"}
            HasDirectPerm(Mask, n$2_22, next);
        }
        if (g1[n$2_22] && Heap[n$2_22, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (framing1.vpr@439.14--439.36) [81165]"}
            HasDirectPerm(Mask, n$2_22, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g1[Heap[n$2_1_1, next]] } { g1[n$2_1_1], Heap[n$2_1_1, next] }
      g1[n$2_1_1] && Heap[n$2_1_1, next] != null ==> g1[Heap[n$2_1_1, next]]
    );
    assume state(Heap, Mask);
    assume g0[x0];
    assume state(Heap, Mask);
    assume g1[x1_2];
    assume state(Heap, Mask);
    
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
    assume state(Heap, Mask);
    
    // -- Check definedness of is_global_root(g0, x0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion !((null in g0)) might not hold. (framing1.vpr@443.14--443.35) [81166]"}
          !g0[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_root might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@443.14--443.35) [81167]"}
            (forall n$0_2_1: Ref, n$0_2_2: Ref ::
            { neverTriggered71(n$0_2_1), neverTriggered71(n$0_2_2) }
            (((n$0_2_1 != n$0_2_2 && g0[n$0_2_1]) && g0[n$0_2_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_2_1 != n$0_2_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_root might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@443.14--443.35) [81168]"}
            (forall n$0_2_1: Ref ::
            { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
            g0[n$0_2_1] ==> FullPerm > NoPerm ==> Mask[n$0_2_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_2_1: Ref ::
            { Heap[n$0_2_1, next] } { QPMask[n$0_2_1, next] } { Heap[n$0_2_1, next] }
            g0[n$0_2_1] && NoPerm < FullPerm ==> qpRange71(n$0_2_1) && invRecv71(n$0_2_1) == n$0_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv71(o_4) }
            g0[invRecv71(o_4)] && (NoPerm < FullPerm && qpRange71(o_4)) ==> invRecv71(o_4) == o_4
          );
        if (*) {
          if (g0[n$1_2] && Heap[n$1_2, next] != null) {
            assert {:msg "  Precondition of function is_global_root might not hold. Assertion (n$1.next in g0) might not hold. (framing1.vpr@443.14--443.35) [81169]"}
              g0[Heap[n$1_2, next]];
          }
          assume false;
        }
        assume (forall n$1_3_1_1: Ref ::
          { g0[Heap[n$1_3_1_1, next]] } { g0[n$1_3_1_1], Heap[n$1_3_1_1, next] }
          g0[n$1_3_1_1] && Heap[n$1_3_1_1, next] != null ==> g0[Heap[n$1_3_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion (x0 in g0) might not hold. (framing1.vpr@443.14--443.35) [81170]"}
          g0[x0];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_root(Heap, g0, x0);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of is_global_root(g1, x1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion !((null in g1)) might not hold. (framing1.vpr@444.14--444.35) [81171]"}
          !g1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$0 is injective
          assert {:msg "  Precondition of function is_global_root might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@444.14--444.35) [81172]"}
            (forall n$0_3_2: Ref, n$0_3_3: Ref ::
            { neverTriggered72(n$0_3_2), neverTriggered72(n$0_3_3) }
            (((n$0_3_2 != n$0_3_3 && g1[n$0_3_2]) && g1[n$0_3_3]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_3_2 != n$0_3_3
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function is_global_root might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@444.14--444.35) [81173]"}
            (forall n$0_3_2: Ref ::
            { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
            g1[n$0_3_2] ==> FullPerm > NoPerm ==> Mask[n$0_3_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n$0
          assume (forall n$0_3_2: Ref ::
            { Heap[n$0_3_2, next] } { QPMask[n$0_3_2, next] } { Heap[n$0_3_2, next] }
            g1[n$0_3_2] && NoPerm < FullPerm ==> qpRange72(n$0_3_2) && invRecv72(n$0_3_2) == n$0_3_2
          );
          assume (forall o_4: Ref ::
            { invRecv72(o_4) }
            g1[invRecv72(o_4)] && (NoPerm < FullPerm && qpRange72(o_4)) ==> invRecv72(o_4) == o_4
          );
        if (*) {
          if (g1[n$1_4] && Heap[n$1_4, next] != null) {
            assert {:msg "  Precondition of function is_global_root might not hold. Assertion (n$1.next in g1) might not hold. (framing1.vpr@444.14--444.35) [81174]"}
              g1[Heap[n$1_4, next]];
          }
          assume false;
        }
        assume (forall n$1_5_1_1: Ref ::
          { g1[Heap[n$1_5_1_1, next]] } { g1[n$1_5_1_1], Heap[n$1_5_1_1, next] }
          g1[n$1_5_1_1] && Heap[n$1_5_1_1, next] != null ==> g1[Heap[n$1_5_1_1, next]]
        );
        assert {:msg "  Precondition of function is_global_root might not hold. Assertion (x1 in g1) might not hold. (framing1.vpr@444.14--444.35) [81175]"}
          g1[x1_2];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume is_global_root(Heap, g1, x1_2);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: g := (g0 union g1) -- framing1.vpr@446.5--446.35
    g_1 := Set#Union(g0, g1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref ::
  //     { (n in g) }
  //     { exists_path($$(g0), x0, n) }
  //     { exists_path($$(g1), x1, n) }
  //     (n in g) ==> exists_path($$(g0), x0, n) || exists_path($$(g1), x1, n)) -- framing1.vpr@447.5--447.95
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g0), x0, n) } { exists_path($$(g1), x1, n) } (n in g) ==> exists_path($$(g0), x0, n) || exists_path($$(g1), x1, n))
      if (*) {
        if (g_1[n_27]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@447.53--447.59) [81176]"}
                (forall n$0_4: Ref, n$0_4_1: Ref ::
                { neverTriggered73(n$0_4), neverTriggered73(n$0_4_1) }
                (((n$0_4 != n$0_4_1 && g0[n$0_4]) && g0[n$0_4_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_4 != n$0_4_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@447.53--447.59) [81177]"}
                (forall n$0_4: Ref ::
                { ExhaleWellDef0Heap[n$0_4, next] } { QPMask[n$0_4, next] } { ExhaleWellDef0Heap[n$0_4, next] }
                g0[n$0_4] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_4, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_4: Ref ::
                { ExhaleWellDef0Heap[n$0_4, next] } { QPMask[n$0_4, next] } { ExhaleWellDef0Heap[n$0_4, next] }
                g0[n$0_4] && NoPerm < FullPerm ==> qpRange73(n$0_4) && invRecv73(n$0_4) == n$0_4
              );
              assume (forall o_4: Ref ::
                { invRecv73(o_4) }
                g0[invRecv73(o_4)] && (NoPerm < FullPerm && qpRange73(o_4)) ==> invRecv73(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!(exists_path($$(Heap, g0), x0, n_27): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@447.82--447.88) [81178]"}
                  (forall n$0_5: Ref, n$0_5_2: Ref ::
                  { neverTriggered74(n$0_5), neverTriggered74(n$0_5_2) }
                  (((n$0_5 != n$0_5_2 && g1[n$0_5]) && g1[n$0_5_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_5 != n$0_5_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@447.82--447.88) [81179]"}
                  (forall n$0_5: Ref ::
                  { ExhaleWellDef0Heap[n$0_5, next] } { QPMask[n$0_5, next] } { ExhaleWellDef0Heap[n$0_5, next] }
                  g1[n$0_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_5, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_5: Ref ::
                  { ExhaleWellDef0Heap[n$0_5, next] } { QPMask[n$0_5, next] } { ExhaleWellDef0Heap[n$0_5, next] }
                  g1[n$0_5] && NoPerm < FullPerm ==> qpRange74(n$0_5) && invRecv74(n$0_5) == n$0_5
                );
                assume (forall o_4: Ref ::
                  { invRecv74(o_4) }
                  g1[invRecv74(o_4)] && (NoPerm < FullPerm && qpRange74(o_4)) ==> invRecv74(o_4) == o_4
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
      if (g_1[n_3]) {
        assert {:msg "  Assert might fail. Assertion exists_path($$(g0), x0, n) || exists_path($$(g1), x1, n) might not hold. (framing1.vpr@447.12--447.95) [81180]"}
          (exists_path($$(Heap, g0), x0, n_3): bool) || (exists_path($$(Heap, g1), x1_2, n_3): bool);
      }
      assume false;
    }
    assume (forall n_4_1_1: Ref ::
      { g_1[n_4_1_1] } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), x0, n_4_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), x1_2, n_4_1_1): bool) }
      g_1[n_4_1_1] ==> (exists_path($$(Heap, g0), x0, n_4_1_1): bool) || (exists_path($$(Heap, g1), x1_2, n_4_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { exists_path($$(g0), u, v) }
  //     !exists_path($$(g0), u, v) ==>
  //     u != v &&
  //     (forall w: Ref ::
  //       { edge($$(g0), u, w) }
  //       { exists_path($$(g0), w, v) }
  //       !edge($$(g0), u, w) || !exists_path($$(g0), w, v))) -- framing1.vpr@451.5--451.135
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } !exists_path($$(g0), u, v) ==> u != v && (forall w: Ref :: { edge($$(g0), u, w) } { exists_path($$(g0), w, v) } !edge($$(g0), u, w) || !exists_path($$(g0), w, v)))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@451.48--451.54) [81181]"}
              (forall n_5: Ref, n_5_1: Ref ::
              { neverTriggered75(n_5), neverTriggered75(n_5_1) }
              (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_5 != n_5_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@451.48--451.54) [81182]"}
              (forall n_5: Ref ::
              { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
              g0[n_5] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_5, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_5: Ref ::
              { ExhaleWellDef0Heap[n_5, next] } { QPMask[n_5, next] } { ExhaleWellDef0Heap[n_5, next] }
              g0[n_5] && NoPerm < FullPerm ==> qpRange75(n_5) && invRecv75(n_5) == n_5
            );
            assume (forall o_4: Ref ::
              { invRecv75(o_4) }
              g0[invRecv75(o_4)] && (NoPerm < FullPerm && qpRange75(o_4)) ==> invRecv75(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (!(exists_path($$(Heap, g0), u_19, v_19): bool)) {
          if (u_19 != v_19) {
            if (*) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@451.96--451.102) [81183]"}
                    (forall n_6: Ref, n_6_1: Ref ::
                    { neverTriggered76(n_6), neverTriggered76(n_6_1) }
                    (((n_6 != n_6_1 && g0[n_6]) && g0[n_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_6 != n_6_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@451.96--451.102) [81184]"}
                    (forall n_6: Ref ::
                    { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
                    g0[n_6] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_6, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_6: Ref ::
                    { ExhaleWellDef0Heap[n_6, next] } { QPMask[n_6, next] } { ExhaleWellDef0Heap[n_6, next] }
                    g0[n_6] && NoPerm < FullPerm ==> qpRange76(n_6) && invRecv76(n_6) == n_6
                  );
                  assume (forall o_4: Ref ::
                    { invRecv76(o_4) }
                    g0[invRecv76(o_4)] && (NoPerm < FullPerm && qpRange76(o_4)) ==> invRecv76(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                ExhaleWellDef0Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              if ((edge($$(Heap, g0), u_19, w_3): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@451.124--451.130) [81185]"}
                      (forall n_7: Ref, n_7_1: Ref ::
                      { neverTriggered77(n_7), neverTriggered77(n_7_1) }
                      (((n_7 != n_7_1 && g0[n_7]) && g0[n_7_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_7 != n_7_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@451.124--451.130) [81186]"}
                      (forall n_7: Ref ::
                      { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
                      g0[n_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_7, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_7: Ref ::
                      { ExhaleWellDef0Heap[n_7, next] } { QPMask[n_7, next] } { ExhaleWellDef0Heap[n_7, next] }
                      g0[n_7] && NoPerm < FullPerm ==> qpRange77(n_7) && invRecv77(n_7) == n_7
                    );
                    assume (forall o_4: Ref ::
                      { invRecv77(o_4) }
                      g0[invRecv77(o_4)] && (NoPerm < FullPerm && qpRange77(o_4)) ==> invRecv77(o_4) == o_4
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
      if (!(exists_path($$(Heap, g0), u_1, v_1_1): bool)) {
        assert {:msg "  Assert might fail. Assertion u != v might not hold. (framing1.vpr@451.12--451.135) [81187]"}
          u_1 != v_1_1;
        if (*) {
          assert {:msg "  Assert might fail. Assertion !edge($$(g0), u, w) || !exists_path($$(g0), w, v) might not hold. (framing1.vpr@451.12--451.135) [81188]"}
            !(edge($$(Heap, g0), u_1, w_1): bool) || !(exists_path($$(Heap, g0), w_1, v_1_1): bool);
          assume false;
        }
        assume (forall w_2_1: Ref ::
          { (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_1, w_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), w_2_1, v_1_1): bool) }
          !(edge($$(Heap, g0), u_1, w_2_1): bool) || !(exists_path($$(Heap, g0), w_2_1, v_1_1): bool)
        );
      }
      assume false;
    }
    assume (forall u_2_1_1: Ref, v_2_1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1_1, v_2_1_1): bool) }
      !(exists_path($$(Heap, g0), u_2_1_1, v_2_1_1): bool) ==> u_2_1_1 != v_2_1_1 && (forall w_3_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_2_1_1, w_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), w_3_1, v_2_1_1): bool) }
        !(edge($$(Heap, g0), u_2_1_1, w_3_1): bool) || !(exists_path($$(Heap, g0), w_3_1, v_2_1_1): bool)
      )
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall u: Ref, v: Ref ::
  //     { exists_path($$(g0), u, v) }
  //     { edge($$(g0), u, v) }
  //     !exists_path($$(g0), u, v) ==> !edge($$(g0), u, v)) -- framing1.vpr@452.5--452.81
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { edge($$(g0), u, v) } !exists_path($$(g0), u, v) ==> !edge($$(g0), u, v))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@452.48--452.54) [81189]"}
              (forall n_8: Ref, n_8_1: Ref ::
              { neverTriggered78(n_8), neverTriggered78(n_8_1) }
              (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_8 != n_8_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@452.48--452.54) [81190]"}
              (forall n_8: Ref ::
              { ExhaleWellDef0Heap[n_8, next] } { QPMask[n_8, next] } { ExhaleWellDef0Heap[n_8, next] }
              g0[n_8] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_8, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_8: Ref ::
              { ExhaleWellDef0Heap[n_8, next] } { QPMask[n_8, next] } { ExhaleWellDef0Heap[n_8, next] }
              g0[n_8] && NoPerm < FullPerm ==> qpRange78(n_8) && invRecv78(n_8) == n_8
            );
            assume (forall o_4: Ref ::
              { invRecv78(o_4) }
              g0[invRecv78(o_4)] && (NoPerm < FullPerm && qpRange78(o_4)) ==> invRecv78(o_4) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (!(exists_path($$(Heap, g0), u_20, v_20): bool)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@452.70--452.76) [81191]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered79(n_9), neverTriggered79(n_9_1) }
                (((n_9 != n_9_1 && g0[n_9]) && g0[n_9_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@452.70--452.76) [81192]"}
                (forall n_9: Ref ::
                { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
                g0[n_9] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n_9, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { ExhaleWellDef0Heap[n_9, next] } { QPMask[n_9, next] } { ExhaleWellDef0Heap[n_9, next] }
                g0[n_9] && NoPerm < FullPerm ==> qpRange79(n_9) && invRecv79(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv79(o_4) }
                g0[invRecv79(o_4)] && (NoPerm < FullPerm && qpRange79(o_4)) ==> invRecv79(o_4) == o_4
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
      if (!(exists_path($$(Heap, g0), u_4_1, v_4_1): bool)) {
        assert {:msg "  Assert might fail. Assertion !edge($$(g0), u, v) might not hold. (framing1.vpr@452.12--452.81) [81193]"}
          !(edge($$(Heap, g0), u_4_1, v_4_1): bool);
      }
      assume false;
    }
    assume (forall u_5_1: Ref, v_5_1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_5_1, v_5_1_1): bool) } { (edge($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), u_5_1, v_5_1_1): bool) }
      !(exists_path($$(Heap, g0), u_5_1, v_5_1_1): bool) ==> !(edge($$(Heap, g0), u_5_1, v_5_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref ::
  //     { (n in g) }
  //     { exists_path($$(g0), x0, n) }
  //     { exists_path($$(g1), x1, n) }
  //     (n in g) ==> !exists_path($$(g0), x0, n) || !exists_path($$(g1), x1, n)) -- framing1.vpr@454.5--454.95
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g0), x0, n) } { exists_path($$(g1), x1, n) } (n in g) ==> !exists_path($$(g0), x0, n) || !exists_path($$(g1), x1, n))
      if (*) {
        if (g_1[n_28]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@454.53--454.59) [81194]"}
                (forall n$0_6: Ref, n$0_6_1: Ref ::
                { neverTriggered80(n$0_6), neverTriggered80(n$0_6_1) }
                (((n$0_6 != n$0_6_1 && g0[n$0_6]) && g0[n$0_6_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_6 != n$0_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@454.53--454.59) [81195]"}
                (forall n$0_6: Ref ::
                { ExhaleWellDef0Heap[n$0_6, next] } { QPMask[n$0_6, next] } { ExhaleWellDef0Heap[n$0_6, next] }
                g0[n$0_6] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_6: Ref ::
                { ExhaleWellDef0Heap[n$0_6, next] } { QPMask[n$0_6, next] } { ExhaleWellDef0Heap[n$0_6, next] }
                g0[n$0_6] && NoPerm < FullPerm ==> qpRange80(n$0_6) && invRecv80(n$0_6) == n$0_6
              );
              assume (forall o_4: Ref ::
                { invRecv80(o_4) }
                g0[invRecv80(o_4)] && (NoPerm < FullPerm && qpRange80(o_4)) ==> invRecv80(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, g0), x0, n_28): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@454.82--454.88) [81196]"}
                  (forall n$0_7: Ref, n$0_7_2: Ref ::
                  { neverTriggered81(n$0_7), neverTriggered81(n$0_7_2) }
                  (((n$0_7 != n$0_7_2 && g1[n$0_7]) && g1[n$0_7_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_7 != n$0_7_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@454.82--454.88) [81197]"}
                  (forall n$0_7: Ref ::
                  { ExhaleWellDef0Heap[n$0_7, next] } { QPMask[n$0_7, next] } { ExhaleWellDef0Heap[n$0_7, next] }
                  g1[n$0_7] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_7: Ref ::
                  { ExhaleWellDef0Heap[n$0_7, next] } { QPMask[n$0_7, next] } { ExhaleWellDef0Heap[n$0_7, next] }
                  g1[n$0_7] && NoPerm < FullPerm ==> qpRange81(n$0_7) && invRecv81(n$0_7) == n$0_7
                );
                assume (forall o_4: Ref ::
                  { invRecv81(o_4) }
                  g1[invRecv81(o_4)] && (NoPerm < FullPerm && qpRange81(o_4)) ==> invRecv81(o_4) == o_4
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
      if (g_1[n_11_1]) {
        assert {:msg "  Assert might fail. Assertion !exists_path($$(g0), x0, n) || !exists_path($$(g1), x1, n) might not hold. (framing1.vpr@454.12--454.95) [81198]"}
          !(exists_path($$(Heap, g0), x0, n_11_1): bool) || !(exists_path($$(Heap, g1), x1_2, n_11_1): bool);
      }
      assume false;
    }
    assume (forall n_12_1_1: Ref ::
      { g_1[n_12_1_1] } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g0)), g0), x0, n_12_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g1)), g1), x1_2, n_12_1_1): bool) }
      g_1[n_12_1_1] ==> !(exists_path($$(Heap, g0), x0, n_12_1_1): bool) || !(exists_path($$(Heap, g1), x1_2, n_12_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_TCFraming(g0, g1) -- framing1.vpr@456.12--456.34
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_TCFraming(g0, g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@456.12--456.34) [81199]"}
            (forall n_13: Ref, n_13_1: Ref ::
            { neverTriggered82(n_13), neverTriggered82(n_13_1) }
            (((n_13 != n_13_1 && g0[n_13]) && g0[n_13_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_13 != n_13_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@456.12--456.34) [81200]"}
            (forall n_13: Ref ::
            { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
            g0[n_13] ==> FullPerm > NoPerm ==> Mask[n_13, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_13: Ref ::
            { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
            g0[n_13] && NoPerm < FullPerm ==> qpRange82(n_13) && invRecv82(n_13) == n_13
          );
          assume (forall o_4: Ref ::
            { invRecv82(o_4) }
            g0[invRecv82(o_4)] && (NoPerm < FullPerm && qpRange82(o_4)) ==> invRecv82(o_4) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function apply_TCFraming might not hold. Quantified resource n.next might not be injective. (framing1.vpr@456.12--456.34) [81201]"}
            (forall n_14: Ref, n_14_1: Ref ::
            { neverTriggered83(n_14), neverTriggered83(n_14_1) }
            (((n_14 != n_14_1 && g1[n_14]) && g1[n_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_14 != n_14_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function apply_TCFraming might not hold. There might be insufficient permission to access n.next (framing1.vpr@456.12--456.34) [81202]"}
            (forall n_14: Ref ::
            { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
            g1[n_14] ==> FullPerm > NoPerm ==> Mask[n_14, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_14: Ref ::
            { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
            g1[n_14] && NoPerm < FullPerm ==> qpRange83(n_14) && invRecv83(n_14) == n_14
          );
          assume (forall o_4: Ref ::
            { invRecv83(o_4) }
            g1[invRecv83(o_4)] && (NoPerm < FullPerm && qpRange83(o_4)) ==> invRecv83(o_4) == o_4
          );
        assert {:msg "  Precondition of function apply_TCFraming might not hold. Assertion (g1 intersection g0) == Set[Ref]() might not hold. (framing1.vpr@456.12--456.34) [81203]"}
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
  
  // -- Translating statement: inhale apply_noExit($$((g0 union g1)), (g0 union g1), g0) -- framing1.vpr@457.12--457.58
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_noExit($$((g0 union g1)), (g0 union g1), g0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@457.25--457.40) [81204]"}
            (forall n_15: Ref, n_15_1: Ref ::
            { neverTriggered84(n_15), neverTriggered84(n_15_1) }
            (((n_15 != n_15_1 && Set#Union(g0, g1)[n_15]) && Set#Union(g0, g1)[n_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_15 != n_15_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@457.25--457.40) [81205]"}
            (forall n_15: Ref ::
            { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
            Set#Union(g0, g1)[n_15] ==> FullPerm > NoPerm ==> Mask[n_15, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_15: Ref ::
            { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
            Set#Union(g0, g1)[n_15] && NoPerm < FullPerm ==> qpRange84(n_15) && invRecv84(n_15) == n_15
          );
          assume (forall o_4: Ref ::
            { invRecv84(o_4) }
            Set#Union(g0, g1)[invRecv84(o_4)] && (NoPerm < FullPerm && qpRange84(o_4)) ==> invRecv84(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_noExit($$(Heap, Set#Union(g0, g1)), Set#Union(g0, g1), g0): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale apply_noExit($$((g0 union g1)), (g0 union g1), g1) -- framing1.vpr@458.12--458.58
    assume state(Heap, Mask);
    
    // -- Check definedness of apply_noExit($$((g0 union g1)), (g0 union g1), g1)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (framing1.vpr@458.25--458.40) [81206]"}
            (forall n_16: Ref, n_16_1: Ref ::
            { neverTriggered85(n_16), neverTriggered85(n_16_1) }
            (((n_16 != n_16_1 && Set#Union(g0, g1)[n_16]) && Set#Union(g0, g1)[n_16_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_16 != n_16_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (framing1.vpr@458.25--458.40) [81207]"}
            (forall n_16: Ref ::
            { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
            Set#Union(g0, g1)[n_16] ==> FullPerm > NoPerm ==> Mask[n_16, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_16: Ref ::
            { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
            Set#Union(g0, g1)[n_16] && NoPerm < FullPerm ==> qpRange85(n_16) && invRecv85(n_16) == n_16
          );
          assume (forall o_4: Ref ::
            { invRecv85(o_4) }
            Set#Union(g0, g1)[invRecv85(o_4)] && (NoPerm < FullPerm && qpRange85(o_4)) ==> invRecv85(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (apply_noExit($$(Heap, Set#Union(g0, g1)), Set#Union(g0, g1), g1): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref ::
  //     { (n in g) }
  //     { exists_path($$(g), x0, n) }
  //     { exists_path($$(g), x1, n) }
  //     (n in g) ==> exists_path($$(g), x0, n) || exists_path($$(g), x1, n)) -- framing1.vpr@463.5--463.94
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x0, n) } { exists_path($$(g), x1, n) } (n in g) ==> exists_path($$(g), x0, n) || exists_path($$(g), x1, n))
      if (*) {
        if (g_1[n_29]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@463.54--463.59) [81208]"}
                (forall n$0_8: Ref, n$0_8_1: Ref ::
                { neverTriggered86(n$0_8), neverTriggered86(n$0_8_1) }
                (((n$0_8 != n$0_8_1 && g_1[n$0_8]) && g_1[n$0_8_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_8 != n$0_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@463.54--463.59) [81209]"}
                (forall n$0_8: Ref ::
                { ExhaleWellDef0Heap[n$0_8, next] } { QPMask[n$0_8, next] } { ExhaleWellDef0Heap[n$0_8, next] }
                g_1[n$0_8] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_8, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_8: Ref ::
                { ExhaleWellDef0Heap[n$0_8, next] } { QPMask[n$0_8, next] } { ExhaleWellDef0Heap[n$0_8, next] }
                g_1[n$0_8] && NoPerm < FullPerm ==> qpRange86(n$0_8) && invRecv86(n$0_8) == n$0_8
              );
              assume (forall o_4: Ref ::
                { invRecv86(o_4) }
                g_1[invRecv86(o_4)] && (NoPerm < FullPerm && qpRange86(o_4)) ==> invRecv86(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!(exists_path($$(Heap, g_1), x0, n_29): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@463.82--463.87) [81210]"}
                  (forall n$0_9: Ref, n$0_9_2: Ref ::
                  { neverTriggered87(n$0_9), neverTriggered87(n$0_9_2) }
                  (((n$0_9 != n$0_9_2 && g_1[n$0_9]) && g_1[n$0_9_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_9 != n$0_9_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@463.82--463.87) [81211]"}
                  (forall n$0_9: Ref ::
                  { ExhaleWellDef0Heap[n$0_9, next] } { QPMask[n$0_9, next] } { ExhaleWellDef0Heap[n$0_9, next] }
                  g_1[n$0_9] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_9, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_9: Ref ::
                  { ExhaleWellDef0Heap[n$0_9, next] } { QPMask[n$0_9, next] } { ExhaleWellDef0Heap[n$0_9, next] }
                  g_1[n$0_9] && NoPerm < FullPerm ==> qpRange87(n$0_9) && invRecv87(n$0_9) == n$0_9
                );
                assume (forall o_4: Ref ::
                  { invRecv87(o_4) }
                  g_1[invRecv87(o_4)] && (NoPerm < FullPerm && qpRange87(o_4)) ==> invRecv87(o_4) == o_4
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
      if (g_1[n_18]) {
        assert {:msg "  Assert might fail. Assertion exists_path($$(g), x0, n) || exists_path($$(g), x1, n) might not hold. (framing1.vpr@463.12--463.94) [81212]"}
          (exists_path($$(Heap, g_1), x0, n_18): bool) || (exists_path($$(Heap, g_1), x1_2, n_18): bool);
      }
      assume false;
    }
    assume (forall n_19_1_1: Ref ::
      { g_1[n_19_1_1] } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), x0, n_19_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), x1_2, n_19_1_1): bool) }
      g_1[n_19_1_1] ==> (exists_path($$(Heap, g_1), x0, n_19_1_1): bool) || (exists_path($$(Heap, g_1), x1_2, n_19_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall n: Ref ::
  //     { (n in g) }
  //     { exists_path($$(g), x0, n) }
  //     { exists_path($$(g), x1, n) }
  //     (n in g) ==> !exists_path($$(g), x0, n) || !exists_path($$(g), x1, n)) -- framing1.vpr@464.5--464.94
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall n: Ref :: { (n in g) } { exists_path($$(g), x0, n) } { exists_path($$(g), x1, n) } (n in g) ==> !exists_path($$(g), x0, n) || !exists_path($$(g), x1, n))
      if (*) {
        if (g_1[n_30]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              
            
            // -- check if receiver n$0 is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@464.54--464.59) [81213]"}
                (forall n$0_10: Ref, n$0_10_2: Ref ::
                { neverTriggered88(n$0_10), neverTriggered88(n$0_10_2) }
                (((n$0_10 != n$0_10_2 && g_1[n$0_10]) && g_1[n$0_10_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_10 != n$0_10_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@464.54--464.59) [81214]"}
                (forall n$0_10: Ref ::
                { ExhaleWellDef0Heap[n$0_10, next] } { QPMask[n$0_10, next] } { ExhaleWellDef0Heap[n$0_10, next] }
                g_1[n$0_10] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_10, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n$0
              assume (forall n$0_10: Ref ::
                { ExhaleWellDef0Heap[n$0_10, next] } { QPMask[n$0_10, next] } { ExhaleWellDef0Heap[n$0_10, next] }
                g_1[n$0_10] && NoPerm < FullPerm ==> qpRange88(n$0_10) && invRecv88(n$0_10) == n$0_10
              );
              assume (forall o_4: Ref ::
                { invRecv88(o_4) }
                g_1[invRecv88(o_4)] && (NoPerm < FullPerm && qpRange88(o_4)) ==> invRecv88(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if ((exists_path($$(Heap, g_1), x0, n_30): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                
              
              // -- check if receiver n$0 is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n$0.next might not be injective. (framing1.vpr@464.82--464.87) [81215]"}
                  (forall n$0_11: Ref, n$0_11_2: Ref ::
                  { neverTriggered89(n$0_11), neverTriggered89(n$0_11_2) }
                  (((n$0_11 != n$0_11_2 && g_1[n$0_11]) && g_1[n$0_11_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$0_11 != n$0_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n$0.next (framing1.vpr@464.82--464.87) [81216]"}
                  (forall n$0_11: Ref ::
                  { ExhaleWellDef0Heap[n$0_11, next] } { QPMask[n$0_11, next] } { ExhaleWellDef0Heap[n$0_11, next] }
                  g_1[n$0_11] ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[n$0_11, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n$0
                assume (forall n$0_11: Ref ::
                  { ExhaleWellDef0Heap[n$0_11, next] } { QPMask[n$0_11, next] } { ExhaleWellDef0Heap[n$0_11, next] }
                  g_1[n$0_11] && NoPerm < FullPerm ==> qpRange89(n$0_11) && invRecv89(n$0_11) == n$0_11
                );
                assume (forall o_4: Ref ::
                  { invRecv89(o_4) }
                  g_1[invRecv89(o_4)] && (NoPerm < FullPerm && qpRange89(o_4)) ==> invRecv89(o_4) == o_4
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
      if (g_1[n_21]) {
        assert {:msg "  Assert might fail. Assertion !exists_path($$(g), x0, n) || !exists_path($$(g), x1, n) might not hold. (framing1.vpr@464.12--464.94) [81217]"}
          !(exists_path($$(Heap, g_1), x0, n_21): bool) || !(exists_path($$(Heap, g_1), x1_2, n_21): bool);
      }
      assume false;
    }
    assume (forall n_22_1_1: Ref ::
      { g_1[n_22_1_1] } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), x0, n_22_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp3(Heap, g_1)), g_1), x1_2, n_22_1_1): bool) }
      g_1[n_22_1_1] ==> !(exists_path($$(Heap, g_1), x0, n_22_1_1): bool) || !(exists_path($$(Heap, g_1), x1_2, n_22_1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- framing1.vpr@466.5--466.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (framing1.vpr@466.12--466.17) [81218]"}
      false;
    assume state(Heap, Mask);
}