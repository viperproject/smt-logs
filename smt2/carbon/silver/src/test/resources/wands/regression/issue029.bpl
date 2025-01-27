// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:49:24
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue029.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue029-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_121: Ref, f_136: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_121, f_136] }
  Heap[o_121, $allocated] ==> Heap[Heap[o_121, f_136], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_163: Ref, f_206: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_163, f_206] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_163, f_206) ==> Heap[o_163, f_206] == ExhaleHeap[o_163, f_206]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_60), ExhaleHeap[null, PredicateMaskField(pm_f_60)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsPredicateField(pm_f_60) ==> Heap[null, PredicateMaskField(pm_f_60)] == ExhaleHeap[null, PredicateMaskField(pm_f_60)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_60) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsPredicateField(pm_f_60) ==> (forall <A, B> o2_61: Ref, f_206: (Field A B) ::
    { ExhaleHeap[o2_61, f_206] }
    Heap[null, PredicateMaskField(pm_f_60)][o2_61, f_206] ==> Heap[o2_61, f_206] == ExhaleHeap[o2_61, f_206]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_60), ExhaleHeap[null, WandMaskField(pm_f_60)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsWandField(pm_f_60) ==> Heap[null, WandMaskField(pm_f_60)] == ExhaleHeap[null, WandMaskField(pm_f_60)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_60) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsWandField(pm_f_60) ==> (forall <A, B> o2_61: Ref, f_206: (Field A B) ::
    { ExhaleHeap[o2_61, f_206] }
    Heap[null, WandMaskField(pm_f_60)][o2_61, f_206] ==> Heap[o2_61, f_206] == ExhaleHeap[o2_61, f_206]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_163: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_163, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_163, $allocated] ==> ExhaleHeap[o_163, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_121: Ref, f_171: (Field A B), v: B ::
  { Heap[o_121, f_171:=v] }
  succHeap(Heap, Heap[o_121, f_171:=v])
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

type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 4
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: int, arg1_2: Ref, arg2_2: int, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: int, arg7_2: Ref, arg8_2: Ref, arg9_2: Ref, arg10_2: int, arg11_2: Ref, arg12_2: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand;
function  wand(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 5
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool, arg1_2: bool, arg2_2: bool, arg3_2: bool, arg4_2: bool ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)) == 6
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Ref, arg7_2: Ref, arg8_2: Ref, arg9_2: Ref, arg10_2: int, arg11_2: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && arg11 == arg11_2)))))))))
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: bool): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: bool): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: bool): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  IsWandField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3#ft(arg1, arg2) }
  IsWandField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  !IsPredicateField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3#ft(arg1, arg2) }
  !IsPredicateField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_3#ft(arg1, arg2)) }
  wand_3#sm(arg1, arg2) == WandMaskField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  getPredWandId(wand_3(arg1, arg2)) == 7
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_3(arg1, arg2), wand_3(arg1_2, arg2_2) }
  wand_3(arg1, arg2) == wand_3(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17)) == 8
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: Ref, arg8: Ref, arg9: Ref, arg10: int, arg11: Ref, arg12: Ref, arg13: Ref, arg14: Ref, arg15: Ref, arg16: Ref, arg17: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Ref, arg7_2: Ref, arg8_2: Ref, arg9_2: Ref, arg10_2: int, arg11_2: Ref, arg12_2: Ref, arg13_2: Ref, arg14_2: Ref, arg15_2: Ref, arg16_2: Ref, arg17_2: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2, arg15_2, arg16_2, arg17_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2, arg14_2, arg15_2, arg16_2, arg17_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && (arg12 == arg12_2 && (arg13 == arg13_2 && (arg14 == arg14_2 && (arg15 == arg15_2 && (arg16 == arg16_2 && arg17 == arg17_2)))))))))))))))
);

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
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(): Field PredicateType_P FrameType;
function  P#sm(): Field PredicateType_P PMaskType;
axiom PredicateMaskField(P()) == P#sm();
axiom IsPredicateField(P());
axiom getPredWandId(P()) == 0;
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { P#trigger(Heap, P()) }
  P#everUsed(P())
);

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(b_24: bool): Field PredicateType_Q FrameType;
function  Q#sm(b_24: bool): Field PredicateType_Q PMaskType;
axiom (forall b_24: bool ::
  { PredicateMaskField(Q(b_24)) }
  PredicateMaskField(Q(b_24)) == Q#sm(b_24)
);
axiom (forall b_24: bool ::
  { Q(b_24) }
  IsPredicateField(Q(b_24))
);
axiom (forall b_24: bool ::
  { Q(b_24) }
  getPredWandId(Q(b_24)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall b_24: bool, b2: bool ::
  { Q(b_24), Q(b2) }
  Q(b_24) == Q(b2) ==> b_24 == b2
);
axiom (forall b_24: bool, b2: bool ::
  { Q#sm(b_24), Q#sm(b2) }
  Q#sm(b_24) == Q#sm(b2) ==> b_24 == b2
);

axiom (forall Heap: HeapType, b_24: bool ::
  { Q#trigger(Heap, Q(b_24)) }
  Q#everUsed(Q(b_24))
);

procedure Q#definedness(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    if (b_24) {
      perm := FullPerm;
      Mask := Mask[null, P():=Mask[null, P()] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate LL
// ==================================================

type PredicateType_LL;
function  LL(x: Ref): Field PredicateType_LL FrameType;
function  LL#sm(x: Ref): Field PredicateType_LL PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(LL(x)) }
  PredicateMaskField(LL(x)) == LL#sm(x)
);
axiom (forall x: Ref ::
  { LL(x) }
  IsPredicateField(LL(x))
);
axiom (forall x: Ref ::
  { LL(x) }
  getPredWandId(LL(x)) == 2
);
function  LL#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LL#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { LL(x), LL(x2) }
  LL(x) == LL(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { LL#sm(x), LL#sm(x2) }
  LL#sm(x) == LL#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { LL#trigger(Heap, LL(x)) }
  LL#everUsed(LL(x))
);

procedure LL#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of LL
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (issue029.vpr@14.1--18.2) [218162]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(LL(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (issue029.vpr@14.1--18.2) [218163]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, LL(Heap[x, next]):=Mask[null, LL(Heap[x, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate LLC
// ==================================================

type PredicateType_LLC;
function  LLC(x: Ref, i: int): Field PredicateType_LLC FrameType;
function  LLC#sm(x: Ref, i: int): Field PredicateType_LLC PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(LLC(x, i)) }
  PredicateMaskField(LLC(x, i)) == LLC#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { LLC(x, i) }
  IsPredicateField(LLC(x, i))
);
axiom (forall x: Ref, i: int ::
  { LLC(x, i) }
  getPredWandId(LLC(x, i)) == 3
);
function  LLC#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LLC#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LLC(x, i), LLC(x2, i2) }
  LLC(x, i) == LLC(x2, i2) ==> x == x2 && i == i2
);
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LLC#sm(x, i), LLC#sm(x2, i2) }
  LLC#sm(x, i) == LLC#sm(x2, i2) ==> x == x2 && i == i2
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { LLC#trigger(Heap, LLC(x, i)) }
  LLC#everUsed(LLC(x, i))
);

procedure LLC#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of LLC
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.val == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.val (issue029.vpr@95.1--99.2) [218164]"}
        HasDirectPerm(Mask, x, val);
    assume Heap[x, val] == i;
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (issue029.vpr@95.1--99.2) [218165]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(LLC(x.next, i + 1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (issue029.vpr@95.1--99.2) [218166]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, LLC(Heap[x, next], i + 1):=Mask[null, LLC(Heap[x, next], i + 1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(Q(b), write) && (unfolding acc(Q(b), write) in true) --* true {
  // } -- issue029.vpr@11.3--11.57
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Q(b_24):=Ops_1Mask[null, Q(b_24)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          
          // -- Check definedness of (unfolding acc(Q(b), write) in true)
            UnfoldingHeap := Ops_1Heap;
            UnfoldingMask := Ops_1Mask;
            b_1_1 := b_1_1 && Q#trigger(UnfoldingHeap, Q(b_24));
            b_1_1 := b_1_1 && UnfoldingHeap[null, Q(b_24)] == FrameFragment((if b_24 then UnfoldingHeap[null, P()] else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(b) (issue029.vpr@11.3--11.57) [218167]"}
                perm <= UnfoldingMask[null, Q(b_24)];
            }
            UnfoldingMask := UnfoldingMask[null, Q(b_24):=UnfoldingMask[null, Q(b_24)] - perm];
            if (b_24) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, P():=UnfoldingMask[null, P()] + perm];
              
              // -- Extra unfolding of predicate
                b_1_1 := b_1_1 && InsidePredicate(Q(b_24), UnfoldingHeap[null, Q(b_24)], P(), UnfoldingHeap[null, P()]);
              b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              if (b_24) {
                havoc newPMask;
                b_1_1 := b_1_1 && (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                  { newPMask[o_6, f_12] }
                  Ops_1Heap[null, Q#sm(b_24)][o_6, f_12] || Ops_1Heap[null, P#sm()][o_6, f_12] ==> newPMask[o_6, f_12]
                );
                Ops_1Heap := Ops_1Heap[null, Q#sm(b_24):=newPMask];
              }
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Ops_1Heap;
          UnfoldingMask := Ops_1Mask;
          b_1_1 := b_1_1 && Q#trigger(UnfoldingHeap, Q(b_24));
          b_1_1 := b_1_1 && UnfoldingHeap[null, Q(b_24)] == FrameFragment((if b_24 then UnfoldingHeap[null, P()] else EmptyFrame));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Q(b_24):=UnfoldingMask[null, Q(b_24)] - perm];
          if (b_24) {
            perm := FullPerm;
            b_1_1 := b_1_1;
            UnfoldingMask := UnfoldingMask[null, P():=UnfoldingMask[null, P()] + perm];
            
            // -- Extra unfolding of predicate
              b_1_1 := b_1_1 && InsidePredicate(Q(b_24), UnfoldingHeap[null, Q(b_24)], P(), UnfoldingHeap[null, P()]);
            b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
          }
          b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
        b_1_1 := b_1_1;
        
        // -- Free assumptions (inhale module)
          if (b_24) {
            havoc newPMask;
            b_1_1 := b_1_1 && (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Ops_1Heap[null, Q#sm(b_24)][o_40, f_52] || Ops_1Heap[null, P#sm()][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Ops_1Heap := Ops_1Heap[null, Q#sm(b_24):=newPMask];
          }
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- issue029.vpr@11.11--11.57
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    Mask := Mask[null, wand(b_24, b_24, true, true):=Mask[null, wand(b_24, b_24, true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var arg: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_6: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(x), write) -- issue029.vpr@28.3--28.20
    perm := FullPerm;
    Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(LL(x), write) &&
  // ((unfolding acc(LL(x), write) in x.val == 10) &&
  // (unfolding acc(LL(x), write) in
  //   x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  // acc(LL(x), write) {
  // } -- issue029.vpr@29.3--29.20
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4;
        Ops_3Mask := Ops_3Mask[null, LL(x):=Ops_3Mask[null, LL(x)] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_4) {
        if (b_4) {
          if (b_4) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
              UnfoldingHeap := Ops_3Heap;
              UnfoldingMask := Ops_3Mask;
              b_4 := b_4 && LL#trigger(UnfoldingHeap, LL(x));
              b_4 := b_4 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@29.3--29.20) [218170]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_4 := b_4 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_4 := b_4 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_4 := b_4 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (issue029.vpr@29.3--29.20) [218171]"}
                HasDirectPerm(UnfoldingMask, x, val);
              
              // -- Free assumptions (exp module)
                Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, val:=true]];
                Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_3Heap[x, next] != null) {
                  havoc newPMask;
                  b_4 := b_4 && (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                    { newPMask[o_3, f_24] }
                    Ops_3Heap[null, LL#sm(x)][o_3, f_24] || Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_3, f_24] ==> newPMask[o_3, f_24]
                  );
                  Ops_3Heap := Ops_3Heap[null, LL#sm(x):=newPMask];
                }
                b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_3Heap;
            UnfoldingMask := Ops_3Mask;
            b_4 := b_4 && LL#trigger(UnfoldingHeap, LL(x));
            b_4 := b_4 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_4 := b_4 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_4 := b_4 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_4 := b_4;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_4 := b_4 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
          b_4 := b_4 && Ops_3Heap[x, val] == 10;
          
          // -- Free assumptions (inhale module)
            Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, val:=true]];
            Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_3Heap[x, next] != null) {
              havoc newPMask;
              b_4 := b_4 && (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                { newPMask[o_1, f_10] }
                Ops_3Heap[null, LL#sm(x)][o_1, f_10] || Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_1, f_10] ==> newPMask[o_1, f_10]
              );
              Ops_3Heap := Ops_3Heap[null, LL#sm(x):=newPMask];
            }
            b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
        }
        if (b_4) {
          if (b_4) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
              UnfoldingHeap := Ops_3Heap;
              UnfoldingMask := Ops_3Mask;
              b_4 := b_4 && LL#trigger(UnfoldingHeap, LL(x));
              b_4 := b_4 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@29.3--29.20) [218172]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_4 := b_4 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_4 := b_4 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_4 := b_4 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@29.3--29.20) [218173]"}
                HasDirectPerm(UnfoldingMask, x, next);
              if (UnfoldingHeap[x, next] != null) {
                Unfolding1Heap := UnfoldingHeap;
                Unfolding1Mask := UnfoldingMask;
                b_4 := b_4 && LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
                b_4 := b_4 && Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
                ExhaleWellDef0Heap := Unfolding1Heap;
                ExhaleWellDef0Mask := Unfolding1Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@29.3--29.20) [218174]"}
                    perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
                }
                Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
                perm := FullPerm;
                b_4 := b_4 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
                b_4 := b_4 && state(Unfolding1Heap, Unfolding1Mask);
                perm := FullPerm;
                b_4 := b_4 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
                b_4 := b_4 && state(Unfolding1Heap, Unfolding1Mask);
                if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
                  perm := FullPerm;
                  Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
                  
                  // -- Extra unfolding of predicate
                    b_4 := b_4 && InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
                  b_4 := b_4 && state(Unfolding1Heap, Unfolding1Mask);
                }
                b_4 := b_4 && state(Unfolding1Heap, Unfolding1Mask);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@29.3--29.20) [218175]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@29.3--29.20) [218176]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (issue029.vpr@29.3--29.20) [218177]"}
                  HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
                
                // -- Free assumptions (exp module)
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
                  if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                    havoc newPMask;
                    b_4 := b_4 && (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                      { newPMask[o_15, f_51] }
                      UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_15, f_51] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_15, f_51] ==> newPMask[o_15, f_51]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
                  }
                  b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
              }
              
              // -- Free assumptions (exp module)
                Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, val:=true]];
                Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_3Heap[x, next] != null) {
                  havoc newPMask;
                  b_4 := b_4 && (forall <A, B> o_4: Ref, f_54: (Field A B) ::
                    { newPMask[o_4, f_54] }
                    Ops_3Heap[null, LL#sm(x)][o_4, f_54] || Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_4, f_54] ==> newPMask[o_4, f_54]
                  );
                  Ops_3Heap := Ops_3Heap[null, LL#sm(x):=newPMask];
                }
                b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
                Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][Ops_3Heap[x, next], val:=true]];
                Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][Ops_3Heap[x, next], next:=true]];
                if (Ops_3Heap[Ops_3Heap[x, next], next] != null) {
                  havoc newPMask;
                  b_4 := b_4 && (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                    { newPMask[o_12, f_25] }
                    Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_12, f_25] || Ops_3Heap[null, LL#sm(Ops_3Heap[Ops_3Heap[x, next], next])][o_12, f_25] ==> newPMask[o_12, f_25]
                  );
                  Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=newPMask];
                }
                b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_3Heap;
            UnfoldingMask := Ops_3Mask;
            b_4 := b_4 && LL#trigger(UnfoldingHeap, LL(x));
            b_4 := b_4 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_4 := b_4 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_4 := b_4 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_4 := b_4;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_4 := b_4 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_4 := b_4 && state(UnfoldingHeap, UnfoldingMask);
          b_4 := b_4 && (Ops_3Heap[x, next] != null ==> Ops_3Heap[Ops_3Heap[x, next], val] == 20);
          
          // -- Free assumptions (inhale module)
            Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, val:=true]];
            Ops_3Heap := Ops_3Heap[null, LL#sm(x):=Ops_3Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_3Heap[x, next] != null) {
              havoc newPMask;
              b_4 := b_4 && (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                { newPMask[o_41, f_21] }
                Ops_3Heap[null, LL#sm(x)][o_41, f_21] || Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_41, f_21] ==> newPMask[o_41, f_21]
              );
              Ops_3Heap := Ops_3Heap[null, LL#sm(x):=newPMask];
            }
            b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
            Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][Ops_3Heap[x, next], val:=true]];
            Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][Ops_3Heap[x, next], next:=true]];
            if (Ops_3Heap[Ops_3Heap[x, next], next] != null) {
              havoc newPMask;
              b_4 := b_4 && (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                { newPMask[o_23, f_13] }
                Ops_3Heap[null, LL#sm(Ops_3Heap[x, next])][o_23, f_13] || Ops_3Heap[null, LL#sm(Ops_3Heap[Ops_3Heap[x, next], next])][o_23, f_13] ==> newPMask[o_23, f_13]
              );
              Ops_3Heap := Ops_3Heap[null, LL#sm(Ops_3Heap[x, next]):=newPMask];
            }
            b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
        }
      }
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- issue029.vpr@29.11--29.20
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(LL(x), write)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(LL(x), write)
      arg := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, LL(arg)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(LL(x), write) might be negative. (issue029.vpr@29.3--29.20) [218178]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, LL(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, LL(arg):=Used_3Mask[null, LL(arg)] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, LL(arg):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, LL(arg):=Ops_3Mask[null, LL(arg)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, LL(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, LL(arg):=Used_3Mask[null, LL(arg)] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, LL(arg):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, LL(arg):=Mask[null, LL(arg)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
              { newPMask[o_13, f_65] }
              Heap[null, wand_1#sm(x, x, x, 10, x, x, null, x, x, 20, x)][o_13, f_65] || Heap[null, LL#sm(x)][o_13, f_65] ==> newPMask[o_13, f_65]
            );
            Heap := Heap[null, wand_1#sm(x, x, x, 10, x, x, null, x, x, 20, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@29.3--29.20) [218179]"}
        (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[null, LL(arg)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_4 && b_5;
        b_6 := b_6 && state(ResultHeap, ResultMask);
        b_6 := b_6 && sumMask(ResultMask, Ops_3Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
        b_6 := b_6 && state(ResultHeap, ResultMask);
      b_4 := b_4 && b_6;
    Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) -- issue029.vpr@32.3--32.18
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@32.3--32.18) [218180]"}
        FullPerm <= Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)];
      Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@32.3--32.18) [218182]"}
          perm <= Mask[null, LL(x)];
      }
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@32.3--32.18) [218185]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Applying wand might fail. Assertion x.val == 10 might not hold. (issue029.vpr@32.3--32.18) [218189]"}
        Heap[x, val] == 10;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@32.3--32.18) [218192]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      if (Heap[x, next] != null) {
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
          assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@32.3--32.18) [218198]"}
              perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
          }
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Applying wand might fail. Assertion x.next.val == 20 might not hold. (issue029.vpr@32.3--32.18) [218202]"}
          Heap[Heap[x, next], val] == 20;
      }
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
            { newPMask[o_51, f_66] }
            Heap[null, LL#sm(x)][o_51, f_66] || Heap[null, LL#sm(Heap[x, next])][o_51, f_66] ==> newPMask[o_51, f_66]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
            { newPMask[o_52, f_14] }
            Heap[null, LL#sm(x)][o_52, f_14] || Heap[null, LL#sm(Heap[x, next])][o_52, f_14] ==> newPMask[o_52, f_14]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
            { newPMask[o_20, f_50] }
            Heap[null, LL#sm(Heap[x, next])][o_20, f_50] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_20, f_50] ==> newPMask[o_20, f_50]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var arg_1_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_10: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := new(val, next) -- issue029.vpr@37.3--37.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, val:=Mask[x, val] + FullPerm];
    Mask := Mask[x, next:=Mask[x, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(val, next) -- issue029.vpr@38.3--38.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, val:=Mask[y, val] + FullPerm];
    Mask := Mask[y, next:=Mask[y, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := y -- issue029.vpr@39.3--39.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (issue029.vpr@39.3--39.14) [218204]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.val := 10 -- issue029.vpr@40.3--40.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.val (issue029.vpr@40.3--40.14) [218205]"}
      FullPerm == Mask[x, val];
    Heap := Heap[x, val:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next.val := 20 -- issue029.vpr@41.3--41.19
    
    // -- Check definedness of x.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (issue029.vpr@41.3--41.19) [218206]"}
        HasDirectPerm(Mask, x, next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next.val (issue029.vpr@41.3--41.19) [218207]"}
      FullPerm == Mask[Heap[x, next], val];
    Heap := Heap[Heap[x, next], val:=20];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next.next := null -- issue029.vpr@42.3--42.22
    
    // -- Check definedness of x.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (issue029.vpr@42.3--42.22) [218208]"}
        HasDirectPerm(Mask, x, next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next.next (issue029.vpr@42.3--42.22) [218209]"}
      FullPerm == Mask[Heap[x, next], next];
    Heap := Heap[Heap[x, next], next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(LL(x.next), write) -- issue029.vpr@43.3--43.18
    
    // -- Check definedness of acc(LL(x.next), write)
      assert {:msg "  Folding LL(x.next) might fail. There might be insufficient permission to access x.next (issue029.vpr@43.3--43.18) [218210]"}
        HasDirectPerm(Mask, x, next);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding LL(x.next) might fail. There might be insufficient permission to access x.next.val (issue029.vpr@43.3--43.18) [218213]"}
        perm <= Mask[Heap[x, next], val];
    }
    Mask := Mask[Heap[x, next], val:=Mask[Heap[x, next], val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding LL(x.next) might fail. There might be insufficient permission to access x.next.next (issue029.vpr@43.3--43.18) [218215]"}
        perm <= Mask[Heap[x, next], next];
    }
    Mask := Mask[Heap[x, next], next:=Mask[Heap[x, next], next] - perm];
    if (Heap[Heap[x, next], next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding LL(x.next) might fail. There might be insufficient permission to access LL(x.next.next) (issue029.vpr@43.3--43.18) [218217]"}
          perm <= Mask[null, LL(Heap[Heap[x, next], next])];
      }
      Mask := Mask[null, LL(Heap[Heap[x, next], next]):=Mask[null, LL(Heap[Heap[x, next], next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(LL(Heap[x, next]), Heap[null, LL(Heap[x, next])], LL(Heap[Heap[x, next], next]), Heap[null, LL(Heap[Heap[x, next], next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, LL(Heap[x, next]):=Mask[null, LL(Heap[x, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume LL#trigger(Heap, LL(Heap[x, next]));
    assume Heap[null, LL(Heap[x, next])] == CombineFrames(FrameFragment(Heap[Heap[x, next], val]), CombineFrames(FrameFragment(Heap[Heap[x, next], next]), FrameFragment((if Heap[Heap[x, next], next] != null then Heap[null, LL(Heap[Heap[x, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, LL(Heap[x, next]))) {
      Heap := Heap[null, LL#sm(Heap[x, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, LL(Heap[x, next]):=freshVersion];
    }
    Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
    Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
    if (Heap[Heap[x, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
        { newPMask[o_58, f_30] }
        Heap[null, LL#sm(Heap[x, next])][o_58, f_30] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_58, f_30] ==> newPMask[o_58, f_30]
      );
      Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(LL(x), write) -- issue029.vpr@44.3--44.13
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding LL(x) might fail. There might be insufficient permission to access x.val (issue029.vpr@44.3--44.13) [218221]"}
        perm <= Mask[x, val];
    }
    Mask := Mask[x, val:=Mask[x, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding LL(x) might fail. There might be insufficient permission to access x.next (issue029.vpr@44.3--44.13) [218223]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    if (Heap[x, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding LL(x) might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@44.3--44.13) [218225]"}
          perm <= Mask[null, LL(Heap[x, next])];
      }
      Mask := Mask[null, LL(Heap[x, next]):=Mask[null, LL(Heap[x, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(LL(x), Heap[null, LL(x)], LL(Heap[x, next]), Heap[null, LL(Heap[x, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume LL#trigger(Heap, LL(x));
    assume Heap[null, LL(x)] == CombineFrames(FrameFragment(Heap[x, val]), CombineFrames(FrameFragment(Heap[x, next]), FrameFragment((if Heap[x, next] != null then Heap[null, LL(Heap[x, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, LL(x))) {
      Heap := Heap[null, LL#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, LL(x):=freshVersion];
    }
    Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
    Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
    if (Heap[x, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
        { newPMask[o_10, f_67] }
        Heap[null, LL#sm(x)][o_10, f_67] || Heap[null, LL#sm(Heap[x, next])][o_10, f_67] ==> newPMask[o_10, f_67]
      );
      Heap := Heap[null, LL#sm(x):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(LL(x), write) &&
  // ((unfolding acc(LL(x), write) in x.val == 10) &&
  // (unfolding acc(LL(x), write) in
  //   x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  // acc(LL(x), write) {
  // } -- issue029.vpr@46.3--46.20
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      if (b_8) {
        perm := FullPerm;
        b_8 := b_8;
        Ops_5Mask := Ops_5Mask[null, LL(x):=Ops_5Mask[null, LL(x)] + perm];
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_8) {
        if (b_8) {
          if (b_8) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
              UnfoldingHeap := Ops_5Heap;
              UnfoldingMask := Ops_5Mask;
              b_8 := b_8 && LL#trigger(UnfoldingHeap, LL(x));
              b_8 := b_8 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@46.3--46.20) [218227]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_8 := b_8 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_8 := b_8 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_8 := b_8 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (issue029.vpr@46.3--46.20) [218228]"}
                HasDirectPerm(UnfoldingMask, x, val);
              
              // -- Free assumptions (exp module)
                Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, val:=true]];
                Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_5Heap[x, next] != null) {
                  havoc newPMask;
                  b_8 := b_8 && (forall <A, B> o_21: Ref, f_58: (Field A B) ::
                    { newPMask[o_21, f_58] }
                    Ops_5Heap[null, LL#sm(x)][o_21, f_58] || Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_21, f_58] ==> newPMask[o_21, f_58]
                  );
                  Ops_5Heap := Ops_5Heap[null, LL#sm(x):=newPMask];
                }
                b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_5Heap;
            UnfoldingMask := Ops_5Mask;
            b_8 := b_8 && LL#trigger(UnfoldingHeap, LL(x));
            b_8 := b_8 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_8 := b_8 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_8 := b_8 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_8 := b_8;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_8 := b_8 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
          b_8 := b_8 && Ops_5Heap[x, val] == 10;
          
          // -- Free assumptions (inhale module)
            Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, val:=true]];
            Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_5Heap[x, next] != null) {
              havoc newPMask;
              b_8 := b_8 && (forall <A, B> o_43: Ref, f_33: (Field A B) ::
                { newPMask[o_43, f_33] }
                Ops_5Heap[null, LL#sm(x)][o_43, f_33] || Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_43, f_33] ==> newPMask[o_43, f_33]
              );
              Ops_5Heap := Ops_5Heap[null, LL#sm(x):=newPMask];
            }
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        }
        if (b_8) {
          if (b_8) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
              UnfoldingHeap := Ops_5Heap;
              UnfoldingMask := Ops_5Mask;
              b_8 := b_8 && LL#trigger(UnfoldingHeap, LL(x));
              b_8 := b_8 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@46.3--46.20) [218229]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_8 := b_8 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_8 := b_8 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_8 := b_8 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@46.3--46.20) [218230]"}
                HasDirectPerm(UnfoldingMask, x, next);
              if (UnfoldingHeap[x, next] != null) {
                Unfolding1Heap := UnfoldingHeap;
                Unfolding1Mask := UnfoldingMask;
                b_8 := b_8 && LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
                b_8 := b_8 && Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
                ExhaleWellDef0Heap := Unfolding1Heap;
                ExhaleWellDef0Mask := Unfolding1Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@46.3--46.20) [218231]"}
                    perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
                }
                Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
                perm := FullPerm;
                b_8 := b_8 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
                b_8 := b_8 && state(Unfolding1Heap, Unfolding1Mask);
                perm := FullPerm;
                b_8 := b_8 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
                b_8 := b_8 && state(Unfolding1Heap, Unfolding1Mask);
                if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
                  perm := FullPerm;
                  Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
                  
                  // -- Extra unfolding of predicate
                    b_8 := b_8 && InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
                  b_8 := b_8 && state(Unfolding1Heap, Unfolding1Mask);
                }
                b_8 := b_8 && state(Unfolding1Heap, Unfolding1Mask);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@46.3--46.20) [218232]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@46.3--46.20) [218233]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (issue029.vpr@46.3--46.20) [218234]"}
                  HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
                
                // -- Free assumptions (exp module)
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
                  if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                    havoc newPMask;
                    b_8 := b_8 && (forall <A, B> o_50: Ref, f_75: (Field A B) ::
                      { newPMask[o_50, f_75] }
                      UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_50, f_75] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_50, f_75] ==> newPMask[o_50, f_75]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
                  }
                  b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
              }
              
              // -- Free assumptions (exp module)
                Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, val:=true]];
                Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_5Heap[x, next] != null) {
                  havoc newPMask;
                  b_8 := b_8 && (forall <A, B> o_22: Ref, f_59: (Field A B) ::
                    { newPMask[o_22, f_59] }
                    Ops_5Heap[null, LL#sm(x)][o_22, f_59] || Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_22, f_59] ==> newPMask[o_22, f_59]
                  );
                  Ops_5Heap := Ops_5Heap[null, LL#sm(x):=newPMask];
                }
                b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
                Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][Ops_5Heap[x, next], val:=true]];
                Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][Ops_5Heap[x, next], next:=true]];
                if (Ops_5Heap[Ops_5Heap[x, next], next] != null) {
                  havoc newPMask;
                  b_8 := b_8 && (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                    { newPMask[o_67, f_69] }
                    Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_67, f_69] || Ops_5Heap[null, LL#sm(Ops_5Heap[Ops_5Heap[x, next], next])][o_67, f_69] ==> newPMask[o_67, f_69]
                  );
                  Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=newPMask];
                }
                b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_5Heap;
            UnfoldingMask := Ops_5Mask;
            b_8 := b_8 && LL#trigger(UnfoldingHeap, LL(x));
            b_8 := b_8 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_8 := b_8 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_8 := b_8 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_8 := b_8;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_8 := b_8 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_8 := b_8 && state(UnfoldingHeap, UnfoldingMask);
          b_8 := b_8 && (Ops_5Heap[x, next] != null ==> Ops_5Heap[Ops_5Heap[x, next], val] == 20);
          
          // -- Free assumptions (inhale module)
            Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, val:=true]];
            Ops_5Heap := Ops_5Heap[null, LL#sm(x):=Ops_5Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_5Heap[x, next] != null) {
              havoc newPMask;
              b_8 := b_8 && (forall <A, B> o_68: Ref, f_76: (Field A B) ::
                { newPMask[o_68, f_76] }
                Ops_5Heap[null, LL#sm(x)][o_68, f_76] || Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_68, f_76] ==> newPMask[o_68, f_76]
              );
              Ops_5Heap := Ops_5Heap[null, LL#sm(x):=newPMask];
            }
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
            Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][Ops_5Heap[x, next], val:=true]];
            Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][Ops_5Heap[x, next], next:=true]];
            if (Ops_5Heap[Ops_5Heap[x, next], next] != null) {
              havoc newPMask;
              b_8 := b_8 && (forall <A, B> o_69: Ref, f_77: (Field A B) ::
                { newPMask[o_69, f_77] }
                Ops_5Heap[null, LL#sm(Ops_5Heap[x, next])][o_69, f_77] || Ops_5Heap[null, LL#sm(Ops_5Heap[Ops_5Heap[x, next], next])][o_69, f_77] ==> newPMask[o_69, f_77]
              );
              Ops_5Heap := Ops_5Heap[null, LL#sm(Ops_5Heap[x, next]):=newPMask];
            }
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        }
      }
    }
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs6 -- issue029.vpr@46.11--46.20
      lhs6:
      Labellhs6Heap := Ops_5Heap;
      Labellhs6Mask := Ops_5Mask;
      b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(LL(x), write)
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_9 := b_9 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(LL(x), write)
      arg_1_13 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[null, LL(arg_1_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(LL(x), write) might be negative. (issue029.vpr@46.3--46.20) [218235]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, LL(arg_1_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, LL(arg_1_13):=Used_5Mask[null, LL(arg_1_13)] + takeTransfer];
            b_9 := b_9 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, LL(arg_1_13):=FullPerm];
            b_9 := b_9 && IdenticalOnKnownLocations(Ops_5Heap, Used_5Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, LL(arg_1_13):=Ops_5Mask[null, LL(arg_1_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, LL(arg_1_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, LL(arg_1_13):=Used_5Mask[null, LL(arg_1_13)] + takeTransfer];
            b_9 := b_9 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, LL(arg_1_13):=FullPerm];
            b_9 := b_9 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
            Mask := Mask[null, LL(arg_1_13):=Mask[null, LL(arg_1_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
              { newPMask[o_70, f_78] }
              Heap[null, wand_1#sm(x, x, x, 10, x, x, null, x, x, 20, x)][o_70, f_78] || Heap[null, LL#sm(x)][o_70, f_78] ==> newPMask[o_70, f_78]
            );
            Heap := Heap[null, wand_1#sm(x, x, x, 10, x, x, null, x, x, 20, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@46.3--46.20) [218236]"}
        (b_8 && b_8) && b_9 ==> neededTransfer == 0.000000000 && Used_5Mask[null, LL(arg_1_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_10 := b_8 && b_9;
        b_10 := b_10 && state(Result_1Heap, Result_1Mask);
        b_10 := b_10 && sumMask(Result_1Mask, Ops_5Mask, Used_5Mask);
        b_10 := (b_10 && IdenticalOnKnownLocations(Ops_5Heap, Result_1Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_1Heap, Used_5Mask);
        b_10 := b_10 && state(Result_1Heap, Result_1Mask);
      b_8 := b_8 && b_10;
    Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) -- issue029.vpr@47.3--47.18
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@47.3--47.18) [218237]"}
        FullPerm <= Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)];
      Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@47.3--47.18) [218239]"}
          perm <= Mask[null, LL(x)];
      }
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@47.3--47.18) [218242]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Applying wand might fail. Assertion x.val == 10 might not hold. (issue029.vpr@47.3--47.18) [218246]"}
        Heap[x, val] == 10;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@47.3--47.18) [218249]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      if (Heap[x, next] != null) {
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
          assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@47.3--47.18) [218255]"}
              perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
          }
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Applying wand might fail. Assertion x.next.val == 20 might not hold. (issue029.vpr@47.3--47.18) [218259]"}
          Heap[Heap[x, next], val] == 20;
      }
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
            { newPMask[o_71, f_35] }
            Heap[null, LL#sm(x)][o_71, f_35] || Heap[null, LL#sm(Heap[x, next])][o_71, f_35] ==> newPMask[o_71, f_35]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
            { newPMask[o_72, f_79] }
            Heap[null, LL#sm(x)][o_72, f_79] || Heap[null, LL#sm(Heap[x, next])][o_72, f_79] ==> newPMask[o_72, f_79]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
            { newPMask[o_30, f_80] }
            Heap[null, LL#sm(Heap[x, next])][o_30, f_80] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_30, f_80] ==> newPMask[o_30, f_80]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) -- issue029.vpr@51.3--51.12
    perm := FullPerm;
    Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@51.10--51.12) [218262]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (issue029.vpr@51.10--51.12) [218263]"}
        HasDirectPerm(UnfoldingMask, x, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
            { newPMask[o_79, f_36] }
            Heap[null, LL#sm(x)][o_79, f_36] || Heap[null, LL#sm(Heap[x, next])][o_79, f_36] ==> newPMask[o_79, f_36]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, val] == 10;
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@51.10--51.12) [218264]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@51.10--51.12) [218265]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (UnfoldingHeap[x, next] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@51.10--51.12) [218266]"}
            perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@51.10--51.12) [218267]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@51.10--51.12) [218268]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next.val (issue029.vpr@51.10--51.12) [218269]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
          UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
              { newPMask[o_80, f_88] }
              UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_80, f_88] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_80, f_88] ==> newPMask[o_80, f_88]
            );
            UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
            { newPMask[o_31, f_89] }
            Heap[null, LL#sm(x)][o_31, f_89] || Heap[null, LL#sm(Heap[x, next])][o_31, f_89] ==> newPMask[o_31, f_89]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
            { newPMask[o_81, f_90] }
            Heap[null, LL#sm(Heap[x, next])][o_81, f_90] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_81, f_90] ==> newPMask[o_81, f_90]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, next] != null ==> Heap[Heap[x, next], val] == 20;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) -- issue029.vpr@52.3--52.19
    
    // -- Check definedness of acc(LL(x), write) && ((unfolding acc(LL(x), write) in x.val == 10) && (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))) --* acc(LL(x), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, LL(x):=WandDefLHSMask[null, LL(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@52.10--52.19) [218270]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (issue029.vpr@52.10--52.19) [218271]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, next:=true]];
            if (WandDefLHSHeap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                { newPMask[o_82, f_91] }
                WandDefLHSHeap[null, LL#sm(x)][o_82, f_91] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_82, f_91] ==> newPMask[o_82, f_91]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume WandDefLHSHeap[x, val] == 10;
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@52.10--52.19) [218272]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@52.10--52.19) [218273]"}
            HasDirectPerm(UnfoldingMask, x, next);
          if (UnfoldingHeap[x, next] != null) {
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
            assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@52.10--52.19) [218274]"}
                perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
            }
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@52.10--52.19) [218275]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@52.10--52.19) [218276]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next.val (issue029.vpr@52.10--52.19) [218277]"}
              HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
              if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                  { newPMask[o_62, f_47] }
                  UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_62, f_47] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_62, f_47] ==> newPMask[o_62, f_47]
                );
                UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
          
          // -- Free assumptions (exp module)
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, next:=true]];
            if (WandDefLHSHeap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
                { newPMask[o_83, f_72] }
                WandDefLHSHeap[null, LL#sm(x)][o_83, f_72] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_83, f_72] ==> newPMask[o_83, f_72]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][WandDefLHSHeap[x, next], val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][WandDefLHSHeap[x, next], next:=true]];
            if (WandDefLHSHeap[WandDefLHSHeap[x, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
                { newPMask[o_84, f_92] }
                WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_84, f_92] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[WandDefLHSHeap[x, next], next])][o_84, f_92] ==> newPMask[o_84, f_92]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume WandDefLHSHeap[x, next] != null ==> WandDefLHSHeap[WandDefLHSHeap[x, next], val] == 20;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- issue029.vpr@52.10--52.19
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, LL(x):=WandDefRHSMask[null, LL(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) -- issue029.vpr@53.3--53.18
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@53.3--53.18) [218278]"}
        FullPerm <= Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)];
      Mask := Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x):=Mask[null, wand_1(x, x, x, 10, x, x, null, x, x, 20, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@53.3--53.18) [218280]"}
          perm <= Mask[null, LL(x)];
      }
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@53.3--53.18) [218283]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Applying wand might fail. Assertion x.val == 10 might not hold. (issue029.vpr@53.3--53.18) [218287]"}
        Heap[x, val] == 10;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@53.3--53.18) [218290]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      if (Heap[x, next] != null) {
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
          assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@53.3--53.18) [218296]"}
              perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
          }
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Applying wand might fail. Assertion x.next.val == 20 might not hold. (issue029.vpr@53.3--53.18) [218300]"}
          Heap[Heap[x, next], val] == 20;
      }
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
            { newPMask[o_63, f_48] }
            Heap[null, LL#sm(x)][o_63, f_48] || Heap[null, LL#sm(Heap[x, next])][o_63, f_48] ==> newPMask[o_63, f_48]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
            { newPMask[o_28, f_93] }
            Heap[null, LL#sm(x)][o_28, f_93] || Heap[null, LL#sm(Heap[x, next])][o_28, f_93] ==> newPMask[o_28, f_93]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
            { newPMask[o_85, f_41] }
            Heap[null, LL#sm(Heap[x, next])][o_85, f_41] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_85, f_41] ==> newPMask[o_85, f_41]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 2 * x.val)) -- issue029.vpr@56.3--56.95
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 2 * x.val))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(x) (issue029.vpr@56.10--56.95) [218302]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@56.10--56.95) [218303]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (Heap[x, next] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@56.10--56.95) [218304]"}
            perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@56.10--56.95) [218305]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@56.10--56.95) [218306]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next.val (issue029.vpr@56.10--56.95) [218307]"}
          HasDirectPerm(Unfolding1Mask, Heap[x, next], val);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.val (issue029.vpr@56.10--56.95) [218308]"}
          HasDirectPerm(Unfolding1Mask, x, val);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
          Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
          if (Heap[Heap[x, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
              { newPMask[o_86, f_94] }
              Heap[null, LL#sm(Heap[x, next])][o_86, f_94] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_86, f_94] ==> newPMask[o_86, f_94]
            );
            Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
          }
          assume state(Heap, Mask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
            { newPMask[o_29, f_95] }
            Heap[null, LL#sm(x)][o_29, f_95] || Heap[null, LL#sm(Heap[x, next])][o_29, f_95] ==> newPMask[o_29, f_95]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
            { newPMask[o_87, f_96] }
            Heap[null, LL#sm(Heap[x, next])][o_87, f_96] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_87, f_96] ==> newPMask[o_87, f_96]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[x, next] != null) {
      assert {:msg "  Assert might fail. Assertion x.next.val == 2 * x.val might not hold. (issue029.vpr@56.10--56.95) [218309]"}
        Heap[Heap[x, next], val] == 2 * Heap[x, val];
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
      Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
      if (Heap[x, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
          { newPMask[o_88, f_97] }
          Heap[null, LL#sm(x)][o_88, f_97] || Heap[null, LL#sm(Heap[x, next])][o_88, f_97] ==> newPMask[o_88, f_97]
        );
        Heap := Heap[null, LL#sm(x):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
      Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
      if (Heap[Heap[x, next], next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
          { newPMask[o_89, f_98] }
          Heap[null, LL#sm(Heap[x, next])][o_89, f_98] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_89, f_98] ==> newPMask[o_89, f_98]
        );
        Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var arg_2_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_14: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(LL(x), write) &&
  // ((unfolding acc(LL(x), write) in x.val == 10) &&
  // (unfolding acc(LL(x), write) in
  //   x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  // acc(LL(x), write) &&
  // (unfolding acc(LL(x), write) in
  //   x.next != null ==>
  //   (unfolding acc(LL(x.next), write) in x.val < x.next.val)) {
  // } -- issue029.vpr@64.3--64.20
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      if (b_12) {
        perm := FullPerm;
        b_12 := b_12;
        Ops_7Mask := Ops_7Mask[null, LL(x):=Ops_7Mask[null, LL(x)] + perm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_12) {
        if (b_12) {
          if (b_12) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
              UnfoldingHeap := Ops_7Heap;
              UnfoldingMask := Ops_7Mask;
              b_12 := b_12 && LL#trigger(UnfoldingHeap, LL(x));
              b_12 := b_12 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@64.3--64.20) [218310]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_12 := b_12 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_12 := b_12 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_12 := b_12 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (issue029.vpr@64.3--64.20) [218311]"}
                HasDirectPerm(UnfoldingMask, x, val);
              
              // -- Free assumptions (exp module)
                Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, val:=true]];
                Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_7Heap[x, next] != null) {
                  havoc newPMask;
                  b_12 := b_12 && (forall <A, B> o_98: Ref, f_87: (Field A B) ::
                    { newPMask[o_98, f_87] }
                    Ops_7Heap[null, LL#sm(x)][o_98, f_87] || Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_98, f_87] ==> newPMask[o_98, f_87]
                  );
                  Ops_7Heap := Ops_7Heap[null, LL#sm(x):=newPMask];
                }
                b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_7Heap;
            UnfoldingMask := Ops_7Mask;
            b_12 := b_12 && LL#trigger(UnfoldingHeap, LL(x));
            b_12 := b_12 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_12 := b_12 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_12 := b_12 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_12 := b_12;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_12 := b_12 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
          b_12 := b_12 && Ops_7Heap[x, val] == 10;
          
          // -- Free assumptions (inhale module)
            Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, val:=true]];
            Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_7Heap[x, next] != null) {
              havoc newPMask;
              b_12 := b_12 && (forall <A, B> o_99: Ref, f_108: (Field A B) ::
                { newPMask[o_99, f_108] }
                Ops_7Heap[null, LL#sm(x)][o_99, f_108] || Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_99, f_108] ==> newPMask[o_99, f_108]
              );
              Ops_7Heap := Ops_7Heap[null, LL#sm(x):=newPMask];
            }
            b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        }
        if (b_12) {
          if (b_12) {
            
            // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
              UnfoldingHeap := Ops_7Heap;
              UnfoldingMask := Ops_7Mask;
              b_12 := b_12 && LL#trigger(UnfoldingHeap, LL(x));
              b_12 := b_12 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@64.3--64.20) [218312]"}
                  perm <= UnfoldingMask[null, LL(x)];
              }
              UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
              perm := FullPerm;
              b_12 := b_12 && x != null;
              UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              b_12 := b_12 && x != null;
              UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[x, next] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
                
                // -- Extra unfolding of predicate
                  b_12 := b_12 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
                b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              }
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218313]"}
                HasDirectPerm(UnfoldingMask, x, next);
              if (UnfoldingHeap[x, next] != null) {
                Unfolding1Heap := UnfoldingHeap;
                Unfolding1Mask := UnfoldingMask;
                b_12 := b_12 && LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
                b_12 := b_12 && Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
                ExhaleWellDef0Heap := Unfolding1Heap;
                ExhaleWellDef0Mask := Unfolding1Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@64.3--64.20) [218314]"}
                    perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
                }
                Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
                perm := FullPerm;
                b_12 := b_12 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
                b_12 := b_12 && state(Unfolding1Heap, Unfolding1Mask);
                perm := FullPerm;
                b_12 := b_12 && Unfolding1Heap[x, next] != null;
                Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
                b_12 := b_12 && state(Unfolding1Heap, Unfolding1Mask);
                if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
                  perm := FullPerm;
                  Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
                  
                  // -- Extra unfolding of predicate
                    b_12 := b_12 && InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
                  b_12 := b_12 && state(Unfolding1Heap, Unfolding1Mask);
                }
                b_12 := b_12 && state(Unfolding1Heap, Unfolding1Mask);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218315]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218316]"}
                  HasDirectPerm(Unfolding1Mask, x, next);
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (issue029.vpr@64.3--64.20) [218317]"}
                  HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
                
                // -- Free assumptions (exp module)
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
                  if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                    havoc newPMask;
                    b_12 := b_12 && (forall <A, B> o_78: Ref, f_110: (Field A B) ::
                      { newPMask[o_78, f_110] }
                      UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_78, f_110] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_78, f_110] ==> newPMask[o_78, f_110]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
                  }
                  b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
              }
              
              // -- Free assumptions (exp module)
                Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, val:=true]];
                Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, next:=true]];
                if (Ops_7Heap[x, next] != null) {
                  havoc newPMask;
                  b_12 := b_12 && (forall <A, B> o_100: Ref, f_111: (Field A B) ::
                    { newPMask[o_100, f_111] }
                    Ops_7Heap[null, LL#sm(x)][o_100, f_111] || Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_100, f_111] ==> newPMask[o_100, f_111]
                  );
                  Ops_7Heap := Ops_7Heap[null, LL#sm(x):=newPMask];
                }
                b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
                Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][Ops_7Heap[x, next], val:=true]];
                Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][Ops_7Heap[x, next], next:=true]];
                if (Ops_7Heap[Ops_7Heap[x, next], next] != null) {
                  havoc newPMask;
                  b_12 := b_12 && (forall <A, B> o_101: Ref, f_112: (Field A B) ::
                    { newPMask[o_101, f_112] }
                    Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_101, f_112] || Ops_7Heap[null, LL#sm(Ops_7Heap[Ops_7Heap[x, next], next])][o_101, f_112] ==> newPMask[o_101, f_112]
                  );
                  Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=newPMask];
                }
                b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
          }
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Ops_7Heap;
            UnfoldingMask := Ops_7Mask;
            b_12 := b_12 && LL#trigger(UnfoldingHeap, LL(x));
            b_12 := b_12 && UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
            perm := FullPerm;
            b_12 := b_12 && x != null;
            UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            b_12 := b_12 && x != null;
            UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[x, next] != null) {
              perm := FullPerm;
              b_12 := b_12;
              UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
              
              // -- Extra unfolding of predicate
                b_12 := b_12 && InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
              b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
            }
            b_12 := b_12 && state(UnfoldingHeap, UnfoldingMask);
          b_12 := b_12 && (Ops_7Heap[x, next] != null ==> Ops_7Heap[Ops_7Heap[x, next], val] == 20);
          
          // -- Free assumptions (inhale module)
            Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, val:=true]];
            Ops_7Heap := Ops_7Heap[null, LL#sm(x):=Ops_7Heap[null, LL#sm(x)][x, next:=true]];
            if (Ops_7Heap[x, next] != null) {
              havoc newPMask;
              b_12 := b_12 && (forall <A, B> o_102: Ref, f_113: (Field A B) ::
                { newPMask[o_102, f_113] }
                Ops_7Heap[null, LL#sm(x)][o_102, f_113] || Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_102, f_113] ==> newPMask[o_102, f_113]
              );
              Ops_7Heap := Ops_7Heap[null, LL#sm(x):=newPMask];
            }
            b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
            Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][Ops_7Heap[x, next], val:=true]];
            Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][Ops_7Heap[x, next], next:=true]];
            if (Ops_7Heap[Ops_7Heap[x, next], next] != null) {
              havoc newPMask;
              b_12 := b_12 && (forall <A, B> o_103: Ref, f_114: (Field A B) ::
                { newPMask[o_103, f_114] }
                Ops_7Heap[null, LL#sm(Ops_7Heap[x, next])][o_103, f_114] || Ops_7Heap[null, LL#sm(Ops_7Heap[Ops_7Heap[x, next], next])][o_103, f_114] ==> newPMask[o_103, f_114]
              );
              Ops_7Heap := Ops_7Heap[null, LL#sm(Ops_7Heap[x, next]):=newPMask];
            }
            b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        }
      }
    }
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs11 -- issue029.vpr@64.11--64.20
      lhs11:
      Labellhs11Heap := Ops_7Heap;
      Labellhs11Mask := Ops_7Mask;
      b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(LL(x), write) && (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val < x.next.val))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(LL(x), write)
      arg_2_13 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[null, LL(arg_2_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(LL(x), write) might be negative. (issue029.vpr@64.3--64.20) [218318]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, LL(arg_2_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, LL(arg_2_13):=Used_7Mask[null, LL(arg_2_13)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, LL(arg_2_13):=FullPerm];
            b_13 := b_13 && IdenticalOnKnownLocations(Ops_7Heap, Used_7Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, LL(arg_2_13):=Ops_7Mask[null, LL(arg_2_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, LL(arg_2_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, LL(arg_2_13):=Used_7Mask[null, LL(arg_2_13)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, LL(arg_2_13):=FullPerm];
            b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
            Mask := Mask[null, LL(arg_2_13):=Mask[null, LL(arg_2_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_104: Ref, f_115: (Field A B) ::
              { newPMask[o_104, f_115] }
              Heap[null, wand_2#sm(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x)][o_104, f_115] || Heap[null, LL#sm(x)][o_104, f_115] ==> newPMask[o_104, f_115]
            );
            Heap := Heap[null, wand_2#sm(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@64.3--64.20) [218319]"}
        (b_12 && b_12) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[null, LL(arg_2_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_12 && b_13;
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
        b_14 := b_14 && sumMask(Result_2Mask, Ops_7Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_7Heap, Result_2Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
      b_12 := b_12 && b_14;
    if ((b_12 && b_12) && b_13) {
      if (b_12) {
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val < x.next.val))
          UnfoldingHeap := Result_2Heap;
          UnfoldingMask := Result_2Mask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@64.3--64.20) [218320]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218321]"}
            HasDirectPerm(UnfoldingMask, x, next);
          if (UnfoldingHeap[x, next] != null) {
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
            assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@64.3--64.20) [218322]"}
                perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
            }
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218323]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (issue029.vpr@64.3--64.20) [218324]"}
              HasDirectPerm(Unfolding1Mask, x, val);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@64.3--64.20) [218325]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (issue029.vpr@64.3--64.20) [218326]"}
              HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
              if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_105: Ref, f_116: (Field A B) ::
                  { newPMask[o_105, f_116] }
                  UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_105, f_116] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_105, f_116] ==> newPMask[o_105, f_116]
                );
                UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
          
          // -- Free assumptions (exp module)
            Result_2Heap := Result_2Heap[null, LL#sm(x):=Result_2Heap[null, LL#sm(x)][x, val:=true]];
            Result_2Heap := Result_2Heap[null, LL#sm(x):=Result_2Heap[null, LL#sm(x)][x, next:=true]];
            if (Result_2Heap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_106: Ref, f_117: (Field A B) ::
                { newPMask[o_106, f_117] }
                Result_2Heap[null, LL#sm(x)][o_106, f_117] || Result_2Heap[null, LL#sm(Result_2Heap[x, next])][o_106, f_117] ==> newPMask[o_106, f_117]
              );
              Result_2Heap := Result_2Heap[null, LL#sm(x):=newPMask];
            }
            assume state(Result_2Heap, Result_2Mask);
            Result_2Heap := Result_2Heap[null, LL#sm(Result_2Heap[x, next]):=Result_2Heap[null, LL#sm(Result_2Heap[x, next])][Result_2Heap[x, next], val:=true]];
            Result_2Heap := Result_2Heap[null, LL#sm(Result_2Heap[x, next]):=Result_2Heap[null, LL#sm(Result_2Heap[x, next])][Result_2Heap[x, next], next:=true]];
            if (Result_2Heap[Result_2Heap[x, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_107: Ref, f_118: (Field A B) ::
                { newPMask[o_107, f_118] }
                Result_2Heap[null, LL#sm(Result_2Heap[x, next])][o_107, f_118] || Result_2Heap[null, LL#sm(Result_2Heap[Result_2Heap[x, next], next])][o_107, f_118] ==> newPMask[o_107, f_118]
              );
              Result_2Heap := Result_2Heap[null, LL#sm(Result_2Heap[x, next]):=newPMask];
            }
            assume state(Result_2Heap, Result_2Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val < x.next.val)) might not hold. (issue029.vpr@64.3--64.20) [218327]"}
      (b_12 && b_12) && b_13 ==> Result_2Heap[x, next] != null ==> Result_2Heap[x, val] < Result_2Heap[Result_2Heap[x, next], val];
    Mask := Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x):=Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08
// ==================================================

procedure test08(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) -- issue029.vpr@69.3--69.12
    perm := FullPerm;
    Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@69.10--69.12) [218329]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (issue029.vpr@69.10--69.12) [218330]"}
        HasDirectPerm(UnfoldingMask, x, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_108: Ref, f_119: (Field A B) ::
            { newPMask[o_108, f_119] }
            Heap[null, LL#sm(x)][o_108, f_119] || Heap[null, LL#sm(Heap[x, next])][o_108, f_119] ==> newPMask[o_108, f_119]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, val] == 10;
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@69.10--69.12) [218331]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@69.10--69.12) [218332]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (UnfoldingHeap[x, next] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@69.10--69.12) [218333]"}
            perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@69.10--69.12) [218334]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@69.10--69.12) [218335]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next.val (issue029.vpr@69.10--69.12) [218336]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
          UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_109: Ref, f_120: (Field A B) ::
              { newPMask[o_109, f_120] }
              UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_109, f_120] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_109, f_120] ==> newPMask[o_109, f_120]
            );
            UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_110: Ref, f_121: (Field A B) ::
            { newPMask[o_110, f_121] }
            Heap[null, LL#sm(x)][o_110, f_121] || Heap[null, LL#sm(Heap[x, next])][o_110, f_121] ==> newPMask[o_110, f_121]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_111: Ref, f_122: (Field A B) ::
            { newPMask[o_111, f_122] }
            Heap[null, LL#sm(Heap[x, next])][o_111, f_122] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_111, f_122] ==> newPMask[o_111, f_122]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, next] != null ==> Heap[Heap[x, next], val] == 20;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.val < x.next.val)) -- issue029.vpr@70.3--70.19
    
    // -- Check definedness of acc(LL(x), write) && ((unfolding acc(LL(x), write) in x.val == 10) && (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))) --* acc(LL(x), write) && (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val < x.next.val))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, LL(x):=WandDefLHSMask[null, LL(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.val == 10)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@70.10--70.19) [218337]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (issue029.vpr@70.10--70.19) [218338]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, next:=true]];
            if (WandDefLHSHeap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_112: Ref, f_123: (Field A B) ::
                { newPMask[o_112, f_123] }
                WandDefLHSHeap[null, LL#sm(x)][o_112, f_123] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_112, f_123] ==> newPMask[o_112, f_123]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume WandDefLHSHeap[x, val] == 10;
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.next.val == 20))
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@70.10--70.19) [218339]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218340]"}
            HasDirectPerm(UnfoldingMask, x, next);
          if (UnfoldingHeap[x, next] != null) {
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
            assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@70.10--70.19) [218341]"}
                perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
            }
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218342]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218343]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next.val (issue029.vpr@70.10--70.19) [218344]"}
              HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
              if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_114: Ref, f_125: (Field A B) ::
                  { newPMask[o_114, f_125] }
                  UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_114, f_125] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_114, f_125] ==> newPMask[o_114, f_125]
                );
                UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
          
          // -- Free assumptions (exp module)
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=WandDefLHSHeap[null, LL#sm(x)][x, next:=true]];
            if (WandDefLHSHeap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_113: Ref, f_124: (Field A B) ::
                { newPMask[o_113, f_124] }
                WandDefLHSHeap[null, LL#sm(x)][o_113, f_124] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_113, f_124] ==> newPMask[o_113, f_124]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(x):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][WandDefLHSHeap[x, next], val:=true]];
            WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][WandDefLHSHeap[x, next], next:=true]];
            if (WandDefLHSHeap[WandDefLHSHeap[x, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_115: Ref, f_126: (Field A B) ::
                { newPMask[o_115, f_126] }
                WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next])][o_115, f_126] || WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[WandDefLHSHeap[x, next], next])][o_115, f_126] ==> newPMask[o_115, f_126]
              );
              WandDefLHSHeap := WandDefLHSHeap[null, LL#sm(WandDefLHSHeap[x, next]):=newPMask];
            }
            assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefLHSHeap;
          UnfoldingMask := WandDefLHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume WandDefLHSHeap[x, next] != null ==> WandDefLHSHeap[WandDefLHSHeap[x, next], val] == 20;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs13 -- issue029.vpr@70.10--70.19
          lhs13:
          Labellhs13Heap := WandDefLHSHeap;
          Labellhs13Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, LL(x):=WandDefRHSMask[null, LL(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val < x.next.val))
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x) (issue029.vpr@70.10--70.19) [218345]"}
              perm <= UnfoldingMask[null, LL(x)];
          }
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218346]"}
            HasDirectPerm(UnfoldingMask, x, next);
          if (UnfoldingHeap[x, next] != null) {
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
            assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Inhale might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@70.10--70.19) [218347]"}
                perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
            }
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218348]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (issue029.vpr@70.10--70.19) [218349]"}
              HasDirectPerm(Unfolding1Mask, x, val);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next (issue029.vpr@70.10--70.19) [218350]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Inhale might fail. There might be insufficient permission to access x.next.val (issue029.vpr@70.10--70.19) [218351]"}
              HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], val:=true]];
              UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][UnfoldingHeap[x, next], next:=true]];
              if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_116: Ref, f_127: (Field A B) ::
                  { newPMask[o_116, f_127] }
                  UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next])][o_116, f_127] || UnfoldingHeap[null, LL#sm(UnfoldingHeap[UnfoldingHeap[x, next], next])][o_116, f_127] ==> newPMask[o_116, f_127]
                );
                UnfoldingHeap := UnfoldingHeap[null, LL#sm(UnfoldingHeap[x, next]):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(x):=WandDefRHSHeap[null, LL#sm(x)][x, val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(x):=WandDefRHSHeap[null, LL#sm(x)][x, next:=true]];
            if (WandDefRHSHeap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_118: Ref, f_129: (Field A B) ::
                { newPMask[o_118, f_129] }
                WandDefRHSHeap[null, LL#sm(x)][o_118, f_129] || WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next])][o_118, f_129] ==> newPMask[o_118, f_129]
              );
              WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(x):=newPMask];
            }
            assume state(WandDefRHSHeap, WandDefRHSMask);
            WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next]):=WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next])][WandDefRHSHeap[x, next], val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next]):=WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next])][WandDefRHSHeap[x, next], next:=true]];
            if (WandDefRHSHeap[WandDefRHSHeap[x, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_117: Ref, f_128: (Field A B) ::
                { newPMask[o_117, f_128] }
                WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next])][o_117, f_128] || WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[WandDefRHSHeap[x, next], next])][o_117, f_128] ==> newPMask[o_117, f_128]
              );
              WandDefRHSHeap := WandDefRHSHeap[null, LL#sm(WandDefRHSHeap[x, next]):=newPMask];
            }
            assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume LL#trigger(UnfoldingHeap, LL(x));
          assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume WandDefRHSHeap[x, next] != null ==> WandDefRHSHeap[x, val] < WandDefRHSHeap[WandDefRHSHeap[x, next], val];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x):=Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(LL(x), write) &&
  //   ((unfolding acc(LL(x), write) in x.val == 10) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.next.val == 20))) --*
  //   acc(LL(x), write) &&
  //   (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.val < x.next.val)) -- issue029.vpr@71.3--71.18
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@71.3--71.18) [218352]"}
        FullPerm <= Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x)];
      Mask := Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x):=Mask[null, wand_2(x, x, x, 10, x, x, null, x, x, 20, x, x, x, null, x, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@71.3--71.18) [218354]"}
          perm <= Mask[null, LL(x)];
      }
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@71.3--71.18) [218357]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Applying wand might fail. Assertion x.val == 10 might not hold. (issue029.vpr@71.3--71.18) [218361]"}
        Heap[x, val] == 10;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x) (issue029.vpr@71.3--71.18) [218364]"}
            perm <= UnfoldingMask[null, LL(x)];
        }
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      if (Heap[x, next] != null) {
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
          assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@71.3--71.18) [218370]"}
              perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
          }
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[x, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Applying wand might fail. Assertion x.next.val == 20 might not hold. (issue029.vpr@71.3--71.18) [218374]"}
          Heap[Heap[x, next], val] == 20;
      }
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_122: Ref, f_138: (Field A B) ::
            { newPMask[o_122, f_138] }
            Heap[null, LL#sm(x)][o_122, f_138] || Heap[null, LL#sm(Heap[x, next])][o_122, f_138] ==> newPMask[o_122, f_138]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_123: Ref, f_139: (Field A B) ::
            { newPMask[o_123, f_139] }
            Heap[null, LL#sm(x)][o_123, f_139] || Heap[null, LL#sm(Heap[x, next])][o_123, f_139] ==> newPMask[o_123, f_139]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_124: Ref, f_140: (Field A B) ::
            { newPMask[o_124, f_140] }
            Heap[null, LL#sm(Heap[x, next])][o_124, f_140] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_124, f_140] ==> newPMask[o_124, f_140]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, LL(x):=Mask[null, LL(x)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume LL#trigger(UnfoldingHeap, LL(x));
        assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, next] != null ==> Heap[x, val] < Heap[Heap[x, next], val];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_125: Ref, f_141: (Field A B) ::
            { newPMask[o_125, f_141] }
            Heap[null, LL#sm(x)][o_125, f_141] || Heap[null, LL#sm(Heap[x, next])][o_125, f_141] ==> newPMask[o_125, f_141]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_126: Ref, f_142: (Field A B) ::
            { newPMask[o_126, f_142] }
            Heap[null, LL#sm(Heap[x, next])][o_126, f_142] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_126, f_142] ==> newPMask[o_126, f_142]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(LL(x), write) in
  //     x.next != null ==>
  //     (unfolding acc(LL(x.next), write) in x.val <= x.next.val)) -- issue029.vpr@73.3--73.91
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(LL(x), write) in x.next != null ==> (unfolding acc(LL(x.next), write) in x.val <= x.next.val))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume LL#trigger(UnfoldingHeap, LL(x));
      assume UnfoldingHeap[null, LL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LL(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access LL(x) (issue029.vpr@73.10--73.91) [218376]"}
          perm <= UnfoldingMask[null, LL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, LL(x):=UnfoldingMask[null, LL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LL(UnfoldingHeap[x, next]):=UnfoldingMask[null, LL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(LL(x), UnfoldingHeap[null, LL(x)], LL(UnfoldingHeap[x, next]), UnfoldingHeap[null, LL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@73.10--73.91) [218377]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (Heap[x, next] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume LL#trigger(Unfolding1Heap, LL(Unfolding1Heap[x, next]));
        assume Unfolding1Heap[null, LL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame))));
        ExhaleWellDef1Heap := Unfolding1Heap;
        ExhaleWellDef1Mask := Unfolding1Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access LL(x.next) (issue029.vpr@73.10--73.91) [218378]"}
            perm <= Unfolding1Mask[null, LL(Unfolding1Heap[x, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, LL(Unfolding1Heap[x, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[x, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LL(Unfolding1Heap[x, next]), Unfolding1Heap[null, LL(Unfolding1Heap[x, next])], LL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, LL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@73.10--73.91) [218379]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.val (issue029.vpr@73.10--73.91) [218380]"}
          HasDirectPerm(Unfolding1Mask, x, val);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (issue029.vpr@73.10--73.91) [218381]"}
          HasDirectPerm(Unfolding1Mask, x, next);
        assert {:msg "  Assert might fail. There might be insufficient permission to access x.next.val (issue029.vpr@73.10--73.91) [218382]"}
          HasDirectPerm(Unfolding1Mask, Heap[x, next], val);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
          Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
          if (Heap[Heap[x, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_91: Ref, f_143: (Field A B) ::
              { newPMask[o_91, f_143] }
              Heap[null, LL#sm(Heap[x, next])][o_91, f_143] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_91, f_143] ==> newPMask[o_91, f_143]
            );
            Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
          }
          assume state(Heap, Mask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
        Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_127: Ref, f_104: (Field A B) ::
            { newPMask[o_127, f_104] }
            Heap[null, LL#sm(x)][o_127, f_104] || Heap[null, LL#sm(Heap[x, next])][o_127, f_104] ==> newPMask[o_127, f_104]
          );
          Heap := Heap[null, LL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
        Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_128: Ref, f_144: (Field A B) ::
            { newPMask[o_128, f_144] }
            Heap[null, LL#sm(Heap[x, next])][o_128, f_144] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_128, f_144] ==> newPMask[o_128, f_144]
          );
          Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[x, next] != null) {
      assert {:msg "  Assert might fail. Assertion x.val <= x.next.val might not hold. (issue029.vpr@73.10--73.91) [218383]"}
        Heap[x, val] <= Heap[Heap[x, next], val];
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, val:=true]];
      Heap := Heap[null, LL#sm(x):=Heap[null, LL#sm(x)][x, next:=true]];
      if (Heap[x, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_92: Ref, f_145: (Field A B) ::
          { newPMask[o_92, f_145] }
          Heap[null, LL#sm(x)][o_92, f_145] || Heap[null, LL#sm(Heap[x, next])][o_92, f_145] ==> newPMask[o_92, f_145]
        );
        Heap := Heap[null, LL#sm(x):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], val:=true]];
      Heap := Heap[null, LL#sm(Heap[x, next]):=Heap[null, LL#sm(Heap[x, next])][Heap[x, next], next:=true]];
      if (Heap[Heap[x, next], next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_129: Ref, f_146: (Field A B) ::
          { newPMask[o_129, f_146] }
          Heap[null, LL#sm(Heap[x, next])][o_129, f_146] || Heap[null, LL#sm(Heap[Heap[x, next], next])][o_129, f_146] ==> newPMask[o_129, f_146]
        );
        Heap := Heap[null, LL#sm(Heap[x, next]):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_16: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_4: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_17: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_18: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_19: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var freshVersion: FrameType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_20: bool;
  var arg_3_13: bool;
  var b_21: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(), write) -- issue029.vpr@81.3--81.18
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(Q(b), write) {
  //   fold acc(Q(b), write)
  // } -- issue029.vpr@82.3--84.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_15 := b_15 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_16) {
      b_16 := b_16;
    }
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs15 -- issue029.vpr@82.11--82.31
      lhs15:
      Labellhs15Heap := Ops_9Heap;
      Labellhs15Mask := Ops_9Mask;
      b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_16) {
      
      // -- Translating statement: fold acc(Q(b), write) -- issue029.vpr@83.7--83.16
        ExhaleWellDef0Heap := Ops_9Heap;
        ExhaleWellDef0Mask := Ops_9Mask;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_17 := b_17 && state(Used_9Heap, Used_9Mask);
        if (b_16 ==> b_24) {
          
          // -- Transfer of acc(P(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_9Mask[null, P()] + neededTransfer;
            assert {:msg "  Folding Q(b) might fail. Fraction acc(P(), write) might be negative. (issue029.vpr@83.7--83.16) [218386]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_16 && b_17) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_9Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, P():=Used_9Mask[null, P()] + takeTransfer];
                  b_17 := b_17 && state(Used_9Heap, Used_9Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_17 := b_17 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                  Ops_9Mask := Ops_9Mask[null, P():=Ops_9Mask[null, P()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_16 && b_17) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, P():=Used_9Mask[null, P()] + takeTransfer];
                  b_17 := b_17 && state(Used_9Heap, Used_9Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_17 := b_17 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                  Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_130: Ref, f_147: (Field A B) ::
                    { newPMask[o_130, f_147] }
                    Heap[null, wand_3#sm(true, b_24)][o_130, f_147] || Heap[null, P#sm()][o_130, f_147] ==> newPMask[o_130, f_147]
                  );
                  Heap := Heap[null, wand_3#sm(true, b_24):=newPMask];
                }
              }
            assert {:msg "  Folding Q(b) might fail. There might be insufficient permission to access P() (issue029.vpr@83.7--83.16) [218387]"}
              b_16 && b_17 ==> neededTransfer == 0.000000000 && Used_9Mask[null, P()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_18 := b_16 && b_17;
              b_18 := b_18 && state(Result_3Heap, Result_3Mask);
              b_18 := b_18 && sumMask(Result_3Mask, Ops_9Mask, Used_9Mask);
              b_18 := (b_18 && IdenticalOnKnownLocations(Ops_9Heap, Result_3Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_3Heap, Used_9Mask);
              b_18 := b_18 && state(Result_3Heap, Result_3Mask);
            b_16 := b_16 && b_18;
          b_16 := b_16 && b_17;
          b_16 := b_16 && Used_9Heap == Ops_9Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_19 := b_16 && b_17;
          b_19 := b_19 && state(Result_4Heap, Result_4Mask);
          b_19 := b_19 && sumMask(Result_4Mask, Ops_9Mask, Used_9Mask);
          b_19 := (b_19 && IdenticalOnKnownLocations(Ops_9Heap, Result_4Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_4Heap, Used_9Mask);
          b_19 := b_19 && state(Result_4Heap, Result_4Mask);
        b_16 := b_16 && b_19;
        perm := FullPerm;
        b_16 := b_16;
        Ops_9Mask := Ops_9Mask[null, Q(b_24):=Ops_9Mask[null, Q(b_24)] + perm];
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        assume Q#trigger(Ops_9Heap, Q(b_24));
        assume Ops_9Heap[null, Q(b_24)] == FrameFragment((if b_24 then Ops_9Heap[null, P()] else EmptyFrame));
        if (!HasDirectPerm(Ops_9Mask, null, Q(b_24))) {
          Ops_9Heap := Ops_9Heap[null, Q#sm(b_24):=ZeroPMask];
          havoc freshVersion;
          Ops_9Heap := Ops_9Heap[null, Q(b_24):=freshVersion];
        }
        if (b_24) {
          havoc newPMask;
          assume (forall <A, B> o_131: Ref, f_148: (Field A B) ::
            { newPMask[o_131, f_148] }
            Ops_9Heap[null, Q#sm(b_24)][o_131, f_148] || Ops_9Heap[null, P#sm()][o_131, f_148] ==> newPMask[o_131, f_148]
          );
          Ops_9Heap := Ops_9Heap[null, Q#sm(b_24):=newPMask];
        }
        assume state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(Q(b), write)
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_20 := b_20 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(Q(b), write)
      arg_3_13 := b_24;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[null, Q(arg_3_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(b), write) might be negative. (issue029.vpr@82.3--84.4) [218389]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[null, Q(arg_3_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[null, Q(arg_3_13):=Used_10Mask[null, Q(arg_3_13)] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            TempMask := ZeroMask[null, Q(arg_3_13):=FullPerm];
            b_20 := b_20 && IdenticalOnKnownLocations(Ops_9Heap, Used_10Heap, TempMask);
            Ops_9Mask := Ops_9Mask[null, Q(arg_3_13):=Ops_9Mask[null, Q(arg_3_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_3_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[null, Q(arg_3_13):=Used_10Mask[null, Q(arg_3_13)] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            TempMask := ZeroMask[null, Q(arg_3_13):=FullPerm];
            b_20 := b_20 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
            Mask := Mask[null, Q(arg_3_13):=Mask[null, Q(arg_3_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_132: Ref, f_149: (Field A B) ::
              { newPMask[o_132, f_149] }
              Heap[null, wand_3#sm(true, b_24)][o_132, f_149] || Heap[null, Q#sm(b_24)][o_132, f_149] ==> newPMask[o_132, f_149]
            );
            Heap := Heap[null, wand_3#sm(true, b_24):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(b) (issue029.vpr@82.3--84.4) [218390]"}
        (b_16 && b_16) && b_20 ==> neededTransfer == 0.000000000 && Used_10Mask[null, Q(arg_3_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_21 := b_16 && b_20;
        b_21 := b_21 && state(Result_5Heap, Result_5Mask);
        b_21 := b_21 && sumMask(Result_5Mask, Ops_9Mask, Used_10Mask);
        b_21 := (b_21 && IdenticalOnKnownLocations(Ops_9Heap, Result_5Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_5Heap, Used_10Mask);
        b_21 := b_21 && state(Result_5Heap, Result_5Mask);
      b_16 := b_16 && b_21;
    Mask := Mask[null, wand_3(true, b_24):=Mask[null, wand_3(true, b_24)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b ==> acc(P(), write) -- issue029.vpr@86.3--86.25
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (!b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access P() (issue029.vpr@86.10--86.25) [218392]"}
          perm <= AssertMask[null, P()];
      }
      AssertMask := AssertMask[null, P():=AssertMask[null, P()] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(Q(b), write) -- issue029.vpr@88.3--88.27
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@88.3--88.27) [218393]"}
        FullPerm <= Mask[null, wand_3(true, b_24)];
      Mask := Mask[null, wand_3(true, b_24):=Mask[null, wand_3(true, b_24)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, Q(b_24):=Mask[null, Q(b_24)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Q(b), write) -- issue029.vpr@89.3--89.19
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Q(b) (issue029.vpr@89.10--89.19) [218397]"}
        perm <= AssertMask[null, Q(b_24)];
    }
    AssertMask := AssertMask[null, Q(b_24):=AssertMask[null, Q(b_24)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(), write) -- issue029.vpr@92.3--92.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access P() (issue029.vpr@92.10--92.18) [218399]"}
        perm <= AssertMask[null, P()];
    }
    AssertMask := AssertMask[null, P():=AssertMask[null, P()] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_23: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_22: bool;
  var perm: Perm;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var boolCur_5: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_24_1: bool;
  var arg_4_13: Ref;
  var arg_5_12: int;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_25_1: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(LLC(x, 0), write) --*
  // acc(LLC(x, 0), write) &&
  // (unfolding acc(LLC(x, 0), write) in
  //   x.next != null ==>
  //   (unfolding acc(LLC(x.next, 1), write) in x.next.val == 1)) {
  // } -- issue029.vpr@110.3--110.18
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_22 := b_22 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_23) {
      perm := FullPerm;
      b_23 := b_23;
      Ops_11Mask := Ops_11Mask[null, LLC(x, 0):=Ops_11Mask[null, LLC(x, 0)] + perm];
      b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    }
    b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs18 -- issue029.vpr@110.11--110.18
      lhs18:
      Labellhs18Heap := Ops_11Heap;
      Labellhs18Mask := Ops_11Mask;
      b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationacc(LLC(x, 0), write) && (unfolding acc(LLC(x, 0), write) in x.next != null ==> (unfolding acc(LLC(x.next, 1), write) in x.next.val == 1))
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
    
    // -- Transfer of acc(LLC(x, 0), write)
      arg_4_13 := x;
      arg_5_12 := 0;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[null, LLC(arg_4_13, arg_5_12)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(LLC(x, 0), write) might be negative. (issue029.vpr@110.3--110.18) [218400]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[null, LLC(arg_4_13, arg_5_12)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, LLC(arg_4_13, arg_5_12):=Used_12Mask[null, LLC(arg_4_13, arg_5_12)] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, LLC(arg_4_13, arg_5_12):=FullPerm];
            b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Used_12Heap, TempMask);
            Ops_11Mask := Ops_11Mask[null, LLC(arg_4_13, arg_5_12):=Ops_11Mask[null, LLC(arg_4_13, arg_5_12)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, LLC(arg_4_13, arg_5_12)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, LLC(arg_4_13, arg_5_12):=Used_12Mask[null, LLC(arg_4_13, arg_5_12)] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, LLC(arg_4_13, arg_5_12):=FullPerm];
            b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
            Mask := Mask[null, LLC(arg_4_13, arg_5_12):=Mask[null, LLC(arg_4_13, arg_5_12)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_136: Ref, f_153: (Field A B) ::
              { newPMask[o_136, f_153] }
              Heap[null, wand_4#sm(x, 0, x, 0, x, 0, x, null, x, 1, x, 1)][o_136, f_153] || Heap[null, LLC#sm(x, 0)][o_136, f_153] ==> newPMask[o_136, f_153]
            );
            Heap := Heap[null, wand_4#sm(x, 0, x, 0, x, 0, x, null, x, 1, x, 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LLC(x, 0) (issue029.vpr@110.3--110.18) [218401]"}
        (b_23 && b_23) && b_24_1 ==> neededTransfer == 0.000000000 && Used_12Mask[null, LLC(arg_4_13, arg_5_12)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_25_1 := b_23 && b_24_1;
        b_25_1 := b_25_1 && state(Result_6Heap, Result_6Mask);
        b_25_1 := b_25_1 && sumMask(Result_6Mask, Ops_11Mask, Used_12Mask);
        b_25_1 := (b_25_1 && IdenticalOnKnownLocations(Ops_11Heap, Result_6Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_6Heap, Used_12Mask);
        b_25_1 := b_25_1 && state(Result_6Heap, Result_6Mask);
      b_23 := b_23 && b_25_1;
    if ((b_23 && b_23) && b_24_1) {
      if (b_23) {
        
        // -- Check definedness of (unfolding acc(LLC(x, 0), write) in x.next != null ==> (unfolding acc(LLC(x.next, 1), write) in x.next.val == 1))
          UnfoldingHeap := Result_6Heap;
          UnfoldingMask := Result_6Mask;
          assume LLC#trigger(UnfoldingHeap, LLC(x, 0));
          assume UnfoldingHeap[null, LLC(x, 0)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LLC(UnfoldingHeap[x, next], 1)] else EmptyFrame))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LLC(x, 0) (issue029.vpr@110.3--110.18) [218402]"}
              perm <= UnfoldingMask[null, LLC(x, 0)];
          }
          UnfoldingMask := UnfoldingMask[null, LLC(x, 0):=UnfoldingMask[null, LLC(x, 0)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[x, val] == 0;
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[x, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, LLC(UnfoldingHeap[x, next], 1):=UnfoldingMask[null, LLC(UnfoldingHeap[x, next], 1)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(LLC(x, 0), UnfoldingHeap[null, LLC(x, 0)], LLC(UnfoldingHeap[x, next], 1), UnfoldingHeap[null, LLC(UnfoldingHeap[x, next], 1)]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@110.3--110.18) [218403]"}
            HasDirectPerm(UnfoldingMask, x, next);
          if (UnfoldingHeap[x, next] != null) {
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume LLC#trigger(Unfolding1Heap, LLC(Unfolding1Heap[x, next], 1));
            assume Unfolding1Heap[null, LLC(Unfolding1Heap[x, next], 1)] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], val]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, LLC(Unfolding1Heap[Unfolding1Heap[x, next], next], 2)] else EmptyFrame))));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access LLC(x.next, 1) (issue029.vpr@110.3--110.18) [218404]"}
                perm <= Unfolding1Mask[null, LLC(Unfolding1Heap[x, next], 1)];
            }
            Unfolding1Mask := Unfolding1Mask[null, LLC(Unfolding1Heap[x, next], 1):=Unfolding1Mask[null, LLC(Unfolding1Heap[x, next], 1)] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], val:=Unfolding1Mask[Unfolding1Heap[x, next], val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            assume Unfolding1Heap[Unfolding1Heap[x, next], val] == 1;
            perm := FullPerm;
            assume Unfolding1Heap[x, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, LLC(Unfolding1Heap[Unfolding1Heap[x, next], next], 2):=Unfolding1Mask[null, LLC(Unfolding1Heap[Unfolding1Heap[x, next], next], 2)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(LLC(Unfolding1Heap[x, next], 1), Unfolding1Heap[null, LLC(Unfolding1Heap[x, next], 1)], LLC(Unfolding1Heap[Unfolding1Heap[x, next], next], 2), Unfolding1Heap[null, LLC(Unfolding1Heap[Unfolding1Heap[x, next], next], 2)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@110.3--110.18) [218405]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (issue029.vpr@110.3--110.18) [218406]"}
              HasDirectPerm(Unfolding1Mask, x, next);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (issue029.vpr@110.3--110.18) [218407]"}
              HasDirectPerm(Unfolding1Mask, Unfolding1Heap[x, next], val);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1):=UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1)][UnfoldingHeap[x, next], val:=true]];
              UnfoldingHeap := UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1):=UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1)][UnfoldingHeap[x, next], next:=true]];
              if (UnfoldingHeap[UnfoldingHeap[x, next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_137: Ref, f_154: (Field A B) ::
                  { newPMask[o_137, f_154] }
                  UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1)][o_137, f_154] || UnfoldingHeap[null, LLC#sm(UnfoldingHeap[UnfoldingHeap[x, next], next], 2)][o_137, f_154] ==> newPMask[o_137, f_154]
                );
                UnfoldingHeap := UnfoldingHeap[null, LLC#sm(UnfoldingHeap[x, next], 1):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
          }
          
          // -- Free assumptions (exp module)
            Result_6Heap := Result_6Heap[null, LLC#sm(x, 0):=Result_6Heap[null, LLC#sm(x, 0)][x, val:=true]];
            Result_6Heap := Result_6Heap[null, LLC#sm(x, 0):=Result_6Heap[null, LLC#sm(x, 0)][x, next:=true]];
            if (Result_6Heap[x, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_138: Ref, f_155: (Field A B) ::
                { newPMask[o_138, f_155] }
                Result_6Heap[null, LLC#sm(x, 0)][o_138, f_155] || Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1)][o_138, f_155] ==> newPMask[o_138, f_155]
              );
              Result_6Heap := Result_6Heap[null, LLC#sm(x, 0):=newPMask];
            }
            assume state(Result_6Heap, Result_6Mask);
            Result_6Heap := Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1):=Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1)][Result_6Heap[x, next], val:=true]];
            Result_6Heap := Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1):=Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1)][Result_6Heap[x, next], next:=true]];
            if (Result_6Heap[Result_6Heap[x, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_154: Ref, f_163: (Field A B) ::
                { newPMask[o_154, f_163] }
                Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1)][o_154, f_163] || Result_6Heap[null, LLC#sm(Result_6Heap[Result_6Heap[x, next], next], 2)][o_154, f_163] ==> newPMask[o_154, f_163]
              );
              Result_6Heap := Result_6Heap[null, LLC#sm(Result_6Heap[x, next], 1):=newPMask];
            }
            assume state(Result_6Heap, Result_6Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(LLC(x, 0), write) in x.next != null ==> (unfolding acc(LLC(x.next, 1), write) in x.next.val == 1)) might not hold. (issue029.vpr@110.3--110.18) [218408]"}
      (b_23 && b_23) && b_24_1 ==> Result_6Heap[x, next] != null ==> Result_6Heap[Result_6Heap[x, next], val] == 1;
    Mask := Mask[null, wand_4(x, 0, x, 0, x, 0, x, null, x, 1, x, 1):=Mask[null, wand_4(x, 0, x, 0, x, 0, x, null, x, 1, x, 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(LLC(x, 0), write) -- issue029.vpr@112.3--112.24
    perm := FullPerm;
    Mask := Mask[null, LLC(x, 0):=Mask[null, LLC(x, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(LLC(x, 0), write) --*
  //   acc(LLC(x, 0), write) &&
  //   (unfolding acc(LLC(x, 0), write) in
  //     x.next != null ==>
  //     (unfolding acc(LLC(x.next, 1), write) in x.next.val == 1)) -- issue029.vpr@113.3--113.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue029.vpr@113.3--113.16) [218410]"}
        FullPerm <= Mask[null, wand_4(x, 0, x, 0, x, 0, x, null, x, 1, x, 1)];
      Mask := Mask[null, wand_4(x, 0, x, 0, x, 0, x, null, x, 1, x, 1):=Mask[null, wand_4(x, 0, x, 0, x, 0, x, null, x, 1, x, 1)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access LLC(x, 0) (issue029.vpr@113.3--113.16) [218412]"}
          perm <= Mask[null, LLC(x, 0)];
      }
      Mask := Mask[null, LLC(x, 0):=Mask[null, LLC(x, 0)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, LLC(x, 0):=Mask[null, LLC(x, 0)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume LLC#trigger(UnfoldingHeap, LLC(x, 0));
        assume UnfoldingHeap[null, LLC(x, 0)] == CombineFrames(FrameFragment(UnfoldingHeap[x, val]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, LLC(UnfoldingHeap[x, next], 1)] else EmptyFrame))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, LLC(x, 0):=UnfoldingMask[null, LLC(x, 0)] - perm];
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[x, val] == 0;
        perm := FullPerm;
        assume x != null;
        UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[x, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, LLC(UnfoldingHeap[x, next], 1):=UnfoldingMask[null, LLC(UnfoldingHeap[x, next], 1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(LLC(x, 0), UnfoldingHeap[null, LLC(x, 0)], LLC(UnfoldingHeap[x, next], 1), UnfoldingHeap[null, LLC(UnfoldingHeap[x, next], 1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[x, next] != null ==> Heap[Heap[x, next], val] == 1;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, LLC#sm(x, 0):=Heap[null, LLC#sm(x, 0)][x, val:=true]];
        Heap := Heap[null, LLC#sm(x, 0):=Heap[null, LLC#sm(x, 0)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_155: Ref, f_164: (Field A B) ::
            { newPMask[o_155, f_164] }
            Heap[null, LLC#sm(x, 0)][o_155, f_164] || Heap[null, LLC#sm(Heap[x, next], 1)][o_155, f_164] ==> newPMask[o_155, f_164]
          );
          Heap := Heap[null, LLC#sm(x, 0):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, LLC#sm(Heap[x, next], 1):=Heap[null, LLC#sm(Heap[x, next], 1)][Heap[x, next], val:=true]];
        Heap := Heap[null, LLC#sm(Heap[x, next], 1):=Heap[null, LLC#sm(Heap[x, next], 1)][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_156: Ref, f_165: (Field A B) ::
            { newPMask[o_156, f_165] }
            Heap[null, LLC#sm(Heap[x, next], 1)][o_156, f_165] || Heap[null, LLC#sm(Heap[Heap[x, next], next], 2)][o_156, f_165] ==> newPMask[o_156, f_165]
          );
          Heap := Heap[null, LLC#sm(Heap[x, next], 1):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(LLC(x, 0), write) -- issue029.vpr@115.3--115.24
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access LLC(x, 0) (issue029.vpr@115.10--115.24) [218415]"}
        perm <= AssertMask[null, LLC(x, 0)];
    }
    AssertMask := AssertMask[null, LLC(x, 0):=AssertMask[null, LLC(x, 0)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- issue029.vpr@118.3--118.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (issue029.vpr@118.10--118.15) [218416]"}
      false;
    assume state(Heap, Mask);
}