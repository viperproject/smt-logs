// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QPwand.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/assume10QPwand-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_17] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref, f_56: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, f_56] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_43, f_56) ==> Heap[o_43, f_56] == ExhaleHeap[o_43, f_56]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21), ExhaleHeap[null, PredicateMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> Heap[null, PredicateMaskField(pm_f_21)] == ExhaleHeap[null, PredicateMaskField(pm_f_21)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsPredicateField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, PredicateMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21), ExhaleHeap[null, WandMaskField(pm_f_21)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> Heap[null, WandMaskField(pm_f_21)] == ExhaleHeap[null, WandMaskField(pm_f_21)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_21: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_21) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_21) && IsWandField(pm_f_21) ==> (forall <A, B> o2_21: Ref, f_56: (Field A B) ::
    { ExhaleHeap[o2_21, f_56] }
    Heap[null, WandMaskField(pm_f_21)][o2_21, f_56] ==> Heap[o2_21, f_56] == ExhaleHeap[o2_21, f_56]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_43: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_43, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_43, $allocated] ==> ExhaleHeap[o_43, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_57: (Field A B), v: B ::
  { Heap[o_11, f_57:=v] }
  succHeap(Heap, Heap[o_11, f_57:=v])
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

function  neverTriggered3(x_1: Ref, y_1: Ref, z_1: Ref): bool;
function  neverTriggered13(x0_3: Ref, x1_5: Perm, x2_3_1: Ref, x3_3: Perm, x4_3: Ref, x5_3: Perm, x6_3: Ref, x7_3: Ref, x8_3: Ref, x9_3: Perm): bool;
function  neverTriggered23(x0_8: Ref, x1_10: Perm, x2_10: Ref, x3_8: Perm, x4_8: Ref, x5_8: Perm, x6_8: Ref, x7_8: Ref, x8_8: Ref, x9_8: Perm): bool;
function  neverTriggered33(x0_13: Ref, x1_15: Perm, x2_15: Ref, x3_15: Perm, x4_13: Ref, x5_13: Perm, x6_13: Ref, x7_13: Ref, x8_13: Ref, x9_13: Perm): bool;
function  neverTriggered43(x0_18: Ref, x1_20: Perm, x2_20: Ref, x3_20: Perm, x4_20: Ref, x5_18: Perm, x6_18: Ref, x7_18: Ref, x8_18: Ref, x9_18: Perm): bool;
function  neverTriggered53(x0_23: Ref, x1_25: Perm, x2_25: Ref, x3_25: Perm, x4_25: Ref, x5_25: Perm, x6_23: Ref, x7_23: Ref, x8_23: Ref, x9_23: Perm): bool;
function  neverTriggered63(x0_28: Ref, x1_30: Perm, x2_30: Ref, x3_30: Perm, x4_30: Ref, x5_30: Perm, x6_30: Ref, x7_28: Ref, x8_28: Ref, x9_28: Perm): bool;
function  neverTriggered73(x0_33: Ref, x1_35: Perm, x2_35: Ref, x3_35: Perm, x4_35: Ref, x5_35: Perm, x6_35: Ref, x7_35: Ref, x8_33: Ref, x9_33: Perm): bool;
function  neverTriggered83(x0_38: Ref, x1_40: Perm, x2_40: Ref, x3_40: Perm, x4_40: Ref, x5_40: Perm, x6_40: Ref, x7_40: Ref, x8_40: Ref, x9_38: Perm): bool;
function  neverTriggered93(x0_43: Ref, x1_45: Perm, x2_45: Ref, x3_45: Perm, x4_45: Ref, x5_45: Perm, x6_45: Ref, x7_45: Ref, x8_45: Ref, x9_45: Perm): bool;
function  neverTriggered103(x0_48: Ref, x1_50: Perm, x2_50: Ref, x3_50: Perm, x4_50: Ref, x5_50: Perm, x6_50: Ref, x7_50: Ref, x8_50: Ref, x9_50: Perm): bool;
function  neverTriggered113(x0_53: Ref, x1_55: Perm, x2_55: Ref, x3_55: Perm, x4_55: Ref, x5_55: Perm, x6_55: Ref, x7_55: Ref, x8_55: Ref, x9_55: Perm): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm): Ref;
function  invRecv2(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm): Ref;
function  invRecv3(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm): Ref;
function  invRecv4(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv5(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Perm;
function  invRecv6(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv7(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Perm;
function  invRecv8(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv9(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Perm;
function  invRecv10(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv11(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv12(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Ref;
function  invRecv13(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): Perm;
function  invRecv14(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv15(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Perm;
function  invRecv16(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv17(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Perm;
function  invRecv18(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv19(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Perm;
function  invRecv20(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv21(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv22(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Ref;
function  invRecv23(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): Perm;
function  invRecv24(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv25(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Perm;
function  invRecv26(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv27(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Perm;
function  invRecv28(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv29(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Perm;
function  invRecv30(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv31(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv32(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Ref;
function  invRecv33(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): Perm;
function  invRecv34(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv35(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Perm;
function  invRecv36(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv37(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Perm;
function  invRecv38(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv39(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Perm;
function  invRecv40(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv41(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv42(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Ref;
function  invRecv43(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): Perm;
function  invRecv44(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv45(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Perm;
function  invRecv46(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv47(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Perm;
function  invRecv48(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv49(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Perm;
function  invRecv50(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv51(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv52(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Ref;
function  invRecv53(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): Perm;
function  invRecv54(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv55(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Perm;
function  invRecv56(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv57(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Perm;
function  invRecv58(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv59(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Perm;
function  invRecv60(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv61(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv62(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Ref;
function  invRecv63(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): Perm;
function  invRecv64(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv65(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Perm;
function  invRecv66(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv67(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Perm;
function  invRecv68(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv69(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Perm;
function  invRecv70(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv71(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv72(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Ref;
function  invRecv73(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): Perm;
function  invRecv74(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv75(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Perm;
function  invRecv76(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv77(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Perm;
function  invRecv78(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv79(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Perm;
function  invRecv80(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv81(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv82(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Ref;
function  invRecv83(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): Perm;
function  invRecv84(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv85(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Perm;
function  invRecv86(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv87(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Perm;
function  invRecv88(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv89(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Perm;
function  invRecv90(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv91(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv92(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Ref;
function  invRecv93(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): Perm;
function  invRecv94(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv95(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Perm;
function  invRecv96(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv97(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Perm;
function  invRecv98(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv99(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Perm;
function  invRecv100(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv101(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv102(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Ref;
function  invRecv103(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): Perm;
function  invRecv104(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv105(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Perm;
function  invRecv106(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv107(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Perm;
function  invRecv108(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv109(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Perm;
function  invRecv110(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv111(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv112(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Ref;
function  invRecv113(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): Perm;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange3(arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm): bool;
function  qpRange13(arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm): bool;
function  qpRange23(arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm): bool;
function  qpRange33(arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm): bool;
function  qpRange43(arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm): bool;
function  qpRange53(arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm): bool;
function  qpRange63(arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm): bool;
function  qpRange73(arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm): bool;
function  qpRange83(arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm): bool;
function  qpRange93(arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm): bool;
function  qpRange103(arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm): bool;
function  qpRange113(arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm): bool;

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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Ref, arg9_2: Ref, arg10_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && arg10 == arg10_2))))))))
);

// ==================================================
// Translation of domain Inverse_56
// ==================================================

// The type for domain Inverse_56
type Inverse_56DomainType;

// Translation of domain function inv_56_0
function  inv_56_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_56_1
function  inv_56_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_56_2
function  inv_56_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_57
// ==================================================

// The type for domain Inverse_57
type Inverse_57DomainType;

// Translation of domain function inv_57_0
function  inv_57_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_57_1
function  inv_57_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_57_2
function  inv_57_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_58
// ==================================================

// The type for domain Inverse_58
type Inverse_58DomainType;

// Translation of domain function inv_58_0
function  inv_58_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_58_1
function  inv_58_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_58_2
function  inv_58_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_59
// ==================================================

// The type for domain Inverse_59
type Inverse_59DomainType;

// Translation of domain function inv_59_0
function  inv_59_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_59_1
function  inv_59_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_59_2
function  inv_59_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_60
// ==================================================

// The type for domain Inverse_60
type Inverse_60DomainType;

// Translation of domain function inv_60_0
function  inv_60_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_60_1
function  inv_60_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_60_2
function  inv_60_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_61
// ==================================================

// The type for domain Inverse_61
type Inverse_61DomainType;

// Translation of domain function inv_61_0
function  inv_61_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_61_1
function  inv_61_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_61_2
function  inv_61_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_62
// ==================================================

// The type for domain Inverse_62
type Inverse_62DomainType;

// Translation of domain function inv_62_0
function  inv_62_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_62_1
function  inv_62_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_62_2
function  inv_62_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_63
// ==================================================

// The type for domain Inverse_63
type Inverse_63DomainType;

// Translation of domain function inv_63_0
function  inv_63_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_63_1
function  inv_63_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_63_2
function  inv_63_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_64
// ==================================================

// The type for domain Inverse_64
type Inverse_64DomainType;

// Translation of domain function inv_64_0
function  inv_64_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_64_1
function  inv_64_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_64_2
function  inv_64_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_65
// ==================================================

// The type for domain Inverse_65
type Inverse_65DomainType;

// Translation of domain function inv_65_0
function  inv_65_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_65_1
function  inv_65_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_65_2
function  inv_65_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain Inverse_66
// ==================================================

// The type for domain Inverse_66
type Inverse_66DomainType;

// Translation of domain function inv_66_0
function  inv_66_0(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_66_1
function  inv_66_1(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// Translation of domain function inv_66_2
function  inv_66_2(x0_1: Ref, x1_2: Perm, x2_5: Ref, x3_2: Perm, x4_2: Ref, x5_2: Perm, x6_2: Ref, x7_2: Ref, x8_2: Ref, x9_2: Perm): Ref;

// ==================================================
// Translation of domain __ns__impure_assume_rewriter
// ==================================================

// The type for domain __ns__impure_assume_rewriter
type __ns__impure_assume_rewriterDomainType;

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_2(x: Ref, y: Ref, z: Ref): Field PredicateType_p FrameType;
function  p#sm(x: Ref, y: Ref, z: Ref): Field PredicateType_p PMaskType;
axiom (forall x: Ref, y: Ref, z: Ref ::
  { PredicateMaskField(p_2(x, y, z)) }
  PredicateMaskField(p_2(x, y, z)) == p#sm(x, y, z)
);
axiom (forall x: Ref, y: Ref, z: Ref ::
  { p_2(x, y, z) }
  IsPredicateField(p_2(x, y, z))
);
axiom (forall x: Ref, y: Ref, z: Ref ::
  { p_2(x, y, z) }
  getPredWandId(p_2(x, y, z)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, z: Ref, x2: Ref, y2: Ref, z2: Ref ::
  { p_2(x, y, z), p_2(x2, y2, z2) }
  p_2(x, y, z) == p_2(x2, y2, z2) ==> x == x2 && (y == y2 && z == z2)
);
axiom (forall x: Ref, y: Ref, z: Ref, x2: Ref, y2: Ref, z2: Ref ::
  { p#sm(x, y, z), p#sm(x2, y2, z2) }
  p#sm(x, y, z) == p#sm(x2, y2, z2) ==> x == x2 && (y == y2 && z == z2)
);

axiom (forall Heap: HeapType, x: Ref, y: Ref, z: Ref ::
  { p#trigger(Heap, p_2(x, y, z)) }
  p#everUsed(p_2(x, y, z))
);

// ==================================================
// Translation of method m
// ==================================================

procedure m_17(xs: (Set Ref), ys: (Set Ref), zs: (Set Ref), q_1: Perm, xs1: (Set Ref), xs2: (Set Ref), xs3: (Set Ref), xs4: (Set Ref), xs5: (Set Ref), xs6: (Set Ref), xs7: (Set Ref), xs8: (Set Ref), xs9: (Set Ref), xs10: (Set Ref), xs11: (Set Ref), ys1: (Set Ref), ys2: (Set Ref), ys3: (Set Ref), ys4: (Set Ref), ys5: (Set Ref), ys6: (Set Ref), ys7: (Set Ref), ys8: (Set Ref), ys9: (Set Ref), ys10: (Set Ref), ys11: (Set Ref), zs1: (Set Ref), zs2: (Set Ref), zs3: (Set Ref), zs4: (Set Ref), zs5: (Set Ref), zs6: (Set Ref), zs7: (Set Ref), zs8: (Set Ref), zs9: (Set Ref), zs10: (Set Ref), zs11: (Set Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var x_40: Ref;
  var y_8: Ref;
  var z_12: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var QPMask: MaskType;
  var x0_2: Ref;
  var x1_4: Perm;
  var x2_7: Ref;
  var x3_4: Perm;
  var x4_4: Ref;
  var x5_4: Perm;
  var x6_4: Ref;
  var x7_4: Ref;
  var x8_4: Ref;
  var x9_4: Perm;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var x0_4: Ref;
  var x1_6: Perm;
  var x2_9: Ref;
  var x3_5: Perm;
  var x4_5: Ref;
  var x5_5: Perm;
  var x6_5: Ref;
  var x7_5: Ref;
  var x8_5: Ref;
  var x9_5: Perm;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var x0_5: Ref;
  var x1_7: Perm;
  var x2_11: Ref;
  var x3_7: Perm;
  var x4_7: Ref;
  var x5_7: Perm;
  var x6_7: Ref;
  var x7_7: Ref;
  var x8_7: Ref;
  var x9_7: Perm;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var x0_7: Ref;
  var x1_9: Perm;
  var x2_12: Ref;
  var x3_9: Perm;
  var x4_9: Ref;
  var x5_9: Perm;
  var x6_9: Ref;
  var x7_9: Ref;
  var x8_9: Ref;
  var x9_9: Perm;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var x0_9: Ref;
  var x1_11: Perm;
  var x2_14: Ref;
  var x3_10: Perm;
  var x4_10: Ref;
  var x5_10: Perm;
  var x6_10: Ref;
  var x7_10: Ref;
  var x8_10: Ref;
  var x9_10: Perm;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var x0_10: Ref;
  var x1_12: Perm;
  var x2_16: Ref;
  var x3_12: Perm;
  var x4_12: Ref;
  var x5_12: Perm;
  var x6_12: Ref;
  var x7_12: Ref;
  var x8_12: Ref;
  var x9_12: Perm;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var x0_12: Ref;
  var x1_14: Perm;
  var x2_17: Ref;
  var x3_14: Perm;
  var x4_14: Ref;
  var x5_14: Perm;
  var x6_14: Ref;
  var x7_14: Ref;
  var x8_14: Ref;
  var x9_14: Perm;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var x0_14: Ref;
  var x1_16: Perm;
  var x2_19: Ref;
  var x3_16: Perm;
  var x4_15: Ref;
  var x5_15: Perm;
  var x6_15: Ref;
  var x7_15: Ref;
  var x8_15: Ref;
  var x9_15: Perm;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var x0_15: Ref;
  var x1_17: Perm;
  var x2_21: Ref;
  var x3_17: Perm;
  var x4_17: Ref;
  var x5_17: Perm;
  var x6_17: Ref;
  var x7_17: Ref;
  var x8_17: Ref;
  var x9_17: Perm;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var x0_17: Ref;
  var x1_19: Perm;
  var x2_22: Ref;
  var x3_19: Perm;
  var x4_19: Ref;
  var x5_19: Perm;
  var x6_19: Ref;
  var x7_19: Ref;
  var x8_19: Ref;
  var x9_19: Perm;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var x0_19: Ref;
  var x1_21: Perm;
  var x2_24: Ref;
  var x3_21: Perm;
  var x4_21: Ref;
  var x5_20: Perm;
  var x6_20: Ref;
  var x7_20: Ref;
  var x8_20: Ref;
  var x9_20: Perm;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var Labellhs14Heap: HeapType;
  var Labellhs14Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Translating statement: inhale none < q -- assume10QPwand.vpr@24.3--24.18
    assume NoPerm < q_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Ref, y: Ref, z: Ref ::
  //     { (x in xs), (y in ys), (z in zs) }
  //     (x in xs) && ((y in ys) && (z in zs)) ==>
  //     acc(x.f, write) && (acc(y.f, write) && acc(z.f, write)) --*
  //     acc(p(x, y, z), write)) -- assume10QPwand.vpr@25.3--25.98
    
    // -- Check definedness of (forall x: Ref, y: Ref, z: Ref :: { (x in xs), (y in ys), (z in zs) } (x in xs) && ((y in ys) && (z in zs)) ==> acc(x.f, write) && (acc(y.f, write) && acc(z.f, write)) --* acc(p(x, y, z), write))
      if (*) {
        if (xs[x_40] && (ys[y_8] && zs[z_12])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x_40 != null;
            WandDefLHSMask := WandDefLHSMask[x_40, f_7:=WandDefLHSMask[x_40, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := FullPerm;
            assume y_8 != null;
            WandDefLHSMask := WandDefLHSMask[y_8, f_7:=WandDefLHSMask[y_8, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := FullPerm;
            assume z_12 != null;
            WandDefLHSMask := WandDefLHSMask[z_12, f_7:=WandDefLHSMask[z_12, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs1 -- assume10QPwand.vpr@25.78--25.98
              lhs1:
              Labellhs1Heap := WandDefLHSHeap;
              Labellhs1Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x_40, y_8, z_12):=WandDefRHSMask[null, p_2(x_40, y_8, z_12)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x.f, write) && (acc(y.f, write) && acc(z.f, write)) --* acc(p(x, y, z), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x.f, write) && (acc(y.f, write) && acc(z.f, write)) --* acc(p(x, y, z), write) might not be injective. (assume10QPwand.vpr@25.10--25.98) [21203]"}
        (forall x_1: Ref, y_1: Ref, z_1: Ref, x_1_1: Ref, y_1_1: Ref, z_1_1: Ref ::
        { neverTriggered3(x_1, y_1, z_1), neverTriggered3(x_1_1, y_1_1, z_1_1) }
        (((((x_1 != x_1_1 && y_1 != y_1_1) && z_1 != z_1_1) && (xs[x_1] && (ys[y_1] && zs[z_1]))) && (xs[x_1_1] && (ys[y_1_1] && zs[z_1_1]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x_1 != x_1_1 || FullPerm != FullPerm) || y_1 != y_1_1) || FullPerm != FullPerm) || z_1 != z_1_1) || FullPerm != FullPerm) || x_1 != x_1_1) || y_1 != y_1_1) || z_1 != z_1_1) || FullPerm != FullPerm
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref, y_1: Ref, z_1: Ref ::
        { Heap[null, wand(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm)] } { Mask[null, wand(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm)] } { xs[x_1], ys[y_1], zs[z_1] }
        (xs[x_1] && (ys[y_1] && zs[z_1])) && NoPerm < FullPerm ==> ((invRecv1(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm) == x_1 && invRecv2(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm) == y_1) && invRecv3(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm) == z_1) && qpRange3(x_1, FullPerm, y_1, FullPerm, z_1, FullPerm, x_1, y_1, z_1, FullPerm)
      );
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm ::
        { invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9), invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9), invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) }
        ((xs[invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && (ys[invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && zs[invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)])) && NoPerm < FullPerm) && qpRange3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) ==> ((((((((invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_0 && FullPerm == arg_1) && invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_2) && FullPerm == arg_3) && invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_4) && FullPerm == arg_5) && invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_6) && invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_7) && invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_8) && FullPerm == arg_9
      );
    
    // -- Define updated permissions
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm ::
        { QPMask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] }
        ((xs[invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && (ys[invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && zs[invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)])) && NoPerm < FullPerm) && qpRange3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) ==> (NoPerm < FullPerm ==> ((((((((invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_0 && FullPerm == arg_1) && invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_2) && FullPerm == arg_3) && invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_4) && FullPerm == arg_5) && invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_6) && invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_7) && invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9) == arg_8) && FullPerm == arg_9) && QPMask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] == Mask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0: Ref, arg_1: Perm, arg_2: Ref, arg_3: Perm, arg_4: Ref, arg_5: Perm, arg_6: Ref, arg_7: Ref, arg_8: Ref, arg_9: Perm ::
        { QPMask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] }
        !(((xs[invRecv1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && (ys[invRecv2(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] && zs[invRecv3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)])) && NoPerm < FullPerm) && qpRange3(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)) ==> QPMask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)] == Mask[null, wand(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x1: Ref, y1: Ref, z1: Ref ::
  //     { acc(x1.f, q) && (acc(y1.f, q) && acc(z1.f, q)) --*
  //     acc(p(x1, y1, z1), q) }
  //     (x1 in xs1) && ((y1 in ys1) && (z1 in zs1)) ==>
  //     inv_56_0(x1, q, y1, q, z1, q, x1, y1, z1, q) == x1 &&
  //     inv_56_1(x1, q, y1, q, z1, q, x1, y1, z1, q) == y1 &&
  //     inv_56_2(x1, q, y1, q, z1, q, x1, y1, z1, q) == z1) -- assume10QPwand.vpr@27.11--27.141
    
    // -- Check definedness of (forall x1: Ref, y1: Ref, z1: Ref :: { acc(x1.f, q) && (acc(y1.f, q) && acc(z1.f, q)) --* acc(p(x1, y1, z1), q) } (x1 in xs1) && ((y1 in ys1) && (z1 in zs1)) ==> inv_56_0(x1, q, y1, q, z1, q, x1, y1, z1, q) == x1 && inv_56_1(x1, q, y1, q, z1, q, x1, y1, z1, q) == y1 && inv_56_2(x1, q, y1, q, z1, q, x1, y1, z1, q) == z1)
      if (*) {
        assume false;
      }
    assume (forall x1_1: Ref, y1_1: Ref, z1_1: Ref ::
      { Heap[null, wand(x1_1, q_1, y1_1, q_1, z1_1, q_1, x1_1, y1_1, z1_1, q_1)] }
      xs1[x1_1] && (ys1[y1_1] && zs1[z1_1]) ==> ((inv_56_0(x1_1, q_1, y1_1, q_1, z1_1, q_1, x1_1, y1_1, z1_1, q_1): Ref) == x1_1 && (inv_56_1(x1_1, q_1, y1_1, q_1, z1_1, q_1, x1_1, y1_1, z1_1, q_1): Ref) == y1_1) && (inv_56_2(x1_1, q_1, y1_1, q_1, z1_1, q_1, x1_1, y1_1, z1_1, q_1): Ref) == z1_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs1) &&
  //     ((inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys1) &&
  //     (inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs1)) ==>
  //     inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@27.11--27.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs1) && ((inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys1) && (inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs1)) ==> inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_1_1: Ref, x1_3: Perm, x2_1_1: Ref, x3_1: Perm, x4_1: Ref, x5_1: Perm, x6_1: Ref, x7_1: Ref, x8_1: Ref, x9_1: Perm ::
      { (inv_56_0(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref), (inv_56_1(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref), (inv_56_2(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) }
      xs1[(inv_56_0(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref)] && (ys1[(inv_56_1(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref)] && zs1[(inv_56_2(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref)]) ==> (((((((((inv_56_0(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x0_1_1 && q_1 == x1_3) && (inv_56_1(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x2_1_1) && q_1 == x3_1) && (inv_56_2(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x4_1) && q_1 == x5_1) && (inv_56_0(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x6_1) && (inv_56_1(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x7_1) && (inv_56_2(x0_1_1, x1_3, x2_1_1, x3_1, x4_1, x5_1, x6_1, x7_1, x8_1, x9_1): Ref) == x8_1) && q_1 == x9_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs1) &&
  //     ((inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys1) &&
  //     (inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs1)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@27.11--27.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_56_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs1) && ((inv_56_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys1) && (inv_56_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs1)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs1[(inv_56_0(x0_2, x1_4, x2_7, x3_4, x4_4, x5_4, x6_4, x7_4, x8_4, x9_4): Ref)] && (ys1[(inv_56_1(x0_2, x1_4, x2_7, x3_4, x4_4, x5_4, x6_4, x7_4, x8_4, x9_4): Ref)] && zs1[(inv_56_2(x0_2, x1_4, x2_7, x3_4, x4_4, x5_4, x6_4, x7_4, x8_4, x9_4): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_4;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@27.11--27.141) [21204]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_4 != null;
            WandDefLHSMask := WandDefLHSMask[x6_4, f_7:=WandDefLHSMask[x6_4, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_4;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@27.11--27.141) [21205]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_4 != null;
            WandDefLHSMask := WandDefLHSMask[x7_4, f_7:=WandDefLHSMask[x7_4, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_4;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@27.11--27.141) [21206]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_4 != null;
            WandDefLHSMask := WandDefLHSMask[x8_4, f_7:=WandDefLHSMask[x8_4, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs2 -- assume10QPwand.vpr@27.122--27.141
              lhs2:
              Labellhs2Heap := WandDefLHSHeap;
              Labellhs2Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_4;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@27.11--27.141) [21207]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_4, x7_4, x8_4):=WandDefRHSMask[null, p_2(x6_4, x7_4, x8_4)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@27.11--27.141) [21208]"}
        (forall x0_3: Ref, x1_5: Perm, x2_3_1: Ref, x3_3: Perm, x4_3: Ref, x5_3: Perm, x6_3: Ref, x7_3: Ref, x8_3: Ref, x9_3: Perm, x0_3_1: Ref, x1_5_1: Perm, x2_3_2: Ref, x3_3_1: Perm, x4_3_1: Ref, x5_3_1: Perm, x6_3_1: Ref, x7_3_1: Ref, x8_3_1: Ref, x9_3_1: Perm ::
        { neverTriggered13(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3), neverTriggered13(x0_3_1, x1_5_1, x2_3_2, x3_3_1, x4_3_1, x5_3_1, x6_3_1, x7_3_1, x8_3_1, x9_3_1) }
        ((((((((((((x0_3 != x0_3_1 && x1_5 != x1_5_1) && x2_3_1 != x2_3_2) && x3_3 != x3_3_1) && x4_3 != x4_3_1) && x5_3 != x5_3_1) && x6_3 != x6_3_1) && x7_3 != x7_3_1) && x8_3 != x8_3_1) && x9_3 != x9_3_1) && (xs1[(inv_56_0(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)] && (ys1[(inv_56_1(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)] && zs1[(inv_56_2(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)]))) && (xs1[(inv_56_0(x0_3_1, x1_5_1, x2_3_2, x3_3_1, x4_3_1, x5_3_1, x6_3_1, x7_3_1, x8_3_1, x9_3_1): Ref)] && (ys1[(inv_56_1(x0_3_1, x1_5_1, x2_3_2, x3_3_1, x4_3_1, x5_3_1, x6_3_1, x7_3_1, x8_3_1, x9_3_1): Ref)] && zs1[(inv_56_2(x0_3_1, x1_5_1, x2_3_2, x3_3_1, x4_3_1, x5_3_1, x6_3_1, x7_3_1, x8_3_1, x9_3_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_3 != x6_3_1 || x9_3 != x9_3_1) || x7_3 != x7_3_1) || x9_3 != x9_3_1) || x8_3 != x8_3_1) || x9_3 != x9_3_1) || x6_3 != x6_3_1) || x7_3 != x7_3_1) || x8_3 != x8_3_1) || x9_3 != x9_3_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_3: Ref, x1_5: Perm, x2_3_1: Ref, x3_3: Perm, x4_3: Ref, x5_3: Perm, x6_3: Ref, x7_3: Ref, x8_3: Ref, x9_3: Perm ::
        { (inv_56_0(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref), (inv_56_1(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref), (inv_56_2(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref) }
        (xs1[(inv_56_0(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)] && (ys1[(inv_56_1(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)] && zs1[(inv_56_2(x0_3, x1_5, x2_3_1, x3_3, x4_3, x5_3, x6_3, x7_3, x8_3, x9_3): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv4(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x0_3 && invRecv5(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x1_5) && invRecv6(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x2_3_1) && invRecv7(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x3_3) && invRecv8(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x4_3) && invRecv9(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x5_3) && invRecv10(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x6_3) && invRecv11(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x7_3) && invRecv12(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x8_3) && invRecv13(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3) == x9_3) && qpRange13(x6_3, x9_3, x7_3, x9_3, x8_3, x9_3, x6_3, x7_3, x8_3, x9_3)
      );
      assume (forall arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm ::
        { invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) }
        ((xs1[(inv_56_0(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && (ys1[(inv_56_1(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && zs1[(inv_56_2(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)])) && NoPerm < FullPerm) && qpRange13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) ==> ((((((((invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_0_1 && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_1_1) && invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_2_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_3_1) && invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_4_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_5_1) && invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_6_1) && invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_7_1) && invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_8_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_9_1
      );
    
    // -- Define updated permissions
      assume (forall arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm ::
        { QPMask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)] }
        ((xs1[(inv_56_0(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && (ys1[(inv_56_1(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && zs1[(inv_56_2(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)])) && NoPerm < FullPerm) && qpRange13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) ==> (NoPerm < FullPerm ==> ((((((((invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_0_1 && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_1_1) && invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_2_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_3_1) && invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_4_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_5_1) && invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_6_1) && invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_7_1) && invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_8_1) && invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1) == arg_9_1) && QPMask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)] == Mask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_1: Ref, arg_1_1: Perm, arg_2_1: Ref, arg_3_1: Perm, arg_4_1: Ref, arg_5_1: Perm, arg_6_1: Ref, arg_7_1: Ref, arg_8_1: Ref, arg_9_1: Perm ::
        { QPMask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)] }
        !(((xs1[(inv_56_0(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && (ys1[(inv_56_1(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)] && zs1[(inv_56_2(invRecv4(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv5(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv6(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv7(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv8(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv9(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv10(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv11(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv12(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1), invRecv13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)): Ref)])) && NoPerm < FullPerm) && qpRange13(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)) ==> QPMask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)] == Mask[null, wand(arg_0_1, arg_1_1, arg_2_1, arg_3_1, arg_4_1, arg_5_1, arg_6_1, arg_7_1, arg_8_1, arg_9_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x2: Ref, y2: Ref, z2: Ref ::
  //     { acc(x2.f, q) && (acc(y2.f, q) && acc(z2.f, q)) --*
  //     acc(p(x2, y2, z2), q) }
  //     (x2 in xs2) && ((y2 in ys2) && (z2 in zs2)) ==>
  //     inv_57_0(x2, q, y2, q, z2, q, x2, y2, z2, q) == x2 &&
  //     inv_57_1(x2, q, y2, q, z2, q, x2, y2, z2, q) == y2 &&
  //     inv_57_2(x2, q, y2, q, z2, q, x2, y2, z2, q) == z2) -- assume10QPwand.vpr@28.11--28.141
    
    // -- Check definedness of (forall x2: Ref, y2: Ref, z2: Ref :: { acc(x2.f, q) && (acc(y2.f, q) && acc(z2.f, q)) --* acc(p(x2, y2, z2), q) } (x2 in xs2) && ((y2 in ys2) && (z2 in zs2)) ==> inv_57_0(x2, q, y2, q, z2, q, x2, y2, z2, q) == x2 && inv_57_1(x2, q, y2, q, z2, q, x2, y2, z2, q) == y2 && inv_57_2(x2, q, y2, q, z2, q, x2, y2, z2, q) == z2)
      if (*) {
        assume false;
      }
    assume (forall x2_6: Ref, y2_1: Ref, z2_1: Ref ::
      { Heap[null, wand(x2_6, q_1, y2_1, q_1, z2_1, q_1, x2_6, y2_1, z2_1, q_1)] }
      xs2[x2_6] && (ys2[y2_1] && zs2[z2_1]) ==> ((inv_57_0(x2_6, q_1, y2_1, q_1, z2_1, q_1, x2_6, y2_1, z2_1, q_1): Ref) == x2_6 && (inv_57_1(x2_6, q_1, y2_1, q_1, z2_1, q_1, x2_6, y2_1, z2_1, q_1): Ref) == y2_1) && (inv_57_2(x2_6, q_1, y2_1, q_1, z2_1, q_1, x2_6, y2_1, z2_1, q_1): Ref) == z2_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs2) &&
  //     ((inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys2) &&
  //     (inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs2)) ==>
  //     inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@28.11--28.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs2) && ((inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys2) && (inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs2)) ==> inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_6: Ref, x1_8: Perm, x2_8: Ref, x3_6: Perm, x4_6: Ref, x5_6: Perm, x6_6: Ref, x7_6: Ref, x8_6: Ref, x9_6: Perm ::
      { (inv_57_0(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref), (inv_57_1(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref), (inv_57_2(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) }
      xs2[(inv_57_0(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref)] && (ys2[(inv_57_1(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref)] && zs2[(inv_57_2(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref)]) ==> (((((((((inv_57_0(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x0_6 && q_1 == x1_8) && (inv_57_1(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x2_8) && q_1 == x3_6) && (inv_57_2(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x4_6) && q_1 == x5_6) && (inv_57_0(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x6_6) && (inv_57_1(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x7_6) && (inv_57_2(x0_6, x1_8, x2_8, x3_6, x4_6, x5_6, x6_6, x7_6, x8_6, x9_6): Ref) == x8_6) && q_1 == x9_6
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs2) &&
  //     ((inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys2) &&
  //     (inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs2)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@28.11--28.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_57_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs2) && ((inv_57_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys2) && (inv_57_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs2)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs2[(inv_57_0(x0_4, x1_6, x2_9, x3_5, x4_5, x5_5, x6_5, x7_5, x8_5, x9_5): Ref)] && (ys2[(inv_57_1(x0_4, x1_6, x2_9, x3_5, x4_5, x5_5, x6_5, x7_5, x8_5, x9_5): Ref)] && zs2[(inv_57_2(x0_4, x1_6, x2_9, x3_5, x4_5, x5_5, x6_5, x7_5, x8_5, x9_5): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_5;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@28.11--28.141) [21209]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_5 != null;
            WandDefLHSMask := WandDefLHSMask[x6_5, f_7:=WandDefLHSMask[x6_5, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_5;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@28.11--28.141) [21210]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_5 != null;
            WandDefLHSMask := WandDefLHSMask[x7_5, f_7:=WandDefLHSMask[x7_5, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_5;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@28.11--28.141) [21211]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_5 != null;
            WandDefLHSMask := WandDefLHSMask[x8_5, f_7:=WandDefLHSMask[x8_5, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs3 -- assume10QPwand.vpr@28.122--28.141
              lhs3:
              Labellhs3Heap := WandDefLHSHeap;
              Labellhs3Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_5;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@28.11--28.141) [21212]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_5, x7_5, x8_5):=WandDefRHSMask[null, p_2(x6_5, x7_5, x8_5)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@28.11--28.141) [21213]"}
        (forall x0_8: Ref, x1_10: Perm, x2_10: Ref, x3_8: Perm, x4_8: Ref, x5_8: Perm, x6_8: Ref, x7_8: Ref, x8_8: Ref, x9_8: Perm, x0_8_1: Ref, x1_10_1: Perm, x2_10_1: Ref, x3_8_1: Perm, x4_8_1: Ref, x5_8_1: Perm, x6_8_1: Ref, x7_8_1: Ref, x8_8_1: Ref, x9_8_1: Perm ::
        { neverTriggered23(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8), neverTriggered23(x0_8_1, x1_10_1, x2_10_1, x3_8_1, x4_8_1, x5_8_1, x6_8_1, x7_8_1, x8_8_1, x9_8_1) }
        ((((((((((((x0_8 != x0_8_1 && x1_10 != x1_10_1) && x2_10 != x2_10_1) && x3_8 != x3_8_1) && x4_8 != x4_8_1) && x5_8 != x5_8_1) && x6_8 != x6_8_1) && x7_8 != x7_8_1) && x8_8 != x8_8_1) && x9_8 != x9_8_1) && (xs2[(inv_57_0(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)] && (ys2[(inv_57_1(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)] && zs2[(inv_57_2(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)]))) && (xs2[(inv_57_0(x0_8_1, x1_10_1, x2_10_1, x3_8_1, x4_8_1, x5_8_1, x6_8_1, x7_8_1, x8_8_1, x9_8_1): Ref)] && (ys2[(inv_57_1(x0_8_1, x1_10_1, x2_10_1, x3_8_1, x4_8_1, x5_8_1, x6_8_1, x7_8_1, x8_8_1, x9_8_1): Ref)] && zs2[(inv_57_2(x0_8_1, x1_10_1, x2_10_1, x3_8_1, x4_8_1, x5_8_1, x6_8_1, x7_8_1, x8_8_1, x9_8_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_8 != x6_8_1 || x9_8 != x9_8_1) || x7_8 != x7_8_1) || x9_8 != x9_8_1) || x8_8 != x8_8_1) || x9_8 != x9_8_1) || x6_8 != x6_8_1) || x7_8 != x7_8_1) || x8_8 != x8_8_1) || x9_8 != x9_8_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_8: Ref, x1_10: Perm, x2_10: Ref, x3_8: Perm, x4_8: Ref, x5_8: Perm, x6_8: Ref, x7_8: Ref, x8_8: Ref, x9_8: Perm ::
        { (inv_57_0(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref), (inv_57_1(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref), (inv_57_2(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref) }
        (xs2[(inv_57_0(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)] && (ys2[(inv_57_1(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)] && zs2[(inv_57_2(x0_8, x1_10, x2_10, x3_8, x4_8, x5_8, x6_8, x7_8, x8_8, x9_8): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv14(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x0_8 && invRecv15(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x1_10) && invRecv16(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x2_10) && invRecv17(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x3_8) && invRecv18(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x4_8) && invRecv19(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x5_8) && invRecv20(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x6_8) && invRecv21(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x7_8) && invRecv22(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x8_8) && invRecv23(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8) == x9_8) && qpRange23(x6_8, x9_8, x7_8, x9_8, x8_8, x9_8, x6_8, x7_8, x8_8, x9_8)
      );
      assume (forall arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm ::
        { invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) }
        ((xs2[(inv_57_0(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && (ys2[(inv_57_1(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && zs2[(inv_57_2(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)])) && NoPerm < FullPerm) && qpRange23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) ==> ((((((((invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_0_2 && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_1_2) && invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_2_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_3_2) && invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_4_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_5_2) && invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_6_2) && invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_7_2) && invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_8_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_9_2
      );
    
    // -- Define updated permissions
      assume (forall arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm ::
        { QPMask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)] }
        ((xs2[(inv_57_0(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && (ys2[(inv_57_1(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && zs2[(inv_57_2(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)])) && NoPerm < FullPerm) && qpRange23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) ==> (NoPerm < FullPerm ==> ((((((((invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_0_2 && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_1_2) && invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_2_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_3_2) && invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_4_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_5_2) && invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_6_2) && invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_7_2) && invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_8_2) && invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2) == arg_9_2) && QPMask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)] == Mask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_2: Ref, arg_1_2: Perm, arg_2_2: Ref, arg_3_2: Perm, arg_4_2: Ref, arg_5_2: Perm, arg_6_2: Ref, arg_7_2: Ref, arg_8_2: Ref, arg_9_2: Perm ::
        { QPMask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)] }
        !(((xs2[(inv_57_0(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && (ys2[(inv_57_1(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)] && zs2[(inv_57_2(invRecv14(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv15(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv16(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv17(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv18(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv19(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv20(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv21(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv22(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2), invRecv23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)): Ref)])) && NoPerm < FullPerm) && qpRange23(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)) ==> QPMask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)] == Mask[null, wand(arg_0_2, arg_1_2, arg_2_2, arg_3_2, arg_4_2, arg_5_2, arg_6_2, arg_7_2, arg_8_2, arg_9_2)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x3: Ref, y3: Ref, z3: Ref ::
  //     { acc(x3.f, q) && (acc(y3.f, q) && acc(z3.f, q)) --*
  //     acc(p(x3, y3, z3), q) }
  //     (x3 in xs3) && ((y3 in ys3) && (z3 in zs3)) ==>
  //     inv_58_0(x3, q, y3, q, z3, q, x3, y3, z3, q) == x3 &&
  //     inv_58_1(x3, q, y3, q, z3, q, x3, y3, z3, q) == y3 &&
  //     inv_58_2(x3, q, y3, q, z3, q, x3, y3, z3, q) == z3) -- assume10QPwand.vpr@29.11--29.141
    
    // -- Check definedness of (forall x3: Ref, y3: Ref, z3: Ref :: { acc(x3.f, q) && (acc(y3.f, q) && acc(z3.f, q)) --* acc(p(x3, y3, z3), q) } (x3 in xs3) && ((y3 in ys3) && (z3 in zs3)) ==> inv_58_0(x3, q, y3, q, z3, q, x3, y3, z3, q) == x3 && inv_58_1(x3, q, y3, q, z3, q, x3, y3, z3, q) == y3 && inv_58_2(x3, q, y3, q, z3, q, x3, y3, z3, q) == z3)
      if (*) {
        assume false;
      }
    assume (forall x3_11: Ref, y3_1: Ref, z3_1: Ref ::
      { Heap[null, wand(x3_11, q_1, y3_1, q_1, z3_1, q_1, x3_11, y3_1, z3_1, q_1)] }
      xs3[x3_11] && (ys3[y3_1] && zs3[z3_1]) ==> ((inv_58_0(x3_11, q_1, y3_1, q_1, z3_1, q_1, x3_11, y3_1, z3_1, q_1): Ref) == x3_11 && (inv_58_1(x3_11, q_1, y3_1, q_1, z3_1, q_1, x3_11, y3_1, z3_1, q_1): Ref) == y3_1) && (inv_58_2(x3_11, q_1, y3_1, q_1, z3_1, q_1, x3_11, y3_1, z3_1, q_1): Ref) == z3_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs3) &&
  //     ((inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys3) &&
  //     (inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs3)) ==>
  //     inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@29.11--29.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs3) && ((inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys3) && (inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs3)) ==> inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_11: Ref, x1_13: Perm, x2_13: Ref, x3_13: Perm, x4_11: Ref, x5_11: Perm, x6_11: Ref, x7_11: Ref, x8_11: Ref, x9_11: Perm ::
      { (inv_58_0(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref), (inv_58_1(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref), (inv_58_2(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) }
      xs3[(inv_58_0(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref)] && (ys3[(inv_58_1(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref)] && zs3[(inv_58_2(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref)]) ==> (((((((((inv_58_0(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x0_11 && q_1 == x1_13) && (inv_58_1(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x2_13) && q_1 == x3_13) && (inv_58_2(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x4_11) && q_1 == x5_11) && (inv_58_0(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x6_11) && (inv_58_1(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x7_11) && (inv_58_2(x0_11, x1_13, x2_13, x3_13, x4_11, x5_11, x6_11, x7_11, x8_11, x9_11): Ref) == x8_11) && q_1 == x9_11
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs3) &&
  //     ((inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys3) &&
  //     (inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs3)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@29.11--29.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_58_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs3) && ((inv_58_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys3) && (inv_58_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs3)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs3[(inv_58_0(x0_5, x1_7, x2_11, x3_7, x4_7, x5_7, x6_7, x7_7, x8_7, x9_7): Ref)] && (ys3[(inv_58_1(x0_5, x1_7, x2_11, x3_7, x4_7, x5_7, x6_7, x7_7, x8_7, x9_7): Ref)] && zs3[(inv_58_2(x0_5, x1_7, x2_11, x3_7, x4_7, x5_7, x6_7, x7_7, x8_7, x9_7): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_7;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@29.11--29.141) [21214]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_7 != null;
            WandDefLHSMask := WandDefLHSMask[x6_7, f_7:=WandDefLHSMask[x6_7, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_7;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@29.11--29.141) [21215]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_7 != null;
            WandDefLHSMask := WandDefLHSMask[x7_7, f_7:=WandDefLHSMask[x7_7, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_7;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@29.11--29.141) [21216]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_7 != null;
            WandDefLHSMask := WandDefLHSMask[x8_7, f_7:=WandDefLHSMask[x8_7, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs4 -- assume10QPwand.vpr@29.122--29.141
              lhs4:
              Labellhs4Heap := WandDefLHSHeap;
              Labellhs4Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_7;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@29.11--29.141) [21217]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_7, x7_7, x8_7):=WandDefRHSMask[null, p_2(x6_7, x7_7, x8_7)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@29.11--29.141) [21218]"}
        (forall x0_13: Ref, x1_15: Perm, x2_15: Ref, x3_15: Perm, x4_13: Ref, x5_13: Perm, x6_13: Ref, x7_13: Ref, x8_13: Ref, x9_13: Perm, x0_13_1: Ref, x1_15_1: Perm, x2_15_1: Ref, x3_15_1: Perm, x4_13_1: Ref, x5_13_1: Perm, x6_13_1: Ref, x7_13_1: Ref, x8_13_1: Ref, x9_13_1: Perm ::
        { neverTriggered33(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13), neverTriggered33(x0_13_1, x1_15_1, x2_15_1, x3_15_1, x4_13_1, x5_13_1, x6_13_1, x7_13_1, x8_13_1, x9_13_1) }
        ((((((((((((x0_13 != x0_13_1 && x1_15 != x1_15_1) && x2_15 != x2_15_1) && x3_15 != x3_15_1) && x4_13 != x4_13_1) && x5_13 != x5_13_1) && x6_13 != x6_13_1) && x7_13 != x7_13_1) && x8_13 != x8_13_1) && x9_13 != x9_13_1) && (xs3[(inv_58_0(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)] && (ys3[(inv_58_1(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)] && zs3[(inv_58_2(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)]))) && (xs3[(inv_58_0(x0_13_1, x1_15_1, x2_15_1, x3_15_1, x4_13_1, x5_13_1, x6_13_1, x7_13_1, x8_13_1, x9_13_1): Ref)] && (ys3[(inv_58_1(x0_13_1, x1_15_1, x2_15_1, x3_15_1, x4_13_1, x5_13_1, x6_13_1, x7_13_1, x8_13_1, x9_13_1): Ref)] && zs3[(inv_58_2(x0_13_1, x1_15_1, x2_15_1, x3_15_1, x4_13_1, x5_13_1, x6_13_1, x7_13_1, x8_13_1, x9_13_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_13 != x6_13_1 || x9_13 != x9_13_1) || x7_13 != x7_13_1) || x9_13 != x9_13_1) || x8_13 != x8_13_1) || x9_13 != x9_13_1) || x6_13 != x6_13_1) || x7_13 != x7_13_1) || x8_13 != x8_13_1) || x9_13 != x9_13_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_13: Ref, x1_15: Perm, x2_15: Ref, x3_15: Perm, x4_13: Ref, x5_13: Perm, x6_13: Ref, x7_13: Ref, x8_13: Ref, x9_13: Perm ::
        { (inv_58_0(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref), (inv_58_1(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref), (inv_58_2(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref) }
        (xs3[(inv_58_0(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)] && (ys3[(inv_58_1(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)] && zs3[(inv_58_2(x0_13, x1_15, x2_15, x3_15, x4_13, x5_13, x6_13, x7_13, x8_13, x9_13): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv24(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x0_13 && invRecv25(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x1_15) && invRecv26(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x2_15) && invRecv27(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x3_15) && invRecv28(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x4_13) && invRecv29(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x5_13) && invRecv30(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x6_13) && invRecv31(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x7_13) && invRecv32(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x8_13) && invRecv33(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13) == x9_13) && qpRange33(x6_13, x9_13, x7_13, x9_13, x8_13, x9_13, x6_13, x7_13, x8_13, x9_13)
      );
      assume (forall arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm ::
        { invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) }
        ((xs3[(inv_58_0(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && (ys3[(inv_58_1(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && zs3[(inv_58_2(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)])) && NoPerm < FullPerm) && qpRange33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) ==> ((((((((invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_0_3 && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_1_3) && invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_2_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_3_3) && invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_4_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_5_3) && invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_6_3) && invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_7_3) && invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_8_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_9_3
      );
    
    // -- Define updated permissions
      assume (forall arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm ::
        { QPMask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)] }
        ((xs3[(inv_58_0(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && (ys3[(inv_58_1(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && zs3[(inv_58_2(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)])) && NoPerm < FullPerm) && qpRange33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) ==> (NoPerm < FullPerm ==> ((((((((invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_0_3 && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_1_3) && invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_2_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_3_3) && invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_4_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_5_3) && invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_6_3) && invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_7_3) && invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_8_3) && invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3) == arg_9_3) && QPMask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)] == Mask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_3: Ref, arg_1_3: Perm, arg_2_3: Ref, arg_3_3: Perm, arg_4_3: Ref, arg_5_3: Perm, arg_6_3: Ref, arg_7_3: Ref, arg_8_3: Ref, arg_9_3: Perm ::
        { QPMask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)] }
        !(((xs3[(inv_58_0(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && (ys3[(inv_58_1(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)] && zs3[(inv_58_2(invRecv24(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv25(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv26(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv27(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv28(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv29(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv30(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv31(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv32(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3), invRecv33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)): Ref)])) && NoPerm < FullPerm) && qpRange33(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)) ==> QPMask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)] == Mask[null, wand(arg_0_3, arg_1_3, arg_2_3, arg_3_3, arg_4_3, arg_5_3, arg_6_3, arg_7_3, arg_8_3, arg_9_3)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x4: Ref, y4: Ref, z4: Ref ::
  //     { acc(x4.f, q) && (acc(y4.f, q) && acc(z4.f, q)) --*
  //     acc(p(x4, y4, z4), q) }
  //     (x4 in xs4) && ((y4 in ys4) && (z4 in zs4)) ==>
  //     inv_59_0(x4, q, y4, q, z4, q, x4, y4, z4, q) == x4 &&
  //     inv_59_1(x4, q, y4, q, z4, q, x4, y4, z4, q) == y4 &&
  //     inv_59_2(x4, q, y4, q, z4, q, x4, y4, z4, q) == z4) -- assume10QPwand.vpr@30.11--30.141
    
    // -- Check definedness of (forall x4: Ref, y4: Ref, z4: Ref :: { acc(x4.f, q) && (acc(y4.f, q) && acc(z4.f, q)) --* acc(p(x4, y4, z4), q) } (x4 in xs4) && ((y4 in ys4) && (z4 in zs4)) ==> inv_59_0(x4, q, y4, q, z4, q, x4, y4, z4, q) == x4 && inv_59_1(x4, q, y4, q, z4, q, x4, y4, z4, q) == y4 && inv_59_2(x4, q, y4, q, z4, q, x4, y4, z4, q) == z4)
      if (*) {
        assume false;
      }
    assume (forall x4_16: Ref, y4_1: Ref, z4_1: Ref ::
      { Heap[null, wand(x4_16, q_1, y4_1, q_1, z4_1, q_1, x4_16, y4_1, z4_1, q_1)] }
      xs4[x4_16] && (ys4[y4_1] && zs4[z4_1]) ==> ((inv_59_0(x4_16, q_1, y4_1, q_1, z4_1, q_1, x4_16, y4_1, z4_1, q_1): Ref) == x4_16 && (inv_59_1(x4_16, q_1, y4_1, q_1, z4_1, q_1, x4_16, y4_1, z4_1, q_1): Ref) == y4_1) && (inv_59_2(x4_16, q_1, y4_1, q_1, z4_1, q_1, x4_16, y4_1, z4_1, q_1): Ref) == z4_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs4) &&
  //     ((inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys4) &&
  //     (inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs4)) ==>
  //     inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@30.11--30.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs4) && ((inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys4) && (inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs4)) ==> inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_16: Ref, x1_18: Perm, x2_18: Ref, x3_18: Perm, x4_18: Ref, x5_16: Perm, x6_16: Ref, x7_16: Ref, x8_16: Ref, x9_16: Perm ::
      { (inv_59_0(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref), (inv_59_1(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref), (inv_59_2(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) }
      xs4[(inv_59_0(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref)] && (ys4[(inv_59_1(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref)] && zs4[(inv_59_2(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref)]) ==> (((((((((inv_59_0(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x0_16 && q_1 == x1_18) && (inv_59_1(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x2_18) && q_1 == x3_18) && (inv_59_2(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x4_18) && q_1 == x5_16) && (inv_59_0(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x6_16) && (inv_59_1(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x7_16) && (inv_59_2(x0_16, x1_18, x2_18, x3_18, x4_18, x5_16, x6_16, x7_16, x8_16, x9_16): Ref) == x8_16) && q_1 == x9_16
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs4) &&
  //     ((inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys4) &&
  //     (inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs4)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@30.11--30.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_59_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs4) && ((inv_59_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys4) && (inv_59_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs4)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs4[(inv_59_0(x0_7, x1_9, x2_12, x3_9, x4_9, x5_9, x6_9, x7_9, x8_9, x9_9): Ref)] && (ys4[(inv_59_1(x0_7, x1_9, x2_12, x3_9, x4_9, x5_9, x6_9, x7_9, x8_9, x9_9): Ref)] && zs4[(inv_59_2(x0_7, x1_9, x2_12, x3_9, x4_9, x5_9, x6_9, x7_9, x8_9, x9_9): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_9;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@30.11--30.141) [21219]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_9 != null;
            WandDefLHSMask := WandDefLHSMask[x6_9, f_7:=WandDefLHSMask[x6_9, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_9;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@30.11--30.141) [21220]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_9 != null;
            WandDefLHSMask := WandDefLHSMask[x7_9, f_7:=WandDefLHSMask[x7_9, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_9;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@30.11--30.141) [21221]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_9 != null;
            WandDefLHSMask := WandDefLHSMask[x8_9, f_7:=WandDefLHSMask[x8_9, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs5 -- assume10QPwand.vpr@30.122--30.141
              lhs5:
              Labellhs5Heap := WandDefLHSHeap;
              Labellhs5Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_9;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@30.11--30.141) [21222]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_9, x7_9, x8_9):=WandDefRHSMask[null, p_2(x6_9, x7_9, x8_9)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@30.11--30.141) [21223]"}
        (forall x0_18: Ref, x1_20: Perm, x2_20: Ref, x3_20: Perm, x4_20: Ref, x5_18: Perm, x6_18: Ref, x7_18: Ref, x8_18: Ref, x9_18: Perm, x0_18_1: Ref, x1_20_1: Perm, x2_20_1: Ref, x3_20_1: Perm, x4_20_1: Ref, x5_18_1: Perm, x6_18_1: Ref, x7_18_1: Ref, x8_18_1: Ref, x9_18_1: Perm ::
        { neverTriggered43(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18), neverTriggered43(x0_18_1, x1_20_1, x2_20_1, x3_20_1, x4_20_1, x5_18_1, x6_18_1, x7_18_1, x8_18_1, x9_18_1) }
        ((((((((((((x0_18 != x0_18_1 && x1_20 != x1_20_1) && x2_20 != x2_20_1) && x3_20 != x3_20_1) && x4_20 != x4_20_1) && x5_18 != x5_18_1) && x6_18 != x6_18_1) && x7_18 != x7_18_1) && x8_18 != x8_18_1) && x9_18 != x9_18_1) && (xs4[(inv_59_0(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)] && (ys4[(inv_59_1(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)] && zs4[(inv_59_2(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)]))) && (xs4[(inv_59_0(x0_18_1, x1_20_1, x2_20_1, x3_20_1, x4_20_1, x5_18_1, x6_18_1, x7_18_1, x8_18_1, x9_18_1): Ref)] && (ys4[(inv_59_1(x0_18_1, x1_20_1, x2_20_1, x3_20_1, x4_20_1, x5_18_1, x6_18_1, x7_18_1, x8_18_1, x9_18_1): Ref)] && zs4[(inv_59_2(x0_18_1, x1_20_1, x2_20_1, x3_20_1, x4_20_1, x5_18_1, x6_18_1, x7_18_1, x8_18_1, x9_18_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_18 != x6_18_1 || x9_18 != x9_18_1) || x7_18 != x7_18_1) || x9_18 != x9_18_1) || x8_18 != x8_18_1) || x9_18 != x9_18_1) || x6_18 != x6_18_1) || x7_18 != x7_18_1) || x8_18 != x8_18_1) || x9_18 != x9_18_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_18: Ref, x1_20: Perm, x2_20: Ref, x3_20: Perm, x4_20: Ref, x5_18: Perm, x6_18: Ref, x7_18: Ref, x8_18: Ref, x9_18: Perm ::
        { (inv_59_0(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref), (inv_59_1(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref), (inv_59_2(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref) }
        (xs4[(inv_59_0(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)] && (ys4[(inv_59_1(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)] && zs4[(inv_59_2(x0_18, x1_20, x2_20, x3_20, x4_20, x5_18, x6_18, x7_18, x8_18, x9_18): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv34(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x0_18 && invRecv35(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x1_20) && invRecv36(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x2_20) && invRecv37(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x3_20) && invRecv38(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x4_20) && invRecv39(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x5_18) && invRecv40(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x6_18) && invRecv41(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x7_18) && invRecv42(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x8_18) && invRecv43(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18) == x9_18) && qpRange43(x6_18, x9_18, x7_18, x9_18, x8_18, x9_18, x6_18, x7_18, x8_18, x9_18)
      );
      assume (forall arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm ::
        { invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) }
        ((xs4[(inv_59_0(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && (ys4[(inv_59_1(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && zs4[(inv_59_2(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)])) && NoPerm < FullPerm) && qpRange43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) ==> ((((((((invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_0_4 && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_1_4) && invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_2_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_3_4) && invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_4_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_5_4) && invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_6_4) && invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_7_4) && invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_8_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_9_4
      );
    
    // -- Define updated permissions
      assume (forall arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm ::
        { QPMask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)] }
        ((xs4[(inv_59_0(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && (ys4[(inv_59_1(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && zs4[(inv_59_2(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)])) && NoPerm < FullPerm) && qpRange43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) ==> (NoPerm < FullPerm ==> ((((((((invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_0_4 && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_1_4) && invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_2_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_3_4) && invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_4_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_5_4) && invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_6_4) && invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_7_4) && invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_8_4) && invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4) == arg_9_4) && QPMask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)] == Mask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_4: Ref, arg_1_4: Perm, arg_2_4: Ref, arg_3_4: Perm, arg_4_4: Ref, arg_5_4: Perm, arg_6_4: Ref, arg_7_4: Ref, arg_8_4: Ref, arg_9_4: Perm ::
        { QPMask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)] }
        !(((xs4[(inv_59_0(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && (ys4[(inv_59_1(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)] && zs4[(inv_59_2(invRecv34(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv35(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv36(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv37(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv38(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv39(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv40(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv41(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv42(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4), invRecv43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)): Ref)])) && NoPerm < FullPerm) && qpRange43(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)) ==> QPMask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)] == Mask[null, wand(arg_0_4, arg_1_4, arg_2_4, arg_3_4, arg_4_4, arg_5_4, arg_6_4, arg_7_4, arg_8_4, arg_9_4)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x5: Ref, y5: Ref, z5: Ref ::
  //     { acc(x5.f, q) && (acc(y5.f, q) && acc(z5.f, q)) --*
  //     acc(p(x5, y5, z5), q) }
  //     (x5 in xs5) && ((y5 in ys5) && (z5 in zs5)) ==>
  //     inv_60_0(x5, q, y5, q, z5, q, x5, y5, z5, q) == x5 &&
  //     inv_60_1(x5, q, y5, q, z5, q, x5, y5, z5, q) == y5 &&
  //     inv_60_2(x5, q, y5, q, z5, q, x5, y5, z5, q) == z5) -- assume10QPwand.vpr@31.11--31.141
    
    // -- Check definedness of (forall x5: Ref, y5: Ref, z5: Ref :: { acc(x5.f, q) && (acc(y5.f, q) && acc(z5.f, q)) --* acc(p(x5, y5, z5), q) } (x5 in xs5) && ((y5 in ys5) && (z5 in zs5)) ==> inv_60_0(x5, q, y5, q, z5, q, x5, y5, z5, q) == x5 && inv_60_1(x5, q, y5, q, z5, q, x5, y5, z5, q) == y5 && inv_60_2(x5, q, y5, q, z5, q, x5, y5, z5, q) == z5)
      if (*) {
        assume false;
      }
    assume (forall x5_21: Ref, y5_1: Ref, z5_1: Ref ::
      { Heap[null, wand(x5_21, q_1, y5_1, q_1, z5_1, q_1, x5_21, y5_1, z5_1, q_1)] }
      xs5[x5_21] && (ys5[y5_1] && zs5[z5_1]) ==> ((inv_60_0(x5_21, q_1, y5_1, q_1, z5_1, q_1, x5_21, y5_1, z5_1, q_1): Ref) == x5_21 && (inv_60_1(x5_21, q_1, y5_1, q_1, z5_1, q_1, x5_21, y5_1, z5_1, q_1): Ref) == y5_1) && (inv_60_2(x5_21, q_1, y5_1, q_1, z5_1, q_1, x5_21, y5_1, z5_1, q_1): Ref) == z5_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs5) &&
  //     ((inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys5) &&
  //     (inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs5)) ==>
  //     inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@31.11--31.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs5) && ((inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys5) && (inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs5)) ==> inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_21: Ref, x1_23: Perm, x2_23: Ref, x3_23: Perm, x4_23: Ref, x5_23: Perm, x6_21: Ref, x7_21: Ref, x8_21: Ref, x9_21: Perm ::
      { (inv_60_0(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref), (inv_60_1(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref), (inv_60_2(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) }
      xs5[(inv_60_0(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref)] && (ys5[(inv_60_1(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref)] && zs5[(inv_60_2(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref)]) ==> (((((((((inv_60_0(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x0_21 && q_1 == x1_23) && (inv_60_1(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x2_23) && q_1 == x3_23) && (inv_60_2(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x4_23) && q_1 == x5_23) && (inv_60_0(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x6_21) && (inv_60_1(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x7_21) && (inv_60_2(x0_21, x1_23, x2_23, x3_23, x4_23, x5_23, x6_21, x7_21, x8_21, x9_21): Ref) == x8_21) && q_1 == x9_21
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs5) &&
  //     ((inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys5) &&
  //     (inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs5)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@31.11--31.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_60_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs5) && ((inv_60_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys5) && (inv_60_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs5)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs5[(inv_60_0(x0_9, x1_11, x2_14, x3_10, x4_10, x5_10, x6_10, x7_10, x8_10, x9_10): Ref)] && (ys5[(inv_60_1(x0_9, x1_11, x2_14, x3_10, x4_10, x5_10, x6_10, x7_10, x8_10, x9_10): Ref)] && zs5[(inv_60_2(x0_9, x1_11, x2_14, x3_10, x4_10, x5_10, x6_10, x7_10, x8_10, x9_10): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_10;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@31.11--31.141) [21224]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_10 != null;
            WandDefLHSMask := WandDefLHSMask[x6_10, f_7:=WandDefLHSMask[x6_10, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_10;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@31.11--31.141) [21225]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_10 != null;
            WandDefLHSMask := WandDefLHSMask[x7_10, f_7:=WandDefLHSMask[x7_10, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_10;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@31.11--31.141) [21226]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_10 != null;
            WandDefLHSMask := WandDefLHSMask[x8_10, f_7:=WandDefLHSMask[x8_10, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs6 -- assume10QPwand.vpr@31.122--31.141
              lhs6:
              Labellhs6Heap := WandDefLHSHeap;
              Labellhs6Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_10;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@31.11--31.141) [21227]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_10, x7_10, x8_10):=WandDefRHSMask[null, p_2(x6_10, x7_10, x8_10)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@31.11--31.141) [21228]"}
        (forall x0_23: Ref, x1_25: Perm, x2_25: Ref, x3_25: Perm, x4_25: Ref, x5_25: Perm, x6_23: Ref, x7_23: Ref, x8_23: Ref, x9_23: Perm, x0_23_1: Ref, x1_25_1: Perm, x2_25_1: Ref, x3_25_1: Perm, x4_25_1: Ref, x5_25_1: Perm, x6_23_1: Ref, x7_23_1: Ref, x8_23_1: Ref, x9_23_1: Perm ::
        { neverTriggered53(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23), neverTriggered53(x0_23_1, x1_25_1, x2_25_1, x3_25_1, x4_25_1, x5_25_1, x6_23_1, x7_23_1, x8_23_1, x9_23_1) }
        ((((((((((((x0_23 != x0_23_1 && x1_25 != x1_25_1) && x2_25 != x2_25_1) && x3_25 != x3_25_1) && x4_25 != x4_25_1) && x5_25 != x5_25_1) && x6_23 != x6_23_1) && x7_23 != x7_23_1) && x8_23 != x8_23_1) && x9_23 != x9_23_1) && (xs5[(inv_60_0(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)] && (ys5[(inv_60_1(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)] && zs5[(inv_60_2(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)]))) && (xs5[(inv_60_0(x0_23_1, x1_25_1, x2_25_1, x3_25_1, x4_25_1, x5_25_1, x6_23_1, x7_23_1, x8_23_1, x9_23_1): Ref)] && (ys5[(inv_60_1(x0_23_1, x1_25_1, x2_25_1, x3_25_1, x4_25_1, x5_25_1, x6_23_1, x7_23_1, x8_23_1, x9_23_1): Ref)] && zs5[(inv_60_2(x0_23_1, x1_25_1, x2_25_1, x3_25_1, x4_25_1, x5_25_1, x6_23_1, x7_23_1, x8_23_1, x9_23_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_23 != x6_23_1 || x9_23 != x9_23_1) || x7_23 != x7_23_1) || x9_23 != x9_23_1) || x8_23 != x8_23_1) || x9_23 != x9_23_1) || x6_23 != x6_23_1) || x7_23 != x7_23_1) || x8_23 != x8_23_1) || x9_23 != x9_23_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_23: Ref, x1_25: Perm, x2_25: Ref, x3_25: Perm, x4_25: Ref, x5_25: Perm, x6_23: Ref, x7_23: Ref, x8_23: Ref, x9_23: Perm ::
        { (inv_60_0(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref), (inv_60_1(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref), (inv_60_2(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref) }
        (xs5[(inv_60_0(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)] && (ys5[(inv_60_1(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)] && zs5[(inv_60_2(x0_23, x1_25, x2_25, x3_25, x4_25, x5_25, x6_23, x7_23, x8_23, x9_23): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv44(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x0_23 && invRecv45(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x1_25) && invRecv46(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x2_25) && invRecv47(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x3_25) && invRecv48(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x4_25) && invRecv49(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x5_25) && invRecv50(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x6_23) && invRecv51(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x7_23) && invRecv52(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x8_23) && invRecv53(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23) == x9_23) && qpRange53(x6_23, x9_23, x7_23, x9_23, x8_23, x9_23, x6_23, x7_23, x8_23, x9_23)
      );
      assume (forall arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm ::
        { invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) }
        ((xs5[(inv_60_0(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && (ys5[(inv_60_1(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && zs5[(inv_60_2(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)])) && NoPerm < FullPerm) && qpRange53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) ==> ((((((((invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_0_5 && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_1_5) && invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_2_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_3_5) && invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_4_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_5_5) && invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_6_5) && invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_7_5) && invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_8_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_9_5
      );
    
    // -- Define updated permissions
      assume (forall arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm ::
        { QPMask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)] }
        ((xs5[(inv_60_0(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && (ys5[(inv_60_1(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && zs5[(inv_60_2(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)])) && NoPerm < FullPerm) && qpRange53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) ==> (NoPerm < FullPerm ==> ((((((((invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_0_5 && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_1_5) && invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_2_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_3_5) && invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_4_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_5_5) && invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_6_5) && invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_7_5) && invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_8_5) && invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5) == arg_9_5) && QPMask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)] == Mask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_5: Ref, arg_1_5: Perm, arg_2_5: Ref, arg_3_5: Perm, arg_4_5: Ref, arg_5_5: Perm, arg_6_5: Ref, arg_7_5: Ref, arg_8_5: Ref, arg_9_5: Perm ::
        { QPMask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)] }
        !(((xs5[(inv_60_0(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && (ys5[(inv_60_1(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)] && zs5[(inv_60_2(invRecv44(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv45(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv46(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv47(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv48(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv49(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv50(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv51(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv52(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5), invRecv53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)): Ref)])) && NoPerm < FullPerm) && qpRange53(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)) ==> QPMask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)] == Mask[null, wand(arg_0_5, arg_1_5, arg_2_5, arg_3_5, arg_4_5, arg_5_5, arg_6_5, arg_7_5, arg_8_5, arg_9_5)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x6: Ref, y6: Ref, z6: Ref ::
  //     { acc(x6.f, q) && (acc(y6.f, q) && acc(z6.f, q)) --*
  //     acc(p(x6, y6, z6), q) }
  //     (x6 in xs6) && ((y6 in ys6) && (z6 in zs6)) ==>
  //     inv_61_0(x6, q, y6, q, z6, q, x6, y6, z6, q) == x6 &&
  //     inv_61_1(x6, q, y6, q, z6, q, x6, y6, z6, q) == y6 &&
  //     inv_61_2(x6, q, y6, q, z6, q, x6, y6, z6, q) == z6) -- assume10QPwand.vpr@32.11--32.141
    
    // -- Check definedness of (forall x6: Ref, y6: Ref, z6: Ref :: { acc(x6.f, q) && (acc(y6.f, q) && acc(z6.f, q)) --* acc(p(x6, y6, z6), q) } (x6 in xs6) && ((y6 in ys6) && (z6 in zs6)) ==> inv_61_0(x6, q, y6, q, z6, q, x6, y6, z6, q) == x6 && inv_61_1(x6, q, y6, q, z6, q, x6, y6, z6, q) == y6 && inv_61_2(x6, q, y6, q, z6, q, x6, y6, z6, q) == z6)
      if (*) {
        assume false;
      }
    assume (forall x6_26: Ref, y6_1: Ref, z6_1: Ref ::
      { Heap[null, wand(x6_26, q_1, y6_1, q_1, z6_1, q_1, x6_26, y6_1, z6_1, q_1)] }
      xs6[x6_26] && (ys6[y6_1] && zs6[z6_1]) ==> ((inv_61_0(x6_26, q_1, y6_1, q_1, z6_1, q_1, x6_26, y6_1, z6_1, q_1): Ref) == x6_26 && (inv_61_1(x6_26, q_1, y6_1, q_1, z6_1, q_1, x6_26, y6_1, z6_1, q_1): Ref) == y6_1) && (inv_61_2(x6_26, q_1, y6_1, q_1, z6_1, q_1, x6_26, y6_1, z6_1, q_1): Ref) == z6_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs6) &&
  //     ((inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys6) &&
  //     (inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs6)) ==>
  //     inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@32.11--32.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs6) && ((inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys6) && (inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs6)) ==> inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_26: Ref, x1_28: Perm, x2_28: Ref, x3_28: Perm, x4_28: Ref, x5_28: Perm, x6_28: Ref, x7_26: Ref, x8_26: Ref, x9_26: Perm ::
      { (inv_61_0(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref), (inv_61_1(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref), (inv_61_2(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) }
      xs6[(inv_61_0(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref)] && (ys6[(inv_61_1(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref)] && zs6[(inv_61_2(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref)]) ==> (((((((((inv_61_0(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x0_26 && q_1 == x1_28) && (inv_61_1(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x2_28) && q_1 == x3_28) && (inv_61_2(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x4_28) && q_1 == x5_28) && (inv_61_0(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x6_28) && (inv_61_1(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x7_26) && (inv_61_2(x0_26, x1_28, x2_28, x3_28, x4_28, x5_28, x6_28, x7_26, x8_26, x9_26): Ref) == x8_26) && q_1 == x9_26
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs6) &&
  //     ((inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys6) &&
  //     (inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs6)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@32.11--32.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_61_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs6) && ((inv_61_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys6) && (inv_61_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs6)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs6[(inv_61_0(x0_10, x1_12, x2_16, x3_12, x4_12, x5_12, x6_12, x7_12, x8_12, x9_12): Ref)] && (ys6[(inv_61_1(x0_10, x1_12, x2_16, x3_12, x4_12, x5_12, x6_12, x7_12, x8_12, x9_12): Ref)] && zs6[(inv_61_2(x0_10, x1_12, x2_16, x3_12, x4_12, x5_12, x6_12, x7_12, x8_12, x9_12): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_12;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@32.11--32.141) [21229]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_12 != null;
            WandDefLHSMask := WandDefLHSMask[x6_12, f_7:=WandDefLHSMask[x6_12, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_12;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@32.11--32.141) [21230]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_12 != null;
            WandDefLHSMask := WandDefLHSMask[x7_12, f_7:=WandDefLHSMask[x7_12, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_12;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@32.11--32.141) [21231]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_12 != null;
            WandDefLHSMask := WandDefLHSMask[x8_12, f_7:=WandDefLHSMask[x8_12, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs7 -- assume10QPwand.vpr@32.122--32.141
              lhs7:
              Labellhs7Heap := WandDefLHSHeap;
              Labellhs7Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_12;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@32.11--32.141) [21232]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_12, x7_12, x8_12):=WandDefRHSMask[null, p_2(x6_12, x7_12, x8_12)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@32.11--32.141) [21233]"}
        (forall x0_28: Ref, x1_30: Perm, x2_30: Ref, x3_30: Perm, x4_30: Ref, x5_30: Perm, x6_30: Ref, x7_28: Ref, x8_28: Ref, x9_28: Perm, x0_28_1: Ref, x1_30_1: Perm, x2_30_1: Ref, x3_30_1: Perm, x4_30_1: Ref, x5_30_1: Perm, x6_30_1: Ref, x7_28_1: Ref, x8_28_1: Ref, x9_28_1: Perm ::
        { neverTriggered63(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28), neverTriggered63(x0_28_1, x1_30_1, x2_30_1, x3_30_1, x4_30_1, x5_30_1, x6_30_1, x7_28_1, x8_28_1, x9_28_1) }
        ((((((((((((x0_28 != x0_28_1 && x1_30 != x1_30_1) && x2_30 != x2_30_1) && x3_30 != x3_30_1) && x4_30 != x4_30_1) && x5_30 != x5_30_1) && x6_30 != x6_30_1) && x7_28 != x7_28_1) && x8_28 != x8_28_1) && x9_28 != x9_28_1) && (xs6[(inv_61_0(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)] && (ys6[(inv_61_1(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)] && zs6[(inv_61_2(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)]))) && (xs6[(inv_61_0(x0_28_1, x1_30_1, x2_30_1, x3_30_1, x4_30_1, x5_30_1, x6_30_1, x7_28_1, x8_28_1, x9_28_1): Ref)] && (ys6[(inv_61_1(x0_28_1, x1_30_1, x2_30_1, x3_30_1, x4_30_1, x5_30_1, x6_30_1, x7_28_1, x8_28_1, x9_28_1): Ref)] && zs6[(inv_61_2(x0_28_1, x1_30_1, x2_30_1, x3_30_1, x4_30_1, x5_30_1, x6_30_1, x7_28_1, x8_28_1, x9_28_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_30 != x6_30_1 || x9_28 != x9_28_1) || x7_28 != x7_28_1) || x9_28 != x9_28_1) || x8_28 != x8_28_1) || x9_28 != x9_28_1) || x6_30 != x6_30_1) || x7_28 != x7_28_1) || x8_28 != x8_28_1) || x9_28 != x9_28_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_28: Ref, x1_30: Perm, x2_30: Ref, x3_30: Perm, x4_30: Ref, x5_30: Perm, x6_30: Ref, x7_28: Ref, x8_28: Ref, x9_28: Perm ::
        { (inv_61_0(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref), (inv_61_1(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref), (inv_61_2(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref) }
        (xs6[(inv_61_0(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)] && (ys6[(inv_61_1(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)] && zs6[(inv_61_2(x0_28, x1_30, x2_30, x3_30, x4_30, x5_30, x6_30, x7_28, x8_28, x9_28): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv54(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x0_28 && invRecv55(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x1_30) && invRecv56(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x2_30) && invRecv57(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x3_30) && invRecv58(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x4_30) && invRecv59(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x5_30) && invRecv60(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x6_30) && invRecv61(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x7_28) && invRecv62(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x8_28) && invRecv63(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28) == x9_28) && qpRange63(x6_30, x9_28, x7_28, x9_28, x8_28, x9_28, x6_30, x7_28, x8_28, x9_28)
      );
      assume (forall arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm ::
        { invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) }
        ((xs6[(inv_61_0(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && (ys6[(inv_61_1(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && zs6[(inv_61_2(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)])) && NoPerm < FullPerm) && qpRange63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) ==> ((((((((invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_0_6 && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_1_6) && invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_2_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_3_6) && invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_4_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_5_6) && invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_6_6) && invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_7_6) && invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_8_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_9_6
      );
    
    // -- Define updated permissions
      assume (forall arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm ::
        { QPMask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)] }
        ((xs6[(inv_61_0(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && (ys6[(inv_61_1(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && zs6[(inv_61_2(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)])) && NoPerm < FullPerm) && qpRange63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) ==> (NoPerm < FullPerm ==> ((((((((invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_0_6 && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_1_6) && invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_2_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_3_6) && invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_4_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_5_6) && invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_6_6) && invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_7_6) && invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_8_6) && invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6) == arg_9_6) && QPMask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)] == Mask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_6: Ref, arg_1_6: Perm, arg_2_6: Ref, arg_3_6: Perm, arg_4_6: Ref, arg_5_6: Perm, arg_6_6: Ref, arg_7_6: Ref, arg_8_6: Ref, arg_9_6: Perm ::
        { QPMask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)] }
        !(((xs6[(inv_61_0(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && (ys6[(inv_61_1(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)] && zs6[(inv_61_2(invRecv54(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv55(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv56(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv57(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv58(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv59(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv60(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv61(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv62(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6), invRecv63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)): Ref)])) && NoPerm < FullPerm) && qpRange63(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)) ==> QPMask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)] == Mask[null, wand(arg_0_6, arg_1_6, arg_2_6, arg_3_6, arg_4_6, arg_5_6, arg_6_6, arg_7_6, arg_8_6, arg_9_6)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x7: Ref, y7: Ref, z7: Ref ::
  //     { acc(x7.f, q) && (acc(y7.f, q) && acc(z7.f, q)) --*
  //     acc(p(x7, y7, z7), q) }
  //     (x7 in xs7) && ((y7 in ys7) && (z7 in zs7)) ==>
  //     inv_62_0(x7, q, y7, q, z7, q, x7, y7, z7, q) == x7 &&
  //     inv_62_1(x7, q, y7, q, z7, q, x7, y7, z7, q) == y7 &&
  //     inv_62_2(x7, q, y7, q, z7, q, x7, y7, z7, q) == z7) -- assume10QPwand.vpr@33.11--33.141
    
    // -- Check definedness of (forall x7: Ref, y7: Ref, z7: Ref :: { acc(x7.f, q) && (acc(y7.f, q) && acc(z7.f, q)) --* acc(p(x7, y7, z7), q) } (x7 in xs7) && ((y7 in ys7) && (z7 in zs7)) ==> inv_62_0(x7, q, y7, q, z7, q, x7, y7, z7, q) == x7 && inv_62_1(x7, q, y7, q, z7, q, x7, y7, z7, q) == y7 && inv_62_2(x7, q, y7, q, z7, q, x7, y7, z7, q) == z7)
      if (*) {
        assume false;
      }
    assume (forall x7_31: Ref, y7_1: Ref, z7_1: Ref ::
      { Heap[null, wand(x7_31, q_1, y7_1, q_1, z7_1, q_1, x7_31, y7_1, z7_1, q_1)] }
      xs7[x7_31] && (ys7[y7_1] && zs7[z7_1]) ==> ((inv_62_0(x7_31, q_1, y7_1, q_1, z7_1, q_1, x7_31, y7_1, z7_1, q_1): Ref) == x7_31 && (inv_62_1(x7_31, q_1, y7_1, q_1, z7_1, q_1, x7_31, y7_1, z7_1, q_1): Ref) == y7_1) && (inv_62_2(x7_31, q_1, y7_1, q_1, z7_1, q_1, x7_31, y7_1, z7_1, q_1): Ref) == z7_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs7) &&
  //     ((inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys7) &&
  //     (inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs7)) ==>
  //     inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@33.11--33.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs7) && ((inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys7) && (inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs7)) ==> inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_31: Ref, x1_33: Perm, x2_33: Ref, x3_33: Perm, x4_33: Ref, x5_33: Perm, x6_33: Ref, x7_33: Ref, x8_31: Ref, x9_31: Perm ::
      { (inv_62_0(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref), (inv_62_1(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref), (inv_62_2(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) }
      xs7[(inv_62_0(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref)] && (ys7[(inv_62_1(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref)] && zs7[(inv_62_2(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref)]) ==> (((((((((inv_62_0(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x0_31 && q_1 == x1_33) && (inv_62_1(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x2_33) && q_1 == x3_33) && (inv_62_2(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x4_33) && q_1 == x5_33) && (inv_62_0(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x6_33) && (inv_62_1(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x7_33) && (inv_62_2(x0_31, x1_33, x2_33, x3_33, x4_33, x5_33, x6_33, x7_33, x8_31, x9_31): Ref) == x8_31) && q_1 == x9_31
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs7) &&
  //     ((inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys7) &&
  //     (inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs7)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@33.11--33.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_62_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs7) && ((inv_62_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys7) && (inv_62_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs7)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs7[(inv_62_0(x0_12, x1_14, x2_17, x3_14, x4_14, x5_14, x6_14, x7_14, x8_14, x9_14): Ref)] && (ys7[(inv_62_1(x0_12, x1_14, x2_17, x3_14, x4_14, x5_14, x6_14, x7_14, x8_14, x9_14): Ref)] && zs7[(inv_62_2(x0_12, x1_14, x2_17, x3_14, x4_14, x5_14, x6_14, x7_14, x8_14, x9_14): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_14;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@33.11--33.141) [21234]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_14 != null;
            WandDefLHSMask := WandDefLHSMask[x6_14, f_7:=WandDefLHSMask[x6_14, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_14;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@33.11--33.141) [21235]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_14 != null;
            WandDefLHSMask := WandDefLHSMask[x7_14, f_7:=WandDefLHSMask[x7_14, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_14;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@33.11--33.141) [21236]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_14 != null;
            WandDefLHSMask := WandDefLHSMask[x8_14, f_7:=WandDefLHSMask[x8_14, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs8 -- assume10QPwand.vpr@33.122--33.141
              lhs8:
              Labellhs8Heap := WandDefLHSHeap;
              Labellhs8Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_14;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@33.11--33.141) [21237]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_14, x7_14, x8_14):=WandDefRHSMask[null, p_2(x6_14, x7_14, x8_14)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@33.11--33.141) [21238]"}
        (forall x0_33: Ref, x1_35: Perm, x2_35: Ref, x3_35: Perm, x4_35: Ref, x5_35: Perm, x6_35: Ref, x7_35: Ref, x8_33: Ref, x9_33: Perm, x0_33_1: Ref, x1_35_1: Perm, x2_35_1: Ref, x3_35_1: Perm, x4_35_1: Ref, x5_35_1: Perm, x6_35_1: Ref, x7_35_1: Ref, x8_33_1: Ref, x9_33_1: Perm ::
        { neverTriggered73(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33), neverTriggered73(x0_33_1, x1_35_1, x2_35_1, x3_35_1, x4_35_1, x5_35_1, x6_35_1, x7_35_1, x8_33_1, x9_33_1) }
        ((((((((((((x0_33 != x0_33_1 && x1_35 != x1_35_1) && x2_35 != x2_35_1) && x3_35 != x3_35_1) && x4_35 != x4_35_1) && x5_35 != x5_35_1) && x6_35 != x6_35_1) && x7_35 != x7_35_1) && x8_33 != x8_33_1) && x9_33 != x9_33_1) && (xs7[(inv_62_0(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)] && (ys7[(inv_62_1(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)] && zs7[(inv_62_2(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)]))) && (xs7[(inv_62_0(x0_33_1, x1_35_1, x2_35_1, x3_35_1, x4_35_1, x5_35_1, x6_35_1, x7_35_1, x8_33_1, x9_33_1): Ref)] && (ys7[(inv_62_1(x0_33_1, x1_35_1, x2_35_1, x3_35_1, x4_35_1, x5_35_1, x6_35_1, x7_35_1, x8_33_1, x9_33_1): Ref)] && zs7[(inv_62_2(x0_33_1, x1_35_1, x2_35_1, x3_35_1, x4_35_1, x5_35_1, x6_35_1, x7_35_1, x8_33_1, x9_33_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_35 != x6_35_1 || x9_33 != x9_33_1) || x7_35 != x7_35_1) || x9_33 != x9_33_1) || x8_33 != x8_33_1) || x9_33 != x9_33_1) || x6_35 != x6_35_1) || x7_35 != x7_35_1) || x8_33 != x8_33_1) || x9_33 != x9_33_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_33: Ref, x1_35: Perm, x2_35: Ref, x3_35: Perm, x4_35: Ref, x5_35: Perm, x6_35: Ref, x7_35: Ref, x8_33: Ref, x9_33: Perm ::
        { (inv_62_0(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref), (inv_62_1(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref), (inv_62_2(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref) }
        (xs7[(inv_62_0(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)] && (ys7[(inv_62_1(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)] && zs7[(inv_62_2(x0_33, x1_35, x2_35, x3_35, x4_35, x5_35, x6_35, x7_35, x8_33, x9_33): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv64(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x0_33 && invRecv65(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x1_35) && invRecv66(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x2_35) && invRecv67(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x3_35) && invRecv68(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x4_35) && invRecv69(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x5_35) && invRecv70(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x6_35) && invRecv71(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x7_35) && invRecv72(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x8_33) && invRecv73(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33) == x9_33) && qpRange73(x6_35, x9_33, x7_35, x9_33, x8_33, x9_33, x6_35, x7_35, x8_33, x9_33)
      );
      assume (forall arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm ::
        { invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) }
        ((xs7[(inv_62_0(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && (ys7[(inv_62_1(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && zs7[(inv_62_2(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)])) && NoPerm < FullPerm) && qpRange73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) ==> ((((((((invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_0_7 && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_1_7) && invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_2_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_3_7) && invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_4_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_5_7) && invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_6_7) && invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_7_7) && invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_8_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_9_7
      );
    
    // -- Define updated permissions
      assume (forall arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm ::
        { QPMask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)] }
        ((xs7[(inv_62_0(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && (ys7[(inv_62_1(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && zs7[(inv_62_2(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)])) && NoPerm < FullPerm) && qpRange73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) ==> (NoPerm < FullPerm ==> ((((((((invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_0_7 && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_1_7) && invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_2_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_3_7) && invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_4_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_5_7) && invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_6_7) && invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_7_7) && invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_8_7) && invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7) == arg_9_7) && QPMask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)] == Mask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_7: Ref, arg_1_7: Perm, arg_2_7: Ref, arg_3_7: Perm, arg_4_7: Ref, arg_5_7: Perm, arg_6_7: Ref, arg_7_7: Ref, arg_8_7: Ref, arg_9_7: Perm ::
        { QPMask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)] }
        !(((xs7[(inv_62_0(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && (ys7[(inv_62_1(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)] && zs7[(inv_62_2(invRecv64(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv65(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv66(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv67(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv68(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv69(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv70(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv71(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv72(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7), invRecv73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)): Ref)])) && NoPerm < FullPerm) && qpRange73(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)) ==> QPMask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)] == Mask[null, wand(arg_0_7, arg_1_7, arg_2_7, arg_3_7, arg_4_7, arg_5_7, arg_6_7, arg_7_7, arg_8_7, arg_9_7)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x8: Ref, y8: Ref, z8: Ref ::
  //     { acc(x8.f, q) && (acc(y8.f, q) && acc(z8.f, q)) --*
  //     acc(p(x8, y8, z8), q) }
  //     (x8 in xs8) && ((y8 in ys8) && (z8 in zs8)) ==>
  //     inv_63_0(x8, q, y8, q, z8, q, x8, y8, z8, q) == x8 &&
  //     inv_63_1(x8, q, y8, q, z8, q, x8, y8, z8, q) == y8 &&
  //     inv_63_2(x8, q, y8, q, z8, q, x8, y8, z8, q) == z8) -- assume10QPwand.vpr@34.11--34.141
    
    // -- Check definedness of (forall x8: Ref, y8: Ref, z8: Ref :: { acc(x8.f, q) && (acc(y8.f, q) && acc(z8.f, q)) --* acc(p(x8, y8, z8), q) } (x8 in xs8) && ((y8 in ys8) && (z8 in zs8)) ==> inv_63_0(x8, q, y8, q, z8, q, x8, y8, z8, q) == x8 && inv_63_1(x8, q, y8, q, z8, q, x8, y8, z8, q) == y8 && inv_63_2(x8, q, y8, q, z8, q, x8, y8, z8, q) == z8)
      if (*) {
        assume false;
      }
    assume (forall x8_36: Ref, y8_1: Ref, z8_1: Ref ::
      { Heap[null, wand(x8_36, q_1, y8_1, q_1, z8_1, q_1, x8_36, y8_1, z8_1, q_1)] }
      xs8[x8_36] && (ys8[y8_1] && zs8[z8_1]) ==> ((inv_63_0(x8_36, q_1, y8_1, q_1, z8_1, q_1, x8_36, y8_1, z8_1, q_1): Ref) == x8_36 && (inv_63_1(x8_36, q_1, y8_1, q_1, z8_1, q_1, x8_36, y8_1, z8_1, q_1): Ref) == y8_1) && (inv_63_2(x8_36, q_1, y8_1, q_1, z8_1, q_1, x8_36, y8_1, z8_1, q_1): Ref) == z8_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs8) &&
  //     ((inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys8) &&
  //     (inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs8)) ==>
  //     inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@34.11--34.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs8) && ((inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys8) && (inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs8)) ==> inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_36: Ref, x1_38: Perm, x2_38: Ref, x3_38: Perm, x4_38: Ref, x5_38: Perm, x6_38: Ref, x7_38: Ref, x8_38: Ref, x9_36: Perm ::
      { (inv_63_0(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref), (inv_63_1(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref), (inv_63_2(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) }
      xs8[(inv_63_0(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref)] && (ys8[(inv_63_1(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref)] && zs8[(inv_63_2(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref)]) ==> (((((((((inv_63_0(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x0_36 && q_1 == x1_38) && (inv_63_1(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x2_38) && q_1 == x3_38) && (inv_63_2(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x4_38) && q_1 == x5_38) && (inv_63_0(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x6_38) && (inv_63_1(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x7_38) && (inv_63_2(x0_36, x1_38, x2_38, x3_38, x4_38, x5_38, x6_38, x7_38, x8_38, x9_36): Ref) == x8_38) && q_1 == x9_36
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs8) &&
  //     ((inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys8) &&
  //     (inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs8)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@34.11--34.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_63_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs8) && ((inv_63_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys8) && (inv_63_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs8)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs8[(inv_63_0(x0_14, x1_16, x2_19, x3_16, x4_15, x5_15, x6_15, x7_15, x8_15, x9_15): Ref)] && (ys8[(inv_63_1(x0_14, x1_16, x2_19, x3_16, x4_15, x5_15, x6_15, x7_15, x8_15, x9_15): Ref)] && zs8[(inv_63_2(x0_14, x1_16, x2_19, x3_16, x4_15, x5_15, x6_15, x7_15, x8_15, x9_15): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_15;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@34.11--34.141) [21239]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_15 != null;
            WandDefLHSMask := WandDefLHSMask[x6_15, f_7:=WandDefLHSMask[x6_15, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_15;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@34.11--34.141) [21240]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_15 != null;
            WandDefLHSMask := WandDefLHSMask[x7_15, f_7:=WandDefLHSMask[x7_15, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_15;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@34.11--34.141) [21241]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_15 != null;
            WandDefLHSMask := WandDefLHSMask[x8_15, f_7:=WandDefLHSMask[x8_15, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs9 -- assume10QPwand.vpr@34.122--34.141
              lhs9:
              Labellhs9Heap := WandDefLHSHeap;
              Labellhs9Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_15;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@34.11--34.141) [21242]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_15, x7_15, x8_15):=WandDefRHSMask[null, p_2(x6_15, x7_15, x8_15)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@34.11--34.141) [21243]"}
        (forall x0_38: Ref, x1_40: Perm, x2_40: Ref, x3_40: Perm, x4_40: Ref, x5_40: Perm, x6_40: Ref, x7_40: Ref, x8_40: Ref, x9_38: Perm, x0_38_1: Ref, x1_40_1: Perm, x2_40_1: Ref, x3_40_1: Perm, x4_40_1: Ref, x5_40_1: Perm, x6_40_1: Ref, x7_40_1: Ref, x8_40_1: Ref, x9_38_1: Perm ::
        { neverTriggered83(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38), neverTriggered83(x0_38_1, x1_40_1, x2_40_1, x3_40_1, x4_40_1, x5_40_1, x6_40_1, x7_40_1, x8_40_1, x9_38_1) }
        ((((((((((((x0_38 != x0_38_1 && x1_40 != x1_40_1) && x2_40 != x2_40_1) && x3_40 != x3_40_1) && x4_40 != x4_40_1) && x5_40 != x5_40_1) && x6_40 != x6_40_1) && x7_40 != x7_40_1) && x8_40 != x8_40_1) && x9_38 != x9_38_1) && (xs8[(inv_63_0(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)] && (ys8[(inv_63_1(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)] && zs8[(inv_63_2(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)]))) && (xs8[(inv_63_0(x0_38_1, x1_40_1, x2_40_1, x3_40_1, x4_40_1, x5_40_1, x6_40_1, x7_40_1, x8_40_1, x9_38_1): Ref)] && (ys8[(inv_63_1(x0_38_1, x1_40_1, x2_40_1, x3_40_1, x4_40_1, x5_40_1, x6_40_1, x7_40_1, x8_40_1, x9_38_1): Ref)] && zs8[(inv_63_2(x0_38_1, x1_40_1, x2_40_1, x3_40_1, x4_40_1, x5_40_1, x6_40_1, x7_40_1, x8_40_1, x9_38_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_40 != x6_40_1 || x9_38 != x9_38_1) || x7_40 != x7_40_1) || x9_38 != x9_38_1) || x8_40 != x8_40_1) || x9_38 != x9_38_1) || x6_40 != x6_40_1) || x7_40 != x7_40_1) || x8_40 != x8_40_1) || x9_38 != x9_38_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_38: Ref, x1_40: Perm, x2_40: Ref, x3_40: Perm, x4_40: Ref, x5_40: Perm, x6_40: Ref, x7_40: Ref, x8_40: Ref, x9_38: Perm ::
        { (inv_63_0(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref), (inv_63_1(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref), (inv_63_2(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref) }
        (xs8[(inv_63_0(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)] && (ys8[(inv_63_1(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)] && zs8[(inv_63_2(x0_38, x1_40, x2_40, x3_40, x4_40, x5_40, x6_40, x7_40, x8_40, x9_38): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv74(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x0_38 && invRecv75(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x1_40) && invRecv76(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x2_40) && invRecv77(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x3_40) && invRecv78(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x4_40) && invRecv79(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x5_40) && invRecv80(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x6_40) && invRecv81(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x7_40) && invRecv82(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x8_40) && invRecv83(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38) == x9_38) && qpRange83(x6_40, x9_38, x7_40, x9_38, x8_40, x9_38, x6_40, x7_40, x8_40, x9_38)
      );
      assume (forall arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm ::
        { invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) }
        ((xs8[(inv_63_0(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && (ys8[(inv_63_1(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && zs8[(inv_63_2(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)])) && NoPerm < FullPerm) && qpRange83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) ==> ((((((((invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_0_8 && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_1_8) && invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_2_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_3_8) && invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_4_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_5_8) && invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_6_8) && invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_7_8) && invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_8_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_9_8
      );
    
    // -- Define updated permissions
      assume (forall arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm ::
        { QPMask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)] }
        ((xs8[(inv_63_0(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && (ys8[(inv_63_1(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && zs8[(inv_63_2(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)])) && NoPerm < FullPerm) && qpRange83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) ==> (NoPerm < FullPerm ==> ((((((((invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_0_8 && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_1_8) && invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_2_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_3_8) && invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_4_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_5_8) && invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_6_8) && invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_7_8) && invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_8_8) && invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8) == arg_9_8) && QPMask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)] == Mask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_8: Ref, arg_1_8: Perm, arg_2_8: Ref, arg_3_8: Perm, arg_4_8: Ref, arg_5_8: Perm, arg_6_8: Ref, arg_7_8: Ref, arg_8_8: Ref, arg_9_8: Perm ::
        { QPMask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)] }
        !(((xs8[(inv_63_0(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && (ys8[(inv_63_1(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)] && zs8[(inv_63_2(invRecv74(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv75(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv76(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv77(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv78(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv79(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv80(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv81(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv82(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8), invRecv83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)): Ref)])) && NoPerm < FullPerm) && qpRange83(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)) ==> QPMask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)] == Mask[null, wand(arg_0_8, arg_1_8, arg_2_8, arg_3_8, arg_4_8, arg_5_8, arg_6_8, arg_7_8, arg_8_8, arg_9_8)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x9: Ref, y9: Ref, z9: Ref ::
  //     { acc(x9.f, q) && (acc(y9.f, q) && acc(z9.f, q)) --*
  //     acc(p(x9, y9, z9), q) }
  //     (x9 in xs9) && ((y9 in ys9) && (z9 in zs9)) ==>
  //     inv_64_0(x9, q, y9, q, z9, q, x9, y9, z9, q) == x9 &&
  //     inv_64_1(x9, q, y9, q, z9, q, x9, y9, z9, q) == y9 &&
  //     inv_64_2(x9, q, y9, q, z9, q, x9, y9, z9, q) == z9) -- assume10QPwand.vpr@35.11--35.141
    
    // -- Check definedness of (forall x9: Ref, y9: Ref, z9: Ref :: { acc(x9.f, q) && (acc(y9.f, q) && acc(z9.f, q)) --* acc(p(x9, y9, z9), q) } (x9 in xs9) && ((y9 in ys9) && (z9 in zs9)) ==> inv_64_0(x9, q, y9, q, z9, q, x9, y9, z9, q) == x9 && inv_64_1(x9, q, y9, q, z9, q, x9, y9, z9, q) == y9 && inv_64_2(x9, q, y9, q, z9, q, x9, y9, z9, q) == z9)
      if (*) {
        assume false;
      }
    assume (forall x9_41: Ref, y9_1: Ref, z9_1: Ref ::
      { Heap[null, wand(x9_41, q_1, y9_1, q_1, z9_1, q_1, x9_41, y9_1, z9_1, q_1)] }
      xs9[x9_41] && (ys9[y9_1] && zs9[z9_1]) ==> ((inv_64_0(x9_41, q_1, y9_1, q_1, z9_1, q_1, x9_41, y9_1, z9_1, q_1): Ref) == x9_41 && (inv_64_1(x9_41, q_1, y9_1, q_1, z9_1, q_1, x9_41, y9_1, z9_1, q_1): Ref) == y9_1) && (inv_64_2(x9_41, q_1, y9_1, q_1, z9_1, q_1, x9_41, y9_1, z9_1, q_1): Ref) == z9_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs9) &&
  //     ((inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys9) &&
  //     (inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs9)) ==>
  //     inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@35.11--35.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs9) && ((inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys9) && (inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs9)) ==> inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_41: Ref, x1_43: Perm, x2_43: Ref, x3_43: Perm, x4_43: Ref, x5_43: Perm, x6_43: Ref, x7_43: Ref, x8_43: Ref, x9_43: Perm ::
      { (inv_64_0(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref), (inv_64_1(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref), (inv_64_2(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) }
      xs9[(inv_64_0(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref)] && (ys9[(inv_64_1(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref)] && zs9[(inv_64_2(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref)]) ==> (((((((((inv_64_0(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x0_41 && q_1 == x1_43) && (inv_64_1(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x2_43) && q_1 == x3_43) && (inv_64_2(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x4_43) && q_1 == x5_43) && (inv_64_0(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x6_43) && (inv_64_1(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x7_43) && (inv_64_2(x0_41, x1_43, x2_43, x3_43, x4_43, x5_43, x6_43, x7_43, x8_43, x9_43): Ref) == x8_43) && q_1 == x9_43
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs9) &&
  //     ((inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys9) &&
  //     (inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs9)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@35.11--35.141
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_64_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs9) && ((inv_64_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys9) && (inv_64_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs9)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs9[(inv_64_0(x0_15, x1_17, x2_21, x3_17, x4_17, x5_17, x6_17, x7_17, x8_17, x9_17): Ref)] && (ys9[(inv_64_1(x0_15, x1_17, x2_21, x3_17, x4_17, x5_17, x6_17, x7_17, x8_17, x9_17): Ref)] && zs9[(inv_64_2(x0_15, x1_17, x2_21, x3_17, x4_17, x5_17, x6_17, x7_17, x8_17, x9_17): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_17;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@35.11--35.141) [21244]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_17 != null;
            WandDefLHSMask := WandDefLHSMask[x6_17, f_7:=WandDefLHSMask[x6_17, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_17;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@35.11--35.141) [21245]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_17 != null;
            WandDefLHSMask := WandDefLHSMask[x7_17, f_7:=WandDefLHSMask[x7_17, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_17;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@35.11--35.141) [21246]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_17 != null;
            WandDefLHSMask := WandDefLHSMask[x8_17, f_7:=WandDefLHSMask[x8_17, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs10 -- assume10QPwand.vpr@35.122--35.141
              lhs10:
              Labellhs10Heap := WandDefLHSHeap;
              Labellhs10Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_17;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@35.11--35.141) [21247]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_17, x7_17, x8_17):=WandDefRHSMask[null, p_2(x6_17, x7_17, x8_17)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@35.11--35.141) [21248]"}
        (forall x0_43: Ref, x1_45: Perm, x2_45: Ref, x3_45: Perm, x4_45: Ref, x5_45: Perm, x6_45: Ref, x7_45: Ref, x8_45: Ref, x9_45: Perm, x0_43_1: Ref, x1_45_1: Perm, x2_45_1: Ref, x3_45_1: Perm, x4_45_1: Ref, x5_45_1: Perm, x6_45_1: Ref, x7_45_1: Ref, x8_45_1: Ref, x9_45_1: Perm ::
        { neverTriggered93(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45), neverTriggered93(x0_43_1, x1_45_1, x2_45_1, x3_45_1, x4_45_1, x5_45_1, x6_45_1, x7_45_1, x8_45_1, x9_45_1) }
        ((((((((((((x0_43 != x0_43_1 && x1_45 != x1_45_1) && x2_45 != x2_45_1) && x3_45 != x3_45_1) && x4_45 != x4_45_1) && x5_45 != x5_45_1) && x6_45 != x6_45_1) && x7_45 != x7_45_1) && x8_45 != x8_45_1) && x9_45 != x9_45_1) && (xs9[(inv_64_0(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)] && (ys9[(inv_64_1(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)] && zs9[(inv_64_2(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)]))) && (xs9[(inv_64_0(x0_43_1, x1_45_1, x2_45_1, x3_45_1, x4_45_1, x5_45_1, x6_45_1, x7_45_1, x8_45_1, x9_45_1): Ref)] && (ys9[(inv_64_1(x0_43_1, x1_45_1, x2_45_1, x3_45_1, x4_45_1, x5_45_1, x6_45_1, x7_45_1, x8_45_1, x9_45_1): Ref)] && zs9[(inv_64_2(x0_43_1, x1_45_1, x2_45_1, x3_45_1, x4_45_1, x5_45_1, x6_45_1, x7_45_1, x8_45_1, x9_45_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_45 != x6_45_1 || x9_45 != x9_45_1) || x7_45 != x7_45_1) || x9_45 != x9_45_1) || x8_45 != x8_45_1) || x9_45 != x9_45_1) || x6_45 != x6_45_1) || x7_45 != x7_45_1) || x8_45 != x8_45_1) || x9_45 != x9_45_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_43: Ref, x1_45: Perm, x2_45: Ref, x3_45: Perm, x4_45: Ref, x5_45: Perm, x6_45: Ref, x7_45: Ref, x8_45: Ref, x9_45: Perm ::
        { (inv_64_0(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref), (inv_64_1(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref), (inv_64_2(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref) }
        (xs9[(inv_64_0(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)] && (ys9[(inv_64_1(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)] && zs9[(inv_64_2(x0_43, x1_45, x2_45, x3_45, x4_45, x5_45, x6_45, x7_45, x8_45, x9_45): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv84(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x0_43 && invRecv85(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x1_45) && invRecv86(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x2_45) && invRecv87(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x3_45) && invRecv88(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x4_45) && invRecv89(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x5_45) && invRecv90(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x6_45) && invRecv91(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x7_45) && invRecv92(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x8_45) && invRecv93(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45) == x9_45) && qpRange93(x6_45, x9_45, x7_45, x9_45, x8_45, x9_45, x6_45, x7_45, x8_45, x9_45)
      );
      assume (forall arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm ::
        { invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) }
        ((xs9[(inv_64_0(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && (ys9[(inv_64_1(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && zs9[(inv_64_2(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)])) && NoPerm < FullPerm) && qpRange93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) ==> ((((((((invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_0_9 && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_1_9) && invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_2_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_3_9) && invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_4_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_5_9) && invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_6_9) && invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_7_9) && invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_8_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_9_9
      );
    
    // -- Define updated permissions
      assume (forall arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm ::
        { QPMask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)] }
        ((xs9[(inv_64_0(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && (ys9[(inv_64_1(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && zs9[(inv_64_2(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)])) && NoPerm < FullPerm) && qpRange93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) ==> (NoPerm < FullPerm ==> ((((((((invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_0_9 && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_1_9) && invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_2_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_3_9) && invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_4_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_5_9) && invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_6_9) && invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_7_9) && invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_8_9) && invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9) == arg_9_9) && QPMask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)] == Mask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_9: Ref, arg_1_9: Perm, arg_2_9: Ref, arg_3_9: Perm, arg_4_9: Ref, arg_5_9: Perm, arg_6_9: Ref, arg_7_9: Ref, arg_8_9: Ref, arg_9_9: Perm ::
        { QPMask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)] }
        !(((xs9[(inv_64_0(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && (ys9[(inv_64_1(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)] && zs9[(inv_64_2(invRecv84(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv85(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv86(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv87(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv88(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv89(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv90(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv91(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv92(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9), invRecv93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)): Ref)])) && NoPerm < FullPerm) && qpRange93(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)) ==> QPMask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)] == Mask[null, wand(arg_0_9, arg_1_9, arg_2_9, arg_3_9, arg_4_9, arg_5_9, arg_6_9, arg_7_9, arg_8_9, arg_9_9)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x10: Ref, y10: Ref, z10: Ref ::
  //     { acc(x10.f, q) && (acc(y10.f, q) && acc(z10.f, q)) --*
  //     acc(p(x10, y10, z10), q) }
  //     (x10 in xs10) && ((y10 in ys10) && (z10 in zs10)) ==>
  //     inv_65_0(x10, q, y10, q, z10, q, x10, y10, z10, q) == x10 &&
  //     inv_65_1(x10, q, y10, q, z10, q, x10, y10, z10, q) == y10 &&
  //     inv_65_2(x10, q, y10, q, z10, q, x10, y10, z10, q) == z10) -- assume10QPwand.vpr@36.11--36.144
    
    // -- Check definedness of (forall x10: Ref, y10: Ref, z10: Ref :: { acc(x10.f, q) && (acc(y10.f, q) && acc(z10.f, q)) --* acc(p(x10, y10, z10), q) } (x10 in xs10) && ((y10 in ys10) && (z10 in zs10)) ==> inv_65_0(x10, q, y10, q, z10, q, x10, y10, z10, q) == x10 && inv_65_1(x10, q, y10, q, z10, q, x10, y10, z10, q) == y10 && inv_65_2(x10, q, y10, q, z10, q, x10, y10, z10, q) == z10)
      if (*) {
        assume false;
      }
    assume (forall x10_1: Ref, y10_1: Ref, z10_1: Ref ::
      { Heap[null, wand(x10_1, q_1, y10_1, q_1, z10_1, q_1, x10_1, y10_1, z10_1, q_1)] }
      xs10[x10_1] && (ys10[y10_1] && zs10[z10_1]) ==> ((inv_65_0(x10_1, q_1, y10_1, q_1, z10_1, q_1, x10_1, y10_1, z10_1, q_1): Ref) == x10_1 && (inv_65_1(x10_1, q_1, y10_1, q_1, z10_1, q_1, x10_1, y10_1, z10_1, q_1): Ref) == y10_1) && (inv_65_2(x10_1, q_1, y10_1, q_1, z10_1, q_1, x10_1, y10_1, z10_1, q_1): Ref) == z10_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs10) &&
  //     ((inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys10) &&
  //     (inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs10)) ==>
  //     inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@36.11--36.144
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs10) && ((inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys10) && (inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs10)) ==> inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_46: Ref, x1_48: Perm, x2_48: Ref, x3_48: Perm, x4_48: Ref, x5_48: Perm, x6_48: Ref, x7_48: Ref, x8_48: Ref, x9_48: Perm ::
      { (inv_65_0(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref), (inv_65_1(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref), (inv_65_2(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) }
      xs10[(inv_65_0(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref)] && (ys10[(inv_65_1(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref)] && zs10[(inv_65_2(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref)]) ==> (((((((((inv_65_0(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x0_46 && q_1 == x1_48) && (inv_65_1(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x2_48) && q_1 == x3_48) && (inv_65_2(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x4_48) && q_1 == x5_48) && (inv_65_0(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x6_48) && (inv_65_1(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x7_48) && (inv_65_2(x0_46, x1_48, x2_48, x3_48, x4_48, x5_48, x6_48, x7_48, x8_48, x9_48): Ref) == x8_48) && q_1 == x9_48
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs10) &&
  //     ((inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys10) &&
  //     (inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs10)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@36.11--36.144
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_65_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs10) && ((inv_65_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys10) && (inv_65_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs10)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs10[(inv_65_0(x0_17, x1_19, x2_22, x3_19, x4_19, x5_19, x6_19, x7_19, x8_19, x9_19): Ref)] && (ys10[(inv_65_1(x0_17, x1_19, x2_22, x3_19, x4_19, x5_19, x6_19, x7_19, x8_19, x9_19): Ref)] && zs10[(inv_65_2(x0_17, x1_19, x2_22, x3_19, x4_19, x5_19, x6_19, x7_19, x8_19, x9_19): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_19;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@36.11--36.144) [21249]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_19 != null;
            WandDefLHSMask := WandDefLHSMask[x6_19, f_7:=WandDefLHSMask[x6_19, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_19;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@36.11--36.144) [21250]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_19 != null;
            WandDefLHSMask := WandDefLHSMask[x7_19, f_7:=WandDefLHSMask[x7_19, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_19;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@36.11--36.144) [21251]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_19 != null;
            WandDefLHSMask := WandDefLHSMask[x8_19, f_7:=WandDefLHSMask[x8_19, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs11 -- assume10QPwand.vpr@36.122--36.144
              lhs11:
              Labellhs11Heap := WandDefLHSHeap;
              Labellhs11Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_19;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@36.11--36.144) [21252]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_19, x7_19, x8_19):=WandDefRHSMask[null, p_2(x6_19, x7_19, x8_19)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@36.11--36.144) [21253]"}
        (forall x0_48: Ref, x1_50: Perm, x2_50: Ref, x3_50: Perm, x4_50: Ref, x5_50: Perm, x6_50: Ref, x7_50: Ref, x8_50: Ref, x9_50: Perm, x0_48_1: Ref, x1_50_1: Perm, x2_50_1: Ref, x3_50_1: Perm, x4_50_1: Ref, x5_50_1: Perm, x6_50_1: Ref, x7_50_1: Ref, x8_50_1: Ref, x9_50_1: Perm ::
        { neverTriggered103(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50), neverTriggered103(x0_48_1, x1_50_1, x2_50_1, x3_50_1, x4_50_1, x5_50_1, x6_50_1, x7_50_1, x8_50_1, x9_50_1) }
        ((((((((((((x0_48 != x0_48_1 && x1_50 != x1_50_1) && x2_50 != x2_50_1) && x3_50 != x3_50_1) && x4_50 != x4_50_1) && x5_50 != x5_50_1) && x6_50 != x6_50_1) && x7_50 != x7_50_1) && x8_50 != x8_50_1) && x9_50 != x9_50_1) && (xs10[(inv_65_0(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)] && (ys10[(inv_65_1(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)] && zs10[(inv_65_2(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)]))) && (xs10[(inv_65_0(x0_48_1, x1_50_1, x2_50_1, x3_50_1, x4_50_1, x5_50_1, x6_50_1, x7_50_1, x8_50_1, x9_50_1): Ref)] && (ys10[(inv_65_1(x0_48_1, x1_50_1, x2_50_1, x3_50_1, x4_50_1, x5_50_1, x6_50_1, x7_50_1, x8_50_1, x9_50_1): Ref)] && zs10[(inv_65_2(x0_48_1, x1_50_1, x2_50_1, x3_50_1, x4_50_1, x5_50_1, x6_50_1, x7_50_1, x8_50_1, x9_50_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_50 != x6_50_1 || x9_50 != x9_50_1) || x7_50 != x7_50_1) || x9_50 != x9_50_1) || x8_50 != x8_50_1) || x9_50 != x9_50_1) || x6_50 != x6_50_1) || x7_50 != x7_50_1) || x8_50 != x8_50_1) || x9_50 != x9_50_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_48: Ref, x1_50: Perm, x2_50: Ref, x3_50: Perm, x4_50: Ref, x5_50: Perm, x6_50: Ref, x7_50: Ref, x8_50: Ref, x9_50: Perm ::
        { (inv_65_0(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref), (inv_65_1(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref), (inv_65_2(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref) }
        (xs10[(inv_65_0(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)] && (ys10[(inv_65_1(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)] && zs10[(inv_65_2(x0_48, x1_50, x2_50, x3_50, x4_50, x5_50, x6_50, x7_50, x8_50, x9_50): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv94(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x0_48 && invRecv95(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x1_50) && invRecv96(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x2_50) && invRecv97(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x3_50) && invRecv98(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x4_50) && invRecv99(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x5_50) && invRecv100(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x6_50) && invRecv101(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x7_50) && invRecv102(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x8_50) && invRecv103(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50) == x9_50) && qpRange103(x6_50, x9_50, x7_50, x9_50, x8_50, x9_50, x6_50, x7_50, x8_50, x9_50)
      );
      assume (forall arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm ::
        { invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) }
        ((xs10[(inv_65_0(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && (ys10[(inv_65_1(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && zs10[(inv_65_2(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)])) && NoPerm < FullPerm) && qpRange103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) ==> ((((((((invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_0_10 && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_1_10) && invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_2_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_3_10) && invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_4_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_5_10) && invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_6_10) && invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_7_10) && invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_8_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_9_10
      );
    
    // -- Define updated permissions
      assume (forall arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm ::
        { QPMask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)] }
        ((xs10[(inv_65_0(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && (ys10[(inv_65_1(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && zs10[(inv_65_2(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)])) && NoPerm < FullPerm) && qpRange103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) ==> (NoPerm < FullPerm ==> ((((((((invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_0_10 && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_1_10) && invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_2_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_3_10) && invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_4_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_5_10) && invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_6_10) && invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_7_10) && invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_8_10) && invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10) == arg_9_10) && QPMask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)] == Mask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_10: Ref, arg_1_10: Perm, arg_2_10: Ref, arg_3_10: Perm, arg_4_10: Ref, arg_5_10: Perm, arg_6_10: Ref, arg_7_10: Ref, arg_8_10: Ref, arg_9_10: Perm ::
        { QPMask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)] }
        !(((xs10[(inv_65_0(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && (ys10[(inv_65_1(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)] && zs10[(inv_65_2(invRecv94(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv95(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv96(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv97(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv98(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv99(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv100(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv101(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv102(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10), invRecv103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)): Ref)])) && NoPerm < FullPerm) && qpRange103(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)) ==> QPMask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)] == Mask[null, wand(arg_0_10, arg_1_10, arg_2_10, arg_3_10, arg_4_10, arg_5_10, arg_6_10, arg_7_10, arg_8_10, arg_9_10)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x11: Ref, y11: Ref, z11: Ref ::
  //     { acc(x11.f, q) && (acc(y11.f, q) && acc(z11.f, q)) --*
  //     acc(p(x11, y11, z11), q) }
  //     (x11 in xs11) && ((y11 in ys11) && (z11 in zs11)) ==>
  //     inv_66_0(x11, q, y11, q, z11, q, x11, y11, z11, q) == x11 &&
  //     inv_66_1(x11, q, y11, q, z11, q, x11, y11, z11, q) == y11 &&
  //     inv_66_2(x11, q, y11, q, z11, q, x11, y11, z11, q) == z11) -- assume10QPwand.vpr@37.11--37.144
    
    // -- Check definedness of (forall x11: Ref, y11: Ref, z11: Ref :: { acc(x11.f, q) && (acc(y11.f, q) && acc(z11.f, q)) --* acc(p(x11, y11, z11), q) } (x11 in xs11) && ((y11 in ys11) && (z11 in zs11)) ==> inv_66_0(x11, q, y11, q, z11, q, x11, y11, z11, q) == x11 && inv_66_1(x11, q, y11, q, z11, q, x11, y11, z11, q) == y11 && inv_66_2(x11, q, y11, q, z11, q, x11, y11, z11, q) == z11)
      if (*) {
        assume false;
      }
    assume (forall x11_1: Ref, y11_1: Ref, z11_1: Ref ::
      { Heap[null, wand(x11_1, q_1, y11_1, q_1, z11_1, q_1, x11_1, y11_1, z11_1, q_1)] }
      xs11[x11_1] && (ys11[y11_1] && zs11[z11_1]) ==> ((inv_66_0(x11_1, q_1, y11_1, q_1, z11_1, q_1, x11_1, y11_1, z11_1, q_1): Ref) == x11_1 && (inv_66_1(x11_1, q_1, y11_1, q_1, z11_1, q_1, x11_1, y11_1, z11_1, q_1): Ref) == y11_1) && (inv_66_2(x11_1, q_1, y11_1, q_1, z11_1, q_1, x11_1, y11_1, z11_1, q_1): Ref) == z11_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs11) &&
  //     ((inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys11) &&
  //     (inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs11)) ==>
  //     inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 &&
  //     inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 &&
  //     q == x3 &&
  //     inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 &&
  //     q == x5 &&
  //     inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 &&
  //     inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 &&
  //     inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 &&
  //     q == x9) -- assume10QPwand.vpr@37.11--37.144
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs11) && ((inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys11) && (inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs11)) ==> inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x0 && q == x1 && inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x2 && q == x3 && inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x4 && q == x5 && inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x6 && inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x7 && inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) == x8 && q == x9)
      if (*) {
        assume false;
      }
    assume (forall x0_51: Ref, x1_53: Perm, x2_53: Ref, x3_53: Perm, x4_53: Ref, x5_53: Perm, x6_53: Ref, x7_53: Ref, x8_53: Ref, x9_53: Perm ::
      { (inv_66_0(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref), (inv_66_1(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref), (inv_66_2(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) }
      xs11[(inv_66_0(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref)] && (ys11[(inv_66_1(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref)] && zs11[(inv_66_2(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref)]) ==> (((((((((inv_66_0(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x0_51 && q_1 == x1_53) && (inv_66_1(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x2_53) && q_1 == x3_53) && (inv_66_2(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x4_53) && q_1 == x5_53) && (inv_66_0(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x6_53) && (inv_66_1(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x7_53) && (inv_66_2(x0_51, x1_53, x2_53, x3_53, x4_53, x5_53, x6_53, x7_53, x8_53, x9_53): Ref) == x8_53) && q_1 == x9_53
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref,
  //   x7: Ref, x8: Ref, x9: Perm ::
  //     { inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_1(x0, x1, x2,
  //     x3, x4, x5, x6, x7, x8, x9), inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8,
  //     x9) }
  //     (inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs11) &&
  //     ((inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys11) &&
  //     (inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs11)) ==>
  //     acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --*
  //     acc(p(x6, x7, x8), x9)) -- assume10QPwand.vpr@37.11--37.144
    
    // -- Check definedness of (forall x0: Ref, x1: Perm, x2: Ref, x3: Perm, x4: Ref, x5: Perm, x6: Ref, x7: Ref, x8: Ref, x9: Perm :: { inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9), inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) } (inv_66_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in xs11) && ((inv_66_1(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in ys11) && (inv_66_2(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9) in zs11)) ==> acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9))
      if (*) {
        if (xs11[(inv_66_0(x0_19, x1_21, x2_24, x3_21, x4_21, x5_20, x6_20, x7_20, x8_20, x9_20): Ref)] && (ys11[(inv_66_1(x0_19, x1_21, x2_24, x3_21, x4_21, x5_20, x6_20, x7_20, x8_20, x9_20): Ref)] && zs11[(inv_66_2(x0_19, x1_21, x2_24, x3_21, x4_21, x5_20, x6_20, x7_20, x8_20, x9_20): Ref)])) {
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := x9_20;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@37.11--37.144) [21254]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x6_20 != null;
            WandDefLHSMask := WandDefLHSMask[x6_20, f_7:=WandDefLHSMask[x6_20, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_20;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@37.11--37.144) [21255]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x7_20 != null;
            WandDefLHSMask := WandDefLHSMask[x7_20, f_7:=WandDefLHSMask[x7_20, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            perm := x9_20;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@37.11--37.144) [21256]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> x8_20 != null;
            WandDefLHSMask := WandDefLHSMask[x8_20, f_7:=WandDefLHSMask[x8_20, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs12 -- assume10QPwand.vpr@37.122--37.144
              lhs12:
              Labellhs12Heap := WandDefLHSHeap;
              Labellhs12Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := x9_20;
            assert {:msg "  Inhale might fail. Fraction x9 might be negative. (assume10QPwand.vpr@37.11--37.144) [21257]"}
              perm >= NoPerm;
            WandDefRHSMask := WandDefRHSMask[null, p_2(x6_20, x7_20, x8_20):=WandDefRHSMask[null, p_2(x6_20, x7_20, x8_20)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) is injective
      assert {:msg "  Inhale might fail. Quantified resource acc(x6.f, x9) && (acc(x7.f, x9) && acc(x8.f, x9)) --* acc(p(x6, x7, x8), x9) might not be injective. (assume10QPwand.vpr@37.11--37.144) [21258]"}
        (forall x0_53: Ref, x1_55: Perm, x2_55: Ref, x3_55: Perm, x4_55: Ref, x5_55: Perm, x6_55: Ref, x7_55: Ref, x8_55: Ref, x9_55: Perm, x0_53_1: Ref, x1_55_1: Perm, x2_55_1: Ref, x3_55_1: Perm, x4_55_1: Ref, x5_55_1: Perm, x6_55_1: Ref, x7_55_1: Ref, x8_55_1: Ref, x9_55_1: Perm ::
        { neverTriggered113(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55), neverTriggered113(x0_53_1, x1_55_1, x2_55_1, x3_55_1, x4_55_1, x5_55_1, x6_55_1, x7_55_1, x8_55_1, x9_55_1) }
        ((((((((((((x0_53 != x0_53_1 && x1_55 != x1_55_1) && x2_55 != x2_55_1) && x3_55 != x3_55_1) && x4_55 != x4_55_1) && x5_55 != x5_55_1) && x6_55 != x6_55_1) && x7_55 != x7_55_1) && x8_55 != x8_55_1) && x9_55 != x9_55_1) && (xs11[(inv_66_0(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)] && (ys11[(inv_66_1(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)] && zs11[(inv_66_2(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)]))) && (xs11[(inv_66_0(x0_53_1, x1_55_1, x2_55_1, x3_55_1, x4_55_1, x5_55_1, x6_55_1, x7_55_1, x8_55_1, x9_55_1): Ref)] && (ys11[(inv_66_1(x0_53_1, x1_55_1, x2_55_1, x3_55_1, x4_55_1, x5_55_1, x6_55_1, x7_55_1, x8_55_1, x9_55_1): Ref)] && zs11[(inv_66_2(x0_53_1, x1_55_1, x2_55_1, x3_55_1, x4_55_1, x5_55_1, x6_55_1, x7_55_1, x8_55_1, x9_55_1): Ref)]))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> ((((((((x6_55 != x6_55_1 || x9_55 != x9_55_1) || x7_55 != x7_55_1) || x9_55 != x9_55_1) || x8_55 != x8_55_1) || x9_55 != x9_55_1) || x6_55 != x6_55_1) || x7_55 != x7_55_1) || x8_55 != x8_55_1) || x9_55 != x9_55_1
      );
    
    // -- Define Inverse Function
      assume (forall x0_53: Ref, x1_55: Perm, x2_55: Ref, x3_55: Perm, x4_55: Ref, x5_55: Perm, x6_55: Ref, x7_55: Ref, x8_55: Ref, x9_55: Perm ::
        { (inv_66_0(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref), (inv_66_1(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref), (inv_66_2(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref) }
        (xs11[(inv_66_0(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)] && (ys11[(inv_66_1(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)] && zs11[(inv_66_2(x0_53, x1_55, x2_55, x3_55, x4_55, x5_55, x6_55, x7_55, x8_55, x9_55): Ref)])) && NoPerm < FullPerm ==> (((((((((invRecv104(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x0_53 && invRecv105(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x1_55) && invRecv106(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x2_55) && invRecv107(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x3_55) && invRecv108(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x4_55) && invRecv109(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x5_55) && invRecv110(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x6_55) && invRecv111(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x7_55) && invRecv112(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x8_55) && invRecv113(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55) == x9_55) && qpRange113(x6_55, x9_55, x7_55, x9_55, x8_55, x9_55, x6_55, x7_55, x8_55, x9_55)
      );
      assume (forall arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm ::
        { invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) }
        ((xs11[(inv_66_0(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && (ys11[(inv_66_1(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && zs11[(inv_66_2(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)])) && NoPerm < FullPerm) && qpRange113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) ==> ((((((((invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_0_11 && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_1_11) && invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_2_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_3_11) && invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_4_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_5_11) && invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_6_11) && invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_7_11) && invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_8_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_9_11
      );
    
    // -- Define updated permissions
      assume (forall arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm ::
        { QPMask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)] }
        ((xs11[(inv_66_0(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && (ys11[(inv_66_1(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && zs11[(inv_66_2(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)])) && NoPerm < FullPerm) && qpRange113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) ==> (NoPerm < FullPerm ==> ((((((((invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_0_11 && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_1_11) && invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_2_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_3_11) && invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_4_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_5_11) && invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_6_11) && invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_7_11) && invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_8_11) && invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11) == arg_9_11) && QPMask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)] == Mask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsWandField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall arg_0_11: Ref, arg_1_11: Perm, arg_2_11: Ref, arg_3_11: Perm, arg_4_11: Ref, arg_5_11: Perm, arg_6_11: Ref, arg_7_11: Ref, arg_8_11: Ref, arg_9_11: Perm ::
        { QPMask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)] }
        !(((xs11[(inv_66_0(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && (ys11[(inv_66_1(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)] && zs11[(inv_66_2(invRecv104(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv105(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv106(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv107(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv108(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv109(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv110(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv111(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv112(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11), invRecv113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)): Ref)])) && NoPerm < FullPerm) && qpRange113(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)) ==> QPMask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)] == Mask[null, wand(arg_0_11, arg_1_11, arg_2_11, arg_3_11, arg_4_11, arg_5_11, arg_6_11, arg_7_11, arg_8_11, arg_9_11)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a in xs1) -- assume10QPwand.vpr@43.10--43.43
    assume xs1[a_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b in ys1) -- assume10QPwand.vpr@43.10--43.43
    assume ys1[b_24];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (c in zs1) -- assume10QPwand.vpr@43.10--43.43
    assume zs1[c];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (a in xs2) -- assume10QPwand.vpr@44.10--44.43
    assume xs2[a_2];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (b in ys2) -- assume10QPwand.vpr@44.10--44.43
    assume ys2[b_24];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (c in zs2) -- assume10QPwand.vpr@44.10--44.43
    assume zs2[c];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (acc(a.f, q) && (acc(b.f, q) && acc(c.f, q)) --* acc(p(a, b, c), q)) &&
  //   (acc(a.f, q) && (acc(b.f, q) && acc(c.f, q)) --* acc(p(a, b, c), q)) -- assume10QPwand.vpr@47.3--47.46
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(a.f, q) && (acc(b.f, q) && acc(c.f, q)) --* acc(p(a, b, c), q)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21259]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> a_2 != null;
        WandDefLHSMask := WandDefLHSMask[a_2, f_7:=WandDefLHSMask[a_2, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21260]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> b_24 != null;
        WandDefLHSMask := WandDefLHSMask[b_24, f_7:=WandDefLHSMask[b_24, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21261]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> c != null;
        WandDefLHSMask := WandDefLHSMask[c, f_7:=WandDefLHSMask[c, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs13 -- assume10QPwand.vpr@47.10--47.26
          lhs13:
          Labellhs13Heap := WandDefLHSHeap;
          Labellhs13Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21262]"}
          perm >= NoPerm;
        WandDefRHSMask := WandDefRHSMask[null, p_2(a_2, b_24, c):=WandDefRHSMask[null, p_2(a_2, b_24, c)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (assume10QPwand.vpr@47.10--47.46) [21263]"}
      FullPerm <= AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1)];
    AssertMask := AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1):=AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1)] - FullPerm];
    
    // -- Check definedness of acc(a.f, q) && (acc(b.f, q) && acc(c.f, q)) --* acc(p(a, b, c), q)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21264]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> a_2 != null;
        WandDefLHSMask := WandDefLHSMask[a_2, f_7:=WandDefLHSMask[a_2, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21265]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> b_24 != null;
        WandDefLHSMask := WandDefLHSMask[b_24, f_7:=WandDefLHSMask[b_24, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21266]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> c != null;
        WandDefLHSMask := WandDefLHSMask[c, f_7:=WandDefLHSMask[c, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs14 -- assume10QPwand.vpr@47.30--47.46
          lhs14:
          Labellhs14Heap := WandDefLHSHeap;
          Labellhs14Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := q_1;
        assert {:msg "  Assert might fail. Fraction q might be negative. (assume10QPwand.vpr@47.10--47.46) [21267]"}
          perm >= NoPerm;
        WandDefRHSMask := WandDefRHSMask[null, p_2(a_2, b_24, c):=WandDefRHSMask[null, p_2(a_2, b_24, c)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (assume10QPwand.vpr@47.10--47.46) [21268]"}
      FullPerm <= AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1)];
    AssertMask := AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1):=AssertMask[null, wand(a_2, q_1, b_24, q_1, c, q_1, a_2, b_24, c, q_1)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert q == write ==> false -- assume10QPwand.vpr@50.3--50.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (q_1 == FullPerm) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (assume10QPwand.vpr@50.10--50.30) [21269]"}
        false;
    }
    assume state(Heap, Mask);
}