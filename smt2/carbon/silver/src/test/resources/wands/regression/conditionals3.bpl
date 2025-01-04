// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:55:00
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: bool, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Perm, arg8_2: bool, arg9_2: Ref, arg10_2: Perm, arg11_2: Ref, arg12_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand_11;
function  wand_11(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_11 int;
function  wand_11#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_11 PMaskType;
function  wand_11#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_11 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { WandMaskField(wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_11#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_11#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: bool, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm ::
  { wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_11(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_11(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_11(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand;
function  wand(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 4
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_8;
function  wand_8(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_8 int;
function  wand_8#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_8 PMaskType;
function  wand_8#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_8 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_8(arg1, arg2, arg3) }
  IsWandField(wand_8(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_8#ft(arg1, arg2, arg3) }
  IsWandField(wand_8#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_8(arg1, arg2, arg3) }
  !IsPredicateField(wand_8(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_8#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_8#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand_8#ft(arg1, arg2, arg3)) }
  wand_8#sm(arg1, arg2, arg3) == WandMaskField(wand_8#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_8(arg1, arg2, arg3) }
  getPredWandId(wand_8(arg1, arg2, arg3)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_8(arg1, arg2, arg3), wand_8(arg1_2, arg2_2, arg3_2) }
  wand_8(arg1, arg2, arg3) == wand_8(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_5;
function  wand_5(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_5 int;
function  wand_5#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_5 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4)) }
  wand_5#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4)) == 6
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Perm ::
  { wand_5(arg1, arg2, arg3, arg4), wand_5(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_5(arg1, arg2, arg3, arg4) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_4;
function  wand_4(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)) == 7
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Perm, arg8_2: Ref, arg9_2: Perm, arg10_2: bool, arg11_2: Ref, arg12_2: Perm, arg13_2: Ref, arg14_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && (arg12 == arg12_2 && (arg13 == arg13_2 && arg14 == arg14_2))))))))))))
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19)) == 8
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg13: Ref, arg14: Perm, arg15: bool, arg16: Ref, arg17: Perm, arg18: Ref, arg19: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: bool, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Perm, arg11_2: Ref, arg12_2: Perm, arg13_2: Ref, arg14_2: Perm, arg15_2: bool, arg16_2: Ref, arg17_2: Perm, arg18_2: Ref, arg19_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2, arg15_2, arg16_2, arg17_2, arg18_2, arg19_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2, arg15_2, arg16_2, arg17_2, arg18_2, arg19_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && (arg12 == arg12_2 && (arg13 == arg13_2 && (arg14 == arg14_2 && (arg15 == arg15_2 && (arg16 == arg16_2 && (arg17 == arg17_2 && (arg18 == arg18_2 && arg19 == arg19_2)))))))))))))))))
);
type WandType_wand_7;
function  wand_7(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_7 int;
function  wand_7#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_7 PMaskType;
function  wand_7#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_7 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_7(arg1, arg2, arg3) }
  IsWandField(wand_7(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_7#ft(arg1, arg2, arg3) }
  IsWandField(wand_7#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_7(arg1, arg2, arg3) }
  !IsPredicateField(wand_7(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_7#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_7#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_7#ft(arg1, arg2, arg3)) }
  wand_7#sm(arg1, arg2, arg3) == WandMaskField(wand_7#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_7(arg1, arg2, arg3) }
  getPredWandId(wand_7(arg1, arg2, arg3)) == 9
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_7(arg1, arg2, arg3), wand_7(arg1_2, arg2_2, arg3_2) }
  wand_7(arg1, arg2, arg3) == wand_7(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_6;
function  wand_6(arg1: bool, arg2: bool): Field WandType_wand_6 int;
function  wand_6#sm(arg1: bool, arg2: bool): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: bool, arg2: bool): Field WandType_wand_6 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_6(arg1, arg2) }
  IsWandField(wand_6(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_6#ft(arg1, arg2) }
  IsWandField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_6(arg1, arg2) }
  !IsPredicateField(wand_6(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_6#ft(arg1, arg2) }
  !IsPredicateField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_6#ft(arg1, arg2)) }
  wand_6#sm(arg1, arg2) == WandMaskField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_6(arg1, arg2) }
  getPredWandId(wand_6(arg1, arg2)) == 10
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_6(arg1, arg2), wand_6(arg1_2, arg2_2) }
  wand_6(arg1, arg2) == wand_6(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_10;
function  wand_10(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_10 int;
function  wand_10#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_10 PMaskType;
function  wand_10#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_10 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { WandMaskField(wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) }
  wand_10#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == WandMaskField(wand_10#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  getPredWandId(wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) == 11
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg6: bool, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm, arg6_2: bool, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Perm ::
  { wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10), wand_10(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) }
  wand_10(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == wand_10(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && arg10 == arg10_2))))))))
);
type WandType_wand_9;
function  wand_9(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_9 int;
function  wand_9#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_9 PMaskType;
function  wand_9#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_9 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_9(arg1, arg2, arg3) }
  IsWandField(wand_9(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_9#ft(arg1, arg2, arg3) }
  IsWandField(wand_9#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_9(arg1, arg2, arg3) }
  !IsPredicateField(wand_9(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_9#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_9#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_9#ft(arg1, arg2, arg3)) }
  wand_9#sm(arg1, arg2, arg3) == WandMaskField(wand_9#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_9(arg1, arg2, arg3) }
  getPredWandId(wand_9(arg1, arg2, arg3)) == 12
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_9(arg1, arg2, arg3), wand_9(arg1_2, arg2_2, arg3_2) }
  wand_9(arg1, arg2, arg3) == wand_9(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField bool;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField Ref;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, b_24: bool): Field PredicateType_P FrameType;
function  P#sm(x: Ref, b_24: bool): Field PredicateType_P PMaskType;
axiom (forall x: Ref, b_24: bool ::
  { PredicateMaskField(P(x, b_24)) }
  PredicateMaskField(P(x, b_24)) == P#sm(x, b_24)
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  IsPredicateField(P(x, b_24))
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  getPredWandId(P(x, b_24)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P(x, b_24), P(x2, b2) }
  P(x, b_24) == P(x2, b2) ==> x == x2 && b_24 == b2
);
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P#sm(x, b_24), P#sm(x2, b2) }
  P#sm(x, b_24) == P#sm(x2, b2) ==> x == x2 && b_24 == b2
);

axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { P#trigger(Heap, P(x, b_24)) }
  P#everUsed(P(x, b_24))
);

procedure P#definedness(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (b_24) {
      perm := 5 / 10;
      assert {:msg "  Predicate might not be well-formed. Fraction 5 / 10 might be negative. (conditionals3.vpr@8.1--8.69) [125259]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := 5 / 10;
      assert {:msg "  Predicate might not be well-formed. Fraction 5 / 10 might be negative. (conditionals3.vpr@8.1--8.69) [125260]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(x.g, write) -- conditionals3.vpr@11.3--11.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (b1 ? acc(x.f, 1 / 10) : acc(x.g, 1 / 10)) --* true {
  // } -- conditionals3.vpr@13.3--13.58
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1 ==> b1) {
        if (b_1_1) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@13.3--13.58) [125263]"}
            perm >= NoPerm;
          b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
          Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
      } else {
        if (b_1_1) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@13.3--13.58) [125264]"}
            perm >= NoPerm;
          b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
          Ops_1Mask := Ops_1Mask[x, g:=Ops_1Mask[x, g] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- conditionals3.vpr@13.11--13.58
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    Mask := Mask[null, wand(b1, x, 1 / 10, x, 1 / 10, true):=Mask[null, wand(b1, x, 1 / 10, x, 1 / 10, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_6: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(x.g, write) -- conditionals3.vpr@17.3--17.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* (b1 ==> acc(x.g, 1 / 10) && acc(x.g, 1 / 10)) {
  // } -- conditionals3.vpr@19.3--22.46
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      b_4 := b_4;
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- conditionals3.vpr@20.5--22.46
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationb1 ==> acc(x.g, 1 / 10) && acc(x.g, 1 / 10)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    if (b_4 && b_4) {
      if (b1) {
        
        // -- Transfer of acc(x.g, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_3Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@19.3--22.46) [125268]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
                Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_1#sm(true, b1, x, 1 / 10, x, 1 / 10):=Heap[null, wand_1#sm(true, b1, x, 1 / 10, x, 1 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@19.3--22.46) [125269]"}
            (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_6 := b_4 && b_5;
            b_6 := b_6 && state(ResultHeap, ResultMask);
            b_6 := b_6 && sumMask(ResultMask, Ops_3Mask, Used_3Mask);
            b_6 := (b_6 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
            b_6 := b_6 && state(ResultHeap, ResultMask);
          b_4 := b_4 && b_6;
        
        // -- Transfer of acc(x.g, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_3Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@19.3--22.46) [125270]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
                Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_1#sm(true, b1, x, 1 / 10, x, 1 / 10):=Heap[null, wand_1#sm(true, b1, x, 1 / 10, x, 1 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@19.3--22.46) [125271]"}
            (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_4 && b_5;
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
            b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
          b_4 := b_4 && b_7;
      }
    }
    Mask := Mask[null, wand_1(true, b1, x, 1 / 10, x, 1 / 10):=Mask[null, wand_1(true, b1, x, 1 / 10, x, 1 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) >= (!b1 ? write : 8 / 10) -- conditionals3.vpr@24.3--24.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) >= (!b1 ? write : 8 / 10) might not hold. (conditionals3.vpr@24.10--24.43) [125272]"}
      (if !b1 then FullPerm else 8 / 10) <= Mask[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) == (!b1 ? write : 8 / 10) -- conditionals3.vpr@26.3--26.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == (!b1 ? write : 8 / 10) might not hold. (conditionals3.vpr@26.10--26.43) [125273]"}
      Mask[x, g] == (if !b1 then FullPerm else 8 / 10);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_11: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_12: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_13: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_14: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var b_15: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(x.g, write) -- conditionals3.vpr@30.3--30.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --*
  // acc(x.f, 1 / 10) &&
  // (acc(x.g, 1 / 10) &&
  // (acc(x.f, 1 / 10) && ((b ==> acc(x.g, 1 / 10)) && acc(x.f, 1 / 10)))) {
  // } -- conditionals3.vpr@32.3--36.37
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      b_9 := b_9;
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- conditionals3.vpr@32.11--36.37
      lhs5:
      Labellhs5Mask := Ops_5Mask;
      Labellhs5Heap := Ops_5Heap;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 10) && (acc(x.g, 1 / 10) && (acc(x.f, 1 / 10) && ((b ==> acc(x.g, 1 / 10)) && acc(x.f, 1 / 10))))
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(x.f, 1 / 10)
      rcvLocal := x;
      neededTransfer := 1 / 10;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 10) might be negative. (conditionals3.vpr@32.3--36.37) [125276]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Ops_5Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@32.3--36.37) [125277]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_9 && b_10;
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
        b_11 := b_11 && sumMask(Result_2Mask, Ops_5Mask, Used_5Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
      b_9 := b_9 && b_11;
    
    // -- Transfer of acc(x.g, 1 / 10)
      rcvLocal := x;
      neededTransfer := 1 / 10;
      initNeededTransfer := Used_5Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@32.3--36.37) [125278]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Ops_5Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
            Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@32.3--36.37) [125279]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_12 := b_9 && b_10;
        b_12 := b_12 && state(Result_3Heap, Result_3Mask);
        b_12 := b_12 && sumMask(Result_3Mask, Ops_5Mask, Used_5Mask);
        b_12 := (b_12 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_3Heap, Used_5Mask);
        b_12 := b_12 && state(Result_3Heap, Result_3Mask);
      b_9 := b_9 && b_12;
    
    // -- Transfer of acc(x.f, 1 / 10)
      rcvLocal := x;
      neededTransfer := 1 / 10;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 10) might be negative. (conditionals3.vpr@32.3--36.37) [125280]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Ops_5Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@32.3--36.37) [125281]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_13 := b_9 && b_10;
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
        b_13 := b_13 && sumMask(Result_4Mask, Ops_5Mask, Used_5Mask);
        b_13 := (b_13 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_4Heap, Used_5Mask);
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
      b_9 := b_9 && b_13;
    if (b_9 && b_9) {
      if (b_24) {
        
        // -- Transfer of acc(x.g, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_5Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@32.3--36.37) [125282]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                b_10 := b_10 && Ops_5Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
                Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                b_10 := b_10 && Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@32.3--36.37) [125283]"}
            (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_9 && b_10;
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
            b_14 := b_14 && sumMask(Result_5Mask, Ops_5Mask, Used_5Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_5Heap, Used_5Mask);
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
          b_9 := b_9 && b_14;
      }
    }
    
    // -- Transfer of acc(x.f, 1 / 10)
      rcvLocal := x;
      neededTransfer := 1 / 10;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 10) might be negative. (conditionals3.vpr@32.3--36.37) [125284]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Ops_5Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Heap[null, wand_2#sm(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@32.3--36.37) [125285]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_9 && b_10;
        b_15 := b_15 && state(Result_6Heap, Result_6Mask);
        b_15 := b_15 && sumMask(Result_6Mask, Ops_5Mask, Used_5Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_6Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_6Heap, Used_5Mask);
        b_15 := b_15 && state(Result_6Heap, Result_6Mask);
      b_9 := b_9 && b_15;
    Mask := Mask[null, wand_2(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10):=Mask[null, wand_2(true, x, 1 / 10, x, 1 / 10, x, 1 / 10, b_24, x, 1 / 10, x, 1 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) >= 7 / 10 -- conditionals3.vpr@38.3--38.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) >= 7 / 10 might not hold. (conditionals3.vpr@38.10--38.27) [125286]"}
      7 / 10 <= Mask[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) >= (b ? 8 / 10 : 9 / 10) -- conditionals3.vpr@39.3--39.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) >= (b ? 8 / 10 : 9 / 10) might not hold. (conditionals3.vpr@39.10--39.39) [125287]"}
      (if b_24 then 8 / 10 else 9 / 10) <= Mask[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 7 / 10 -- conditionals3.vpr@41.3--41.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 7 / 10 might not hold. (conditionals3.vpr@41.10--41.27) [125288]"}
      Mask[x, f_7] == 7 / 10;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) == (b ? 8 / 10 : 9 / 10) -- conditionals3.vpr@42.3--42.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == (b ? 8 / 10 : 9 / 10) might not hold. (conditionals3.vpr@42.10--42.39) [125289]"}
      Mask[x, g] == (if b_24 then 8 / 10 else 9 / 10);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_17: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_16: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_18: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_19: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var b_20: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var b_21: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_22: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var b_23: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_24_1: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(x.g, write) -- conditionals3.vpr@46.3--46.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (b1 ? acc(x.f, 1 / 10) : acc(x.g, 1 / 10)) --*
  // (!b1 ?
  //   acc(x.f, 1 / 10) && acc(x.f, 1 / 10) :
  //   acc(x.g, 1 / 10) && acc(x.g, 1 / 10)) &&
  // (b2 ? acc(x.f, 2 / 10) : acc(x.g, 2 / 10)) {
  // } -- conditionals3.vpr@48.3--54.30
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      if (b_17 ==> b1) {
        if (b_17) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@48.3--54.30) [125292]"}
            perm >= NoPerm;
          b_17 := b_17 && (perm > NoPerm ==> x != null);
          Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
          b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        }
      } else {
        if (b_17) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@48.3--54.30) [125293]"}
            perm >= NoPerm;
          b_17 := b_17 && (perm > NoPerm ==> x != null);
          Ops_7Mask := Ops_7Mask[x, g:=Ops_7Mask[x, g] + perm];
          b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        }
      }
    }
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- conditionals3.vpr@49.5--54.30
      lhs7:
      Labellhs7Mask := Ops_7Mask;
      Labellhs7Heap := Ops_7Heap;
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operation(!b1 ? acc(x.f, 1 / 10) && acc(x.f, 1 / 10) : acc(x.g, 1 / 10) && acc(x.g, 1 / 10)) && (b2 ? acc(x.f, 2 / 10) : acc(x.g, 2 / 10))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_18 := b_18 && state(Used_7Heap, Used_7Mask);
    if (b_17 && b_17) {
      if (!b1) {
        
        // -- Transfer of acc(x.f, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125294]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@48.3--54.30) [125295]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_19 := b_17 && b_18;
            b_19 := b_19 && state(Result_7Heap, Result_7Mask);
            b_19 := b_19 && sumMask(Result_7Mask, Ops_7Mask, Used_7Mask);
            b_19 := (b_19 && IdenticalOnKnownLocations(Ops_7Heap, Result_7Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_7Heap, Used_7Mask);
            b_19 := b_19 && state(Result_7Heap, Result_7Mask);
          b_17 := b_17 && b_19;
        
        // -- Transfer of acc(x.f, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125296]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@48.3--54.30) [125297]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_20 := b_17 && b_18;
            b_20 := b_20 && state(Result_8Heap, Result_8Mask);
            b_20 := b_20 && sumMask(Result_8Mask, Ops_7Mask, Used_7Mask);
            b_20 := (b_20 && IdenticalOnKnownLocations(Ops_7Heap, Result_8Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_8Heap, Used_7Mask);
            b_20 := b_20 && state(Result_8Heap, Result_8Mask);
          b_17 := b_17 && b_20;
      } else {
        
        // -- Transfer of acc(x.g, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125298]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@48.3--54.30) [125299]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_21 := b_17 && b_18;
            b_21 := b_21 && state(Result_9Heap, Result_9Mask);
            b_21 := b_21 && sumMask(Result_9Mask, Ops_7Mask, Used_7Mask);
            b_21 := (b_21 && IdenticalOnKnownLocations(Ops_7Heap, Result_9Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_9Heap, Used_7Mask);
            b_21 := b_21 && state(Result_9Heap, Result_9Mask);
          b_17 := b_17 && b_21;
        
        // -- Transfer of acc(x.g, 1 / 10)
          rcvLocal := x;
          neededTransfer := 1 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125300]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@48.3--54.30) [125301]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_22 := b_17 && b_18;
            b_22 := b_22 && state(Result_10Heap, Result_10Mask);
            b_22 := b_22 && sumMask(Result_10Mask, Ops_7Mask, Used_7Mask);
            b_22 := (b_22 && IdenticalOnKnownLocations(Ops_7Heap, Result_10Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_10Heap, Used_7Mask);
            b_22 := b_22 && state(Result_10Heap, Result_10Mask);
          b_17 := b_17 && b_22;
      }
    }
    if (b_17 && b_17) {
      if (b2) {
        
        // -- Transfer of acc(x.f, 2 / 10)
          rcvLocal := x;
          neededTransfer := 2 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125302]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@48.3--54.30) [125303]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_23 := b_17 && b_18;
            b_23 := b_23 && state(Result_11Heap, Result_11Mask);
            b_23 := b_23 && sumMask(Result_11Mask, Ops_7Mask, Used_7Mask);
            b_23 := (b_23 && IdenticalOnKnownLocations(Ops_7Heap, Result_11Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_11Heap, Used_7Mask);
            b_23 := b_23 && state(Result_11Heap, Result_11Mask);
          b_17 := b_17 && b_23;
      } else {
        
        // -- Transfer of acc(x.g, 2 / 10)
          rcvLocal := x;
          neededTransfer := 2 / 10;
          initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 2 / 10) might be negative. (conditionals3.vpr@48.3--54.30) [125304]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Ops_7Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_18 := b_18 && state(Used_7Heap, Used_7Mask);
                b_18 := b_18 && Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Heap[null, wand_3#sm(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@48.3--54.30) [125305]"}
            (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_24_1 := b_17 && b_18;
            b_24_1 := b_24_1 && state(Result_12Heap, Result_12Mask);
            b_24_1 := b_24_1 && sumMask(Result_12Mask, Ops_7Mask, Used_7Mask);
            b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_12Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_12Heap, Used_7Mask);
            b_24_1 := b_24_1 && state(Result_12Heap, Result_12Mask);
          b_17 := b_17 && b_24_1;
      }
    }
    Mask := Mask[null, wand_3(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10):=Mask[null, wand_3(b1, x, 1 / 10, x, 1 / 10, !b1, x, 1 / 10, x, 1 / 10, x, 1 / 10, x, 1 / 10, b2, x, 2 / 10, x, 2 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> perm(x.f) >= 9 / 10 && perm(x.g) >= 8 / 10 -- conditionals3.vpr@56.3--56.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 9 / 10 might not hold. (conditionals3.vpr@56.11--56.65) [125306]"}
        9 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 8 / 10 might not hold. (conditionals3.vpr@56.11--56.65) [125307]"}
        8 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> perm(x.f) >= 10 / 10 && perm(x.g) >= 6 / 10 -- conditionals3.vpr@57.3--57.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 10 / 10 might not hold. (conditionals3.vpr@57.11--57.65) [125308]"}
        10 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 6 / 10 might not hold. (conditionals3.vpr@57.11--57.65) [125309]"}
        6 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> perm(x.f) >= 6 / 10 && perm(x.g) >= 10 / 10 -- conditionals3.vpr@58.3--58.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 6 / 10 might not hold. (conditionals3.vpr@58.10--58.65) [125310]"}
        6 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 10 / 10 might not hold. (conditionals3.vpr@58.10--58.65) [125311]"}
        10 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> perm(x.f) >= 8 / 10 && perm(x.g) >= 9 / 10 -- conditionals3.vpr@59.3--59.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 8 / 10 might not hold. (conditionals3.vpr@59.10--59.65) [125312]"}
        8 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 9 / 10 might not hold. (conditionals3.vpr@59.10--59.65) [125313]"}
        9 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> perm(x.f) == 9 / 10 && perm(x.g) == 8 / 10 -- conditionals3.vpr@61.3--61.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 9 / 10 might not hold. (conditionals3.vpr@61.11--61.65) [125314]"}
        Mask[x, f_7] == 9 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 8 / 10 might not hold. (conditionals3.vpr@61.11--61.65) [125315]"}
        Mask[x, g] == 8 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> perm(x.f) == 10 / 10 && perm(x.g) == 6 / 10 -- conditionals3.vpr@63.3--63.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 10 / 10 might not hold. (conditionals3.vpr@63.11--63.65) [125316]"}
        Mask[x, f_7] == 10 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 6 / 10 might not hold. (conditionals3.vpr@63.11--63.65) [125317]"}
        Mask[x, g] == 6 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> perm(x.f) == 6 / 10 && perm(x.g) == 10 / 10 -- conditionals3.vpr@65.3--65.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 6 / 10 might not hold. (conditionals3.vpr@65.10--65.65) [125318]"}
        Mask[x, f_7] == 6 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 10 / 10 might not hold. (conditionals3.vpr@65.10--65.65) [125319]"}
        Mask[x, g] == 10 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> perm(x.f) == 8 / 10 && perm(x.g) == 9 / 10 -- conditionals3.vpr@67.3--67.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 8 / 10 might not hold. (conditionals3.vpr@67.10--67.65) [125320]"}
        Mask[x, f_7] == 8 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 9 / 10 might not hold. (conditionals3.vpr@67.10--67.65) [125321]"}
        Mask[x, g] == 9 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals3.vpr@70.3--70.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals3.vpr@70.10--70.15) [125322]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, b1: bool, b2: bool, b3: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_26: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_25: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var boolCur_4: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_27: bool;
  var arg_1: Ref;
  var arg_1_1: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_28: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_29: bool;
  var rcvLocal: Ref;
  var b_30: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var b_31: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var b_32: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var b_33: bool;
  var Result_17Heap: HeapType;
  var Result_17Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) && acc(x.g, 5 / 10) -- conditionals3.vpr@74.3--74.42
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@74.10--74.42) [125323]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@74.10--74.42) [125324]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, b2), write) -- conditionals3.vpr@75.3--75.23
    perm := FullPerm;
    Mask := Mask[null, P(x, b2):=Mask[null, P(x, b2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (b1 ? acc(x.f, 1 / 10) : acc(x.g, 1 / 10)) --*
  // acc(x.f, 2 / 10) &&
  // (acc(x.g, 2 / 10) && (b3 ? acc(x.f, 3 / 10) : acc(x.g, 3 / 10))) {
  //   unfold acc(P(x, b2), write)
  // } -- conditionals3.vpr@77.3--83.12
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_25 := b_25 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_26) {
      if (b_26 ==> b1) {
        if (b_26) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@77.3--83.12) [125326]"}
            perm >= NoPerm;
          b_26 := b_26 && (perm > NoPerm ==> x != null);
          Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
          b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
        }
      } else {
        if (b_26) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@77.3--83.12) [125327]"}
            perm >= NoPerm;
          b_26 := b_26 && (perm > NoPerm ==> x != null);
          Ops_9Mask := Ops_9Mask[x, g:=Ops_9Mask[x, g] + perm];
          b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
        }
      }
    }
    b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs9 -- conditionals3.vpr@78.5--81.52
      lhs9:
      Labellhs9Mask := Ops_9Mask;
      Labellhs9Heap := Ops_9Heap;
      b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_26) {
      
      // -- Translating statement: unfold acc(P(x, b2), write) -- conditionals3.vpr@82.13--82.28
        assume P#trigger(Ops_9Heap, P(x, b2));
        assume Ops_9Heap[null, P(x, b2)] == FrameFragment((if b2 then FrameFragment(Ops_9Heap[x, f_7]) else FrameFragment(Ops_9Heap[x, g])));
        ExhaleWellDef0Mask := Ops_9Mask;
        ExhaleWellDef0Heap := Ops_9Heap;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_27 := b_27 && state(Used_9Heap, Used_9Mask);
        
        // -- Transfer of acc(P(x, b2), write)
          arg_1 := x;
          arg_1_1 := b2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, P(arg_1, arg_1_1)] + neededTransfer;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction acc(P(x, b2), write) might be negative. (conditionals3.vpr@82.13--82.28) [125329]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, P(arg_1, arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, P(arg_1, arg_1_1):=Used_9Mask[null, P(arg_1, arg_1_1)] + takeTransfer];
                b_27 := b_27 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, P(arg_1, arg_1_1):=FullPerm];
                b_27 := b_27 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, P(arg_1, arg_1_1):=Ops_9Mask[null, P(arg_1, arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1, arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, P(arg_1, arg_1_1):=Used_9Mask[null, P(arg_1, arg_1_1)] + takeTransfer];
                b_27 := b_27 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, P(arg_1, arg_1_1):=FullPerm];
                b_27 := b_27 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, P(arg_1, arg_1_1):=Mask[null, P(arg_1, arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)][o_15, f_20] || Heap[null, P#sm(x, b2)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x, b2) might fail. There might be insufficient permission to access P(x, b2) (conditionals3.vpr@82.13--82.28) [125330]"}
            b_26 && b_27 ==> neededTransfer == 0.000000000 && Used_9Mask[null, P(arg_1, arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_28 := b_26 && b_27;
            b_28 := b_28 && state(Result_13Heap, Result_13Mask);
            b_28 := b_28 && sumMask(Result_13Mask, Ops_9Mask, Used_9Mask);
            b_28 := (b_28 && IdenticalOnKnownLocations(Ops_9Heap, Result_13Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_13Heap, Used_9Mask);
            b_28 := b_28 && state(Result_13Heap, Result_13Mask);
          b_26 := b_26 && b_28;
        b_26 := b_26 && b_27;
        b_26 := b_26 && Used_9Heap == Ops_9Heap;
        if (b2) {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@82.13--82.28) [125331]"}
            perm >= NoPerm;
          b_26 := b_26 && (perm > NoPerm ==> x != null);
          Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
          b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
        } else {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@82.13--82.28) [125332]"}
            perm >= NoPerm;
          b_26 := b_26 && (perm > NoPerm ==> x != null);
          Ops_9Mask := Ops_9Mask[x, g:=Ops_9Mask[x, g] + perm];
          b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
        }
        b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
        b_26 := b_26 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, 2 / 10) && (acc(x.g, 2 / 10) && (b3 ? acc(x.f, 3 / 10) : acc(x.g, 3 / 10)))
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_29 := b_29 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(x.f, 2 / 10)
      rcvLocal := x;
      neededTransfer := 2 / 10;
      initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@77.3--83.12) [125333]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_10Heap, Used_10Mask);
            b_29 := b_29 && Ops_9Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_10Heap, Used_10Mask);
            b_29 := b_29 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@77.3--83.12) [125334]"}
        (b_26 && b_26) && b_29 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_30 := b_26 && b_29;
        b_30 := b_30 && state(Result_14Heap, Result_14Mask);
        b_30 := b_30 && sumMask(Result_14Mask, Ops_9Mask, Used_10Mask);
        b_30 := (b_30 && IdenticalOnKnownLocations(Ops_9Heap, Result_14Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_14Heap, Used_10Mask);
        b_30 := b_30 && state(Result_14Heap, Result_14Mask);
      b_26 := b_26 && b_30;
    
    // -- Transfer of acc(x.g, 2 / 10)
      rcvLocal := x;
      neededTransfer := 2 / 10;
      initNeededTransfer := Used_10Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 2 / 10) might be negative. (conditionals3.vpr@77.3--83.12) [125335]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
            b_29 := b_29 && state(Used_10Heap, Used_10Mask);
            b_29 := b_29 && Ops_9Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
            Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
            b_29 := b_29 && state(Used_10Heap, Used_10Mask);
            b_29 := b_29 && Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@77.3--83.12) [125336]"}
        (b_26 && b_26) && b_29 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_31 := b_26 && b_29;
        b_31 := b_31 && state(Result_15Heap, Result_15Mask);
        b_31 := b_31 && sumMask(Result_15Mask, Ops_9Mask, Used_10Mask);
        b_31 := (b_31 && IdenticalOnKnownLocations(Ops_9Heap, Result_15Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_15Heap, Used_10Mask);
        b_31 := b_31 && state(Result_15Heap, Result_15Mask);
      b_26 := b_26 && b_31;
    if (b_26 && b_26) {
      if (b3) {
        
        // -- Transfer of acc(x.f, 3 / 10)
          rcvLocal := x;
          neededTransfer := 3 / 10;
          initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 3 / 10) might be negative. (conditionals3.vpr@77.3--83.12) [125337]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_29 := b_29 && state(Used_10Heap, Used_10Mask);
                b_29 := b_29 && Ops_9Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_29 := b_29 && state(Used_10Heap, Used_10Mask);
                b_29 := b_29 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@77.3--83.12) [125338]"}
            (b_26 && b_26) && b_29 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_32 := b_26 && b_29;
            b_32 := b_32 && state(Result_16Heap, Result_16Mask);
            b_32 := b_32 && sumMask(Result_16Mask, Ops_9Mask, Used_10Mask);
            b_32 := (b_32 && IdenticalOnKnownLocations(Ops_9Heap, Result_16Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_16Heap, Used_10Mask);
            b_32 := b_32 && state(Result_16Heap, Result_16Mask);
          b_26 := b_26 && b_32;
      } else {
        
        // -- Transfer of acc(x.g, 3 / 10)
          rcvLocal := x;
          neededTransfer := 3 / 10;
          initNeededTransfer := Used_10Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 3 / 10) might be negative. (conditionals3.vpr@77.3--83.12) [125339]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                b_29 := b_29 && state(Used_10Heap, Used_10Mask);
                b_29 := b_29 && Ops_9Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && b_26) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                b_29 := b_29 && state(Used_10Heap, Used_10Mask);
                b_29 := b_29 && Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=Heap[null, wand_4#sm(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@77.3--83.12) [125340]"}
            (b_26 && b_26) && b_29 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_33 := b_26 && b_29;
            b_33 := b_33 && state(Result_17Heap, Result_17Mask);
            b_33 := b_33 && sumMask(Result_17Mask, Ops_9Mask, Used_10Mask);
            b_33 := (b_33 && IdenticalOnKnownLocations(Ops_9Heap, Result_17Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_17Heap, Used_10Mask);
            b_33 := b_33 && state(Result_17Heap, Result_17Mask);
          b_26 := b_26 && b_33;
      }
    }
    Mask := Mask[null, wand_4(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10):=Mask[null, wand_4(b1, x, 1 / 10, x, 1 / 10, x, 2 / 10, x, 2 / 10, b3, x, 3 / 10, x, 3 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 3 / 10 -- conditionals3.vpr@85.3--85.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@85.11--85.70) [125341]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 3 / 10 might not hold. (conditionals3.vpr@85.11--85.70) [125342]"}
        3 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && !b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= none -- conditionals3.vpr@86.3--86.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@86.11--86.70) [125343]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= none might not hold. (conditionals3.vpr@86.11--86.70) [125344]"}
        NoPerm <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && b3) ==> perm(x.f) >= 1 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@87.3--87.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 1 / 10 might not hold. (conditionals3.vpr@87.11--87.70) [125345]"}
        1 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@87.11--87.70) [125346]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && !b3) ==> perm(x.f) >= 4 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@88.3--88.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 4 / 10 might not hold. (conditionals3.vpr@88.11--88.70) [125347]"}
        4 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@88.11--88.70) [125348]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 4 / 10 -- conditionals3.vpr@90.3--90.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@90.10--90.70) [125349]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 4 / 10 might not hold. (conditionals3.vpr@90.10--90.70) [125350]"}
        4 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && !b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 1 / 10 -- conditionals3.vpr@91.3--91.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@91.10--91.70) [125351]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 1 / 10 might not hold. (conditionals3.vpr@91.10--91.70) [125352]"}
        1 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && b3) ==> perm(x.f) >= none && perm(x.g) >= 5 / 10 -- conditionals3.vpr@92.3--92.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= none might not hold. (conditionals3.vpr@92.10--92.70) [125353]"}
        NoPerm <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@92.10--92.70) [125354]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && !b3) ==> perm(x.f) >= 3 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@93.3--93.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 3 / 10 might not hold. (conditionals3.vpr@93.10--93.70) [125355]"}
        3 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@93.10--93.70) [125356]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 3 / 10 -- conditionals3.vpr@96.3--96.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@96.11--96.70) [125357]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 3 / 10 might not hold. (conditionals3.vpr@96.11--96.70) [125358]"}
        Mask[x, g] == 3 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && !b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == none -- conditionals3.vpr@98.3--98.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@98.11--98.70) [125359]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == none might not hold. (conditionals3.vpr@98.11--98.70) [125360]"}
        Mask[x, g] == NoPerm;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && b3) ==> perm(x.f) == 1 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@100.3--100.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 10 might not hold. (conditionals3.vpr@100.11--100.70) [125361]"}
        Mask[x, f_7] == 1 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@100.11--100.70) [125362]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && !b3) ==> perm(x.f) == 4 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@102.3--102.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 4 / 10 might not hold. (conditionals3.vpr@102.11--102.70) [125363]"}
        Mask[x, f_7] == 4 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@102.11--102.70) [125364]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 4 / 10 -- conditionals3.vpr@105.3--105.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@105.10--105.70) [125365]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 4 / 10 might not hold. (conditionals3.vpr@105.10--105.70) [125366]"}
        Mask[x, g] == 4 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && !b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 1 / 10 -- conditionals3.vpr@107.3--107.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@107.10--107.70) [125367]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 1 / 10 might not hold. (conditionals3.vpr@107.10--107.70) [125368]"}
        Mask[x, g] == 1 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && b3) ==> perm(x.f) == none && perm(x.g) == 5 / 10 -- conditionals3.vpr@109.3--109.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == none might not hold. (conditionals3.vpr@109.10--109.70) [125369]"}
        Mask[x, f_7] == NoPerm;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@109.10--109.70) [125370]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && !b3) ==> perm(x.f) == 3 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@111.3--111.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 3 / 10 might not hold. (conditionals3.vpr@111.10--111.70) [125371]"}
        Mask[x, f_7] == 3 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@111.10--111.70) [125372]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && !b3) ==> false -- conditionals3.vpr@114.3--114.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals3.vpr@114.10--114.37) [125373]"}
        false;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08
// ==================================================

procedure test08(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_35: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_34: bool;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var boolCur_5: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_36: bool;
  var arg_2: Ref;
  var arg_3: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_37: bool;
  var Result_18Heap: HeapType;
  var Result_18Mask: MaskType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_38: bool;
  var rcvLocal: Ref;
  var b_39: bool;
  var Result_19Heap: HeapType;
  var Result_19Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) -- conditionals3.vpr@118.3--118.24
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@118.10--118.24) [125374]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, b), write) -- conditionals3.vpr@119.3--119.22
    perm := FullPerm;
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* (b ==> acc(x.f, 8 / 10)) {
  //   unfold acc(P(x, b), write)
  // } -- conditionals3.vpr@121.3--126.6
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_34 := b_34 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_35) {
      b_35 := b_35;
    }
    b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs11 -- conditionals3.vpr@122.5--124.25
      lhs11:
      Labellhs11Mask := Ops_11Mask;
      Labellhs11Heap := Ops_11Heap;
      b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_35) {
      
      // -- Translating statement: unfold acc(P(x, b), write) -- conditionals3.vpr@125.7--125.26
        assume P#trigger(Ops_11Heap, P(x, b_24));
        assume Ops_11Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Ops_11Heap[x, f_7]) else FrameFragment(Ops_11Heap[x, g])));
        ExhaleWellDef0Mask := Ops_11Mask;
        ExhaleWellDef0Heap := Ops_11Heap;
        havoc Used_12Heap;
        Used_12Mask := ZeroMask;
        b_36 := b_36 && state(Used_12Heap, Used_12Mask);
        
        // -- Transfer of acc(P(x, b), write)
          arg_2 := x;
          arg_3 := b_24;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_12Mask[null, P(arg_2, arg_3)] + neededTransfer;
          assert {:msg "  Unfolding P(x, b) might fail. Fraction acc(P(x, b), write) might be negative. (conditionals3.vpr@125.7--125.26) [125377]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_35 && b_36) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, P(arg_2, arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[null, P(arg_2, arg_3):=Used_12Mask[null, P(arg_2, arg_3)] + takeTransfer];
                b_36 := b_36 && state(Used_12Heap, Used_12Mask);
                TempMask := ZeroMask[null, P(arg_2, arg_3):=FullPerm];
                b_36 := b_36 && IdenticalOnKnownLocations(Ops_11Heap, Used_12Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, P(arg_2, arg_3):=Ops_11Mask[null, P(arg_2, arg_3)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_35 && b_36) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_2, arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[null, P(arg_2, arg_3):=Used_12Mask[null, P(arg_2, arg_3)] + takeTransfer];
                b_36 := b_36 && state(Used_12Heap, Used_12Mask);
                TempMask := ZeroMask[null, P(arg_2, arg_3):=FullPerm];
                b_36 := b_36 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
                Mask := Mask[null, P(arg_2, arg_3):=Mask[null, P(arg_2, arg_3)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand_5#sm(true, b_24, x, 8 / 10)][o_16, f_21] || Heap[null, P#sm(x, b_24)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand_5#sm(true, b_24, x, 8 / 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x, b) might fail. There might be insufficient permission to access P(x, b) (conditionals3.vpr@125.7--125.26) [125378]"}
            b_35 && b_36 ==> neededTransfer == 0.000000000 && Used_12Mask[null, P(arg_2, arg_3)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_37 := b_35 && b_36;
            b_37 := b_37 && state(Result_18Heap, Result_18Mask);
            b_37 := b_37 && sumMask(Result_18Mask, Ops_11Mask, Used_12Mask);
            b_37 := (b_37 && IdenticalOnKnownLocations(Ops_11Heap, Result_18Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_18Heap, Used_12Mask);
            b_37 := b_37 && state(Result_18Heap, Result_18Mask);
          b_35 := b_35 && b_37;
        b_35 := b_35 && b_36;
        b_35 := b_35 && Used_12Heap == Ops_11Heap;
        if (b_24) {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@125.7--125.26) [125379]"}
            perm >= NoPerm;
          b_35 := b_35 && (perm > NoPerm ==> x != null);
          Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
          b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
        } else {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@125.7--125.26) [125380]"}
            perm >= NoPerm;
          b_35 := b_35 && (perm > NoPerm ==> x != null);
          Ops_11Mask := Ops_11Mask[x, g:=Ops_11Mask[x, g] + perm];
          b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
        }
        b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
        b_35 := b_35 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationb ==> acc(x.f, 8 / 10)
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_38 := b_38 && state(Used_13Heap, Used_13Mask);
    if (b_35 && b_35) {
      if (b_24) {
        
        // -- Transfer of acc(x.f, 8 / 10)
          rcvLocal := x;
          neededTransfer := 8 / 10;
          initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 8 / 10) might be negative. (conditionals3.vpr@121.3--126.6) [125381]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_35 && b_35) && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_38 := b_38 && state(Used_13Heap, Used_13Mask);
                b_38 := b_38 && Ops_11Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_35 && b_35) && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_38 := b_38 && state(Used_13Heap, Used_13Mask);
                b_38 := b_38 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, b_24, x, 8 / 10):=Heap[null, wand_5#sm(true, b_24, x, 8 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@121.3--126.6) [125382]"}
            (b_35 && b_35) && b_38 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_39 := b_35 && b_38;
            b_39 := b_39 && state(Result_19Heap, Result_19Mask);
            b_39 := b_39 && sumMask(Result_19Mask, Ops_11Mask, Used_13Mask);
            b_39 := (b_39 && IdenticalOnKnownLocations(Ops_11Heap, Result_19Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_19Heap, Used_13Mask);
            b_39 := b_39 && state(Result_19Heap, Result_19Mask);
          b_35 := b_35 && b_39;
      }
    }
    Mask := Mask[null, wand_5(true, b_24, x, 8 / 10):=Mask[null, wand_5(true, b_24, x, 8 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> perm(x.f) >= 2 / 10 -- conditionals3.vpr@128.3--128.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 2 / 10 might not hold. (conditionals3.vpr@128.10--128.33) [125383]"}
        2 / 10 <= Mask[x, f_7];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) >= none -- conditionals3.vpr@129.3--129.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) >= none might not hold. (conditionals3.vpr@129.10--129.27) [125384]"}
      NoPerm <= Mask[x, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> perm(x.f) == 2 / 10 -- conditionals3.vpr@131.3--131.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 2 / 10 might not hold. (conditionals3.vpr@131.10--131.33) [125385]"}
        Mask[x, f_7] == 2 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) == none -- conditionals3.vpr@132.3--132.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == none might not hold. (conditionals3.vpr@132.10--132.27) [125386]"}
      Mask[x, g] == NoPerm;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test09
// ==================================================

procedure test09(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_41: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_40: bool;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_6: bool;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_43: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_42: bool;
  var Labellhs15Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var boolCur_7: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_44: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_45: bool;
  var Result_20Heap: HeapType;
  var Result_20Mask: MaskType;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_46: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) -- conditionals3.vpr@136.3--136.24
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@136.10--136.24) [125387]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   package true --* acc(x.f, 2 / 10) {
  //   }
  // } -- conditionals3.vpr@138.3--143.6
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_40 := b_40 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_41) {
      b_41 := b_41;
    }
    b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs13 -- conditionals3.vpr@139.5--141.9
      lhs13:
      Labellhs13Mask := Ops_13Mask;
      Labellhs13Heap := Ops_13Heap;
      b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    if (b_41) {
      
      // -- Translating statement: package true --* acc(x.f, 2 / 10) {
  // } -- conditionals3.vpr@142.7--142.38
        havoc Ops_15Heap;
        Ops_15Mask := ZeroMask;
        b_43 := b_43 && state(Ops_15Heap, Ops_15Mask);
        havoc Used_15Heap;
        Used_15Mask := ZeroMask;
        b_42 := b_42 && state(Used_15Heap, Used_15Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_43) {
          b_43 := b_43;
        }
        b_43 := b_43 && state(Ops_15Heap, Ops_15Mask);
        
        // -- Translating statement: label lhs15 -- conditionals3.vpr@142.15--142.38
          lhs15:
          Labellhs15Mask := Ops_15Mask;
          Labellhs15Heap := Ops_15Heap;
          b_43 := b_43 && state(Ops_15Heap, Ops_15Mask);
        boolCur_7 := true;
        // Translating exec of non-ghost operationacc(x.f, 2 / 10)
        havoc Used_16Heap;
        Used_16Mask := ZeroMask;
        b_44 := b_44 && state(Used_16Heap, Used_16Mask);
        
        // -- Transfer of acc(x.f, 2 / 10)
          rcvLocal := x;
          neededTransfer := 2 / 10;
          initNeededTransfer := Used_16Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@142.7--142.38) [125388]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_43 && (b_43 && b_41)) && b_44) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
                b_44 := b_44 && state(Used_16Heap, Used_16Mask);
                b_44 := b_44 && Ops_15Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
                Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_43 && (b_43 && b_41)) && b_44) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
                b_44 := b_44 && state(Used_16Heap, Used_16Mask);
                b_44 := b_44 && Ops_13Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
                Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
                Ops_13Heap := Ops_13Heap[null, wand_7#sm(true, x, 2 / 10):=Ops_13Heap[null, wand_7#sm(true, x, 2 / 10)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_43 && (b_43 && b_41)) && b_44) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
                b_44 := b_44 && state(Used_16Heap, Used_16Mask);
                b_44 := b_44 && Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_7#sm(true, x, 2 / 10):=Heap[null, wand_7#sm(true, x, 2 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@142.7--142.38) [125389]"}
            (b_43 && (b_43 && b_41)) && b_44 ==> neededTransfer == 0.000000000 && Used_16Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_45 := b_43 && b_44;
            b_45 := b_45 && state(Result_20Heap, Result_20Mask);
            b_45 := b_45 && sumMask(Result_20Mask, Ops_15Mask, Used_16Mask);
            b_45 := (b_45 && IdenticalOnKnownLocations(Ops_15Heap, Result_20Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_16Heap, Result_20Heap, Used_16Mask);
            b_45 := b_45 && state(Result_20Heap, Result_20Mask);
          b_43 := b_43 && b_45;
        Ops_13Mask := Ops_13Mask[null, wand_7(true, x, 2 / 10):=Ops_13Mask[null, wand_7(true, x, 2 / 10)] + FullPerm];
        b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
        b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
        b_41 := b_41 && state(Ops_13Heap, Ops_13Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_46 := b_46 && state(Used_17Heap, Used_17Mask);
    Mask := Mask[null, wand_6(true, true):=Mask[null, wand_6(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) >= 3 / 10 -- conditionals3.vpr@145.3--145.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) >= 3 / 10 might not hold. (conditionals3.vpr@145.10--145.27) [125391]"}
      3 / 10 <= Mask[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 3 / 10 -- conditionals3.vpr@147.3--147.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 3 / 10 might not hold. (conditionals3.vpr@147.10--147.27) [125392]"}
      Mask[x, f_7] == 3 / 10;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_48: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_47: bool;
  var Labellhs17Mask: MaskType;
  var Labellhs17Heap: HeapType;
  var boolCur_8: bool;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_50: bool;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_49: bool;
  var Labellhs19Mask: MaskType;
  var Labellhs19Heap: HeapType;
  var boolCur_9: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_51: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_52: bool;
  var Result_21Heap: HeapType;
  var Result_21Mask: MaskType;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_53: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) -- conditionals3.vpr@151.3--151.24
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@151.10--151.24) [125393]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 5 / 10) --* true {
  //   package true --* acc(x.f, 2 / 10) {
  //   }
  // } -- conditionals3.vpr@153.3--158.6
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_47 := b_47 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_48) {
      perm := 5 / 10;
      assert {:msg "  Packaging wand might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@153.3--158.6) [125394]"}
        perm >= NoPerm;
      b_48 := b_48 && (perm > NoPerm ==> x != null);
      Ops_17Mask := Ops_17Mask[x, f_7:=Ops_17Mask[x, f_7] + perm];
      b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
    }
    b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs17 -- conditionals3.vpr@154.5--156.9
      lhs17:
      Labellhs17Mask := Ops_17Mask;
      Labellhs17Heap := Ops_17Heap;
      b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    if (b_48) {
      
      // -- Translating statement: package true --* acc(x.f, 2 / 10) {
  // } -- conditionals3.vpr@157.7--157.38
        havoc Ops_19Heap;
        Ops_19Mask := ZeroMask;
        b_50 := b_50 && state(Ops_19Heap, Ops_19Mask);
        havoc Used_19Heap;
        Used_19Mask := ZeroMask;
        b_49 := b_49 && state(Used_19Heap, Used_19Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_50) {
          b_50 := b_50;
        }
        b_50 := b_50 && state(Ops_19Heap, Ops_19Mask);
        
        // -- Translating statement: label lhs19 -- conditionals3.vpr@157.15--157.38
          lhs19:
          Labellhs19Mask := Ops_19Mask;
          Labellhs19Heap := Ops_19Heap;
          b_50 := b_50 && state(Ops_19Heap, Ops_19Mask);
        boolCur_9 := true;
        // Translating exec of non-ghost operationacc(x.f, 2 / 10)
        havoc Used_20Heap;
        Used_20Mask := ZeroMask;
        b_51 := b_51 && state(Used_20Heap, Used_20Mask);
        
        // -- Transfer of acc(x.f, 2 / 10)
          rcvLocal := x;
          neededTransfer := 2 / 10;
          initNeededTransfer := Used_20Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@157.7--157.38) [125395]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_50 && (b_50 && b_48)) && b_51) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_19Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
                b_51 := b_51 && state(Used_20Heap, Used_20Mask);
                b_51 := b_51 && Ops_19Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
                Ops_19Mask := Ops_19Mask[rcvLocal, f_7:=Ops_19Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_50 && (b_50 && b_48)) && b_51) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_17Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
                b_51 := b_51 && state(Used_20Heap, Used_20Mask);
                b_51 := b_51 && Ops_17Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
                Ops_17Mask := Ops_17Mask[rcvLocal, f_7:=Ops_17Mask[rcvLocal, f_7] - takeTransfer];
                Ops_17Heap := Ops_17Heap[null, wand_7#sm(true, x, 2 / 10):=Ops_17Heap[null, wand_7#sm(true, x, 2 / 10)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_50 && (b_50 && b_48)) && b_51) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
                b_51 := b_51 && state(Used_20Heap, Used_20Mask);
                b_51 := b_51 && Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_7#sm(true, x, 2 / 10):=Heap[null, wand_7#sm(true, x, 2 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@157.7--157.38) [125396]"}
            (b_50 && (b_50 && b_48)) && b_51 ==> neededTransfer == 0.000000000 && Used_20Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_52 := b_50 && b_51;
            b_52 := b_52 && state(Result_21Heap, Result_21Mask);
            b_52 := b_52 && sumMask(Result_21Mask, Ops_19Mask, Used_20Mask);
            b_52 := (b_52 && IdenticalOnKnownLocations(Ops_19Heap, Result_21Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_20Heap, Result_21Heap, Used_20Mask);
            b_52 := b_52 && state(Result_21Heap, Result_21Mask);
          b_50 := b_50 && b_52;
        Ops_17Mask := Ops_17Mask[null, wand_7(true, x, 2 / 10):=Ops_17Mask[null, wand_7(true, x, 2 / 10)] + FullPerm];
        b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
        b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
        b_48 := b_48 && state(Ops_17Heap, Ops_17Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_21Heap;
    Used_21Mask := ZeroMask;
    b_53 := b_53 && state(Used_21Heap, Used_21Mask);
    Mask := Mask[null, wand_8(x, 5 / 10, true):=Mask[null, wand_8(x, 5 / 10, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) >= 5 / 10 -- conditionals3.vpr@160.3--160.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@160.10--160.27) [125398]"}
      5 / 10 <= Mask[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 5 / 10 -- conditionals3.vpr@161.3--161.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@161.10--161.27) [125399]"}
      Mask[x, f_7] == 5 / 10;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_21Heap: HeapType;
  var Ops_21Mask: MaskType;
  var b_55: bool;
  var Used_22Heap: HeapType;
  var Used_22Mask: MaskType;
  var b_54: bool;
  var Labellhs21Mask: MaskType;
  var Labellhs21Heap: HeapType;
  var boolCur_10: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_23Heap: HeapType;
  var Used_23Mask: MaskType;
  var b_56: bool;
  var arg_4: Ref;
  var arg_5: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_57: bool;
  var Result_22Heap: HeapType;
  var Result_22Mask: MaskType;
  var Ops_23Heap: HeapType;
  var Ops_23Mask: MaskType;
  var b_59: bool;
  var Used_24Heap: HeapType;
  var Used_24Mask: MaskType;
  var b_58: bool;
  var Labellhs23Mask: MaskType;
  var Labellhs23Heap: HeapType;
  var boolCur_11: bool;
  var Used_25Heap: HeapType;
  var Used_25Mask: MaskType;
  var b_60: bool;
  var rcvLocal: Ref;
  var b_61: bool;
  var Result_23Heap: HeapType;
  var Result_23Mask: MaskType;
  var Used_26Heap: HeapType;
  var Used_26Mask: MaskType;
  var b_62: bool;
  var b_63: bool;
  var Result_24Heap: HeapType;
  var Result_24Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) -- conditionals3.vpr@165.3--165.24
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@165.10--165.24) [125400]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, b1), write) -- conditionals3.vpr@166.3--166.23
    perm := FullPerm;
    Mask := Mask[null, P(x, b1):=Mask[null, P(x, b1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* (b1 ==> acc(x.f, 8 / 10)) {
  //   unfold acc(P(x, b1), write)
  //   package true --* (b2 ==> acc(x.f, 2 / 10)) {
  //   }
  // } -- conditionals3.vpr@168.3--174.6
    havoc Ops_21Heap;
    Ops_21Mask := ZeroMask;
    b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
    havoc Used_22Heap;
    Used_22Mask := ZeroMask;
    b_54 := b_54 && state(Used_22Heap, Used_22Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_55) {
      b_55 := b_55;
    }
    b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
    
    // -- Translating statement: label lhs21 -- conditionals3.vpr@169.5--171.26
      lhs21:
      Labellhs21Mask := Ops_21Mask;
      Labellhs21Heap := Ops_21Heap;
      b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
    boolCur_10 := true;
    if (b_55) {
      
      // -- Translating statement: unfold acc(P(x, b1), write) -- conditionals3.vpr@172.7--172.27
        assume P#trigger(Ops_21Heap, P(x, b1));
        assume Ops_21Heap[null, P(x, b1)] == FrameFragment((if b1 then FrameFragment(Ops_21Heap[x, f_7]) else FrameFragment(Ops_21Heap[x, g])));
        ExhaleWellDef0Mask := Ops_21Mask;
        ExhaleWellDef0Heap := Ops_21Heap;
        havoc Used_23Heap;
        Used_23Mask := ZeroMask;
        b_56 := b_56 && state(Used_23Heap, Used_23Mask);
        
        // -- Transfer of acc(P(x, b1), write)
          arg_4 := x;
          arg_5 := b1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_23Mask[null, P(arg_4, arg_5)] + neededTransfer;
          assert {:msg "  Unfolding P(x, b1) might fail. Fraction acc(P(x, b1), write) might be negative. (conditionals3.vpr@172.7--172.27) [125403]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_55 && b_56) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_21Mask[null, P(arg_4, arg_5)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, P(arg_4, arg_5):=Used_23Mask[null, P(arg_4, arg_5)] + takeTransfer];
                b_56 := b_56 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, P(arg_4, arg_5):=FullPerm];
                b_56 := b_56 && IdenticalOnKnownLocations(Ops_21Heap, Used_23Heap, TempMask);
                Ops_21Mask := Ops_21Mask[null, P(arg_4, arg_5):=Ops_21Mask[null, P(arg_4, arg_5)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_55 && b_56) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_4, arg_5)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, P(arg_4, arg_5):=Used_23Mask[null, P(arg_4, arg_5)] + takeTransfer];
                b_56 := b_56 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, P(arg_4, arg_5):=FullPerm];
                b_56 := b_56 && IdenticalOnKnownLocations(Heap, Used_23Heap, TempMask);
                Mask := Mask[null, P(arg_4, arg_5):=Mask[null, P(arg_4, arg_5)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Heap[null, wand_5#sm(true, b1, x, 8 / 10)][o_52, f_55] || Heap[null, P#sm(x, b1)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_5#sm(true, b1, x, 8 / 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x, b1) might fail. There might be insufficient permission to access P(x, b1) (conditionals3.vpr@172.7--172.27) [125404]"}
            b_55 && b_56 ==> neededTransfer == 0.000000000 && Used_23Mask[null, P(arg_4, arg_5)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_57 := b_55 && b_56;
            b_57 := b_57 && state(Result_22Heap, Result_22Mask);
            b_57 := b_57 && sumMask(Result_22Mask, Ops_21Mask, Used_23Mask);
            b_57 := (b_57 && IdenticalOnKnownLocations(Ops_21Heap, Result_22Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_22Heap, Used_23Mask);
            b_57 := b_57 && state(Result_22Heap, Result_22Mask);
          b_55 := b_55 && b_57;
        b_55 := b_55 && b_56;
        b_55 := b_55 && Used_23Heap == Ops_21Heap;
        if (b1) {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b1) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@172.7--172.27) [125405]"}
            perm >= NoPerm;
          b_55 := b_55 && (perm > NoPerm ==> x != null);
          Ops_21Mask := Ops_21Mask[x, f_7:=Ops_21Mask[x, f_7] + perm];
          b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
        } else {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b1) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@172.7--172.27) [125406]"}
            perm >= NoPerm;
          b_55 := b_55 && (perm > NoPerm ==> x != null);
          Ops_21Mask := Ops_21Mask[x, g:=Ops_21Mask[x, g] + perm];
          b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
        }
        b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
        b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
    }
    if (b_55) {
      
      // -- Translating statement: package true --* (b2 ==> acc(x.f, 2 / 10)) {
  // } -- conditionals3.vpr@173.7--173.45
        havoc Ops_23Heap;
        Ops_23Mask := ZeroMask;
        b_59 := b_59 && state(Ops_23Heap, Ops_23Mask);
        havoc Used_24Heap;
        Used_24Mask := ZeroMask;
        b_58 := b_58 && state(Used_24Heap, Used_24Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_59) {
          b_59 := b_59;
        }
        b_59 := b_59 && state(Ops_23Heap, Ops_23Mask);
        
        // -- Translating statement: label lhs23 -- conditionals3.vpr@173.15--173.45
          lhs23:
          Labellhs23Mask := Ops_23Mask;
          Labellhs23Heap := Ops_23Heap;
          b_59 := b_59 && state(Ops_23Heap, Ops_23Mask);
        boolCur_11 := true;
        // Translating exec of non-ghost operationb2 ==> acc(x.f, 2 / 10)
        havoc Used_25Heap;
        Used_25Mask := ZeroMask;
        b_60 := b_60 && state(Used_25Heap, Used_25Mask);
        if (b_59 && (b_59 && b_55)) {
          if (b2) {
            
            // -- Transfer of acc(x.f, 2 / 10)
              rcvLocal := x;
              neededTransfer := 2 / 10;
              initNeededTransfer := Used_25Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@173.7--173.45) [125407]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_59 && (b_59 && b_55)) && b_60) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_23Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_25Mask := Used_25Mask[rcvLocal, f_7:=Used_25Mask[rcvLocal, f_7] + takeTransfer];
                    b_60 := b_60 && state(Used_25Heap, Used_25Mask);
                    b_60 := b_60 && Ops_23Heap[rcvLocal, f_7] == Used_25Heap[rcvLocal, f_7];
                    Ops_23Mask := Ops_23Mask[rcvLocal, f_7:=Ops_23Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_59 && (b_59 && b_55)) && b_60) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_21Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_25Mask := Used_25Mask[rcvLocal, f_7:=Used_25Mask[rcvLocal, f_7] + takeTransfer];
                    b_60 := b_60 && state(Used_25Heap, Used_25Mask);
                    b_60 := b_60 && Ops_21Heap[rcvLocal, f_7] == Used_25Heap[rcvLocal, f_7];
                    Ops_21Mask := Ops_21Mask[rcvLocal, f_7:=Ops_21Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_21Heap := Ops_21Heap[null, wand_5#sm(true, b2, x, 2 / 10):=Ops_21Heap[null, wand_5#sm(true, b2, x, 2 / 10)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_59 && (b_59 && b_55)) && b_60) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_25Mask := Used_25Mask[rcvLocal, f_7:=Used_25Mask[rcvLocal, f_7] + takeTransfer];
                    b_60 := b_60 && state(Used_25Heap, Used_25Mask);
                    b_60 := b_60 && Heap[rcvLocal, f_7] == Used_25Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand_5#sm(true, b2, x, 2 / 10):=Heap[null, wand_5#sm(true, b2, x, 2 / 10)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@173.7--173.45) [125408]"}
                (b_59 && (b_59 && b_55)) && b_60 ==> neededTransfer == 0.000000000 && Used_25Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_61 := b_59 && b_60;
                b_61 := b_61 && state(Result_23Heap, Result_23Mask);
                b_61 := b_61 && sumMask(Result_23Mask, Ops_23Mask, Used_25Mask);
                b_61 := (b_61 && IdenticalOnKnownLocations(Ops_23Heap, Result_23Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_25Heap, Result_23Heap, Used_25Mask);
                b_61 := b_61 && state(Result_23Heap, Result_23Mask);
              b_59 := b_59 && b_61;
          }
        }
        Ops_21Mask := Ops_21Mask[null, wand_5(true, b2, x, 2 / 10):=Ops_21Mask[null, wand_5(true, b2, x, 2 / 10)] + FullPerm];
        b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
        b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
        b_55 := b_55 && state(Ops_21Heap, Ops_21Mask);
    }
    // Translating exec of non-ghost operationb1 ==> acc(x.f, 8 / 10)
    havoc Used_26Heap;
    Used_26Mask := ZeroMask;
    b_62 := b_62 && state(Used_26Heap, Used_26Mask);
    if (b_55 && b_55) {
      if (b1) {
        
        // -- Transfer of acc(x.f, 8 / 10)
          rcvLocal := x;
          neededTransfer := 8 / 10;
          initNeededTransfer := Used_26Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 8 / 10) might be negative. (conditionals3.vpr@168.3--174.6) [125409]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_55 && b_55) && b_62) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_21Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_26Mask := Used_26Mask[rcvLocal, f_7:=Used_26Mask[rcvLocal, f_7] + takeTransfer];
                b_62 := b_62 && state(Used_26Heap, Used_26Mask);
                b_62 := b_62 && Ops_21Heap[rcvLocal, f_7] == Used_26Heap[rcvLocal, f_7];
                Ops_21Mask := Ops_21Mask[rcvLocal, f_7:=Ops_21Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_55 && b_55) && b_62) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_26Mask := Used_26Mask[rcvLocal, f_7:=Used_26Mask[rcvLocal, f_7] + takeTransfer];
                b_62 := b_62 && state(Used_26Heap, Used_26Mask);
                b_62 := b_62 && Heap[rcvLocal, f_7] == Used_26Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, b1, x, 8 / 10):=Heap[null, wand_5#sm(true, b1, x, 8 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@168.3--174.6) [125410]"}
            (b_55 && b_55) && b_62 ==> neededTransfer == 0.000000000 && Used_26Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_63 := b_55 && b_62;
            b_63 := b_63 && state(Result_24Heap, Result_24Mask);
            b_63 := b_63 && sumMask(Result_24Mask, Ops_21Mask, Used_26Mask);
            b_63 := (b_63 && IdenticalOnKnownLocations(Ops_21Heap, Result_24Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_26Heap, Result_24Heap, Used_26Mask);
            b_63 := b_63 && state(Result_24Heap, Result_24Mask);
          b_55 := b_55 && b_63;
      }
    }
    Mask := Mask[null, wand_5(true, b1, x, 8 / 10):=Mask[null, wand_5(true, b1, x, 8 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> perm(x.f) >= none -- conditionals3.vpr@176.3--176.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= none might not hold. (conditionals3.vpr@176.11--176.42) [125411]"}
        NoPerm <= Mask[x, f_7];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> perm(x.f) >= 2 / 10 -- conditionals3.vpr@177.3--177.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 2 / 10 might not hold. (conditionals3.vpr@177.11--177.42) [125412]"}
        2 / 10 <= Mask[x, f_7];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> perm(x.f) >= 3 / 10 -- conditionals3.vpr@178.3--178.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 3 / 10 might not hold. (conditionals3.vpr@178.10--178.42) [125413]"}
        3 / 10 <= Mask[x, f_7];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> perm(x.f) >= 5 / 10 -- conditionals3.vpr@179.3--179.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@179.10--179.42) [125414]"}
        5 / 10 <= Mask[x, f_7];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> perm(x.f) == none -- conditionals3.vpr@181.3--181.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == none might not hold. (conditionals3.vpr@181.11--181.42) [125415]"}
        Mask[x, f_7] == NoPerm;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> perm(x.f) == 2 / 10 -- conditionals3.vpr@183.3--183.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 2 / 10 might not hold. (conditionals3.vpr@183.11--183.42) [125416]"}
        Mask[x, f_7] == 2 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> perm(x.f) == 3 / 10 -- conditionals3.vpr@185.3--185.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 3 / 10 might not hold. (conditionals3.vpr@185.10--185.42) [125417]"}
        Mask[x, f_7] == 3 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> perm(x.f) == 5 / 10 -- conditionals3.vpr@186.3--186.42
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && !b2) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@186.10--186.42) [125418]"}
        Mask[x, f_7] == 5 / 10;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method curry_test03
// ==================================================

procedure curry_test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs25Mask: MaskType;
  var Labellhs25Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_25Heap: HeapType;
  var Ops_25Mask: MaskType;
  var b_65: bool;
  var Used_27Heap: HeapType;
  var Used_27Mask: MaskType;
  var b_64: bool;
  var Labellhs26Mask: MaskType;
  var Labellhs26Heap: HeapType;
  var boolCur_12: bool;
  var Ops_27Heap: HeapType;
  var Ops_27Mask: MaskType;
  var b_67: bool;
  var Used_28Heap: HeapType;
  var Used_28Mask: MaskType;
  var b_66: bool;
  var Labellhs28Mask: MaskType;
  var Labellhs28Heap: HeapType;
  var boolCur_13: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_29Heap: HeapType;
  var Used_29Mask: MaskType;
  var b_68: bool;
  var Labellhs31Mask: MaskType;
  var Labellhs31Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_69: bool;
  var Result_25Heap: HeapType;
  var Result_25Mask: MaskType;
  var Used_30Heap: HeapType;
  var Used_30Mask: MaskType;
  var b_70: bool;
  var ExhaleHeap: HeapType;
  var Used_31Heap: HeapType;
  var Used_31Mask: MaskType;
  var b_71: bool;
  var rcvLocal: Ref;
  var b_72: bool;
  var Result_26Heap: HeapType;
  var Result_26Mask: MaskType;
  var Used_32Heap: HeapType;
  var Used_32Mask: MaskType;
  var b_73: bool;
  var Labellhs32Mask: MaskType;
  var Labellhs32Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) -- conditionals3.vpr@192.3--192.11
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale true --* acc(x.f, write) -- conditionals3.vpr@193.3--193.20
    
    // -- Check definedness of true --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs25 -- conditionals3.vpr@193.10--193.20
          lhs25:
          Labellhs25Mask := WandDefLHSMask;
          Labellhs25Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_9(true, x, FullPerm):=Mask[null, wand_9(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   package true --* acc(x.f, write) {
  //     apply true --* acc(x.f, write)
  //   }
  // } -- conditionals3.vpr@195.3--199.4
    havoc Ops_25Heap;
    Ops_25Mask := ZeroMask;
    b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
    havoc Used_27Heap;
    Used_27Mask := ZeroMask;
    b_64 := b_64 && state(Used_27Heap, Used_27Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_65) {
      b_65 := b_65;
    }
    b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
    
    // -- Translating statement: label lhs26 -- conditionals3.vpr@195.11--195.24
      lhs26:
      Labellhs26Mask := Ops_25Mask;
      Labellhs26Heap := Ops_25Heap;
      b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
    boolCur_12 := true;
    if (b_65) {
      
      // -- Translating statement: package true --* acc(x.f, write) {
  //   apply true --* acc(x.f, write)
  // } -- conditionals3.vpr@196.5--198.6
        havoc Ops_27Heap;
        Ops_27Mask := ZeroMask;
        b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
        havoc Used_28Heap;
        Used_28Mask := ZeroMask;
        b_66 := b_66 && state(Used_28Heap, Used_28Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_67) {
          b_67 := b_67;
        }
        b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
        
        // -- Translating statement: label lhs28 -- conditionals3.vpr@196.13--196.23
          lhs28:
          Labellhs28Mask := Ops_27Mask;
          Labellhs28Heap := Ops_27Heap;
          b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
        boolCur_13 := true;
        if (b_67 && b_65) {
          
          // -- Translating statement: apply true --* acc(x.f, write) -- conditionals3.vpr@197.7--197.23
            
            // -- check if wand is held and remove an instance
              ExhaleWellDef0Mask := Ops_27Mask;
              ExhaleWellDef0Heap := Ops_27Heap;
              havoc Used_29Heap;
              Used_29Mask := ZeroMask;
              b_68 := b_68 && state(Used_29Heap, Used_29Mask);
              
              // -- Transfer of true --* acc(x.f, write)
                
                // -- checking if access predicate defined in used state
                  if (b_67 && b_68) {
                    if (b_67) {
                      
                      // -- Check definedness of true --* acc(x.f, write)
                        if (*) {
                          havoc WandDefLHSHeap;
                          WandDefLHSMask := ZeroMask;
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          
                          // -- Translating statement: label lhs31 -- conditionals3.vpr@197.13--197.23
                            lhs31:
                            Labellhs31Mask := WandDefLHSMask;
                            Labellhs31Heap := WandDefLHSHeap;
                            assume state(WandDefLHSHeap, WandDefLHSMask);
                          havoc WandDefRHSHeap;
                          WandDefRHSMask := ZeroMask;
                          perm := FullPerm;
                          assume x != null;
                          WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume false;
                        }
                    }
                  }
                neededTransfer := 1.000000000;
                initNeededTransfer := Used_29Mask[null, wand_9(true, x, FullPerm)] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction true --* acc(x.f, write) might be negative. (conditionals3.vpr@197.7--197.23) [125420]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_67 && b_68) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_27Mask[null, wand_9(true, x, FullPerm)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_29Mask := Used_29Mask[null, wand_9(true, x, FullPerm):=Used_29Mask[null, wand_9(true, x, FullPerm)] + takeTransfer];
                      b_68 := b_68 && state(Used_29Heap, Used_29Mask);
                      Ops_27Mask := Ops_27Mask[null, wand_9(true, x, FullPerm):=Ops_27Mask[null, wand_9(true, x, FullPerm)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_67 && b_68) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_25Mask[null, wand_9(true, x, FullPerm)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_29Mask := Used_29Mask[null, wand_9(true, x, FullPerm):=Used_29Mask[null, wand_9(true, x, FullPerm)] + takeTransfer];
                      b_68 := b_68 && state(Used_29Heap, Used_29Mask);
                      Ops_25Mask := Ops_25Mask[null, wand_9(true, x, FullPerm):=Ops_25Mask[null, wand_9(true, x, FullPerm)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_67 && b_68) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, wand_9(true, x, FullPerm)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_29Mask := Used_29Mask[null, wand_9(true, x, FullPerm):=Used_29Mask[null, wand_9(true, x, FullPerm)] + takeTransfer];
                      b_68 := b_68 && state(Used_29Heap, Used_29Mask);
                      Mask := Mask[null, wand_9(true, x, FullPerm):=Mask[null, wand_9(true, x, FullPerm)] - takeTransfer];
                    }
                  }
                assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals3.vpr@197.7--197.23) [125421]"}
                  b_67 && b_68 ==> neededTransfer == 0.000000000 && Used_29Mask[null, wand_9(true, x, FullPerm)] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_69 := b_67 && b_68;
                  b_69 := b_69 && state(Result_25Heap, Result_25Mask);
                  b_69 := b_69 && sumMask(Result_25Mask, Ops_27Mask, Used_29Mask);
                  b_69 := (b_69 && IdenticalOnKnownLocations(Ops_27Heap, Result_25Heap, Ops_27Mask)) && IdenticalOnKnownLocations(Used_29Heap, Result_25Heap, Used_29Mask);
                  b_69 := b_69 && state(Result_25Heap, Result_25Mask);
                b_67 := b_67 && b_69;
              b_67 := b_67 && b_68;
              b_67 := b_67 && Used_29Heap == Ops_27Heap;
            b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
            
            // -- check if LHS holds and remove permissions 
              ExhaleWellDef0Mask := Ops_27Mask;
              ExhaleWellDef0Heap := Ops_27Heap;
              havoc Used_30Heap;
              Used_30Mask := ZeroMask;
              b_70 := b_70 && state(Used_30Heap, Used_30Mask);
              b_67 := b_67 && b_70;
              b_67 := b_67 && Used_30Heap == Ops_27Heap;
            b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
            
            // -- inhale the RHS of the wand
              perm := FullPerm;
              b_67 := b_67 && x != null;
              Ops_27Mask := Ops_27Mask[x, f_7:=Ops_27Mask[x, f_7] + perm];
              b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
              b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_27Heap, ExhaleHeap, Ops_27Mask);
            Ops_27Heap := ExhaleHeap;
            b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
            b_67 := b_67 && state(Ops_27Heap, Ops_27Mask);
        }
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_31Heap;
        Used_31Mask := ZeroMask;
        b_71 := b_71 && state(Used_31Heap, Used_31Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_31Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (conditionals3.vpr@196.5--198.6) [125424]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_67 && (b_67 && b_65)) && b_71) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_27Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_31Mask := Used_31Mask[rcvLocal, f_7:=Used_31Mask[rcvLocal, f_7] + takeTransfer];
                b_71 := b_71 && state(Used_31Heap, Used_31Mask);
                b_71 := b_71 && Ops_27Heap[rcvLocal, f_7] == Used_31Heap[rcvLocal, f_7];
                Ops_27Mask := Ops_27Mask[rcvLocal, f_7:=Ops_27Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_67 && (b_67 && b_65)) && b_71) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_25Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_31Mask := Used_31Mask[rcvLocal, f_7:=Used_31Mask[rcvLocal, f_7] + takeTransfer];
                b_71 := b_71 && state(Used_31Heap, Used_31Mask);
                b_71 := b_71 && Ops_25Heap[rcvLocal, f_7] == Used_31Heap[rcvLocal, f_7];
                Ops_25Mask := Ops_25Mask[rcvLocal, f_7:=Ops_25Mask[rcvLocal, f_7] - takeTransfer];
                Ops_25Heap := Ops_25Heap[null, wand_9#sm(true, x, FullPerm):=Ops_25Heap[null, wand_9#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_67 && (b_67 && b_65)) && b_71) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_31Mask := Used_31Mask[rcvLocal, f_7:=Used_31Mask[rcvLocal, f_7] + takeTransfer];
                b_71 := b_71 && state(Used_31Heap, Used_31Mask);
                b_71 := b_71 && Heap[rcvLocal, f_7] == Used_31Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(true, x, FullPerm):=Heap[null, wand_9#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@196.5--198.6) [125425]"}
            (b_67 && (b_67 && b_65)) && b_71 ==> neededTransfer == 0.000000000 && Used_31Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_72 := b_67 && b_71;
            b_72 := b_72 && state(Result_26Heap, Result_26Mask);
            b_72 := b_72 && sumMask(Result_26Mask, Ops_27Mask, Used_31Mask);
            b_72 := (b_72 && IdenticalOnKnownLocations(Ops_27Heap, Result_26Heap, Ops_27Mask)) && IdenticalOnKnownLocations(Used_31Heap, Result_26Heap, Used_31Mask);
            b_72 := b_72 && state(Result_26Heap, Result_26Mask);
          b_67 := b_67 && b_72;
        Ops_25Mask := Ops_25Mask[null, wand_9(true, x, FullPerm):=Ops_25Mask[null, wand_9(true, x, FullPerm)] + FullPerm];
        b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
        b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
        b_65 := b_65 && state(Ops_25Heap, Ops_25Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_32Heap;
    Used_32Mask := ZeroMask;
    b_73 := b_73 && state(Used_32Heap, Used_32Mask);
    Mask := Mask[null, wand_6(true, true):=Mask[null, wand_6(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale true --* true -- conditionals3.vpr@201.3--201.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of true --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs32 -- conditionals3.vpr@201.10--201.23
          lhs32:
          Labellhs32Mask := WandDefLHSMask;
          Labellhs32Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (conditionals3.vpr@201.10--201.23) [125427]"}
      FullPerm <= Mask[null, wand_6(true, true)];
    Mask := Mask[null, wand_6(true, true):=Mask[null, wand_6(true, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- conditionals3.vpr@202.3--202.11
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (conditionals3.vpr@202.10--202.11) [125429]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals3.vpr@205.3--205.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals3.vpr@205.10--205.15) [125430]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref, b1: bool, b2: bool, b3: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_29Heap: HeapType;
  var Ops_29Mask: MaskType;
  var b_75: bool;
  var Used_33Heap: HeapType;
  var Used_33Mask: MaskType;
  var b_74: bool;
  var Labellhs33Mask: MaskType;
  var Labellhs33Heap: HeapType;
  var boolCur_14: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_34Heap: HeapType;
  var Used_34Mask: MaskType;
  var b_76: bool;
  var arg_6: Ref;
  var arg_7: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_77: bool;
  var Result_27Heap: HeapType;
  var Result_27Mask: MaskType;
  var Ops_31Heap: HeapType;
  var Ops_31Mask: MaskType;
  var b_79: bool;
  var Used_35Heap: HeapType;
  var Used_35Mask: MaskType;
  var b_78: bool;
  var Labellhs35Mask: MaskType;
  var Labellhs35Heap: HeapType;
  var boolCur_15: bool;
  var Used_36Heap: HeapType;
  var Used_36Mask: MaskType;
  var b_80: bool;
  var rcvLocal: Ref;
  var b_81: bool;
  var Result_28Heap: HeapType;
  var Result_28Mask: MaskType;
  var b_82: bool;
  var Result_29Heap: HeapType;
  var Result_29Mask: MaskType;
  var Used_37Heap: HeapType;
  var Used_37Mask: MaskType;
  var b_83: bool;
  var b_84: bool;
  var Result_30Heap: HeapType;
  var Result_30Mask: MaskType;
  var b_85: bool;
  var Result_31Heap: HeapType;
  var Result_31Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, 5 / 10) && acc(x.g, 5 / 10) -- conditionals3.vpr@210.3--210.42
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@210.10--210.42) [125431]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 5 / 10;
    assert {:msg "  Inhale might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@210.10--210.42) [125432]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, b2), write) -- conditionals3.vpr@211.3--211.23
    perm := FullPerm;
    Mask := Mask[null, P(x, b2):=Mask[null, P(x, b2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package (b1 ? acc(x.f, 1 / 10) : acc(x.g, 1 / 10)) --*
  // (b1 && b2 ? acc(x.f, 8 / 10) : acc(x.g, 3 / 10)) {
  //   unfold acc(P(x, b2), write)
  //   package (b2 ==> acc(x.g, 1 / 10)) --*
  //   (b3 ? acc(x.f, 2 / 10) : acc(x.g, 1 / 10)) {
  //   }
  // } -- conditionals3.vpr@213.3--219.6
    havoc Ops_29Heap;
    Ops_29Mask := ZeroMask;
    b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
    havoc Used_33Heap;
    Used_33Mask := ZeroMask;
    b_74 := b_74 && state(Used_33Heap, Used_33Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_75) {
      if (b_75 ==> b1) {
        if (b_75) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@213.3--219.6) [125434]"}
            perm >= NoPerm;
          b_75 := b_75 && (perm > NoPerm ==> x != null);
          Ops_29Mask := Ops_29Mask[x, f_7:=Ops_29Mask[x, f_7] + perm];
          b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        }
      } else {
        if (b_75) {
          perm := 1 / 10;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@213.3--219.6) [125435]"}
            perm >= NoPerm;
          b_75 := b_75 && (perm > NoPerm ==> x != null);
          Ops_29Mask := Ops_29Mask[x, g:=Ops_29Mask[x, g] + perm];
          b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        }
      }
    }
    b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
    
    // -- Translating statement: label lhs33 -- conditionals3.vpr@214.5--216.49
      lhs33:
      Labellhs33Mask := Ops_29Mask;
      Labellhs33Heap := Ops_29Heap;
      b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
    boolCur_14 := true;
    if (b_75) {
      
      // -- Translating statement: unfold acc(P(x, b2), write) -- conditionals3.vpr@217.7--217.27
        assume P#trigger(Ops_29Heap, P(x, b2));
        assume Ops_29Heap[null, P(x, b2)] == FrameFragment((if b2 then FrameFragment(Ops_29Heap[x, f_7]) else FrameFragment(Ops_29Heap[x, g])));
        ExhaleWellDef0Mask := Ops_29Mask;
        ExhaleWellDef0Heap := Ops_29Heap;
        havoc Used_34Heap;
        Used_34Mask := ZeroMask;
        b_76 := b_76 && state(Used_34Heap, Used_34Mask);
        
        // -- Transfer of acc(P(x, b2), write)
          arg_6 := x;
          arg_7 := b2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_34Mask[null, P(arg_6, arg_7)] + neededTransfer;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction acc(P(x, b2), write) might be negative. (conditionals3.vpr@217.7--217.27) [125437]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_75 && b_76) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_29Mask[null, P(arg_6, arg_7)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[null, P(arg_6, arg_7):=Used_34Mask[null, P(arg_6, arg_7)] + takeTransfer];
                b_76 := b_76 && state(Used_34Heap, Used_34Mask);
                TempMask := ZeroMask[null, P(arg_6, arg_7):=FullPerm];
                b_76 := b_76 && IdenticalOnKnownLocations(Ops_29Heap, Used_34Heap, TempMask);
                Ops_29Mask := Ops_29Mask[null, P(arg_6, arg_7):=Ops_29Mask[null, P(arg_6, arg_7)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_75 && b_76) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_6, arg_7)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[null, P(arg_6, arg_7):=Used_34Mask[null, P(arg_6, arg_7)] + takeTransfer];
                b_76 := b_76 && state(Used_34Heap, Used_34Mask);
                TempMask := ZeroMask[null, P(arg_6, arg_7):=FullPerm];
                b_76 := b_76 && IdenticalOnKnownLocations(Heap, Used_34Heap, TempMask);
                Mask := Mask[null, P(arg_6, arg_7):=Mask[null, P(arg_6, arg_7)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                  { newPMask[o_53, f_56] }
                  Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10)][o_53, f_56] || Heap[null, P#sm(x, b2)][o_53, f_56] ==> newPMask[o_53, f_56]
                );
                Heap := Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x, b2) might fail. There might be insufficient permission to access P(x, b2) (conditionals3.vpr@217.7--217.27) [125438]"}
            b_75 && b_76 ==> neededTransfer == 0.000000000 && Used_34Mask[null, P(arg_6, arg_7)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_77 := b_75 && b_76;
            b_77 := b_77 && state(Result_27Heap, Result_27Mask);
            b_77 := b_77 && sumMask(Result_27Mask, Ops_29Mask, Used_34Mask);
            b_77 := (b_77 && IdenticalOnKnownLocations(Ops_29Heap, Result_27Heap, Ops_29Mask)) && IdenticalOnKnownLocations(Used_34Heap, Result_27Heap, Used_34Mask);
            b_77 := b_77 && state(Result_27Heap, Result_27Mask);
          b_75 := b_75 && b_77;
        b_75 := b_75 && b_76;
        b_75 := b_75 && Used_34Heap == Ops_29Heap;
        if (b2) {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@217.7--217.27) [125439]"}
            perm >= NoPerm;
          b_75 := b_75 && (perm > NoPerm ==> x != null);
          Ops_29Mask := Ops_29Mask[x, f_7:=Ops_29Mask[x, f_7] + perm];
          b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        } else {
          perm := 5 / 10;
          assert {:msg "  Unfolding P(x, b2) might fail. Fraction 5 / 10 might be negative. (conditionals3.vpr@217.7--217.27) [125440]"}
            perm >= NoPerm;
          b_75 := b_75 && (perm > NoPerm ==> x != null);
          Ops_29Mask := Ops_29Mask[x, g:=Ops_29Mask[x, g] + perm];
          b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        }
        b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
    }
    if (b_75) {
      
      // -- Translating statement: package (b2 ==> acc(x.g, 1 / 10)) --*
  // (b3 ? acc(x.f, 2 / 10) : acc(x.g, 1 / 10)) {
  // } -- conditionals3.vpr@218.7--218.81
        havoc Ops_31Heap;
        Ops_31Mask := ZeroMask;
        b_79 := b_79 && state(Ops_31Heap, Ops_31Mask);
        havoc Used_35Heap;
        Used_35Mask := ZeroMask;
        b_78 := b_78 && state(Used_35Heap, Used_35Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_79) {
          if (b_79 ==> b2) {
            if (b_79) {
              perm := 1 / 10;
              assert {:msg "  Packaging wand might fail. Fraction 1 / 10 might be negative. (conditionals3.vpr@218.7--218.81) [125441]"}
                perm >= NoPerm;
              b_79 := b_79 && (perm > NoPerm ==> x != null);
              Ops_31Mask := Ops_31Mask[x, g:=Ops_31Mask[x, g] + perm];
              b_79 := b_79 && state(Ops_31Heap, Ops_31Mask);
            }
          }
        }
        b_79 := b_79 && state(Ops_31Heap, Ops_31Mask);
        
        // -- Translating statement: label lhs35 -- conditionals3.vpr@218.15--218.81
          lhs35:
          Labellhs35Mask := Ops_31Mask;
          Labellhs35Heap := Ops_31Heap;
          b_79 := b_79 && state(Ops_31Heap, Ops_31Mask);
        boolCur_15 := true;
        // Translating exec of non-ghost operation(b3 ? acc(x.f, 2 / 10) : acc(x.g, 1 / 10))
        havoc Used_36Heap;
        Used_36Mask := ZeroMask;
        b_80 := b_80 && state(Used_36Heap, Used_36Mask);
        if (b_79 && (b_79 && b_75)) {
          if (b3) {
            
            // -- Transfer of acc(x.f, 2 / 10)
              rcvLocal := x;
              neededTransfer := 2 / 10;
              initNeededTransfer := Used_36Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 10) might be negative. (conditionals3.vpr@218.7--218.81) [125442]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_31Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, f_7:=Used_36Mask[rcvLocal, f_7] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Ops_31Heap[rcvLocal, f_7] == Used_36Heap[rcvLocal, f_7];
                    Ops_31Mask := Ops_31Mask[rcvLocal, f_7:=Ops_31Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_29Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, f_7:=Used_36Mask[rcvLocal, f_7] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Ops_29Heap[rcvLocal, f_7] == Used_36Heap[rcvLocal, f_7];
                    Ops_29Mask := Ops_29Mask[rcvLocal, f_7:=Ops_29Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_29Heap := Ops_29Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10):=Ops_29Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, f_7:=Used_36Mask[rcvLocal, f_7] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Heap[rcvLocal, f_7] == Used_36Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10):=Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@218.7--218.81) [125443]"}
                (b_79 && (b_79 && b_75)) && b_80 ==> neededTransfer == 0.000000000 && Used_36Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_81 := b_79 && b_80;
                b_81 := b_81 && state(Result_28Heap, Result_28Mask);
                b_81 := b_81 && sumMask(Result_28Mask, Ops_31Mask, Used_36Mask);
                b_81 := (b_81 && IdenticalOnKnownLocations(Ops_31Heap, Result_28Heap, Ops_31Mask)) && IdenticalOnKnownLocations(Used_36Heap, Result_28Heap, Used_36Mask);
                b_81 := b_81 && state(Result_28Heap, Result_28Mask);
              b_79 := b_79 && b_81;
          } else {
            
            // -- Transfer of acc(x.g, 1 / 10)
              rcvLocal := x;
              neededTransfer := 1 / 10;
              initNeededTransfer := Used_36Mask[rcvLocal, g] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 1 / 10) might be negative. (conditionals3.vpr@218.7--218.81) [125444]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_31Mask[rcvLocal, g];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, g:=Used_36Mask[rcvLocal, g] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Ops_31Heap[rcvLocal, g] == Used_36Heap[rcvLocal, g];
                    Ops_31Mask := Ops_31Mask[rcvLocal, g:=Ops_31Mask[rcvLocal, g] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_29Mask[rcvLocal, g];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, g:=Used_36Mask[rcvLocal, g] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Ops_29Heap[rcvLocal, g] == Used_36Heap[rcvLocal, g];
                    Ops_29Mask := Ops_29Mask[rcvLocal, g:=Ops_29Mask[rcvLocal, g] - takeTransfer];
                    Ops_29Heap := Ops_29Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10):=Ops_29Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10)][x, g:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_79 && (b_79 && b_75)) && b_80) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, g];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_36Mask := Used_36Mask[rcvLocal, g:=Used_36Mask[rcvLocal, g] + takeTransfer];
                    b_80 := b_80 && state(Used_36Heap, Used_36Mask);
                    b_80 := b_80 && Heap[rcvLocal, g] == Used_36Heap[rcvLocal, g];
                    Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                    Heap := Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10):=Heap[null, wand_11#sm(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10)][x, g:=true]];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@218.7--218.81) [125445]"}
                (b_79 && (b_79 && b_75)) && b_80 ==> neededTransfer == 0.000000000 && Used_36Mask[rcvLocal, g] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_82 := b_79 && b_80;
                b_82 := b_82 && state(Result_29Heap, Result_29Mask);
                b_82 := b_82 && sumMask(Result_29Mask, Ops_31Mask, Used_36Mask);
                b_82 := (b_82 && IdenticalOnKnownLocations(Ops_31Heap, Result_29Heap, Ops_31Mask)) && IdenticalOnKnownLocations(Used_36Heap, Result_29Heap, Used_36Mask);
                b_82 := b_82 && state(Result_29Heap, Result_29Mask);
              b_79 := b_79 && b_82;
          }
        }
        Ops_29Mask := Ops_29Mask[null, wand_11(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10):=Ops_29Mask[null, wand_11(b2, x, 1 / 10, b3, x, 2 / 10, x, 1 / 10)] + FullPerm];
        b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
        b_75 := b_75 && state(Ops_29Heap, Ops_29Mask);
    }
    // Translating exec of non-ghost operation(b1 && b2 ? acc(x.f, 8 / 10) : acc(x.g, 3 / 10))
    havoc Used_37Heap;
    Used_37Mask := ZeroMask;
    b_83 := b_83 && state(Used_37Heap, Used_37Mask);
    if (b_75 && b_75) {
      if (b1 && b2) {
        
        // -- Transfer of acc(x.f, 8 / 10)
          rcvLocal := x;
          neededTransfer := 8 / 10;
          initNeededTransfer := Used_37Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 8 / 10) might be negative. (conditionals3.vpr@213.3--219.6) [125446]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_75 && b_75) && b_83) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_29Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_37Mask := Used_37Mask[rcvLocal, f_7:=Used_37Mask[rcvLocal, f_7] + takeTransfer];
                b_83 := b_83 && state(Used_37Heap, Used_37Mask);
                b_83 := b_83 && Ops_29Heap[rcvLocal, f_7] == Used_37Heap[rcvLocal, f_7];
                Ops_29Mask := Ops_29Mask[rcvLocal, f_7:=Ops_29Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_75 && b_75) && b_83) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_37Mask := Used_37Mask[rcvLocal, f_7:=Used_37Mask[rcvLocal, f_7] + takeTransfer];
                b_83 := b_83 && state(Used_37Heap, Used_37Mask);
                b_83 := b_83 && Heap[rcvLocal, f_7] == Used_37Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10):=Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals3.vpr@213.3--219.6) [125447]"}
            (b_75 && b_75) && b_83 ==> neededTransfer == 0.000000000 && Used_37Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_84 := b_75 && b_83;
            b_84 := b_84 && state(Result_30Heap, Result_30Mask);
            b_84 := b_84 && sumMask(Result_30Mask, Ops_29Mask, Used_37Mask);
            b_84 := (b_84 && IdenticalOnKnownLocations(Ops_29Heap, Result_30Heap, Ops_29Mask)) && IdenticalOnKnownLocations(Used_37Heap, Result_30Heap, Used_37Mask);
            b_84 := b_84 && state(Result_30Heap, Result_30Mask);
          b_75 := b_75 && b_84;
      } else {
        
        // -- Transfer of acc(x.g, 3 / 10)
          rcvLocal := x;
          neededTransfer := 3 / 10;
          initNeededTransfer := Used_37Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, 3 / 10) might be negative. (conditionals3.vpr@213.3--219.6) [125448]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_75 && b_75) && b_83) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_29Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_37Mask := Used_37Mask[rcvLocal, g:=Used_37Mask[rcvLocal, g] + takeTransfer];
                b_83 := b_83 && state(Used_37Heap, Used_37Mask);
                b_83 := b_83 && Ops_29Heap[rcvLocal, g] == Used_37Heap[rcvLocal, g];
                Ops_29Mask := Ops_29Mask[rcvLocal, g:=Ops_29Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_75 && b_75) && b_83) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_37Mask := Used_37Mask[rcvLocal, g:=Used_37Mask[rcvLocal, g] + takeTransfer];
                b_83 := b_83 && state(Used_37Heap, Used_37Mask);
                b_83 := b_83 && Heap[rcvLocal, g] == Used_37Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10):=Heap[null, wand_10#sm(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals3.vpr@213.3--219.6) [125449]"}
            (b_75 && b_75) && b_83 ==> neededTransfer == 0.000000000 && Used_37Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_85 := b_75 && b_83;
            b_85 := b_85 && state(Result_31Heap, Result_31Mask);
            b_85 := b_85 && sumMask(Result_31Mask, Ops_29Mask, Used_37Mask);
            b_85 := (b_85 && IdenticalOnKnownLocations(Ops_29Heap, Result_31Heap, Ops_29Mask)) && IdenticalOnKnownLocations(Used_37Heap, Result_31Heap, Used_37Mask);
            b_85 := b_85 && state(Result_31Heap, Result_31Mask);
          b_75 := b_75 && b_85;
      }
    }
    Mask := Mask[null, wand_10(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10):=Mask[null, wand_10(b1, x, 1 / 10, x, 1 / 10, b1 && b2, x, 8 / 10, x, 3 / 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && b3) ==> perm(x.f) >= 1 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@221.3--221.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 1 / 10 might not hold. (conditionals3.vpr@221.11--221.70) [125450]"}
        1 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@221.11--221.70) [125451]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && !b3) ==> perm(x.f) >= 3 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@222.3--222.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 3 / 10 might not hold. (conditionals3.vpr@222.11--222.70) [125452]"}
        3 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@222.11--222.70) [125453]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && b3) ==> perm(x.f) >= 4 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@223.3--223.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 4 / 10 might not hold. (conditionals3.vpr@223.11--223.70) [125454]"}
        4 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@223.11--223.70) [125455]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && !b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@224.3--224.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@224.11--224.70) [125456]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@224.11--224.70) [125457]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 3 / 10 -- conditionals3.vpr@226.3--226.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@226.10--226.70) [125458]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 3 / 10 might not hold. (conditionals3.vpr@226.10--226.70) [125459]"}
        3 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && !b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 3 / 10 -- conditionals3.vpr@227.3--227.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@227.10--227.70) [125460]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 3 / 10 might not hold. (conditionals3.vpr@227.10--227.70) [125461]"}
        3 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && b3) ==> perm(x.f) >= 3 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@228.3--228.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 3 / 10 might not hold. (conditionals3.vpr@228.10--228.70) [125462]"}
        3 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@228.10--228.70) [125463]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && !b3) ==> perm(x.f) >= 5 / 10 && perm(x.g) >= 5 / 10 -- conditionals3.vpr@229.3--229.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) >= 5 / 10 might not hold. (conditionals3.vpr@229.10--229.70) [125464]"}
        5 / 10 <= Mask[x, f_7];
      assert {:msg "  Assert might fail. Assertion perm(x.g) >= 5 / 10 might not hold. (conditionals3.vpr@229.10--229.70) [125465]"}
        5 / 10 <= Mask[x, g];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, b2)) >= none -- conditionals3.vpr@231.3--231.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, b2)) >= none might not hold. (conditionals3.vpr@231.10--231.32) [125466]"}
      NoPerm <= Mask[null, P(x, b2)];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && b3) ==> perm(x.f) == 1 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@234.3--234.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 10 might not hold. (conditionals3.vpr@234.11--234.70) [125467]"}
        Mask[x, f_7] == 1 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@234.11--234.70) [125468]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (b2 && !b3) ==> perm(x.f) == 3 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@236.3--236.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 3 / 10 might not hold. (conditionals3.vpr@236.11--236.70) [125469]"}
        Mask[x, f_7] == 3 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@236.11--236.70) [125470]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && b3) ==> perm(x.f) == 4 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@238.3--238.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 4 / 10 might not hold. (conditionals3.vpr@238.11--238.70) [125471]"}
        Mask[x, f_7] == 4 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@238.11--238.70) [125472]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && (!b2 && !b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@239.3--239.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@239.11--239.70) [125473]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@239.11--239.70) [125474]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 3 / 10 -- conditionals3.vpr@242.3--242.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@242.10--242.70) [125475]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 3 / 10 might not hold. (conditionals3.vpr@242.10--242.70) [125476]"}
        Mask[x, g] == 3 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (b2 && !b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 3 / 10 -- conditionals3.vpr@244.3--244.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@244.10--244.70) [125477]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 3 / 10 might not hold. (conditionals3.vpr@244.10--244.70) [125478]"}
        Mask[x, g] == 3 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && b3) ==> perm(x.f) == 3 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@246.3--246.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 3 / 10 might not hold. (conditionals3.vpr@246.10--246.70) [125479]"}
        Mask[x, f_7] == 3 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@246.10--246.70) [125480]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && (!b2 && !b3) ==> perm(x.f) == 5 / 10 && perm(x.g) == 5 / 10 -- conditionals3.vpr@247.3--247.70
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (!b1 && (!b2 && !b3)) {
      assert {:msg "  Assert might fail. Assertion perm(x.f) == 5 / 10 might not hold. (conditionals3.vpr@247.10--247.70) [125481]"}
        Mask[x, f_7] == 5 / 10;
      assert {:msg "  Assert might fail. Assertion perm(x.g) == 5 / 10 might not hold. (conditionals3.vpr@247.10--247.70) [125482]"}
        Mask[x, g] == 5 / 10;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, b2)) == none -- conditionals3.vpr@250.3--250.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, b2)) == none might not hold. (conditionals3.vpr@250.10--250.32) [125483]"}
      Mask[null, P(x, b2)] == NoPerm;
    assume state(Heap, Mask);
}